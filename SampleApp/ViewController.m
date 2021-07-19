//
//  ViewController.m
//  SampleApp
//
//  Created by Sangkyoon Nam on 26/06/2019.
//  Copyright © 2019 NBT. All rights reserved.
//

#import "ViewController.h"

#import <AdisonOfferwallSDK/AdisonOfferwallSDK.h>
#import <PayboocOfwModule/PayboocOfwModule-Swift.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [[Adison shared] setServer:StageDevelopment];
    [[Adison shared] isTester:YES];
    
    [PayboocOfw loadModule];
    
    [[Adison shared] availableReward:^(NSString *name, NSString * unit, long points) {
        NSLog(@"point= %ld", points);
    }];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];

}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (IBAction)buttonPressed:(id)sender {
    [[Adison shared] presentOfferwall:self completion:nil];
}



@end
