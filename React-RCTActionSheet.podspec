# Copyright (c) Facebook, Inc. and its affiliates.
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.

version = '0.62.2'

source = { :git => 'https://github.com/GuoZhiQiang/react-native.git', :branch => 'feature-0.62.2' }

Pod::Spec.new do |s|
    source_files = '*.{m}'
    source_files = File.join('Libraries/' + 'ActionSheetIOS', source_files)
    s.name                   = "React-RCTActionSheet"
    s.version                = version
    s.summary                = "An API for displaying iOS action sheets and share sheets."
    s.homepage               = "http://facebook.github.io/react-native/"
    s.documentation_url      = "https://facebook.github.io/react-native/docs/actionsheetios"
    s.license                = "MIT"
    s.author                 = "Facebook, Inc. and its affiliates"
    s.platforms              = { :ios => "9.0", :tvos => "9.2" }
    s.source                 = source
    s.source_files           = source_files
    #s.preserve_paths         = "package.json", "LICENSE", "LICENSE-docs"
    s.header_dir             = "RCTActionSheet"

    s.dependency "React-Core/RCTActionSheetHeaders", version
end
