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
}

- (void)setImageURL:(NSURL *)imageURL {
    [self cancelImageRequestOperation];

    _imageURL = imageURL;
    self.image = self.placeholderImage;

    [self setImageWithURL:imageURL];
}

- (void)setPlaceholderImage:(UIImage *)placeholderImage {
    _placeholderImage = placeholderImage;

    if (self.image == nil) {
        self.image = placeholderImage;
    }
}

@end
