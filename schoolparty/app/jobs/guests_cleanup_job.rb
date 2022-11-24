class GuestsCleanupJob < ActiveJob::Base
  queue_as :default # queue_as :low_priority
  # self.queue_adapter = :resque
  # include Sidekiq
  #   ENV['IMPORT'] == 'true'
  # end
  def perform(users)
    # Do something later
    puts users
    users.each do |u|
      puts "dffffffffffffffffffddddddddddddddddf"
      SchoolPartyMailer.new_school_party_email(u).deliver_now
    end
  end
end
