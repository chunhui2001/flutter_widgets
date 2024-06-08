# flutter_widgets

# 创建一个插件
$ flutter create --template=plugin --platforms=android,ios --org com.mywidgets flutter_mybutton
$ flutter create --template=plugin --platforms=android,ios --org com.mywidgets flutter_mycontainer
$ flutter create --template=plugin --platforms=android,ios --org com.mywidgets flutter_mytext
$ flutter create --template=plugin --platforms=android,ios --org com.mywidgets flutter_mylocation
$ flutter create --template=plugin --platforms=android,ios --org com.mywidgets flutter_mynameserver


# 修复 kotlin 版本兼容性问题
plugins {
	id "dev.flutter.flutter-plugin-loader" version "1.0.0"
	id "com.android.application" version "7.3.0" apply false
	+ id "org.jetbrains.kotlin.android" version "1.9.24" apply false 
}