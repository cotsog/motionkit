class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    credentialsProvider = AWSStaticCredentialsProvider.credentialsWithAccessKey "foo", secretKey:"bar"
    settings = SKTSettings.settingWithAppToken 'token'
    true
  end
end
