Pod::Spec.new do |spec|

  spec.name         = "InfinitumSDKUI"
  spec.version      = "0.0.1"
  spec.summary      = "Open source framework to integrate Infinitum views."

  spec.description  = "A framework that contains some generic views that can be used in a great variety of applications."

  spec.homepage     = "https://github.com/infinitum-dev/ios-sdk-ui"

  spec.license      = "MIT"

  spec.author    = "FYI"

  spec.source       = { :git => "github.com:infinitum-dev/ios-sdk-ui.git" }


  spec.source_files  = "Classes", "Classes/**/*.{h,m}"
  spec.exclude_files = "Classes/Exclude"


end
