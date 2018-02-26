//
//  ViewController.m
//  StockReturns
//
//  Created by 王桂林 on 2018/2/26.
//  Copyright © 2018年 Link. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>
{
    uint8_t currentSegment;
}
@property (weak, nonatomic) IBOutlet UILabel *stockTitle;
@property (weak, nonatomic) IBOutlet UITextField *stockNumber;
@property (weak, nonatomic) IBOutlet UITextField *stockUnlockPrice;
- (IBAction)segmentValue:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *returnsValue;
- (IBAction)CaluReturns:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    currentSegment = 0;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)segmentValue:(id)sender {
    UISegmentedControl *control = (UISegmentedControl *)sender;
    NSLog(@"select segment:%li", control.selectedSegmentIndex);
    currentSegment = control.selectedSegmentIndex;
}

- (IBAction)CaluReturns:(id)sender {
    NSLog(@"stockNumber:%@",self.stockNumber.text);
    NSLog(@"stockUnlockPrice:%@",self.stockUnlockPrice.text);
    if ([self.stockNumber.text isEqualToString:@""] ||[self.stockUnlockPrice.text isEqualToString:@""]) {
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"提示" message:@"请输入有效数据" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *action = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];
        [alertController addAction:action];
        [self presentViewController:alertController animated:true completion:nil];
    }
    else
    {
        NSString *number = self.stockNumber.text;
        NSString *price = self.stockUnlockPrice.text;
        float floatnumber = [number floatValue];
        float floatprice = [price floatValue];
        
        
    }
}
@end
