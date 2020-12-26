Pod::Spec.new do |s|
  s.name = "ButtonStyleKit"
  s.version = "1.6.0"
  s.summary = "ButtonStyleKit is helper library for UIButton custom styles."
  s.homepage = "https://github.com/keygx/ButtonStyleKit"
  s.license = { :type => "MIT", :file => "LICENSE" }
  s.author = { "keygx" => "y.kagiyama@gmail.com" }
  s.social_media_url = "http://twitter.com/keygx"
  s.platform = :ios
  s.ios.deployment_target = '9.0'
  s.source = { :git => "https://github.com/keygx/GradientCircularProgress.git", :tag => "#{s.version}" }
  s.source_files = "ButtonStyleKitSample/ButtonStyleKit/*.{h,swift}"
  s.requires_arc = true
end
