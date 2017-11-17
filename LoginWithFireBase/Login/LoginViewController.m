//
//  LoginViewController.m
//  VES
//
//  Created by 학철 on 2017. 10. 28..
//  Copyright © 2017년 학철. All rights reserved.
//

#import "LoginViewController.h"
#import "MainViewController.h"
#import "Define.h"
#import "NSMutableAttributedString+Utility.h"

#define TAG_BTN_TUTORIAL_CLOSE  100
#define TAG_BTN_GOOGLE          150
#define TAG_BTN_FACEBOOK        151
#define TAG_BTN_KAKAOTALK       152
#define TAG_BTN_EMAIL           153

@interface LoginViewController () <UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UIView *loginView;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (nonatomic, strong) NSArray *arrTutorialImg;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;
@property (weak, nonatomic) IBOutlet UIButton *btnTotourialClose;

@property (weak, nonatomic) IBOutlet UIButton *btnFaceBook;
@property (weak, nonatomic) IBOutlet UIButton *btnGoogle;
@property (weak, nonatomic) IBOutlet UIButton *btnKakaoTalk;
@property (weak, nonatomic) IBOutlet UIButton *btnEmail;
@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBarHidden = YES;
    _scrollView.delegate = self;
    _scrollView.hidden = YES;
    _pageControl.hidden = YES;
    _loginView.layer.masksToBounds = YES;
    _loginView.layer.cornerRadius = 5.0;
    
    _btnTotourialClose.tag = TAG_BTN_TUTORIAL_CLOSE;
    _btnFaceBook.tag = TAG_BTN_FACEBOOK;
    _btnGoogle.tag = TAG_BTN_GOOGLE;
    _btnKakaoTalk.tag = TAG_BTN_KAKAOTALK;
    _btnEmail.tag = TAG_BTN_EMAIL;
    
//    NSMutableAttributedString *attr = [[NSMutableAttributedString alloc] initWithString:@"By Email"];
//    [attr setUnderlineWithColor:[UIColor whiteColor]];
//    [_btnEmail setAttributedTitle:attr forState:UIControlStateNormal];
//    _loginView.layer.shadowOffset = CGSizeMake(-1, 1);
//    _loginView.layer.shadowRadius = 5;
//    _loginView.layer.shadowOpacity = 0.5;
    
    
    BOOL tutorialShow = [[NSUserDefaults standardUserDefaults] boolForKey:UD_TUTORIAL_SHOW];
    if (tutorialShow == NO){
        _scrollView.hidden = NO;
        _pageControl.hidden = NO;
    }
}


- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    
//    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
//    UINavigationController *rootNaviCon = [storyboard instantiateViewControllerWithIdentifier:@"RootNavigationController"];
//
//    [rootNaviCon setViewControllers:@[[storyboard instantiateViewControllerWithIdentifier:@"VESViewController"]]];

//    MainViewController *mainViewController = [storyboard instantiateInitialViewController];
//    mainViewController.rootViewController = rootNaviCon;
//    [mainViewController setupWithType:5];
//
//    UIWindow *window = UIApplication.sharedApplication.delegate.window;
//    window.rootViewController = mainViewController;
//
//    [UIView transitionWithView:window
//                      duration:0.3
//                       options:UIViewAnimationOptionTransitionCrossDissolve
//                    animations:nil
//                    completion:nil];
   
}
#pragma mark - UIScrollViewDelegate
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    NSInteger pageNumber = scrollView.contentOffset.x / _scrollView.frame.size.width;
    _pageControl.currentPage = pageNumber;
}
- (IBAction)changePage:(UIPageControl *)sender {
    CGFloat x = sender.currentPage * _scrollView.frame.size.width;
    _scrollView.contentOffset = CGPointMake(x, -20.0);
}
- (IBAction)onClickBtnAction:(UIButton *)sender {
    if (sender.tag == TAG_BTN_TUTORIAL_CLOSE){
        _scrollView.hidden = YES;
        [[NSUserDefaults standardUserDefaults] setBool:YES forKey:UD_TUTORIAL_SHOW];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
    else if (sender.tag == TAG_BTN_FACEBOOK){
        
    }
    else if (sender.tag == TAG_BTN_GOOGLE){
        
    }
    else if (sender.tag == TAG_BTN_KAKAOTALK){
        
    }
    else if (sender.tag == TAG_BTN_EMAIL){
        
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end
