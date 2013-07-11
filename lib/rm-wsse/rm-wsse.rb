class RmWsse
  class << self
    def wsse_header(user, password, date = nil, rnd = nil)
      formatter = NSDateFormatter.new.tap do |f|
        f.setDateFormat("yyyy-MM-dd'T'HH:mm:ssZZZ")
        f.setTimeZone(NSTimeZone.timeZoneWithAbbreviation('GMT'))
      end

      date ||= NSDate.new
      rnd ||= Random.new.rand

      created = formatter.stringFromDate(date)
      nonce   = RmDigest::SHA1.hexdigest(created + rnd.to_s)
      digest  = RmDigest::SHA1.digest(nonce + created + password)
      
      nonce_base64 = [nonce].pack('m0')
      digest_base64 = [digest].pack('m0')

      "UsernameToken Username=\"#{user}\", PasswordDigest=\"#{digest_base64}\", Nonce=\"#{nonce_base64}\", Created=\"#{created}\""
    end
  end
end
