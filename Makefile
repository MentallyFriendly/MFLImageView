
PROJECT_NAME=MFLImageView
WORKSPACE=$(PROJECT_NAME).xcworkspace
XCODEBUILD=xcodebuild -workspace $(WORKSPACE)


test-ios:
	$(XCODEBUILD) -scheme 'MFLImageView' -sdk iphonesimulator test 2>/dev/null | xcpretty -c

test-podspec:
	pod spec lint MFLImageView.podspec

tests:test-ios test-podspec

