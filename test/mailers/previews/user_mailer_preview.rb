class UserMailerPreview < ActionMailer::Preview
  def postcode
    user = User.first
    event = Event.first
    # This is how you pass value to params[:user] inside mailer definition!
    UserMailer.postcode(user, event)
  end
end
