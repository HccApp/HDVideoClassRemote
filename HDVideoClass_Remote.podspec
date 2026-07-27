Pod::Spec.new do |s|
    s.name = "HDVideoClass_Remote"
    s.version = "6.11.0"

    s.summary = "An iOS SDK for HDVideoClass Service"
    s.description = "It's  an iOS SDK for CCIM Service，It helps iOS developers to use HDVideoClass easier."
    s.homepage = "https://hdgit.bokecc.com/ccvideo/CloudClass_iOS_Module_SDK"
    s.license = "Apache License, Version 2.0"
    s.authors = {
      "CCVod" => "zhaowl@bokecc.com"
    }
    s.platform         = :ios, '10.0'
    s.requires_arc     = true
    s.source           = { :http => "https://github.com/HccApp/HDVideoClassRemote/releases/download/#{s.version}/HDVideoClass_Remote_#{s.version}.zip" }

    s.vendored_frameworks = "SDK/iphoneos/CCBarleyLibrary.framework",
                            "SDK/iphoneos/CCChatLibrary.framework",
                            "SDK/iphoneos/CCClassRoomBasic.framework",
                            "SDK/iphoneos/CCDocLibrary.framework",
                            "SDK/iphoneos/CCFuncTool.framework",
                            "SDK/iphoneos/CCIMLib.framework",
                            "SDK/iphoneos/CCStreamLib.framework",
                            "SDK/iphoneos/HDSSup.framework",
                            "SDK/iphoneos/MQTTClient.framework",
                            "SDK/iphoneos/HSRoomUI.framework",
                            "SDK/iphoneos/ZegoLiveRoom.framework",
                            "SDK/SSZip/SSZipArchive.framework"

    s.resources           = "SDK/iphoneos/*.{bundle}"

    s.dependency "HDBaseUtils"
end
