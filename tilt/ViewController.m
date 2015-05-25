//
//  ViewController.m
//  tilt
//
//  Created by Aleksandr Budnik on 15.05.15.
//  Copyright (c) 2015 Aleksandr Budnik. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIView *MaineView;
@property (weak, nonatomic) IBOutlet UIView *SecondView;

@property (weak, nonatomic) IBOutlet UISlider *mainSlider;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //[self.mainSlider addTarget:self action:@selector(MaineSlider:) forControlEvents:UIControlEventValueChanged];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)MaineSlider:(UISlider*)sender {
    NSLog(@"%@",sender);
    self.MaineView.transform = CGAffineTransformMakeRotation(2*M_PI*sender.value);
    
}

- (IBAction)SecondSlider:(UISlider*)sender {
     self.SecondView.transform = CGAffineTransformMakeRotation(2*M_PI*sender.value);
}
@end
