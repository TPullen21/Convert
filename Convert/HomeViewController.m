//
//  HomeViewController.m
//  Convert
//
//  Created by Tom Pullen on 08/06/2015.
//  Copyright (c) 2015 Tom Pullen. All rights reserved.
//

#import "HomeViewController.h"
#import "ViewController.h"
#import "ConversionTool.h"

@interface HomeViewController ()
- (IBAction)distanceButtonPressed:(UIButton *)sender;
- (IBAction)temperatureButtonPressed:(UIButton *)sender;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ([segue.identifier isEqualToString:@"HomeViewControllerToConvertedValuesViewController"]) {
        ViewController *vc = segue.destinationViewController;
        vc.unitsToUse = (NSMutableArray *)sender;
    }
}


- (IBAction)distanceButtonPressed:(UIButton *)sender {
    [self performSegueWithIdentifier:@"HomeViewControllerToConvertedValuesViewController" sender:[ConversionTool getDistanceArray]];
}

- (IBAction)temperatureButtonPressed:(UIButton *)sender {
}
@end
