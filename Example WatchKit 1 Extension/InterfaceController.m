//
//  InterfaceController.m
//  Example WatchKit 1 Extension
//
//  Created by Renzo Crisostomo on 12/08/16.
//  Copyright © 2016 Renzo Crisóstomo. All rights reserved.
//

#import "InterfaceController.h"
#import <AFNetworking/AFNetworking.h>

@interface InterfaceController()

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];

    NSURL *URL = [NSURL URLWithString:@"https://google.com"];
    NSURLRequest *request = [NSURLRequest requestWithURL:URL];

    NSURLSessionDataTask *dataTask = [manager dataTaskWithRequest:request completionHandler:^(NSURLResponse *response, id responseObject, NSError *error) {
        if (error) {
            NSLog(@"Watch extension: Error: %@", error);
        } else {
            NSLog(@"Watch extension: %@ %@", response, responseObject);
        }
    }];
    [dataTask resume];
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



