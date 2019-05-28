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

#表单 （form_demo.dart）
* Theme 定制、使用、重置、覆盖主题
* TextField 文本字段、样式、监听内容变化
  使用TextEditingController监听文本字段变化
* Form 使用(TextFormField),保存与获取表单里的数据,验证表单里的值(validator),自动验证(autovalidate)
* SnackBar 屏幕底部弹出提示栏

#按钮
* FloatingActionButton 漂浮动作按钮,改变形状、背景色  
  FloatingActionButton.extended 添加带标签的悬浮按钮
* BottomAppBar 底部工具栏
* FlatButton 文字按钮  FlatButton.icon 带图标的文字按钮
* RaisedButton 按钮有背景颜色，阴影效果 (按钮主题：颜色和形状的修改)
* OutlineButton 描边按钮
* 按钮容器Container，改变按钮宽度
* 按钮容器Expanded，占满可用空间
* 按钮容器ButtonBar,一组带边距的横排显示按钮,通过Theme修改边距大小
* PopupMenuButton 弹出式菜单按钮

#输入
* Checkbox 复选框
* CheckboxListTile 带标签与图标的复选框
* Radio 单选按钮
* RadioListTile 带标签与图表的单选按钮