class AdminController < ApplicationController
  def index
    if session[:option] == 1
      @cauthus = Cauthu.all
      
    elsif session[:option] == 2
      @doibongs = Doibong.all
      
    elsif session[:option] == 3
      @huanluyenviens = Huanluyenvien.all
      
    elsif session[:option] == 4
      @sanvandongs = Sanvandong.all
      
    elsif session[:option] == 5
      @trandaus = Trandau.all
      
    elsif session[:option] == 6
      @chitietbxhs = Chitietbxh.all
      
      
    elsif session[:option] == 7
      @vongdaus = Vongdau.all
      
    elsif session[:option] == 8
      @lichthidaus = Lichthidau.all
      
    elsif session[:option] == 9
      @bangxephangs = Bangxephang.all
      
    elsif session[:option] == 10
      @users = User.all
      
      
    elsif session[:option] == 11
      @videos = Videos.all
      
      
    elsif session[:option] == 12
      @baiviets = Baiviet.all
      
    end
    
  end
  
  
  def xuly
    
    s = params[:option]
    session[:option]= s.to_i
    render :js => "document.location.reload()"
    
  end
end
