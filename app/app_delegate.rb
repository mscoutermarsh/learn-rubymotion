class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @alert = UIAlertView.alloc.initWithTitle("Hello",
      message: "Up dog?",
      delegate: nil,
      cancelButtonTitle: "OK",
      otherButtonTitles: nil)

    @alert.show

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.applicationFrame)
    @window.makeKeyAndVisible

    @blue_view = UIView.alloc.initWithFrame(CGRect.new([10,10], [100,100]))
    @blue_view.backgroundColor = UIColor.blueColor

    @window.addSubview(@blue_view)

    puts "Hello from the console!"
    true
  end
end
