class InquiriesController < ApplicationController
  before_filter :authenticate_user!
  before_action :signed_in_user

  def create
    @inquiry = current_user.inquiry.build(inquiry_params)

    if @inquiry.save
      flash[:success] = "inquiry created!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  # DELETE /inquiries/1
  # DELETE /inquiries/1.json
  def destroy
    @inquiry.destroy
    respond_to do |format|
      format.html { redirect_to inquiries_url }
      format.json { head :no_content }
    end
  end

  def confirm
    @inquiry = Inquiry.new(inquiry_params)
    render :new if @inquiry.invalid?
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inquiry
      @inquiry = Inquiry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inquiry_params
      params.require(:inquiry).permit(:name, :email, :inquiry)
    end
end
