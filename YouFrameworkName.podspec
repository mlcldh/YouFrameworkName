#
# Be sure to run `pod lib lint YouFrameworkName.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YouFrameworkName'
  s.version          = '0.1.0'
  s.summary          = 'This is a short description of YouFrameworkName.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/mlcldh/LCModalHelper'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'mlc' => '1228225993@qq.com' }
  s.source           = { :git => '/Users/menglingchao/Desktop/MyDemo/YouFrameworkName' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'YouFrameworkName/Classes/**/*'
  s.resources = 'YouFrameworkName/Resources/**/*'
   s.resource_bundles = {
     'YouFrameworkName' => ['YouFrameworkName/Assets/**/*']
   }
  
  s.prefix_header_contents = '#import "Masonry.h"'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'Masonry', '1.1.0'
  s.static_framework  =  true
  
end
