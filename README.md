# 介绍
* TabBar使用 （TabBar，TabBarView，TabController）
* Drawer使用 （DrawerHeader，ListTile）
* BottomNavigationBar使用 （BottomNavigationBarItem）

# 基础部件
* Text 文字与文字样式
* RichText 行内多样式文字
* Container 容器
* BoxDecoration 装饰盒子(背景-color 边框-border 圆角-borderRadius 阴影-boxShadow 形状-shape 渐变-gradient 背景图像-image)

# 布局
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

# 视图
* PageView 页面视图

  pageSnapping:回弹效果  
  reverse：页面倒置  
  scrollDirection：滑动方向  
  onPageChanged：页面切换回调
* PageController 调整页面显示
* PageView.builder 按需生成页面
* GridView 网格视图 （GridView.count GridView.extent GridView.builder）

# Sliver
* CustomScrollView.slivers 属性可用小部件有：（SliverList , SliverFixedExtentList , SliverGrid , SliverPadding , SliverAppBar）
* SliverGrid: 网格视图
  * SliverPadding: 为SliverGrid添加内边距
  * SliverSafeArea: 让视图再安全域显示
*SliverList 列表试图
*SliverAppBar 应用工具栏，实现悬浮头，带渐进动画的可伸缩空间
# 路由 （界面跳转）
* Routes 页面 存放在 Stack(堆)中，push添加页面，pop关闭页面
* Navigator.pushNamed 带名字的路由
* initialRoute  设置初始route == home 
* InkWell 添加溅墨动画效果 

# 表单 （form_demo.dart）
* Theme 定制、使用、重置、覆盖主题
* TextField 文本字段、样式、监听内容变化
  使用TextEditingController监听文本字段变化
* Form 使用(TextFormField),保存与获取表单里的数据,验证表单里的值(validator),自动验证(autovalidate)
* SnackBar 屏幕底部弹出提示栏

# 按钮
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

# 输入
* Checkbox 复选框
* CheckboxListTile 带标签与图标的复选框
* Radio 单选按钮
* RadioListTile 带标签与图表的单选按钮
* Switch 开关
* SwitchListTile 带标签与图标的开关
* Slider 滑动选择器
* 显示格式化日期
  * 插曲：安装第三方包（演示安装Intl包 intl: ^0.15.8）
  * showDatePicker:选择日期/获取选择的日期(async::import 'dart:async';)
  * showTimePicker:选择时间
* Future 异步程序
# 对话框
* SimpleDialog 显示对话框（showDialog）
  * SimpleDialogOption 选项
  * 获取与使用选项的值(异步获取)
* AlertDialog 提示对话框
  * 获取与使用动作的值
* BottomSheet 底部滑动窗口 _bottomSheetScaffoldKey.currentState.showBottomSheet
* ModalBottomSheet 对话框式底部滑动窗口 showModalBottomSheet
  * 处理并使用数据
* SnackBar 操作提示栏 Scaffold.of(context).showSnackBar
* ExpansionPanel 收缩面板/面板的收起与展开 （需在ExpansionPanelList中使用）
  * 插曲：List.map().toList 将一种List集合转为另一种数据格式的List集合 

#mdc(Material Design Components)
* Chip 小碎片
  * backgroundColor 背景色
  * avatar CircleAvatar 圆形头像
  * onDeleted 带删除功能的小碎片
  * 用列表生成带删除功能的小碎片
* Wrap 换行显示小部件
  * spacing 小部件间隔
* Divider 分割线
* ActionChip 动作碎片
  * 比Chip多onPressed 点击功能
* FilterChip 过滤碎片
  * 比Chip多onSelected 选择功能
* ChoiceChip 选择碎片 （类似于单选按钮）
  * 比Chip多onSelected 选择功能
* DataTable 数据表格 需放入ListView中使用
  * DataColumn 列明
  * DataRow - DataCell 每一行单元格内容
  * 数据表格排序 DataColumn.onSort
  * 选择数据表行 DataRow.onSelectChanged selected
* PaginatedDataTable 带分页的数据表格 (source 添加表格数据；排序 DataTableSource提供排序方法)
* Card 卡片
  * 插曲：ButtonTheme.bar + ButtonBar 添加操作按钮
  * ClipRRect 给图像添加圆角效果
* Stepper 步骤 
  * onStepTapped    点击步骤标号回调
  * onStepContinue  下一步回调
  * onStepCancel    取消回调
  
# 状态管理
  * StatelessWidget 无变化状态的小部件(内部数据不可改变)
  * StatefulWidget 带变化状态的小部件
  * 由父类管理状态
  * 从父类那里传递个回调
    * 创建InheritedWidget 有效的传递数据给子部件
    * ScopedModel 传递参数 （第三方的包 scoped_model: ^1.0.1）
    
# Stream 
  * Stream 创建与监听
  * Stream.listen添加一个订阅（有数据，错误时，完成后）
  * StreamSubscription 实现暂停、恢复、取消监听Stream
  * StreamController 控制Stream
    * 使用StreamController.add 往Stream添加数据
    * 使用Sink往Stream添加数据 (StreamSink _streamSink = _streamController.sink;)
  * BroadcastStream 可多次订阅 （通过StreamController创建 StreamController.broadcast()）
  * StreamBuilder 根据Stream上的数据构建小部件，可自动刷新小部件上数据
  
# RxDart 第三方包 rxdart: ^0.22.0
  * Rx          :Reactive Extensions 一套加工处理数据方法 （响应式编程用的）
  * RxDart
  * Observable  :类似dart语言下的Stream
  * Observables 创建方法
    * method1: Observable<String>(Stream )
    * method2: Observable.fromFuture(Future)
    * method3: Observable.fromIterable([])
    * method4: Observable.periodic(Duration(seconds: 3),(x)=> x.toString()) 指定间隔时间重复执行
  * Subjects 控制Observables (相当于StreamController)
    * PublishSubject()创建Subject  ：把数据发给已添加的监听
    * BehaviorSubject()创建Subject : 把最后一次添加的数据发给新加的监听；把数据发给已添加的监听
    * ReplaySubject()创建Subject : 把所有添加的数据，发给订阅者（可指定条数）
  
  