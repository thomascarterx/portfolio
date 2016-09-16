class Quote < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :contact_method
  attribute :referred_by
  attribute :budget
  attribute :start_date
  attribute :description
  attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Quote",
      :to => "thomas@thomascarter.net",
      :from => %("#{name}" <#{email}>)
    }
  end
end