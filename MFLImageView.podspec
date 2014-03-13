Pod::Spec.new do |spec|
  spec.name = 'MFLImageView'
  spec.version = '0.9.0'
  spec.summary = 'An image view for downloading an image and providing re-try on failure'
  spec.author = { 'Kyle Fuller' => 'inbox@kylefuller.co.uk' }
  spec.license = { :type => 'BSD', :file => 'LICENSE' }
  spec.homepage = 'https://github.com/MentallyFriendly/MFLImageView'
  spec.social_media_url = 'https://twitter.com/kylefuller'
  spec.source = {
    :git => 'https://github.com/MentallyFriendly/MFLImageView.git',
    :tag => "#{spec.version}",
  }
  spec.platform = :ios, '6.0'
  spec.requires_arc = true

  spec.dependency 'AFNetworking', '~> 2.0'
  spec.framework = 'UIKit'

  spec.source_files = 'MFLImageView.{h,m}'
end

