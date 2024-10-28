<!---------------------------------------[Install]-->
## Set up Flutter 

#### General
	sudo softwareupdate --install-rosetta --agree-to-license

#### Xcode
	sudo sh -c 'xcode-select -s /Applications/Xcode.app/Contents/Developer && xcodebuild -runFirstLaunch'
	sudo xcodebuild -license

#### CocoaPods
	brew install CocoaPods
	sed -i '' '/export PATH/d' ~/.zshrc
	export PATH=$PATH:$HOME/.gem/bin
	echo "export PATH=$PATH" >> ~/.zshrc

#### Java
	brew install openjdk@17
	sudo ln -sfn /opt/homebrew/opt/openjdk@17/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-17.jdk

	sed -i '' '/export PATH/d' ~/.zshrc
	export JAVA_HOME=$(/usr/libexec/java_home -v 17)
	export PATH=$PATH:$(/usr/libexec/java_home -v 17)/bin
	echo "export JAVA_HOME=\$(/usr/libexec/java_home -v 17)" >> ~/.zshrc
	echo "export PATH=$PATH" >> ~/.zshrc
	java -version

#### Android-SDK
	cd ~/Downloads/
	Download : https://developer.android.com/studio
	unzip ~/Downloads/commandlinetools-mac-11076708_latest.zip -d /Volumes/Data/android-sdk

	mkdir -p /Volumes/Data/android-sdk/cmdline-tools/latest
	cp -fr /Volumes/Data/android-sdk/cmdline-tools/* /Volumes/Data/android-sdk/cmdline-tools/latest
	rm -fr /Volumes/Data/android-sdk/cmdline-tools/latest/latest

	export ANDROID_HOME=/Volumes/Data/android-sdk
	export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin
	export PATH=$PATH:$ANDROID_HOME/platform-tools
	export PATH=$PATH:$ANDROID_HOME/emulator

	sed -i '' '/export PATH/d' ~/.zshrc
	echo "export ANDROID_HOME=/Volumes/Data/android-sdk" >> ~/.zshrc
	echo "export PATH=$PATH" >> ~/.zshrc

	sdkmanager "platform-tools" "platforms;android-30" "build-tools;30.0.3"

#### Flutter-SDK
	cd ~/Downloads/
	wget https://storage.googleapis.com/flutter_infra_release/releases/stable/macos/flutter_macos_arm64_3.24.3-stable.zip
	unzip ~/Downloads/flutter_macos_arm64_3.24.3-stable.zip -d /Volumes/Data/flutter-sdk/
	
	sed -i '' '/export PATH/d' ~/.zshrc
	export PATH=$PATH:/Volumes/Data/flutter-sdk/flutter/bin
	echo "export PATH=$PATH" >> ~/.zshrc
	
	flutter doctor --android-licenses
	flutter doctor

#### Android as a wireless device
	Enable Developer Options and USB Debugging on Android Device
	Connect Android Device to MacBook via USB
	adb tcpip 5555
	Disconnect USB Cable
	adb connect 192.168.1.101:5555
	adb devices
	flutter devices

#### Iphone as a wireless device
	Enable Developer Mode on Your iPhone : Settings > Privacy & Security > Developer Mode



<!---------------------------------------[Editor]-->
<br><br>

## Editor 

#### VsCode
	Dart Extension
	Flutter Extension

#### Start New Project
    command + shift + p 
    search flutter and new project



<!---------------------------------------[Shortcut]-->
<br><br>

## Shortcut

<table><tbody>
<tr>
<td align="center" rowspan="1">Refactor</td>
<td rowspan="1">Command + .</td>
</tr>
<tr>
<td align="center" rowspan="1">aaa</td>
<td rowspan="1">aaa</td>
</tr>
<tr>
<td align="center" rowspan="1">Widget inspector</td>
<td rowspan="1">bbb</td>
</tr>
</tbody></table>


<!---------------------------------------[Syntax]-->
<br><br>

## Syntax

	mixin 
	with



<!---------------------------------------[Theme and style]-->
<br><br>

## Theme and style



<!---------------------------------------[Theme and style]-->
<br><br>

## UI



<!---------------------------------------[State Management]-->
<br><br>

## State Management

	1 - Create provider
	2 - Present provider to mian page
	3 - Set relation between UI and Provider
	4 - Execute button
	5 - Display Text 