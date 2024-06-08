### 当前 Makefile 文件物理路径
ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

echo:
	echo $(ROOT_DIR)

fix:
	dart fix --apply

add:
	flutter pub add $(name)

get:
	flutter pub get

update: get
	flutter pub outdated

upgrade:
	flutter pub upgrade --major-versions

install_pod:
	cd $(ROOT_DIR)/example/ios && pod install && pod install --repo-update && cd $(ROOT_DIR)

clear:
	cd $(ROOT_DIR)/example && flutter clean && flutter build ios

# Call flutter build apk --config-only in the <your_plugin>/example/android. (Take note of the example directory).
# Finally, open the <your_plugin>/example/android in Android Studio (Still in the example directory).
# It should open two Android modules:<your_plugin>/example/android and <your_plugin>/android.
build1:
	cd $(ROOT_DIR)/example/android && flutter build apk --config-only && cd $(ROOT_DIR)

build2:
	@#cd $(ROOT_DIR)/example/android && ./gradlew build -x test && cd $(ROOT_DIR)
	cd $(ROOT_DIR)/example/android && ./gradlew clean build && cd $(ROOT_DIR)

# 使用 pana 工具，计算分数
pana:
	dart pub global activate pana
	dart pub global run pana .

prepublish:
	flutter pub publish --dry-run

publish:
	flutter pub publish

packages:
	adb -s emulator-5554 shell pm list packages -3

uninstall:
	adb uninstall $(name)

# 列出所有可用的设备
devices:
	flutter devices

run:
	#flutter run -d chrome
	flutter run -d  emulator-5554

lsof:
	# 查看指定端口是否被占用
	# lsof -i :9100
	# 查看本机占用的所有端口
	lsof -iTCP -sTCP:LISTEN -P -n

gen_icon:
	flutter pub run flutter_launcher_icons:main

getAppName:
	@#flutter pub global activate rename
	@#export PATH="$PATH":"$HOME/.pub-cache/bin"
	rename getAppName --targets ios,android

getBundleId:getBundleId
	rename getBundleId --targets android,ios

setBundleId:
	rename setBundleId --targets android,ios --value "com.calmcomes"
