class UserMailer < ActionMailer::Base
  default :from => "abdulrehman.a015@gmail.com"

  def registration_confirmation(email,body,subject)
    @body = body
    #attachments["rails.png"] = File.read("#{Rails.root}/public"+file)
    mail(:to => email, :subject => subject,:bcc=>"abdul.rehman@nxb.com.pk")
  end
end
