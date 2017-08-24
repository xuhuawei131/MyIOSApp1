## MyIOSApp1<br />
这是第一个app的view<br />
创建项目的时候 选择了IOS －》SingleView<br />
打开main.storyboard 在右侧边栏 有两个 checkbox **Use Auto Layout**  和 **Use Size Classes**<br />
把这两个都去掉， 这两个是  自动布局的东西<br />
右侧栏下面有一个铜板的图标 点击它 下面出现的就是默认的所有的控件、拖到故事版页面上即可
![image](https://github.com/xuhuawei131/MyIOSApp1/blob/master/raw/master/Screenshots/kongjian.png)
右侧栏 有一个向下的箭头  这个是关于控件的属性 都在这里<br />
![image](https://github.com/xuhuawei131/MyIOSApp1/blob/master/raw/master/Screenshots/shuxinglan.png)

ViewControler是这个界面的控制类 所有的回调 都在这里执行<br />
按住**alt** 点击ViewControler.m文件  会在辅助窗口打开 （我们的主窗口再左边、点击故事版等都是在主窗口显示）<br />
![image](https://github.com/xuhuawei131/MyIOSApp1/blob/master/raw/master/Screenshots/fuzhuchuangkou.png)

然后点击Main.storyboard 会在主窗口打开 显示我们刚才拖进来的控件
按住**Control**，拖动控件，这时候会出现一条线 ，然后我们拖动到.m文件下的 implements 里
![image](https://github.com/xuhuawei131/MyIOSApp1/blob/master/raw/master/Screenshots/tuodongkongjian.png)

这时候会出现一个对话框，让你选择Evnet事件，比如touch up inside（在按钮上松开）我们可以理解成点击松开
也还有其他很多，比如Touch Down等等 根据自己的需求去选择

![image](https://github.com/xuhuawei131/MyIOSApp1/blob/master/raw/master/Screenshots/shijianchuangkou.png)

在Name选项 写入 我们控件触发某种事件 的回调 函数名称 类似于anroid中onclick 回调函数名称 
按下回车 xcode会帮我们在ViewControl中生成一个函数 函数名是我们刚才起的



在这个函数的左边 有一个小 实心的圆圈 这表示这个函数 已经和某一个控件发生了关联
如果鼠标放在圆圈上面  关联的控件会高亮
函数的结尾是（IBAction）表示 这是一个事件响应函数，但是 他的本质 其实就是一个void 哈哈 惊喜不惊喜！
sender 是id类型的 id类型 其实就是（void＊）类型，任何对象都可以赋值给id类型。这个是触发函数的控件的id
![image](https://github.com/xuhuawei131/MyIOSApp1/blob/master/raw/master/Screenshots/chufahuidiaohanshu.png)

运行模拟器，上面有hardware可以模拟按键
UITextField就是EditText 
如果想获取控件的对象，那么像控件的回调一样，现按住control按键，拖动辅助窗口的到头部interface里面，因为变量只能声明到interface里面，然后会弹出相似对话框。让你输入控件名称。

注意，ViewControler的.m文件也有interface，他等效于头文件中的interface，所以拖到.m文件也是一样的
@propety IBOutlet UITextField* nameInput
生成的控件对象前面有一个修饰IBOutlet，他没有实际意义，这个是系统些给你看的，告诉你这个变量是从故事版Main.storyboard导出来的。
真正代码中他是空的，相当于注释。<br />

自动生成的控件对象是一个属性，所以在回调的函数种调用这个对象的时候使用了self.nameInput去使用。<br />
CGRect rt= self.nameInput.frame获取控件的边框大小以及位置的结构体，因为没有指针*<br />
rt.origin.x是横坐标
rt.origin.y是纵坐标
ry.size.height是控件的高度
获取输入框的文本：self.nameInput.text<br />
如果想设置输入框： self.nameInput.text=@"!!!!"<br />

##写一个脏话替换的例子<br />
字符数组<br />
查找字符串<br />
rangeOfString 返回的是NSRange 看range.location==NSNotFound 是否相等<br />
修改输入框的背景颜色<br />
[self.editText setBackgroundColor:greenColor];<br />


UIColor*颜色的类，实例化用init的方式<br />
颜色值的百分比  如果是1 表示颜色最大 如果是0 表示比例最小<br />
UIColor* redColor=[[UIColor alloc]initWithRed:1 green:.5 blue:0 alpha:1];<br />


##作业
计算圆的面积的计算器<br />
Label就是TextView<br />
让模拟器支持中文<br />
