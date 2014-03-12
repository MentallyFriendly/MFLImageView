# MFLImageView

[![Build Status](https://travis-ci.org/MentallyFriendly/MFLImageView.png?branch=master)](https://travis-ci.org/MentallyFriendly/MFLImageView)

```objective-c
@interface MFLImageView : UIImageView

@property (nonatomic, strong) NSURL *imageURL;

@end
```

## Usage

```objective-c
[imageView setImageURL:imageURL];
```

## Installation

[CocoaPods](http://cocoapods.org) is the recommended way to add
MFLImageView to your project.

Here's an example podfile that installs MFLImageView.

### Podfile

```ruby
platform :ios, '6.0'

pod 'MFLImageView'
```

## License

MFLImageVIew is released under the BSD license. See [LICENSE](LICENSE).

