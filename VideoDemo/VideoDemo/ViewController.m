//
//  ViewController.m
//  VideoDemo
//
//  Created by sassyinfotech on 7/15/16.
//  Copyright © 2016 sassyinfotech. All rights reserved.
//

#import "ViewController.h"
#import <MediaPlayer/MediaPlayer.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)btnPlay_Clicked:(id)sender {
    
    
    NSURL *url=[[NSURL alloc] initWithString:@"http://fantasy-sports.sipl-demo.com//fantasy/assets/uploads/SampleVideo.mp4"];
    
//    NSURL *fileURL = [NSURL URLWithString:url];
    
    MPMoviePlayerController *moviePlayerController = [[MPMoviePlayerController alloc] initWithContentURL:url];
    [moviePlayerController.view setFrame:CGRectMake(0, 70, 320, 270)];
    [self.view addSubview:moviePlayerController.view];
    moviePlayerController.fullscreen = YES;
    [moviePlayerController play];
}

@end
