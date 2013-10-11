//
//  CJACracked.h
//  CJACracked
//
//  Created by Carl Jahn on 11.10.13.
//  Copyright (c) 2013 Carl Jahn. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_OPTIONS(NSUInteger, CJACrackedType) {
  APPNotCracked         = 0,
  APPEncryptionCracked  = 1 << 1,
  APPSigningCracked     = 1 << 2,
  APPCracked            = !APPNotCracked | APPEncryptionCracked | APPSigningCracked
};

@interface CJACracked : NSObject

@property (nonatomic, assign, getter = isSigningCracked) BOOL signingCracked;
@property (nonatomic, assign, getter = isEncryptionCracked) BOOL encryptionCracked;

@property (nonatomic, assign, getter = isCracked) CJACrackedType cracked;

@end
