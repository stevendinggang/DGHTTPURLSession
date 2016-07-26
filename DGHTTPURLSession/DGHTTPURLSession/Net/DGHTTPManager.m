//
//  DGHTTPManager.m
//  DGHTTPURLSession
//
//  Created by Steven on 16/7/27.
//  Copyright © 2016年 Steven. All rights reserved.
//

#import "DGHTTPManager.h"

#define DGBaseURL [NSURL URLWithString:@"http://api2.hichao.com/"]

@implementation DGHTTPManager

+ (instancetype)sharedManager{
    
    static dispatch_once_t onceToken;
    
    static DGHTTPManager *manager;
    
    dispatch_once(&onceToken, ^{
        
        manager = [[self alloc] initWithBaseURL:DGBaseURL];
        
        //设置请求的数据类型
        manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript" ,@"text/html", nil];
        
    });
    return manager;
}


- (void)GET:(NSString *)path parameters:(id)parameters comletion:(void (^)(id, NSError *))comletionHandle{
    
    [self GET:path parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        comletionHandle(responseObject,nil);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        comletionHandle(nil,error);
    }];
    
    
    
}


- (void)POST:(NSString *)path parameters:(id)parameters comletion:(void (^)(id, NSError *))comletionHandle{
    
    [self GET:path parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        comletionHandle(responseObject,nil);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        comletionHandle(nil,error);
    }];
    
    
    
    
}






@end
















