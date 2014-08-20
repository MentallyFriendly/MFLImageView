//
//  MFLImageView.h
//  Mentally Friendly
//
//  Created by Kyle Fuller on 12/03/2014.
//  Copyright (c) 2014 Mentally Friendly. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MFLImageView : UIImageView

@property (nonatomic, strong) NSURL *imageURL;
@property (nonatomic, assign) UIViewContentMode imageContentMode;

@property (nonatomic, strong) UIImage *placeholderImage;
@property (nonatomic, assign) UIViewContentMode placeholderContentMode;

@property (nonatomic, strong) UIImage *loadingImage;
@property (nonatomic, assign) UIViewContentMode loadingContentMode;

@end
