class OrderMailerPreview < ActionMailer::Preview
  def sample_mail_preview
    OrderMailer.sample_email(@order)
  end
end