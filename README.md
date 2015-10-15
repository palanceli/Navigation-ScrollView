# NavigationScrollView
UINavigationController + UIScrollView组合，默认情况下UIScrollView顶部会被NavigationBar盖住，
为了让被盖住的部分可见，cocoa又会自动调整scrollview的content inset value，当我只想让scrollview
可以水平滚动，不要竖直滚动时，出现一系列诡异现象，详情参见
http://www.cnblogs.com/palance/p/4878792.html
http://www.cnblogs.com/palance/p/4882221.html
http://www.cnblogs.com/palance/p/4883946.html
本例用来演示如何屏蔽掉cocoa背后自动帮我做的事情，以便达成上面想要的效果。
