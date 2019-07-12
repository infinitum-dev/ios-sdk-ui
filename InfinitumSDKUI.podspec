Pod::Spec.new do |spec|

  spec.name         = "InfinitumSDKUI"

  spec.version      = "0.0.1"

  spec.license      = "MIT"

  spec.homepage     = "https://github.com/infinitum-dev/ios-sdk-ui"

  spec.summary      = "Open source framework to integrate Infinitum views."

  spec.description  = "A framework that contains some generic views that can be used in a great variety of applications."


  spec.author    = "FYI"

  spec.source       = { :git => "https://github.com/infinitum-dev/ios-sdk-ui.git", :tag => '0.0.1'}

  spec.source_files  = "Infinitum_UI/**/*.swift"

  spec.swift_version = '4.0'

  spec.ios.deployment_target  = '11.0'


end
