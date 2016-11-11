platform :ios, '9.0'

plugin 'cocoapods-amimono'

use_frameworks!

target 'Example' do
  pod 'AFNetworking'
  pod 'ImagePicker'

  target 'ExampleTests' do
    inherit! :search_paths
    pod 'OCMock'
  end
end

post_install do |installer|
  require 'cocoapods-amimono/patcher'
  Amimono::Patcher.patch!(installer)
end
