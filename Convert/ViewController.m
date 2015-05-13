//
//  ViewController.m
//  Convert
//
//  Created by Tom Pullen on 12/05/2015.
//  Copyright (c) 2015 Tom Pullen. All rights reserved.
//

#import "ViewController.h"
#import "Distance.h"
#import "ConversionTool.h"
#import "Value.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic) float valueToConvert;
@property (strong, nonatomic) IBOutlet UITextField *valueToConvertTextField;
- (IBAction)goButtonPressed:(UIButton *)sender;

@property (strong, nonatomic) Distance* distance;
@property (strong, nonatomic) Value* value;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    
//    self.convertedValuesTableView = [[UITableView alloc] init];
    
    self.distance = [[Distance alloc] init];
    self.value = self.distance.inches;
//
    [self.convertedValuesTableView setDataSource:self];
    [self.convertedValuesTableView setDelegate:self];
//
//    [self.convertedValuesTableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ConvertedValuesCell" forIndexPath:indexPath];
    
    cell.textLabel.text = [NSString stringWithFormat:@"%f", indexPath.row * self.valueToConvert];
    
    return cell;
}

- (IBAction)goButtonPressed:(UIButton *)sender {
    self.valueToConvert = [self.valueToConvertTextField.text floatValue];
    self.valueToConvert = self.valueToConvert;
//    
//    NSDecimalNumber* baseValue = [ConversionTool convertToBaseUnit:self.value];
    
    [self.convertedValuesTableView reloadData];
}
@end
