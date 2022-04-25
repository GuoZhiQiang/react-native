# Copyright (c) Facebook, Inc. and its affiliates.
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.

version = '0.62.2'

source = { :git => 'https://github.com/GuoZhiQiang/react-native.git', :branch => 'feature-0.62.2' }

# source_files = "**/*.{m}"
# source_files = File.join('Libraries/' + 'ART', source_files)
Pod::Spec.new do |s|
  s.name                   = "React-ART"
  s.version                = version
  s.summary                = "A library for drawing vector graphics."
  s.homepage               = "http://facebook.github.io/react-native/"
  s.license                = "MIT"
  s.author                 = "Facebook, Inc. and its affiliates"
  s.platforms              = { :ios => "9.0", :tvos => "9.2" }
  s.source                 = source
  s.source_files           = "**/*.{m}"
  s.preserve_paths         = "package.json", "LICENSE", "LICENSE-docs"
  s.header_dir             = "ART"

  s.dependency "React-Core/ARTHeaders", version
end
