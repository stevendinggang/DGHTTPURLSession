//
//  DGHTTPManager.h
//  DGHTTPURLSession
//
//  Created by Steven on 16/7/27.
//  Copyright © 2016年 Steven. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>

@interface DGHTTPManager : AFHTTPSessionManager

//单例
+ (instancetype)sharedManager;

/**
 *  自定义 GET 请求
 *
 *  @param path            路径
 *  @param parameters      参数
 *  @param comletionHandle 成功回调
 */
- (void)GET:(NSString *)path parameters:(id)parameters comletion:(void(^)(id responseObject,NSError *error))comletionHandle;

/**
 *  自定义 POST 请求
 *
 *  @param path            路径
 *  @param parameters      参数
 *  @param comletionHandle 完成回调
 */
- (void)POST:(NSString *)path parameters:(id)parameters comletion:(void(^)(id responseObject,NSError *error))comletionHandle;



@end












