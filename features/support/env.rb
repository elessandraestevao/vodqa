require "appium_lib"

def caps
  {caps:{
      deviceName: "emulator-5554",
      platformName: "Android",
      app: "/Users/elessandra/Downloads/VodQA.apk",
      appPackage: "com.vodqareactnative",
      AppActivity: "com.vodqareactnative.MainActivity"
  }}
end

Appium::Driver.new(caps,true)
Appium.promote_appium_methods Object
