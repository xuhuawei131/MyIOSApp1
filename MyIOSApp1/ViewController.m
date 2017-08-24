//
//  ViewController.m
//  MyIOSApp1
//
//  Created by lingdian on 17/8/24.
//  Copyright © 2017年 lingdian. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

//IBOutlet 没有什么意义 这个是系统些给你看的，告诉你这个变量是从故事版Main.storyboard导出来的
@property (weak, nonatomic) IBOutlet UITextField *editText;

@end

@implementation ViewController

//函数左边的小实心圆 表示在这个函数的左边 有一个小 实心的圆圈 这表示这个函数 已经和某一个控件发生了关联
//如果鼠标放在圆圈上面  关联的控件会高亮
//函数的结尾是（IBAction）表示 这是一个事件响应函数，但是 他的本质 其实就是一个void
//id类型是void＊ 所有对象都可以赋值给id类型
//sender是触发事件的控件
- (IBAction)onBtn1Click:(id)sender {
    //由于edittext是属性 所以可以用self.方式访问
    NSString* srcText=self.editText.text;
    
    NSArray* array=@[@"fuck",@"shit",@"demn"];
    BOOL isDirty=FALSE;
    
    for (int i=0; i<array.count; i++) {
        //rangeOfString 查词位置  如果NSRange的location为NSNotFound 那么表示没有找到  alt键按住查看函数 里面 有提到
        NSRange r=[srcText rangeOfString:array[i]];
        if(r.location!=NSNotFound){//如果不是没有找到的话
            isDirty=TRUE;
            srcText=[srcText stringByReplacingOccurrencesOfString:array[i] withString:@"***"];
        }
    }
    
    //给editText再赋值
    self.editText.text=srcText;
    
    //如果有敏感词 那么设置背景颜色为红色
    if(isDirty){
        UIColor* redColor=[[UIColor alloc]initWithRed:1 green:.5 blue:0 alpha:1];
        [self.editText setBackgroundColor:redColor];
    }else{
        UIColor* greenColor=[[UIColor alloc]initWithRed:0 green:1 blue:0 alpha:1];
        [self.editText setBackgroundColor:greenColor];
    }
    
}




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
