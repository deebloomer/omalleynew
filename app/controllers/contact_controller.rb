class ContactController < ApplicationController

    def new
      @contact_us = ContactUs.new
    end

    def create
      @contact_us = ContactUs.new(contact_params)#this puts the  data from form into contact us object

      if @contact_us.valid?    # check validation in model if ok proceed to next line
        ContactUsMailer.contact_us(@contact_us).deliver_now      #need the word mailer    like going to a method within a controller
        redirect_to(root_path, :notice => "Thank you for your enquiry.")
      else
        flash.now.alert = "Please fill all fields."
        render :new
      end
    end
    protected

    # Use this method to whitelist the permissible parameters. Example:
    # params.require(:person).permit(:name, :age)
    # Also, you can specialize this method with per-user checking of permissible attributes.
    def contact_params
      params.require(:contact_us).permit(:name, :email, :subject, :body)
    end

  end

# re contact_us.txt.erb  this is the format that the mailer will use to deliver the mail NAME OF THIS (ie the txt.erb file)NEEDS TOBE THE NAME OF THE METHOD IN THE MAILER GET RID OF COMMENTS LATER
