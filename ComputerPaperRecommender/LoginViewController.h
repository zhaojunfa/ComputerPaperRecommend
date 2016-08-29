//
//  LoginViewController.h
//  ComputerPaperRecommender
//
//  Created by Jum on 16-8-28.
//  Copyright (c) 2016年 Eight. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *_userName;

@property (weak, nonatomic) IBOutlet UILabel *_password;

@property (weak, nonatomic) IBOutlet UITextField *_inName;


@property (weak, nonatomic) IBOutlet UITextField *_inPassword;


- (IBAction)_login:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *_Register;

@property (weak, nonatomic) IBOutlet UIButton *_forgotPassword;


















@property (nonatomic,strong) UILabel *_userName;
@property (nonatomic,strong) UILabel *_passwd;
@property (nonatomic,strong) UIButton *_login;
@property (nonatomic,strong) UIButton *sign;
@property (nonatomic,strong) UITextField *_inname;
@property (nonatomic,strong) UITextField *_inpaswd;

@end
