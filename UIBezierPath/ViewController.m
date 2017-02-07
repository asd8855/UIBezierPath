//
//  ViewController.m
//  UIBezierPath
//
//  Created by libo on 2017/2/7.
//  Copyright © 2017年 蝉鸣. All rights reserved.
//

#import "ViewController.h"
#import "CanvasView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    self.view.backgroundColor = [UIColor whiteColor];
    CanvasView *view = [[CanvasView alloc]initWithFrame:self.view.bounds];
    view.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:view];
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
