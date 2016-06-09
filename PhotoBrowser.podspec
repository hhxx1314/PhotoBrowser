Pod::Spec.new do |s|
  s.name             = 'PhotoBrowser'
  s.version          = '1.0.0'
  s.summary          = 'PhotoBrowser based on MWPhotoBrowser'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/manish-bansal/PhotoBrowser'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Manish Bansal' => 'manishb@azuga.com' }
  s.source           = { :git => 'https://github.com/manish-bansal/PhotoBrowser.git', :tag => s.version.to_s }

  s.platform = :ios, '7.0'
  
  s.source_files = 'PhotoBrowser/Classes/**/*'
  s.resource_bundles = {
    'PhotoBrowser' => ['PhotoBrowser/Assets/*.png']
  }
  s.requires_arc = true

  s.frameworks = 'ImageIO', 'QuartzCore', 'AssetsLibrary', 'MediaPlayer'
  s.weak_frameworks = 'Photos'

  s.dependency 'MBProgressHUD', '~> 0.9'
  s.dependency 'DACircularProgress', '~> 2.3'

  # SDWebImage
  # 3.7.2 contains bugs downloading local files
  # https://github.com/rs/SDWebImage/issues/1109
  s.dependency 'SDWebImage', '~> 3.7', '!= 3.7.2'

end
