#介绍
* TabBar使用 （TabBar，TabBarView，TabController）
* Drawer使用 （DrawerHeader，ListTile）
* BottomNavigationBar使用 （BottomNavigationBarItem）

#基础部件
* Text 文字与文字样式
* RichText 行内多样式文字
* Container 容器
* BoxDecoration 装饰盒子(背景-color 边框-border 圆角-borderRadius 阴影-boxShadow 形状-shape 渐变-gradient 背景图像-image)

#布局
* Row 横着排列
* Column 竖着排列
* mainAxisAlignment 主轴
* crossAxis 交叉轴
* SizeBox 固定尺寸的盒子
* alignment 对其
* Stack 一摞小部件  Positioned 可指定位置小部件
* AspectRatio 宽高比盒子
* ConstrainedBox 带限制的盒子
* SingleChildScrollView 可滚动的ScrollView

#视图
* PageView 页面视图

  pageSnapping:回弹效果  
  reverse：页面倒置  
  scrollDirection：滑动方向  
  onPageChanged：页面切换回调
* PageController 调整页面显示
* PageView.builder 按需生成页面
* GridView 网格视图 （GridView.count GridView.extent GridView.builder）

#Sliver
* CustomScrollView.slivers 属性可用小部件有：（SliverList , SliverFixedExtentList , SliverGrid , SliverPadding , SliverAppBar）
* SliverGrid: 网格视图
  * SliverPadding: 为SliverGrid添加内边距
  * SliverSafeArea: 让视图再安全域显示
*SliverList 列表试图
*SliverAppBar 应用工具栏，实现悬浮头，带渐进动画的可伸缩空间
#路由 （界面跳转）
* Routes 页面 存放在 Stack(堆)中，push添加页面，pop关闭页面
* Navigator.pushNamed 带名字的路由
* initialRoute  设置初始route == home 
* InkWell 添加溅墨动画效果 

