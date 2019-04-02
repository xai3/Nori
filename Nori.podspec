Pod::Spec.new do |s|
  s.name = 'Nori'
  s.version = '0.3.0'
  s.license = 'MIT'
  s.homepage = 'https://github.com/yukiasai/'
  s.summary = 'Library for designing Storyboard with source code.'
  s.authors = { 'yukiasai' => 'yukiasai@gmail.com' }
  s.source = { :git => 'https://github.com/yukiasai/Nori.git', :tag => s.version }

  s.ios.deployment_target = '9.0'
  
  s.source_files = 'Sources/**/*.swift'
end

