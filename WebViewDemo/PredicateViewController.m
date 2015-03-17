//
//  PredicateViewController.m
//  WebViewDemo
//
//  Created by Jordan Nelson on 3/17/15.
//  Copyright (c) 2015 Jordan Nelson. All rights reserved.
//

#import "PredicateViewController.h"

@interface PredicateViewController ()

@end

@implementation PredicateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSArray *dogs = @[@"Rottweiler", @"Doberman", @"Labrador", @"Poodle"];
    
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'o'"];

    NSArray *results = [dogs filteredArrayUsingPredicate:predicate];
    
    for (NSString *result in results){
        NSLog(@"%@\n", result);
    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
