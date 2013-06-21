//
//  ViewController.m
//  Alex


#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize moveableView;
- (void)viewDidLoad
{
    moveableView.backgroundColor = [UIColor redColor];
    UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePan:)];
    [moveableView addGestureRecognizer:panGesture];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
/* method for define action that work on Pan Gesture */

- (void)handlePan:(UIPanGestureRecognizer*)recognizer {
    
    CGPoint translation = [recognizer translationInView:recognizer.view];
    
    recognizer.view.center=CGPointMake(recognizer.view.center.x+translation.x, recognizer.view.center.y+ translation.y);
    
    [recognizer setTranslation:CGPointMake(0, 0) inView:recognizer.view];
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
