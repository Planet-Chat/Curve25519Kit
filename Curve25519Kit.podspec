#
# Be sure to run `pod lib lint Curve25519Kit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |spec|
spec.name         = 'Curve25519Kit'
spec.version      = '2.1.0'
spec.license      = { :type => 'GPLv3' }
spec.homepage     = 'https://github.com/Planet-Chat/Curve25519Kit'
spec.preserve_path = 'Curve25519Kit/Sources/ed25519/**/*.{c,h}'
spec.authors      = { 'Frederic Jacobs' => 'github@fredericjacobs.com' }
spec.summary      = 'Key agreement (curve25519) and signing (ed25519), all with curve25519 keys.'

spec.description  =  <<-DESC
Curve25519 is a fast and secure curve used for key agreement. Unfortunately, it does not support signing out of the box. This pod translates the point curves to do ed25519 signing with curve25519 keys.
DESC

spec.source       = { :git => 'https://github.com/Planet-Chat/Curve25519Kit.git', :tag => "#{spec.version}" }
spec.source_files = 'Curve25519Kit/Classes/*.{h,m}', 'Curve25519Kit/Sources/Curve25519/curve25519-donna.c', 'Curve25519Kit/Sources/ed25519/*.{c,h}', 'Curve25519Kit/Sources/ed25519/additions/*.{c,h}', 'Curve25519Kit/Sources/ed25519/nacl_sha512/*.{c,h}', 'Curve25519Kit/Sources/ed25519/nacl_includes/*.{c,h}', 'Curve25519Kit/Private/*.{h,m}'
#spec.private_header_files = 'Curve25519Kit/Sources/ed25519/nacl_includes/*.h','Curve25519Kit/Sources/ed25519/additions/*.h', 'Curve25519Kit/Sources/ed25519/nacl_sha512/*.h'
spec.framework    = 'Security'
spec.public_header_files = "Curve25519Kit/Classes/*.h"
spec.requires_arc = true
spec.ios.deployment_target = '9.0'

spec.dependency 'CocoaLumberjack'

end

