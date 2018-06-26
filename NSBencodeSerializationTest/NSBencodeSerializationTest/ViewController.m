//
//  ViewController.m
//  NSBencodeSerializationTest
//
//  Created by caobo56 on 2018/6/26.
//  Copyright © 2018年 caobo56. All rights reserved.
//

#import "ViewController.h"
#import "NSBencodeSerialization.h"
#import "NSData+HexString.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)test{
    NSString * test = @"6c3237333af9beb4d97472616e734d736700000000f9000000789f8d7808ae8489b2c32c10da081a2035663962333763626530343734666339616264323135393134346432323436374b08ffffffff0f1000230a06666163654944120663616f626f72244c4b08ffffffff0f1000230a1073656375726974795175657374696f6e1206313131313131244c4b08ffffffff0f1000230a055f7479706512024944244c5308b18489b2c32c10da081a2033346664336139306165353834353666613332613035653065666665663961382a1976a914e317020dcf616012e150135736f69567c0ad1e1088ac3200545b0a0018ffffffff0f5c5b0a0018ffffffff0f5c5b0a0018ffffffff0f5c6001692e4242366401000065";
    
    NSData * test_data = [NSData dataFormHexString:test];
    
    NSError * error;
    NSArray * arr = [NSBencodeSerialization bencodedObjectWithData:test_data error:&error];
    
    NSLog(@"arr = %@",arr);
}

@end
