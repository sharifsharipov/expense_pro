### This file contains short terminal commands for continuous operations (build, fix, build_runner...)
### You can write many consecutive operations within a single command.
### For example, the following code cleans and runs pub get. You need to type `make clean` in the terminal.
### clean:
### 	flutter clean
### 	flutter pub get


# For code generation packages, one-time generation
gen:
	dart run build_runner build


# For code generation packages, listens for changes
gen_auto:
	dart run build_runner watch --delete-conflicting-outputs

# For language generation
lang_auto:
	flutter gen-l10n

# To clean the project
clean:
	flutter clean
	flutter pub get


# To build iOS
build_ios:
	flutter clean
	flutter build ios


# To build APK:
# builds apk, changes the name to project_name_date.apk format
# opens the folder, saves the last 5 commits from current git branch to changes.txt
build_android:
	flutter clean
	flutter build apk --release
	mv ./build/app/outputs/flutter-apk/app-release.apk "./build/app/outputs/flutter-apk/Trianon-Energy-`date +%d.%m.%Y`.apk"
	git log -n 5 --pretty=format:"%s" > ./build/app/outputs/flutter-apk/changes.txt
	echo "`git log -n 5 --pretty=format:"%s"`" | pbcopy
	open ./build/app/outputs/flutter-apk/


# Prevents common errors occurring in iOS
fix_ios:
	cd ios; pod cache clean --all; pod clean; pod deintegrate; sudo gem install cocoapods-deintegrate cocoapods-clean; sudo arch -x86_64 gem install ffi; arch -x86_64 pod repo update; arch -x86_64 pod install