platform :ios, '9.0'

plugin 'cocoapods-amimono'

target 'Example' do
  use_frameworks!
  pod 'AFNetworking'
  pod 'ImagePicker'

  target 'ExampleTests' do
    inherit! :search_paths
    pod 'OCMock'
  end
end

post_install do |installer|
  require 'cocoapods-amimono/patcher'
  Amimono::Patcher.patch_copy_resources_script(installer: installer)
end
