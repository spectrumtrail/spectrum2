class EmergencyContactsController < ApplicationController
  layout "application"

  before_action :set_emergency_contact, only: [:show, :edit, :update, :destroy]

  def index
    @emergency_contacts = EmergencyContact.all
  end

  def show
  end

  def new
    @emergency_contact = EmergencyContact.new
  end

  def edit
  end

  def create
    @emergency_contact = EmergencyContact.new(emergency_contact_params)

    if @emergency_contact.save
      redirect_to @emergency_contact, notice: 'Emergency contact was successfully created.'
    else
      render :new
    end
  end

  def update
    if @emergency_contact.update(emergency_contact_params)
      redirect_to @emergency_contact, notice: 'Emergency contact was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @emergency_contact.destroy
    redirect_to emergency_contacts_url, notice: 'Emergency contact was successfully destroyed.'
  end

  private
    def set_emergency_contact
      @emergency_contact = EmergencyContact.find(params[:id])
    end

    def emergency_contact_params
      params.require(:emergency_contact).permit(
        :user_id,
        :full_name,
        :preferred_name,
        :relation,
        :cell_phone,
        :last_notified
      )
    end
end
