class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @alert = UIAlertView.alloc.initWithTitle("Hello",
      message: "Up dog?",
      delegate: nil,
      cancelButtonTitle: "OK",
      otherButtonTitles: nil)
    
    @alert.show

    puts "Hello from the console!"
    true
  end
end
