class SchoolPartyMailer < ApplicationMailer
  def new_school_party_email(user)
    @school_party = user
    mail(to: user, subject: "You got a new order!")
  end
end
