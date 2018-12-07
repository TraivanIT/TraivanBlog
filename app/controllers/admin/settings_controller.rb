class Admin::SettingsController < Admin::ApplicationController
  def new
    if Setting.any?
      redirect_to edit_admin_setting_url(Setting.first)
    else
      @setting = Setting.new
    end
  end

  def create
    @setting = Setting.new(setting_params)
    if @setting.save
      redirect_to edit_admin_setting_url(@setting), notice: 'Setting was successful created'
    else
      flash[:alert] = 'Setting was problem updated'
      render :new
    end
  end

  def edit
    @setting = Setting.find(params[:id])
  end

  def update
    @setting = Setting.find(params[:id])
    if @setting.update(setting_params)
      redirect_to edit_admin_setting_url(@setting), notice: 'Setting was successful updated'
    else
      flash[:alert] = 'There are problem to updated Setting'
      render :edit
    end
  end
  private
    def setting_params
      params.require(:setting).permit(:site_name,
                                      :post_per_page,
                                      :prevent_maintenance,
                                      :tag_visibility

        )
    end
end
