//
//  InputViewController.m
//  Lab4
//
//  Created by Adrian on 3/20/15.
//  Copyright (c) 2015 Adrian. All rights reserved.
//

#import "InputViewController.h"

@interface InputViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *inputField;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *saveButton;

@end

@implementation InputViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.inputField becomeFirstResponder];
}

- (BOOL) textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    
    NSLog(@"%@", textField.text);
    
    textField.text = nil;
    return YES;
}

-(BOOL) textField: (UITextField *) textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    NSString *changedString = [textField.text stringByReplacingCharactersInRange:range withString:string];
    [self validateSaveButtonForText: changedString];
    return YES;
}

-(void) validateSaveButtonForText: (NSString *) text{
    self.saveButton.enabled = ([text length] > 0);
}

- (IBAction)saveButtonTapped:(id)sender {
    if(self.completionHandler){
        self.completionHandler(self.inputField.text);
    }
}
- (IBAction)CancelButtonTapped:(id)sender {
    if(self.completionHandler){
        self.completionHandler(nil);
    }
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
