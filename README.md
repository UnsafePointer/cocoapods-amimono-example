# cocoapods-amimono-example

<p align="center">
  <img src="https://dl.dropboxusercontent.com/u/12352209/GitHub/amimono-example.gif" alt="amimono-example"/>
</p>

This is:

* Objective-C iOS project (with Swift sources) 
* Using an Objective-C written Pod 
* Using a Swift written Pod
* Pods include resource bundles
* Project has a testing target (also using CocoaPods)
* Project has a Watch OS 1 target

A project like this has successfully passed iTunes Connect validation.

TODO:

* Embedded targets with a different platform (ie: not iphoneos or iphonesimulator): watchOS 2

## About this plugin

You can learn more from [cocoapods-amimono](https://github.com/Ruenzuo/cocoapods-amimono).

## Project setup

Install the gem:

```bash
gem install cocoapods-amimono
````

Add the following to your Podfile:

```ruby
plugin 'cocoapods-amimono'
```

Add the following to your `post_install` hook:

```ruby
post_install do |installer|
  require 'cocoapods-amimono/patcher'
  Amimono::Patcher.patch!(installer)
  ...
```

## Troubleshooting

If you get the following error: 

```
ld: library not found for -lswiftCoreLocation for architecture x86_64
clang: error: linker command failed with exit code 1 (use -v to see invocation)
```

It is most likely that you're trying to use a Pod written in Swift without having Swift in your application target yet. Just add a dummy `File.swift` (like [here](https://github.com/Ruenzuo/cocoapods-amimono-example/commit/3f01e506c16a907d2b2a1cf06c61ab4a20b863e1)) to fix this error.

## dyld API usage

You can find the dyld API usage logs in the following gists:

dyld API usage [with plugin](https://gist.github.com/Ruenzuo/743bd09faab9157274432849107f55f7)  
dyld API usage [without plugin](https://gist.github.com/Ruenzuo/14192623ec266ae62b824cbf3dd3b012)  

Only in the later logs, you'll find calls like:

```
dlopen(/Users/ruenzuo/Library/Developer/CoreSimulator/Devices/93964D2A-914D-45F9-91F8-15D0C59FAAD5/data/Containers/Bundle/Application/48A9E07B-7E9A-4109-9000-3CBBCCDF21E4/Example.app/Frameworks/ImagePicker.framework/ImagePicker, 0x00000010)
  dlopen(/Users/ruenzuo/Library/Developer/CoreSimulator/Devices/93964D2A-914D-45F9-91F8-15D0C59FAAD5/data/Containers/Bundle/Application/48A9E07B-7E9A-4109-9000-3CBBCCDF21E4/Example.app/Frameworks/ImagePicker.framework/ImagePicker) ==> 0x107e20798
...
dlopen(/Users/ruenzuo/Library/Developer/CoreSimulator/Devices/93964D2A-914D-45F9-91F8-15D0C59FAAD5/data/Containers/Bundle/Application/48A9E07B-7E9A-4109-9000-3CBBCCDF21E4/Example.app/Frameworks/AFNetworking.framework/AFNetworking, 0x00000010)
  dlopen(/Users/ruenzuo/Library/Developer/CoreSimulator/Devices/93964D2A-914D-45F9-91F8-15D0C59FAAD5/data/Containers/Bundle/Application/48A9E07B-7E9A-4109-9000-3CBBCCDF21E4/Example.app/Frameworks/AFNetworking.framework/AFNetworking) ==> 0x107e20520
```
