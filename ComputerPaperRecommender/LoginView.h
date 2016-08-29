//
//  LoginView.h
//  ComputerPaperRecommender
//
//  Created by 赵俊法 on 16/8/24.
//  Copyright © 2016年 Eight. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginView : UIView
@property (nonatomic,strong) UILabel *_userName;
@property (nonatomic,strong) UILabel *_passwd;
@property (nonatomic,strong) UIButton *_login;
@property (nonatomic,strong) UIButton *sign;
@property (nonatomic,strong) UITextField *_inname;
@property (nonatomic,strong) UITextField *_inpaswd;


-(instancetype)initWithFrame:(CGRect)frame andBtn:(UIButton *)btn;









@end
