//
//  RecordingDelegate.m
//  screen-recording
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#import "RecordingDelegate.h"

@interface RecordingDelegate () <AVCaptureFileOutputRecordingDelegate>
@end

@implementation RecordingDelegate

#pragma mark AVCaptureFileOutputRecordingDelegate
// https://developer.apple.com/library/ios/documentation/AVFoundation/Reference/AVCaptureFileOutputRecordingDelegate_Protocol/Reference/Reference.html

// This is never called.
// http://stackoverflow.com/questions/16017797/avscreenshack-example-fails-to-save-file
- (void)captureOutput:(AVCaptureFileOutput *)captureOutput didFinishRecordingToOutputFileAtURL:(NSURL *)outputFileURL fromConnections:(NSArray *)connections error:(NSError *)error
{
    Log(@"didFinishRecordingToOutputFileAtURL!");
    if (error) { Log(@"Error: %@", [error localizedDescription]); }
}

- (void)captureOutput:(AVCaptureFileOutput *)captureOutput willFinishRecordingToOutputFileAtURL:(NSURL *)fileURL fromConnections:(NSArray *)connections error:(NSError *)error
{
    Log(@"willFinishRecordingToOutputFileAtURL!");
    // "Error: Recording Stopped"
    if (error) { Log(@"Error: %@", [error localizedDescription]); }
}

- (void)captureOutput:(AVCaptureFileOutput *)captureOutput didStartRecordingToOutputFileAtURL:(NSURL *)outputFileURL fromConnections:(NSArray *)connections; {
    Log(@"Recording started!");
}

#pragma mark AVCaptureFileOutputDelegate

- (BOOL)captureOutputShouldProvideSampleAccurateRecordingStart:(AVCaptureOutput *)captureOutput {
	return NO;
}

@end
