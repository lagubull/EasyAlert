Pod::Spec.new do |s|

s.name         = "EasyAlert"
s.version      = "0.0.2"
s.summary      = "EasyAlert is a bundle of convenient methods that wrap UIALertController to reduce the amount of boiler plate code needed."

s.homepage     = "https://github.com/lagubull/"

s.license      = {:type => 'MIT', :file => 'LICENSE.md' }

s.author       = { "Javier Laguna" => "lagubull@hotmail.com" }

s.platform     = :ios, "8.0"

s.source       = { :git => "https://github.com/lagubull/EasyAlert.git", :branch => "master", :tag => s.version }

s.source_files  = "EasyAlert/**/*.{h,m}"
s.public_header_files = "EasyAlert/**/*.{h}"

s.requires_arc = true
end
