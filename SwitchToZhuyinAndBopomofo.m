#include <Carbon/Carbon.h>
#include <Foundation/Foundation.h>
#include <stdio.h>
#include <stdlib.h>
int main(int argc, char const *const *argv) {
  // select input method
  NSString *inputMethodID = @"com.apple.inputmethod.TCIM.Zhuyin";
  NSDictionary *inputMethodProperties =
      @{(NSString *)kTISPropertyInputSourceID : inputMethodID};
  NSArray *inputMethods = [(NSArray *)TISCreateInputSourceList(
      (CFDictionaryRef)inputMethodProperties, true) autorelease];
  if ([inputMethods count] > 0) {
    TISInputSourceRef inputMethod =
        (TISInputSourceRef)[inputMethods objectAtIndex:0];
    TISEnableInputSource(inputMethod);
    TISSelectInputSource(inputMethod);
  }

  // select keyboard layout
  NSString *keyboardLayoutID = @"com.apple.keylayout.ZhuyinBopomofo";
  NSDictionary *keyboardLayoutProperties =
      @{(NSString *)kTISPropertyInputSourceID : keyboardLayoutID};
  NSArray *keyboardLayouts = [(NSArray *)TISCreateInputSourceList(
      (CFDictionaryRef)keyboardLayoutProperties, true) autorelease];
  if ([keyboardLayouts count] > 0) {
    TISInputSourceRef keyboardLayout =
        (TISInputSourceRef)[keyboardLayouts objectAtIndex:0];
    TISEnableInputSource(keyboardLayout);
    TISSelectInputSource(keyboardLayout);
  }
}