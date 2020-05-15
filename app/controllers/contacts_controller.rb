class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params_contact)
    if @contact.save
      redirect_to new_contact_path, notice:"お問い合わせありがとうございました。"
    else
      render :new
    end
  end

  private
  def params_contact
    params.require(:contact).permit(:name,:email,:content)
  end
end
