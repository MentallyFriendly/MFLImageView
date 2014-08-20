//
//  MFLImageView.h
//  Mentally Friendly
//
//  Created by Kyle Fuller on 12/03/2014.
//  Copyright (c) 2014 Mentally Friendly. All rights reserved.
//

#import <AFNetworking/UIImageView+AFNetworking.h>
#import "MFLImageView.h"

@implementation MFLImageView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self mfl_setupDefaults];
    }

    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self mfl_setupDefaults];
    }

    return self;
}

- (void)mfl_setupDefaults {
    self.backgroundColor = [UIColor grayColor];
    self.contentMode = UIViewContentModeScaleAspectFill;
    self.imageContentMode = UIViewContentModeScaleAspectFill;
    self.placeholderContentMode = UIViewContentModeScaleAspectFill;
    self.loadingContentMode = UIViewContentModeCenter;
    self.clipsToBounds = YES;
}

- (void)setImageURL:(NSURL *)imageURL {
    [self cancelImageRequestOperation];

    _imageURL = imageURL;
    self.image = self.placeholderImage;

    if (imageURL) {
        self.contentMode = self.loadingContentMode;
        self.image = self.loadingImage;

        __weak MFLImageView *weakSelf = self;
        NSURLRequest *request = [NSURLRequest requestWithURL:imageURL];
        [self setImageWithURLRequest:request placeholderImage:nil success:^(NSURLRequest *request, NSHTTPURLResponse *response, UIImage *image) {
            weakSelf.contentMode = weakSelf.imageContentMode;
            weakSelf.image = image;
        } failure:^(NSURLRequest *request, NSHTTPURLResponse *response, NSError *error) {
            weakSelf.contentMode = weakSelf.placeholderContentMode;
            weakSelf.image = weakSelf.placeholderImage;
        }];
    }
}

- (void)setPlaceholderImage:(UIImage *)placeholderImage {
    _placeholderImage = placeholderImage;

    if (self.image == nil) {
        self.contentMode = self.placeholderContentMode;
        self.image = placeholderImage;
    }
}

@end
