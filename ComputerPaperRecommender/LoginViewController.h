//
//  LoginViewController.h
//  ComputerPaperRecommender
//
//  Created by 赵俊法 on 16/8/30.
//  Copyright © 2016年 Eight. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *userName;

@property (strong, nonatomic) IBOutlet UILabel *passWord;

@property (strong, nonatomic) IBOutlet UITextField *inName;

@property (strong, nonatomic) IBOutlet UITextField *inPassWord;

@property (strong, nonatomic) IBOutlet UIButton *login;

@property (strong, nonatomic) IBOutlet UIButton *goToRegister;

@property (strong, nonatomic) IBOutlet UIButton *forgetPassWord;







@end
