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
        @"http://farm4.staticflickr.com/3113/3831295511_c9b4d6249a_z.jpg",
        @"http://farm8.staticflickr.com/7364/13024073635_803dc98c61_z.jpg",
        @"http://farm8.staticflickr.com/7399/12999777883_ef5f4ab9fd_z.jpg",
        @"http://farm4.staticflickr.com/3791/12922970884_f9bd8d5f5a_z.jpg",
        @"http://farm8.staticflickr.com/7314/12943844203_3c3341d873_z.jpg",
        @"http://farm8.staticflickr.com/7453/12912675924_08bd07146d_z.jpg",
        @"http://farm4.staticflickr.com/3750/12284995456_c2f35f4651_z.jpg",
        @"http://farm8.staticflickr.com/7382/12197655306_d1b84d18b5_z.jpg",
        @"http://farm8.staticflickr.com/7385/11993190374_b06cf931b2_z.jpg",
        @"http://farm3.staticflickr.com/2872/12099100483_6ec191211e_z.jpg",
    ];

    NSString *imageURL = images[arc4random() % [images count]];
    self.imageView.imageURL = [NSURL URLWithString:imageURL];
}

@end
