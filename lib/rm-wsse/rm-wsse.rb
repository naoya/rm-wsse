class RmWsse
  class << self
    def wsse_header(user, password, date = nil, rnd = nil)
      formatter = NSDateFormatter.new.tap do |f|
        f.setDateFormat("yyyy-MM-dd'T'HH:mm:ssZZZ")
      end

      date ||= NSDate.new
      rnd ||= Random.new.rand

      created = formatter.stringFromDate(date)
      nonce   = RmDigest::SHA1.hexdigest(created + rnd.to_s)
      digest  = RmDigest::SHA1.digest(nonce + created + password)

      "UsernameToken Username=\"#{user}\", PasswordDigest=\"#{digest.base64String}\", Nonce=\"#{nonce.base64String}\", Created=\"#{created}\""
    end
  end
end
