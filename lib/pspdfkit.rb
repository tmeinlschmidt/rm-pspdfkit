require "pspdfkit/version"

unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile."
end

Motion::Project::App.setup do |app|
  
  unless File.exists?('vendor/PSPDFKit.framework')
    raise "Create a symbolic link or copy PSPDFKit.framework into 'vendor' directory."
  end
  
  unless File.exists?('resources/PSPDFKit.bundle')
    raise "Create a symbolic link or copy PSPDFKit.bundle into 'resources' directory."
  end
  
  libz = Dir.entries('/usr/lib').select{|l| l =~ /libz.*/}.first
  raise "Can't find 'libz' library, you have to install 'libz' library prior to use PSPDFKit." unless libz

  app.vendor_project('vendor/PSPDFKit.framework', :static, products: ['PSPDFKit'], headers_dir: 'Headers')
  app.libs += [libz]
  app.frameworks += %w(MessageUI AssetsLibrary MediaPlayer PSPDFKit)
end

module Pspdfkit

end
