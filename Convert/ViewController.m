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
#import "Unit.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic) NSDecimalNumber *valueToConvert;
@property (strong, nonatomic) IBOutlet UITextField *valueToConvertTextField;

@property (strong, nonatomic) Unit *unitToUse;

@property (strong, nonatomic) Distance* distance;
@property (strong, nonatomic) Value* value;

- (IBAction)goButtonPressed:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    
//    self.convertedValuesTableView = [[UITableView alloc] init];
    
    self.unitToUse = self.unitsToUse[0];
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
    return [self.unitsToUse count] - 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ConvertedValuesCell" forIndexPath:indexPath];
    
    NSDecimalNumber *valueToBaseUnit = [ConversionTool convertToBaseUnit:self.unitToUse value:self.valueToConvert];
    NSDecimalNumber *convertedValueFromBaseUnit = [ConversionTool convertFromBaseUnit:self.unitsToUse[indexPath.row + 1] value:valueToBaseUnit];
    
    cell.textLabel.text = [convertedValueFromBaseUnit stringValue];
    
    return cell;
}

- (IBAction)goButtonPressed:(UIButton *)sender {
    self.valueToConvert = [[NSDecimalNumber alloc] initWithFloat:[self.valueToConvertTextField.text floatValue]];
//    
//    NSDecimalNumber* baseValue = [ConversionTool convertToBaseUnit:self.value];
    
    [self.convertedValuesTableView reloadData];
}
@end
