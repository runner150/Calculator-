//
//  ViewController.m
//  Calculator (2)
//
//  Created by Kyle Ettinger on 6/16/16.
//  Copyright © 2016 Kyle Ettinger. All rights reserved.
//

#import "ViewController.h"
#import "Calculator.h"

@interface ViewController ()

@property (nonatomic,weak) IBOutlet UITextField *firstValueTextField;
@property (nonatomic,weak) IBOutlet UITextField *secondValueTextField;

@property (nonatomic,weak) IBOutlet UILabel *Label;

@property (nonatomic,weak) UIButton *additionButtonClicked;

@property (nonatomic,weak) UIButton *subtractionButtonClicked;

@property (nonatomic,weak) UIButton *multiplicationButtonClicked;

@property (nonatomic,weak) UIButton *divisionButtonClicked;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)additionButtonClicked:(UIButton *)sender {
    
    
    
    double firstValueTextField = [self.firstValueTextField.text doubleValue];
    
    double secondValueTextField = [self.secondValueTextField.text doubleValue];
    
    Calculator *calculator = [[Calculator alloc] init];
    
    double endValue = [calculator  add:firstValueTextField secondNumber:secondValueTextField] ;
    
    NSString *endValueString = [NSString stringWithFormat:@"%f", endValue] ;
    
    self.Label.text = endValueString;
    
    
    
    
}

- (IBAction)subtractionButtonClicked:(UIButton *)sender  {
    
    
    double firstValueTextField = [self.firstValueTextField.text doubleValue];
    
    double secondValueTextField = [self.secondValueTextField.text doubleValue];
    
    Calculator *calculator = [[Calculator alloc] init];
    
    double endValue = [calculator  subtract:firstValueTextField secondNumber:secondValueTextField] ;
    
    NSString *endValueString = [NSString stringWithFormat:@"%f", endValue] ;
    
    self.Label.text = endValueString;
    
    
    
    
    
}

- (IBAction)MultiplicationButtonClicked:(UIButton *)sender  {
    
    
    double firstValueTextField = [self.firstValueTextField.text doubleValue];
    
    double secondValueTextField = [self.secondValueTextField.text doubleValue];
    
    Calculator *calculator = [[Calculator alloc] init];
    
    double endValue = [calculator  multiply:firstValueTextField secondNumber:secondValueTextField] ;
    
    NSString *endValueString = [NSString stringWithFormat:@"%f", endValue] ;
    
    self.Label.text = endValueString;
    
    
    
    
    
    
}

- (IBAction)divisionButtonClicked:(UIButton *)sender  {
    
    double firstValueTextField = [self.firstValueTextField.text doubleValue];
    
    double secondValueTextField = [self.secondValueTextField.text doubleValue];
    
    Calculator *calculator = [[Calculator alloc] init];
    
    double endValue = [calculator  divide:firstValueTextField secondNumber:secondValueTextField] ;
    
    NSString *endValueString = [NSString stringWithFormat:@"%f", endValue] ;
    
    self.Label.text = endValueString;
}

@end
