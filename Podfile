source 'https://github.com/CocoaPods/Specs.git'

platform:ios,'10.0'
use_frameworks!
# ignore all warnings from all pods
# inhibit_all_warnings!

def pods
    #Swift
    pod 'Alamofire', '~> 4.0'
    pod 'Kingfisher'
    pod 'ObjectMapper', '~> 3.4'
    pod 'SwiftyJSON', '~> 4.0'
    pod 'Dollar', '9.0.0'   
  
    pod 'UIColor_Hex_Swift', '~> 5.1.0'
    pod 'XCGLogger', '~> 7.0.0'
    pod 'SnapKit', '~> 5.0.0'  

end

target 'HelloVideo' do
    pods
end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['ENABLE_BITCODE'] = 'YES'
            config.build_settings['SWIFT_VERSION'] = '5.0'
        end
    end
end
