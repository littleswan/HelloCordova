#
#  Be sure to run `pod spec lint jiaCore.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#
#

Pod::Spec.new do |s|

s.name         = "HelloCordova"
s.version      = "1.0.0"
s.summary      = "在Cordova及插件的基础上封装一些常用的功能"

s.homepage     = "https://github.com/littleswan/HelloCordova"
s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
s.author             = { "littleswan.app" => "littleswan.app@midea.com.cn" }

s.platform     = :ios, "8.0"
s.source       = { :git => "https://github.com/littleswan/HelloCordova.git", :tag => "#{s.version}" }
s.requires_arc = true

s.subspec 'Plugins' do |ss|
ss.source_files = 'HelloCordova/Plugins/**/*.{h,m}'
ss.resources  = "HelloCordova/Plugins/**/*.png"

end

# 系统库依赖
s.frameworks = 'UIKit','MobileCoreServices', 'CoreGraphics', 'Security', 'SystemConfiguration'


# Cordova 依赖
s.dependency 'Cordova'

# s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
end
