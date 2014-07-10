//
//  MediaViewController.m
//  Story
//
//  Created by Roman Serga on 7/8/14.
//  Copyright (c) 2014 Roman Serga. All rights reserved.
//

#import "MediaViewController.h"

@interface MediaViewController ()

@end

@implementation MediaViewController

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
    self.player1 = [[MPMoviePlayerController alloc]initWithContentURL:[NSURL URLWithString:@"http://kp.cdn.yandex.net.cache-kiev08.cdn.yandex.net/596274/kinopoisk.ru-A-Walk-Among-the-Tombstones-216243.mp4"]];
    self.player1.view.frame = CGRectMake(0, 65,
                                        320, 180);
    [self.view addSubview:self.player1.view];
    [self.player1 prepareToPlay];
    self.player1.controlStyle = MPMovieControlStyleDefault;
    self.player1.fullscreen = YES;
    [self.player1 play];
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

@end
