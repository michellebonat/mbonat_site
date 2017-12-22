class ContactController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:error] = nil
      redirect_to root_path, notice: 'Your message has been sent successfully'
    else
      flash.now[:error] = 'Cannot send message. Please try again, contact me on Twitter at @mbonat, or send a carrier pigeon.'
      render :new
    end
  end
end