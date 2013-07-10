describe "WSSE header" do
  it "should be true" do
    true.should == true
  end

  it "should return random WSSE header string" do
    header = RmWsse.wsse_header("melody", "nelson")
    header.should =~ /UsernameToken Username="melody"/
  end

  it "should return fixed WSSE header string" do
    created = NSDate.alloc.initWithString("1977-09-18 12:34:56 +0900")
    header = RmWsse.wsse_header("melody", "nelson", created, 100)

    digest = 'cIYQOAtdYIAQhQv7KfEijYyLhoM='
    nonce  = 'YTVmNGZjMDgxNmYxMjNhYTc0MTJhNjMxOGY1NThmOGM0ZmYyMWQ5ZQ=='

    header.should == "UsernameToken Username=\"melody\", PasswordDigest=\"#{digest}\", Nonce=\"#{nonce}\", Created=\"1977-09-18T12:34:56+0900\""
  end
end
