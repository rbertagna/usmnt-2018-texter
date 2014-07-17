require 'rubygems' # not necessary with ruby 1.9 but included for completeness
require 'twilio-ruby'

class Messenger
  def initialize(*to, message)
    @to = *to
    @message = message
    send
  end


  def send
  account_sid = 'ACe330ba04d082392df4cb3511dcb72cec'
  auth_token = '2008ea097713e401a16c54029058da82'

  @to.each do |recipient|
    @client = Twilio::REST::Client.new account_sid, auth_token
      @client.account.messages.create(
        :from => '+18152642023',
        :to => recipient,
        :body => @message
      )
    end
  end

end

