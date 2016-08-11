//
//  SettingsRepository.m
//  twoViews
//
//  Created by Sergio Orozco  on 8/11/16.
//  Copyright © 2016 Sergio Orozco . All rights reserved.
//

#import "SettingsRepository.h"
#import "Settings.h"
#import "AFNetworking.h"
#import "AFURLSessionManager.h"


@implementation SettingsRepository
static id _sharedInstance;

+ (id) sharedInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [[self alloc] init];
    });
    return _sharedInstance;
}

- (id) init {
    if (_sharedInstance){
        return _sharedInstance;
    }
    else{
        if (self = [super init]){
            //init properties
        }
        return self;
    }
}

-(void)getSettings:(void (^)(Settings *settings, NSError *error))block {
    NSURL *URL = [NSURL URLWithString:@"http://headers.jsontest.com"];
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager GET:URL.absoluteString parameters:nil progress:nil success:^(NSURLSessionTask *task, id responseObject) {
        
        Settings *settings = [MTLJSONAdapter modelOfClass:Settings.class fromJSONDictionary:responseObject error:nil];
        block(settings, nil);
        
    } failure:^(NSURLSessionTask *operation, NSError *error) {
        block(nil, error);
    }];
}

@end
