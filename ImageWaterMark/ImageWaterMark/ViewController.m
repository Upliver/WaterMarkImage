
/**
 *  ViewController.m
 */
#import "ViewController.h"
#import "UIImage+LL.h"

@interface ViewController ()

@property(nonatomic, weak) UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:self.view.bounds];
    self.imageView = imageView;
    imageView.backgroundColor = [UIColor redColor];
    
    /**
     *  这个方法只需要传入一个需要被打水印的图片名字和一个水印图标的名字就可以自动合成水印图片
     */
    UIImage *image = [UIImage waterMarkWithImageName:@"bg.jpeg" andMarkImageName:@"logo"];
    imageView.image = image;
    
    [self.view addSubview:imageView];
    
}


@end
