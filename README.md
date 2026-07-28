# HDVideoClass_Remote

HDVideoClass iOS SDK 的瘦身分发仓库。二进制 framework 和 bundle 资源通过 GitHub Release 分发，仓库本身只包含 podspec。

## 为什么使用 :podspec 方式引用

本 Pod 的 `source` 使用 `:http` 指向 GitHub Release 中的 zip 包：

```ruby
s.source = { :http => "https://github.com/HccApp/HDVideoClassRemote/releases/download/#{s.version}/HDVideoClass_Remote_#{s.version}.zip" }
```

**重要：** 如果在 Podfile 中使用 `:git` 方式引用，CocoaPods 会忽略 podspec 中的 `:http` source，直接从 git 仓库拉取文件。由于仓库中不包含实际的 framework 和 bundle 文件，`pod install` 后将缺少二进制依赖。

因此必须使用 `:podspec` 方式引用，让 CocoaPods 正确解析 `:http` source 并下载 Release 中的 zip 包。

## 安装方式

在 Podfile 中使用 `:podspec` 指定：

```ruby
pod 'HDVideoClass_Remote', :podspec => 'https://raw.githubusercontent.com/HccApp/HDVideoClassRemote/6.11.0/HDVideoClass_Remote.podspec'
```

或指向本地 podspec 文件（调试用）：

```ruby
pod 'HDVideoClass_Remote', :podspec => '/path/to/HDVideoClass_Remote.podspec'
```

## 版本发布流程

1. 更新 `HDVideoClass_Remote.podspec` 中的 `s.version`
2. 将 SDK 目录打包为 zip（保持 `SDK/` 目录结构）
3. 在 GitHub 创建对应 tag 的 Release，上传 zip 文件
4. zip 命名格式：`HDVideoClass_Remote_{version}.zip`

## Requirements

- iOS 10.0+

## License

Apache License, Version 2.0
