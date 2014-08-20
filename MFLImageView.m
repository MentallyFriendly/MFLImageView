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

- (void)usePlaceholderImage {
    self.contentMode = self.placeholderContentMode;
    self.image = self.placeholderImage;
}

- (void)useLoadingImage {
    self.contentMode = self.loadingContentMode;
    self.image = self.loadingImage;
}

- (void)setImageURL:(NSURL *)imageURL {
    [self cancelImageRequestOperation];

    _imageURL = imageURL;

    if (imageURL) {
        [self useLoadingImage];

        __weak MFLImageView *weakSelf = self;
        NSURLRequest *request = [NSURLRequest requestWithURL:imageURL];
        [self setImageWithURLRequest:request placeholderImage:nil success:^(NSURLRequest *request, NSHTTPURLResponse *response, UIImage *image) {
            weakSelf.contentMode = weakSelf.imageContentMode;
            weakSelf.image = image;
        } failure:^(NSURLRequest *request, NSHTTPURLResponse *response, NSError *error) {
            [weakSelf usePlaceholderImage];
        }];
    } else {
        [self usePlaceholderImage];
    }
}

- (void)setPlaceholderImage:(UIImage *)placeholderImage {
    _placeholderImage = placeholderImage;

    if (self.image == nil) {
        [self usePlaceholderImage];
    }
}

@end
