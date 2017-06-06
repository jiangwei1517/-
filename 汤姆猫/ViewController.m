//
//  ViewController.m
//  汤姆猫
//
//  Created by jiangwei18 on 17/6/6.
//  Copyright © 2017年 jiangwei18. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)drink;
- (IBAction)cymbal;
- (IBAction)angry;
- (IBAction)eat;
- (IBAction)fart;
- (IBAction)pie;
- (IBAction)scratch;
- (IBAction)leftFoot;
- (IBAction)rightFoot;
- (IBAction)stomach;
- (IBAction)knockOut;

@property (weak, nonatomic) IBOutlet UIImageView *ivCat;

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

- (IBAction)drink {
    [self doAnimateWith:81 and:@"drink"];
}

- (IBAction)cymbal {
    [self doAnimateWith:13 and:@"cymbal"];
}

- (IBAction)angry {
    [self doAnimateWith:26 and:@"angry"];
}

- (IBAction)eat {
    [self doAnimateWith:40 and:@"eat"];
}

- (IBAction)fart {
    [self doAnimateWith:28 and:@"fart"];
}

- (IBAction)pie {
    [self doAnimateWith:24 and:@"pie"];
}

- (IBAction)scratch {
    [self doAnimateWith:56 and:@"scratch"];
}

- (IBAction)leftFoot {
    [self doAnimateWith:30 and:@"footRight"];
}

- (IBAction)rightFoot {
       [self doAnimateWith:30 and:@"footLeft"];
}

- (IBAction)stomach {
    [self doAnimateWith:34 and:@"stomach"];
}

- (IBAction)knockOut {
    [self doAnimateWith:81 and:@"knockout"];
}

-(void)doAnimateWith:(int)count and:(NSString*) name{
    if ([self.ivCat isAnimating]) {
        return;
    }
    NSMutableArray *imageArray = [NSMutableArray new];
    for(int i = 0;i<count;i++){
        NSString *imageName = [NSString stringWithFormat:@"%@_%02d", name, i];
        NSString* imagePath = [[NSBundle mainBundle] pathForResource:imageName ofType:@".jpg"];
        UIImage *image = [UIImage imageWithContentsOfFile:imagePath];
        [imageArray addObject:image];
    }
    self.ivCat.animationImages = imageArray;
    self.ivCat.animationDuration = 3;
    self.ivCat.animationRepeatCount = 1;
    [self.ivCat startAnimating];
    [self.ivCat performSelector:@selector(setAnimationImages: ) withObject:nil afterDelay:3];
}
@end
