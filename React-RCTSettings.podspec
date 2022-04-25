# Copyright (c) Facebook, Inc. and its affiliates.
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.

version = '0.62.2'

source = { :git => 'https://github.com/GuoZhiQiang/react-native.git', :branch => 'feature-0.62.2' }

folly_compiler_flags = '-DFOLLY_NO_CONFIG -DFOLLY_MOBILE=1 -DFOLLY_USE_LIBCPP=1 -Wno-comma -Wno-shorten-64-to-32'
folly_version = '2018.10.22.00'

Pod::Spec.new do |s|
    source_files = "*.{m,mm}"
    source_files = File.join('Libraries/' + 'Settings', source_files)
    s.name                   = "React-RCTSettings"
    s.version                = version
    s.summary                = "A wrapper for NSUserDefaults, a persistent key-value store available only on iOS."
    s.homepage               = "http://facebook.github.io/react-native/"
    s.documentation_url      = "https://facebook.github.io/react-native/docs/settings"
    s.license                = "MIT"
    s.author                 = "Facebook, Inc. and its affiliates"
    s.platforms              = { :ios => "9.0", :tvos => "9.2" }
    s.compiler_flags         = folly_compiler_flags + ' -Wno-nullability-completeness'
    s.source                 = source
    s.source_files           = source_files
    #s.preserve_paths         = "package.json", "LICENSE", "LICENSE-docs"
    s.header_dir             = "RCTSettings"
    s.pod_target_xcconfig    = {
                               "USE_HEADERMAP" => "YES",
                               "CLANG_CXX_LANGUAGE_STANDARD" => "c++14",
                               "HEADER_SEARCH_PATHS" => "\"$(PODS_ROOT)/Folly\""
                             }

    s.dependency "Folly", folly_version
    s.dependency "FBReactNativeSpec", version
    s.dependency "RCTTypeSafety", version
    s.dependency "ReactCommon/turbomodule/core", version
    s.dependency "React-Core/RCTSettingsHeaders", version
end
