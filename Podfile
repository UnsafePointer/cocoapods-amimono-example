platform :ios, '9.0'

plugin 'cocoapods-amimono'

use_frameworks!

target 'Example' do
  pod 'AFNetworking', '~> 3.1'
  pod 'ImagePicker', '~> 2.1'
  pod 'Fabric'
  pod 'Crashlytics'

  target 'ExampleTests' do
    inherit! :search_paths
    pod 'OCMock'
  end
end

target 'Example WatchKit 1 Extension' do
  pod 'AFNetworking', '~> 3.1'
end

target 'Example WatchKit 3 App Extension' do
  pod 'AFNetworking', '~> 3.1'
end

post_install do |installer|
  require 'cocoapods-amimono/patcher'
  Amimono::Patcher.patch!(installer)
end
