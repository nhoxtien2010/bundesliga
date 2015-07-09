class HomeController < ApplicationController
  # before_action :authenticate_user!
  skip_before_action :verify_authenticity_token
  def index 
    @chitietbxhs = Chitietbxh.where(:bangxephang_id => Vongdau.last.stt)
    connection = ActiveRecord::Base.connection
     @baiviets = connection.execute("select * from baiviets  order by id desc  limit 0,6")
     @videos = connection.execute("select * from videos order by id desc  limit 0,6")
     @baivietmois = connection.execute("select * from baiviets where loaibaiviet=1 order by id desc limit 0,8")
     @championleagues = connection.execute("select * from baiviets where loaibaiviet=3 order by id desc limit 0,8")
     end
  
  def news
    @chitietbxhs = Chitietbxh.where(:bangxephang_id => Vongdau.last.stt)
    connection = ActiveRecord::Base.connection
     @baiviets = connection.execute("select * from baiviets order by id desc ")
     @baivietmois = connection.execute("select * from baiviets where loaibaiviet=1 order by id desc limit 0,8")
     @championleagues = connection.execute("select * from baiviets where loaibaiviet=3 order by id desc limit 0,8")
  end
  
  def watch
    @chitietbxhs = Chitietbxh.where(:bangxephang_id => Vongdau.last.stt)
    connection = ActiveRecord::Base.connection
     @videos = connection.execute("select * from videos order by id desc ")
     @baivietmois = connection.execute("select * from baiviets where loaibaiviet=1 order by id desc limit 0,8")
     @championleagues = connection.execute("select * from baiviets where loaibaiviet=3 order by id desc limit 0,8")
  end
  
  def about
    @chitietbxhs = Chitietbxh.where(:bangxephang_id => Vongdau.last.stt)
    connection = ActiveRecord::Base.connection
    @baivietmois = connection.execute("select * from baiviets where loaibaiviet=1 order by id desc limit 0,8")
    @championleagues = connection.execute("select * from baiviets where loaibaiviet=3 order by id desc limit 0,8")
    
  end
  
  def fanzone
    @chitietbxhs = Chitietbxh.where(:bangxephang_id => Vongdau.last.stt)
    connection = ActiveRecord::Base.connection
    @baivietmois = connection.execute("select * from baiviets where loaibaiviet=1 order by id desc limit 0,8")
    @championleagues = connection.execute("select * from baiviets where loaibaiviet=3 order by id desc limit 0,8")
  end
  
  def players
    @doibong = Doibong.find(1)
    @huanluyenvien = Huanluyenvien.find(@doibong.huanluyenvien_id)
    @cauthus = Cauthu.where(:doibong_id =>@doibong.id)
    if session[:keyword_string]!= nil
      @cauthu_timkiem = @cauthus.where("ten LIKE '%"+session[:keyword_string].to_s+"%'")
      session[:keyword_string]= nil
    end
  end
  
  def stats
    @vongdaus = Vongdau.all 
    if session[:stt]!= nil
      stt = session[:stt]
    else
      stt = 1
    end   
    @chitietbxhs = Chitietbxh.where(:bangxephang_id => stt)
    @trandaus = Trandau.where(:vongdau_id => stt)
    connection = ActiveRecord::Base.connection
    @baivietmois = connection.execute("select * from baiviets where loaibaiviet=1 order by id desc limit 0,8")
    @championleagues = connection.execute("select * from baiviets where loaibaiviet=3 order by id desc limit 0,8")
  end
  
  def change_stat 
    vongdau_id = params[:stt].to_i 
    session[:stt] = vongdau_id  
    render :js => "document.location.reload()"   
  end
  
  
  def chitietdoibong
      doibong = Doibong.find(params[:id].to_i)
      @huanluyenvien = Huanluyenvien.find(doibong.huanluyenvien_id)
      connection = ActiveRecord::Base.connection
      @baiviets = connection.execute("select * from baiviets where doibong_id=#{doibong.id} ")
      @videos = connection.execute("select * from videos where nguon=#{doibong.id}")
      @doibong = Doibong.find(doibong.id)
  end
  
  def tinmoi_doibong
    doibong = Doibong.find(params[:id].to_i)
    @huanluyenvien = Huanluyenvien.find(doibong.huanluyenvien_id)
    @doibong = Doibong.find(doibong.id)
  end
  
  def dulieu_doibong
    doibong = Doibong.find(params[:id].to_i)
    @huanluyenvien = Huanluyenvien.find(doibong.huanluyenvien_id)
    @doibong = Doibong.find(doibong.id)
  end
  
  def cauthu_doibong
    @doibong = Doibong.find(params[:id].to_i)
    @huanluyenvien = Huanluyenvien.find(@doibong.huanluyenvien_id)
    @cauthus = Cauthu.where(:doibong_id =>@doibong.id)
    if session[:keyword_string]!= nil
      @cauthu_timkiem = @cauthus.where("ten LIKE '%"+session[:keyword_string].to_s+"%'")
      session[:keyword_string]= nil
    end
  end
  
  def ltd_doibong
  
    doibong = Doibong.find(params[:id].to_i)
      @huanluyenvien = Huanluyenvien.find(doibong.huanluyenvien_id)
      connection = ActiveRecord::Base.connection
      @trandaus = connection.execute("select * from trandaus where doinha_id =#{doibong.id} or doikhach_id =#{doibong.id}")
      @doibong = Doibong.find(doibong.id)
  end
  
  def sanvandong_doibong
    doibong = Doibong.find(params[:id].to_i)
    @huanluyenvien = Huanluyenvien.find(doibong.huanluyenvien_id)
    @sanvandong = Sanvandong.find(doibong.id)
    @doibong = Doibong.find(doibong.id)
  end
  
  def chitiet_baiviet
    @chitietbxhs = Chitietbxh.where(:bangxephang_id => Vongdau.last.stt)
    @baiviet = Baiviet.find(params[:id].to_i)
    connection = ActiveRecord::Base.connection
    @baiviets = connection.execute("select * from baiviets order by id desc")
    @baivietmois = connection.execute("select * from baiviets where loaibaiviet=1 order by id desc")
    @championleagues = connection.execute("select * from baiviets where loaibaiviet=3 order by id desc limit 0,8")

  end
  
  def find_cauthu_ten
    session[:keyword_string] = params[:keyword].to_s 
    render :js => "document.location.reload()"
  end  
  def chitiet_video
    @chitietbxhs = Chitietbxh.where(:bangxephang_id => Vongdau.last.stt)
    @video = Videos.find(params[:id].to_i)
    connection = ActiveRecord::Base.connection
    @videos = connection.execute("select * from videos where nguon=2")
    @championleagues = connection.execute("select * from baiviets where loaibaiviet=3 order by id desc limit 0,8")
    @baivietmois = connection.execute("select * from baiviets where loaibaiviet=1 order by id desc")
  end

end