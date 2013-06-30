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

    @add_button = button("Add")

    @add_button.sizeToFit

    @add_button.frame = CGRect.new([10, @window.frame.size.height - 10 - @add_button.frame.size.height],
                                    @add_button.frame.size)
    @window.addSubview(@add_button)

    puts "Hello from the console!"
    true
  end

  def button(title)
    @button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    @button.setTitle(title, forState:UIControlStateNormal)
    @button
  end
end
