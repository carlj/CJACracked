#CJACracked
Is a simple class to check if the current App is pirated or not.

[![Build Status](https://travis-ci.org/carlj/CJACracked.png?branch=master)](https://travis-ci.org/carlj/CJACracked)

##Installation
Just drag & drop the [`CJACracked.h`](CJACracked/CJACracked.h) and [`CJACracked.m`](CJACracked/CJACracked.m) to your project.

##Example
First of all take a look at the [Example Project](Example/Classes/ExampleViewController.m)

##Usage
``` objc
//import the header
#import "CJACracked.h"
```

``` objc
CJACracked *cracked = [CJACracked new];

//check for the crack
if (cracked.isCracked) {
  //App is pirated
}

//simple handle the return value as a bool
if (!cracked.isCracked) {
  //App isnt pirated
}

//Check the specific cracks
if (cracked.isCracked & APPEncryptionCracked) {
  //binry enryption was cracked
}

if (cracked.isCracked & APPSigningCracked) {
  //SignerIdentity key was added to the info.plist
}
```
##LICENSE
Released under the [MIT LICENSE](LICENSE)