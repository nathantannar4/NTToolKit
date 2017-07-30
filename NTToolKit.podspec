Pod::Spec.new do |s|


# 1 - Specs
s.platform = :ios
s.ios.deployment_target = '9.1'
s.name = 'NTToolKit'
s.summary = "A collection of extensions I find helpful"
s.requires_arc = true

# 2 - Version
s.version = "1.0.0"

# 3 - License
s.license = { :type => "MIT", :file => "LICENSE" }

# 4 - Author
s.author = { "Nathan Tannar" => "nathantannar4@gmail.com" }

# 5 - Homepage
s.homepage = "https://github.com/nathantannar4/NTToolKit"

# 6 - Source
s.source = { :git => "https://github.com/nathantannar4/NTToolKit.git", :tag => "#{s.version}"}

# 7 - Dependencies


# 8 - Source Files
s.source_files = "NTToolKit/*.{swift}"

# 9 - Resources


end
