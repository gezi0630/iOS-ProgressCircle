//
//  ViewController.m
//  重绘-下载进度
//
//  Created by MAC on 2017/6/22.
//  Copyright © 2017年 GuoDongge. All rights reserved.
//

#import "ViewController.h"
#import "ProgressView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *progressLabel;
@property (weak, nonatomic) IBOutlet ProgressView *proView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

}


- (IBAction)progressChange:(UISlider *)sender {
    
    
    self.progressLabel.text = [NSString stringWithFormat:@"%.2f%%",sender.value * 100];
    
    self.proView.progress = sender.value;
    
    
}



@end
