ActionMailer::Base.smtp_settings = {
    address: "smtp.gmail.com",
    port: 587,
    domain: 'gmail.com',
    user_name: ENV['henryamutschler@gmail.com'],
    password: ENV['xtrshovdgexmeozc'],
    authentication: :login,
    enable_starttls_auto: true
  }