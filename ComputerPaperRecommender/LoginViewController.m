//
//  LoginViewController.m
//  ComputerPaperRecommender
//
//  Created by 赵俊法 on 16/8/30.
//  Copyright © 2016年 Eight. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    

    //声明事件loadWebRequest
    [_login addTarget:self action:@selector(loadWebRequest:) forControlEvents:UIControlEventTouchUpInside];
    
    //把login添加到view上
    [self.view addSubview:_login];
    
}

- (void)loadWebRequest {//加载网络请求
    //URL
    NSURL * url = [NSURL URLWithString:@"http://ml.jlu.edu.cn/prs/users/login.php"];
    //URLRequest post请求方式
    NSMutableURLRequest * request = [NSMutableURLRequest requestWithURL:url];
    [request setHTTPMethod:@"POST"];
    //请求参数
    NSString * userNameStr = [_inName text];
    NSString * passWordStr = [_inPassWord text];
    //请求参数的拼接
    NSString * postParam = [NSString stringWithFormat:@"userName=%@&password=%@",userNameStr,passWordStr];
    //进行格式转换
    NSData * postData = [postParam dataUsingEncoding:NSUTF8StringEncoding];
    //post参数使用如下方法进行赋值
    [request setHTTPBody:postData];
    
    //URLconnection
    NSURLConnection * connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    [connection start];
     
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
