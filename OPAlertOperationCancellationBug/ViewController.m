//
//  ViewController.m
//  OPAlertOperationCancellationBug
//
//  Created by pronebird on 1/1/16.
//  Copyright © 2016 pronebird. All rights reserved.
//

#import "ViewController.h"
#import <Operative/Operative.h>

@interface ViewController ()

@property (nonatomic) OPOperationQueue *queue;

@end

@implementation ViewController

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    self.queue = [[OPOperationQueue alloc] init];
    
    OPAlertOperation *alertOperation = [[OPAlertOperation alloc] initWithPresentationContext:self];
    
    alertOperation.title = @"Alert title";
    
    [self.queue addOperation:alertOperation];
    
    [alertOperation cancel];
}

@end
