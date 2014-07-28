Pod::Spec.new do |s|
  s.name         = "UICheckbox"
  s.version      = "0.0.1"
  s.summary      = "Reusable UI checkbox element for iOS projects.”
  s.homepage     = "https://github.com/jorgeSV/UICheckbox"
  s.license      = “BSD"
  s.authors      = { “Brayden Wilmoth” , “Jordan Perry”, "jorgeSV" => "amk114@gmail.com" }
  s.platform     = :ios, “5.1”
  s.source       = { :git => "https://github.com/jorgeSV/UICheckbox", :tag => "0.0.1" }
  s.source_files  = “UICheckbox”
  s.requires_arc = true
end
