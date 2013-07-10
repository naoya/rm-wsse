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

    digest = '16X786l2f/CIhNS7Ojfxl3Ogw3Y='
    nonce  = 'NGI5MDVlNzU2NGM4YTU4ODNlMjNkNTdkNWJkZDhmOWFlMmI5ZTkzZA=='

    header.should == "UsernameToken Username=\"melody\", PasswordDigest=\"#{digest}\", Nonce=\"#{nonce}\", Created=\"1977-09-18T03:34:56+0000\""
  end
end
