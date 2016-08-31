//
//  LoginViewController.m
//  ComputerPaperRecommender
//
//  Created by 赵俊法 on 16/8/30.
//  Copyright © 2016年 Eight. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()<NSURLConnectionDataDelegate>
{
    NSMutableData * receiveData_;
}
@end

@implementation LoginViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    

    //声明事件loadWebRequest
    [_login addTarget:self action:@selector(loadWebRequest:) forControlEvents:UIControlEventTouchUpInside];
    
    //把login添加到view上
    //[self.view addSubview:_login];
    
}

- (void)loadWebRequest : (id)sender{//加载网络请求
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


//接收网络请求的返回结果response
- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
    NSLog(@"%@",response);
}

//接收网络相应数据
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    if (receiveData_ == nil) {
        receiveData_ = [[NSMutableData alloc] init];
    }
    //拼接data数据
    [receiveData_ appendData:data];
}

//网络响应结束
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSLog(@"网络响应结束");
    //解析
    id obj = [NSJSONSerialization JSONObjectWithData:receiveData_ options:0 error:nil];
    NSLog(@"%@",obj);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
