require 'mailgun'

# Initialize your Mailgun object:
class Email

  def initialize (*to, subject, text)
    @subject = subject
    @text = text
    @to = *to
    
  end

#  def mailing_list
#    @addresses = @mailgun.lists.create("postmaster@sandbox18600233682b4da8818ed480b740950d.mailgun.org")
#    @mailgun.list_members.add "postmaster@sandbox18600233682b4da8818ed480b740950d.mailgun.org", "rbertagna@riverdale.edu", "isabella@bertagna.com"
#    @addresses = @mailgun.list_members.list "peanutbutter@sandbox18600233682b4da8818ed480b740950d.mailgun.org", "rbertagna@riverdale.edu", "isabella@bertagna.com"
#  end

  def send
    Mailgun.configure do |config|
      config.api_key = 'key-2c5h-3o6pzkikaojrfr8ddkp3wc2a3a4'
      config.domain  = 'sandbox18600233682b4da8818ed480b740950d.mailgun.org'
    end

    @mailgun = Mailgun()

    @to.each do |recipient|
      parameters = {
        :to => recipient,
        :subject => @subject,
        :text => @text,
        :from => "postmaster@sandbox18600233682b4da8818ed480b740950d.mailgun.org"
      }
    end
    @mailgun.messages.send_email(parameters)
  end

end

hello = Email.new("rbertagna@riverdale.edu", "isabella@bertagna.com", "Science", "I am sending a message to myself")

hello.send