//
//  ViewController.m
//  jsonTest
//
//  Created by Ikeda Jun on 13/02/12.
//  Copyright (c) 2013年 mycompany. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    NSURL        *url  = [NSURL URLWithString:@"http://itunes.apple.com/jp/rss/topfreeapplications/limit=5/json"];
    NSURLRequest *req  = [NSURLRequest requestWithURL:url];
    NSData       *data = [NSURLConnection sendSynchronousRequest:req returningResponse:nil error:nil];
    NSDictionary *dic  = [NSJSONSerialization JSONObjectWithData:data options: 0 error:nil];
    self.textFielf.text = @"aaa";
    NSLog(@"%@", [[dic objectForKey:@"feed"] objectForKey:@"entry"]);
}
     

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
