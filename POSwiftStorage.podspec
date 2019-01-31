Pod::Spec.new do |s|
  s.name             = 'POSwiftStorage'
  s.version          = '0.1'
  s.summary          = 'Controller executor'
  s.description      = <<-DESC
  For local storage and settings                      
                       DESC
  s.homepage         = 'https://github.com/Polas/POSwiftStorage.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Alexander Boriskov' => 'a.boriskov@hotmail.com' }
  s.source           = { :git => 'https://github.com/Polas/POSwiftStorage.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'

  s.source_files = 'Sources/*'

  s.dependency 'Keychain', '0.3.1'
end
