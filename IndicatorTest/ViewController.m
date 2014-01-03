//
//  ViewController.m
//  IndicatorTest
//
//  Created by SDT-1 on 2014. 1. 3..
//  Copyright (c) 2014년 steve. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *indicator1;

@property (strong, nonatomic) UIActivityIndicatorView *indicator2;

@end

@implementation ViewController

@synthesize indicator1;

@synthesize indicator2;

- (IBAction)startIndicator:(id)sender {
    
    [indicator1 startAnimating];
    
    [indicator2 performSelector:@selector(startAnimating) withObject:nil afterDelay:0.3];
    
}


- (IBAction)stopIndicator:(id)sender {
    
    [indicator1 stopAnimating];
    
    [indicator2 performSelector:@selector(stopAnimating) withObject:nil afterDelay:0.7];
}



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    indicator2 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    indicator2.hidesWhenStopped = YES;
    indicator2.center = CGPointMake(160,200);
    
    [self.view addSubview:indicator2];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
