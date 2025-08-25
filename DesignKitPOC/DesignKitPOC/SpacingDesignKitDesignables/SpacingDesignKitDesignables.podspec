
Pod::Spec.new do |s|
  s.name             = 'SpacingDesignKitDesignables'
  s.version          = '0.1.0'
  s.summary          = 'IBDesignables wrapper for SpacingDesignKit'
  s.description      = 'Provides live updates in Interface Builder for spacing tokens.'
  s.homepage         = 'https://github.com/jitendra-housing/DesignKitPOC#'
  s.license          = { :type => 'MIT' }
  s.author           = { 'You' => 'jitendra.lakhmani1@housing.com' }
  s.source           = { :git => 'https://github.com/jitendra-housing/DesignKitPOC.git' }

  s.ios.deployment_target = '13.0'
  s.source_files     = 'DesignKitPOC/DesignKitPOC/SpacingDesignKitDesignables/Sources/**/*.{swift}'

  s.dependency 'SpacingDesignKit'

  s.static_framework = false
end
