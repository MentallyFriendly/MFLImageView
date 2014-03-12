//
//  MFLImageViewTests.m
//  MFLImageViewTests
//
//  Created by Kyle Fuller on 12/03/2014.
//  Copyright (c) 2014 Mentally Friendly. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <MFLImageView/MFLImageView.h>
#define EXP_SHORTHAND
#import <Expecta/Expecta.h>

@interface MFLImageViewTests : XCTestCase

@end

@implementation MFLImageViewTests

- (void)testImageViewIsNilByDefault {
    MFLImageView *imageView = [[MFLImageView alloc] init];
    expect(imageView.imageURL).to.beNil();
}

- (void)testSetsImageURL {
    NSURL *imageURL = [NSURL URLWithString:@"http://test.com/foo.jpg"];

    MFLImageView *imageView = [[MFLImageView alloc] init];
    imageView.imageURL = imageURL;

    expect(imageView.imageURL).to.equal(imageURL);
}

@end
