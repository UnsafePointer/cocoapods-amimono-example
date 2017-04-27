plugin 'cocoapods-amimono'
use_frameworks!

target 'Example' do
  platform :ios, '10.0'
  pod 'AFNetworking', '~> 3.1'
  pod 'ImagePicker', '~> 2.1'
  pod 'Fabric'
  pod 'Crashlytics'
  pod 'AppsFlyerFramework'
  pod 'leveldb-library'

  target 'ExampleTests' do
    inherit! :search_paths
    pod 'OCMock'
  end
end

target 'Example WatchKit 3 App Extension' do
  platform :watchos, '3.0'
  pod 'AFNetworking', '~> 3.1'
end

post_install do |installer|
  require 'cocoapods-amimono/patcher'
  Amimono::Patcher.patch!(installer)
end
