//
//  MFLViewController.m
//  MFLImageView
//
//  Created by Kyle Fuller on 12/03/2014.
//  Copyright (c) 2014 Mentally Friendly. All rights reserved.
//

#import <MFLImageView/MFLImageView.h>
#import "MFLViewController.h"

@interface MFLViewController ()

@property (nonatomic, weak) IBOutlet MFLImageView *imageView;

@end

@implementation MFLViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self changeImage:nil];
}

- (IBAction)changeImage:(id)sender {
    NSArray *images = @[
        @"http://test/foo.png",
        @"http://test/badImage",
    ];

    NSString *imageURL = images[arc4random() % [images count]];
    self.imageView.imageURL = [NSURL URLWithString:imageURL];
}

@end
