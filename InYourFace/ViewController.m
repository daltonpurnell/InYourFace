//
//  ViewController.m
//  InYourFace
//
//  Created by Dalton on 4/16/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self presentAlertViewController];
}

-(void)presentAlertViewController {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:[self randomTitle] message:@"You only have 2 options" preferredStyle:UIAlertControllerStyleAlert];
    
    [alertController addAction:[UIAlertAction actionWithTitle:@"Never again!" style:UIAlertActionStyleDestructive handler:nil]];
 
    [alertController addAction:[UIAlertAction actionWithTitle:@"Hit me baby!" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        [self presentAlertViewController];
    }]];
    
//    [alertController addAction:[UIAlertAction actionWithTitle:@"A third choice" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
//        self.view.backgroundColor = [UIColor grayColor];
//    }]];
    
    [self presentViewController:alertController animated:YES completion:nil];
}


- (NSString *)randomTitle {
    
    int index = arc4random_uniform([self lines].count);
    return [self lines][index];
    
}

- (NSArray *)lines {
    
    return @[@"If peeing is cool, consider me Miles Davis",
             @"We don't need no stinking badges",
             @"Thank you very little",
             @"You can't fight in here. This is a war room.",
             @"There's no crying in baseball",
             @"I have nipples, greg. Could you milk me?",
             @"You could be drinking whole, if you wanted to.",
             @"Fat guy in a little coat",
             @"How can we be expected to teach children how to read if they can't even fit inside the building?"];
    
}


@end
