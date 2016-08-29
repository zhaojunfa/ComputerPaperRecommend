//
//  LoginView.m
//  ComputerPaperRecommender
//
//  Created by 赵俊法 on 16/8/24.
//  Copyright © 2016年 Eight. All rights reserved.
//

#import "LoginView.h"

@implementation LoginView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(instancetype)initWithFrame:(CGRect)frame andBtn:(UIButton *)btn{
    self=[super initWithFrame:frame];
    if(self){
        self.backgroundColor=[UIColor grayColor];
        [self creatBtn];
    }
    return self;
}
-(void)creatBtn{
    UILabel *_username;
    UILabel *_passwd;
    UIButton *_login;
    UIButton *sign;
    UITextField *_inname;
    UITextField *_inpaswd;
}


@end
