class EmergencyContactsController < ApplicationController
  layout "scaffold"

  before_action :set_emergency_contact, only: [:show, :edit, :update, :destroy]

  # GET /emergency_contacts
  def index
    @emergency_contacts = EmergencyContact.all
  end

  # GET /emergency_contacts/1
  def show
  end

  # GET /emergency_contacts/new
  def new
    @emergency_contact = EmergencyContact.new
  end

  # GET /emergency_contacts/1/edit
  def edit
  end

  # POST /emergency_contacts
  def create
    @emergency_contact = EmergencyContact.new(emergency_contact_params)

    if @emergency_contact.save
      redirect_to @emergency_contact, notice: 'Emergency contact was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /emergency_contacts/1
  def update
    if @emergency_contact.update(emergency_contact_params)
      redirect_to @emergency_contact, notice: 'Emergency contact was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /emergency_contacts/1
  def destroy
    @emergency_contact.destroy
    redirect_to emergency_contacts_url, notice: 'Emergency contact was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_emergency_contact
      @emergency_contact = EmergencyContact.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def emergency_contact_params
      params.require(:emergency_contact).permit(:user_id, :first_name, :last_name, :relation, :cell_phone, :last_notified)
    end
end
