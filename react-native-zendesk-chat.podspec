require 'json'
package = JSON.parse(File.read("package.json"))

Pod::Spec.new do |s|
  s.name           = package["name"].split("/").last
  s.version        = package["version"]
  s.summary        = package['description']
  s.author         = "Cesar Millan"
  s.license        = package["license"]
  s.homepage       = package["homepage"]
  s.platform       = :ios, "9.0"
  s.source         = { :git => "https://github.com/cesarm16/react-native-zendesk-chat.git" }
  s.source_files   = 'ios/*.{h,m}'

  s.pod_target_xcconfig = {
    'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) MODULES_DISABLED=1',
  }

  s.dependency 'React'
  s.dependency 'ZDCChat'
end
