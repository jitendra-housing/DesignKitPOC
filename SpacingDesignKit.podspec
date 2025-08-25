
Pod::Spec.new do |s|
  s.name             = 'SpacingDesignKit'
  s.version          = '0.1.0'
  s.summary          = 'DesignKit spacing tokens'
  s.description      = 'Defines spacing tokens for iOS design system.'
  s.homepage         = 'https://github.com/jitendra-housing/DesignKitPOC#'
  s.license          = { :type => 'MIT' }
  s.author           = { 'You' => 'jitendra.lakhmani1@housing.com' }
  s.source           = { :path => '.' }

  s.ios.deployment_target = '13.0'
  s.source_files = 'DesignKitPOC/DesignKitPOC/SpacingDesignKit/Sources/**/*.{swift}'
  s.static_framework = true
end
