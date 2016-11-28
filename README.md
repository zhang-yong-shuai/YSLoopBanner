# YSLoopBanner
An Infinite loop scrollView for banner.
无限循环轮播图（只使用了3个imageView）
此控件只使用3个imagView控件，并且支持定时器自动滚动播放。实现的大致逻辑：在scrollView上添加3个imageView，每滚动一页，通过KVO观察scrollView的contentOffset的变化，判断需要添加的3张图片的索引号，并重置中间的imageView为当前页（中间的imageView永远都是当前页）。需要注意的是，临界值的判断。

调用示例：
```
YSLoopBanner *loop = [[YSLoopBanner alloc] initWithFrame:CGRectMake(0, 100, 200, 200) scrollDuration:3.f];
    [self.view addSubview:loop];
    loop.imageURLStrings = @[@"1.jpg", @"2.jpg", @"3.jpg"];
    loop.clickAction = ^(NSInteger index) {
        NSLog(@"curIndex: %ld", index);
    };
```
