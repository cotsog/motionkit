class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    settings = SKTSettings.settingsWithAppToken "token"
    settings.knowledgeBaseURL = "https://supportkit.zendesk.com"
    SupportKit.initWithSettings(settings)
  end
end
