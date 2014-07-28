Pod::Spec.new do |s|
  s.name         = "UICheckbox"
  s.version      = "0.0.1"
  s.summary      = "Reusable UI checkbox element for iOS projects."

  s.homepage     = "https://github.com/jorgeSV/UICheckbox"
  s.license      = "BSD"
  s.authors       = { "Brayden Wilmoth" => "http://www.github.com/brayden/" , "Jordan Perry" => "http://www.github.com/jordanperry/" , "Jorge Souto" => "amk114@gmail.com" }

  s.source       = { :git => "https://github.com/jorgeSV/UICheckbox.git", :tag => “v0.0.1" }
  s.platform     = :ios, "5.1"
  s.source_files = "UICheckbox"
  s.requires_arc = true
end
