# Obj-C way
class AppDelegate
  attr_accessor :window
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    vc = UIViewController.alloc.init
    vc.view.backgroundColor = UIColor.whiteColor
    nav = UINavigationController.alloc.initWithRootViewController vc

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = nav
    @window.rootViewController.wantsFullScreenLayout = true
    @window.makeKeyAndVisible

    token = "token"
    url = "http://supportkit.zendesk.com/"
    settings = SKTSettings.settingsWithAppToken token
    settings.knowledgeBaseURL = url
    SupportKit.initWithSettings(settings)

    true
  end
end