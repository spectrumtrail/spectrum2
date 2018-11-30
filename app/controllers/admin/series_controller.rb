class Admin::SeriesController < Admin::BaseController
  layout "scaffold"

  before_action :set_series, only: [:show, :edit, :update, :destroy]

  def index
    @series = Series.all
  end

  def show
  end

  def new
    @series = Series.new
  end

  def edit
  end

  def create
    @series = Series.new(series_params)

    if @series.save
      redirect_to @series, notice: "Series was successfully created."
    else
      render :new
    end
  end

  def update
    if @series.update(series_params)
      redirect_to @series, notice: "Series was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @series.destroy
    redirect_to series_index_url, notice: "Series was successfully destroyed."
  end

  private

  def set_series
    @series = Series.find(params[:id])
  end

  def series_params
    params.require(:series).permit(
      :name,
      :short_description,
      :full_description,
      :allows_mass_registration,
      :mass_registration_open_at,
      :contact_email,
      :contact_name
    )
  end
end
