//
//  ViewController.m
//  CJACracked
//
//  Created by Carl Jahn on 11.10.13.
//  Copyright (c) 2013 Carl Jahn. All rights reserved.
//

#import "ExampleViewController.h"
#import "CJACracked.h"

@interface ExampleViewController ()

@end

@implementation ExampleViewController

- (void)viewDidLoad {
  [super viewDidLoad];

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
    //SignerIdentity was added to the info.plist
  }
  
}


@end
