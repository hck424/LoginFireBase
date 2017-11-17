//
//  VESViewController.m
//  VES
//
//  Created by 학철 on 2017. 10. 28..
//  Copyright © 2017년 학철. All rights reserved.
//

#import "VESViewController.h"
#import "UIViewController+LGSideMenuController.h"
@interface VESViewController ()

@end

@implementation VESViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (IBAction)onClickButtonAction:(id)sender {
    UIButton *btn = (UIButton *)sender;
    if (btn.tag == 100){
        [self.sideMenuController showLeftViewAnimated:YES completionHandler:nil];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}
@end
