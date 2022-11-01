require "json"

package = JSON.parse(File.read(File.join(__dir__, "../package.json")))

Pod::Spec.new do |s|
  s.name         = "AzureAuth"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = "https://github.com/thedarkhorseltd/rn-azure-ad-auth"
  s.license      = "MIT"
  s.license      = { :type => "MIT", :file => "../LICENSE" }
  s.authors      = { "AzureAuth" => "konakanchisuresh950@gmail.com" }
  s.platforms    = { :ios => "11.0" }
  s.source       = { :git => "https://github.com/thedarkhorseltd/rn-azure-ad-auth.git", :tag => "v#{s.version}" }

  s.source_files = "*.{h,m}"
  s.requires_arc = true

  s.dependency "React-Core"
end
