# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'
require 'motion/project'
require 'bundler'
Bundler.require

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'Hello'
  app.vendor_project('vendor/Parse.framework', :static, :products => ['Parse'], :headers_dir => 'Headers')
  app.frameworks += %w(AudioToolbox StoreKit AddSupport Accounts Social CFNetwork SystemConfiguration MobileCoreServices Security QuartzCore)

  app.weak_frameworks += %w{ AdSupport Accounts Social }
  app.pods do
    pod 'Facebook-iOS-SDK', '~> 3.1.1'
  end

  app.libs += ['/usr/lib/libz.dylib', '/usr/lib/libsqlite3.dylib']

  app.detect_dependencies = false

  app.info_plist['FacebookAppID'] = 'your app id'
  app.info_plist['URL types'] = { 'URL Schemes' => 'fbyour app id'} # note the "fb" prefix

end
