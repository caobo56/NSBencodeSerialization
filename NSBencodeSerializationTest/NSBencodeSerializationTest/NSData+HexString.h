//
//  NSData+HexString.h
//  textDemo
//
//  Created by caobo56 on 2018/6/25.
//  Copyright © 2018年 dahua. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData(HexString)

+ (NSData*)dataFormHexString:(NSString*)hexString;

+ (NSString *)hexStringFromData:(NSData*)data;

@end
