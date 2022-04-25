# Copyright (c) Facebook, Inc. and its affiliates.
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.

version = '0.62.2'

source = { :git => 'https://github.com/GuoZhiQiang/react-native.git', :branch => 'feature-0.62.2' }

Pod::Spec.new do |s|
    source_files = "**/*.{c,h,m,mm,cpp}"
    source_files = File.join('Libraries/' + 'RCTRequired', source_files)
    s.name                   = "RCTRequired"
    s.version                = version
    s.summary                = "-"  # TODO
    s.homepage               = "http://facebook.github.io/react-native/"
    s.license                = "MIT"
    s.author                 = "Facebook, Inc. and its affiliates"
    s.platforms              = { :ios => "9.0", :tvos => "9.2" }
    s.source                 = source
    s.source_files           = source_files
    s.header_dir             = "RCTRequired"
end
