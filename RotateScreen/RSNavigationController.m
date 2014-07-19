//
//  RSNavigationController.m
//  RotateScreen
//
//  Created by 山田宏道 on 2014/07/19.
//  Copyright (c) 2014年 Torques Inc. All rights reserved.
//

#import "RSNavigationController.h"

@interface RSNavigationController ()

@end

@implementation RSNavigationController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - for handle rotation.

BOOL isIPhone(){
	return (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone);
}

// iPhoneでは縦のみ対応、iPadでは回転対応.

- (BOOL)shouldAutorotate
{
	if( isIPhone() ){
		return NO;
	}
	else{
		return YES;
	}
}

- (NSUInteger)supportedInterfaceOrientations
{
	if( isIPhone() ){
		return UIInterfaceOrientationMaskPortrait;
	}
	else{
		return UIInterfaceOrientationMaskAll;
	}
}


@end
