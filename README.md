Note: This project is no longer maintained. There's a [call for maintainers](https://github.com/appium/screen_recording/issues/7).

--

screen_recording
================

Activate and record the iOS Simulator or Android emulator to a .mov.

```
$ ./screen-recording ios /tmp/video.mov
$ ./screen-recording android /tmp/video.mov
```

Send SIGINT to stop recording. CMD+C on the OS X Terminal.

#### Building

- OS X 10.9
- Xcode 5.0.2

- `./build_debug.sh` - Builds a debug release (verbose logging) in bin/screen-recording
- `./build_release.sh` - Builds a regular release (no logging) in bin/screen-recording

#### Design

- [AVCaptureScreenInput](https://developer.apple.com/library/mac/documentation/AVFoundation/Reference/AVCaptureScreenInput_Class/Reference/Reference.html) is used to generate the screen recording.
- Code from Square's [Zapp open source project](https://github.com/square/zapp/blob/master/Zapp/ZappVideoController.m) is used for finding window information and creating a croprect.
- Apple's [ScreenShack example](https://developer.apple.com/library/mac/samplecode/AVScreenShack/Introduction/Intro.html) was helpful for identifying proper API usage.
- focusPid from the [Amethyst project](https://github.com/ianyh/Amethyst/blob/a7ade3848db11f1ce2d5824b3f3d3df9be88a587/Amethyst/AMWindow.m#L162) didn't work on Android and was flaky for iOS. Instead AppleScript is used to [focus the window](http://stackoverflow.com/a/2401792).
