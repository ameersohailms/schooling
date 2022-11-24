require "bundler/setup"
require "bunny"
class SchoolPartiesController < ApplicationController
  before_action :set_school_party, only: %i[ show edit update destroy ]


  # Start a communication session with RabbitMQ
  # conn = Bunny.new
  # conn.start
  #
  # # open a channel
  # ch = conn.create_channel
  # ch.confirm_select
  #
  # # declare a queue
  # q  = ch.queue("test1")
  # q.subscribe(manual_ack: true) do |delivery_info, metadata, payload|
  #   puts "This is the message: #{payload}"
  #   # acknowledge the delivery so that RabbitMQ can mark it for deletion
  #   ch.ack(delivery_info.delivery_tag)
  # end
  #
  # # publish a message to the default exchange which then gets routed to this queue
  # q.publish("Hello, everybody!")
  #
  # # await confirmations from RabbitMQ, see
  # # https://www.rabbitmq.com/publishers.html#data-safety for details
  # ch.wait_for_confirms
  #
  # # give the above consumer some time consume the delivery and print out the message
  # sleep 1
  #
  # puts "Done"
  #
  # ch.close
  # # close the connection
  # conn.close
  # GET /school_parties or /school_parties.json
  def index
    @school_parties = SchoolParty.all
  end

  # GET /school_parties/1 or /school_parties/1.json
  def show
  end

  # GET /school_parties/new
  def new
    @school_party = SchoolParty.new
  end

  # GET /school_parties/1/edit
  def edit
  end

  # POST /school_parties or /school_parties.json
  def create
    @school_party = SchoolParty.new(school_party_params)

    respond_to do |format|
      if @school_party.save
        users =  ["ameersohailms@gmail.com", "ameer09981@gmail.com", "varijapatpal056@gmail.com", "varijapatpaljr@gmail.com"]
        conn =  Bunny.new
        conn.start
        ch =  conn.create_channel
        ch.confirm_select
        puts ch.inspect
        q =  ch.queue("test")
        q.subscribe(manual_ack: true) do |delivery_info, meta_data, payload|
          puts "This is the message: #{payload}"
          #   # acknowledge the delivery so that RabbitMQ can mark it for deletion
            ch.ack(delivery_info.delivery_tag)
        end
        q.publish("Hello, everybody!")
        q.publish("Hello1, everybody!")
        q.publish("Hello2, everybody!")
        q.publish("Hello3, everybody!")
        q.publish("Hello4, everybody!")
        # # give the above consumer some time consume the delivery and print out the message
         sleep 1
        puts q.inspect
        puts "Done"
        #
        ch.close
         # close the connection
         conn.close

        # mail(to: "ameersohailms@gmail.com", subject: "You got a new order!")
        # SchoolPartyMailer.with(school_party: @school_party).new_school_party_email.deliver
        puts "ddddddddffffffffffffffffffffffffffffffff"
        # GuestsCleanupJob.perform_later(users)
        puts "kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk"
        format.html { redirect_to school_party_url(@school_party), notice: "School party was successfully created." }
        format.json { render :show, status: :created, location: @school_party }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @school_party.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /school_parties/1 or /school_parties/1.json
  def update
    respond_to do |format|
      if @school_party.update(school_party_params)
        format.html { redirect_to school_party_url(@school_party), notice: "School party was successfully updated." }
        format.json { render :show, status: :ok, location: @school_party }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @school_party.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /school_parties/1 or /school_parties/1.json
  def destroy
    @school_party.destroy

    respond_to do |format|
      format.html { redirect_to school_parties_url, notice: "School party was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_school_party
      @school_party = SchoolParty.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def school_party_params
      params.require(:school_party).permit(:title, :description)
    end
end
