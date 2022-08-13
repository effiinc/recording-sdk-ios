Pod::Spec.new do |s|
  
  s.name             = 'ScreenRecordingSDK'
  s.version          = '0.3.7'
  s.summary          = 'Screen recording library'
  s.description      = 'Library for creating screen recordings and uploading them to https://app.effi.io/'

  s.homepage         = 'https://github.com/effiinc/recording-sdk-ios'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Effi Inc.' => 'effidevelop@gmail.com' }
  s.source           = { :git => 'https://github.com/effiinc/recording-sdk-ios.git', :tag => '0.3.7' }

  s.swift_version = '5.0'
  s.ios.deployment_target = '13.0'
  
  s.vendored_frameworks = "ScreenRecordingSDK.xcframework"

  s.dependency 'ffmpeg-kit-ios-full'
  s.dependency 'ShowTime'
  s.dependency 'Moya'

end
