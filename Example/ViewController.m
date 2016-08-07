//
//  ViewController.m
//  Example
//
//  Created by Renzo Crisóstomo on 31/07/16.
//  Copyright © 2016 Renzo Crisóstomo. All rights reserved.
//

#import "ViewController.h"
#import <AFNetworking/AFNetworking.h>
@import ImagePicker;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self doSomethingWithAFNetworking];
}

- (void)doSomethingWithAFNetworking {
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];

    NSURL *URL = [NSURL URLWithString:@"https://google.com"];
    NSURLRequest *request = [NSURLRequest requestWithURL:URL];

    NSURLSessionDataTask *dataTask = [manager dataTaskWithRequest:request completionHandler:^(NSURLResponse *response, id responseObject, NSError *error) {
        if (error) {
            NSLog(@"Error: %@", error);
        } else {
            NSLog(@"%@ %@", response, responseObject);
        }
    }];
    [dataTask resume];
}

- (IBAction)showImagePicker {
    ImagePickerController *controller = [[ImagePickerController alloc] init];
    [self presentViewController:controller animated:YES completion:nil];
}

@end
