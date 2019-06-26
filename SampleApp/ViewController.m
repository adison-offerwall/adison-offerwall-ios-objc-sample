//
//  ViewController.m
//  SampleApp
//
//  Created by Sangkyoon Nam on 26/06/2019.
//  Copyright © 2019 NBT. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [[Adison shared] initializeWith:@"jqXq9NuKFVGoMEcQsdBwZrYA"];
    
    [[Adison shared] setServer:StageProduction];
    [[Adison shared] isTester:YES];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];

}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    [[Adison shared] presentOfferwall:self adId:nil animated:NO completion:nil];
}


@end
