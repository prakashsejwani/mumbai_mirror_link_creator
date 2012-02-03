class LinkCreatorsController < ApplicationController
  def index
    if params[:from].present? && params[:to].present?
      from = Date.strptime params[:from], '%m/%d/%Y'
      to = Date.strptime params[:to], '%m/%d/%Y'
      if from < to
        @records = []
        records = {} 
        (from..to).each do |date|
          records[:date] = date
          records[:song_link] = URI.escape("5m5.in/" + date.strftime("%b%d") + "Song")
          records[:video_link]  = "5m5.in/" + date.strftime("%b%d") + "Video"
          records[:article_link] = "5m5.in/" + date.strftime("%b%d") + "Article"
          records[:tip_link] = "5m5.in/" + date.strftime("%b%d") + "Tip"
          records[:album_link] = "5m5.in/" + date.strftime("%b%d") + "Album"
          #date = params[:from].to_date + 1.day
          @records << records
        end
        
        return records
      else
        redirect_to root_url
        flash[:alert] = "From date is greater than To date"
      end
    end
  end

  def generate_url
    if params[:from].present? && params[:to].present?
      from = params[:from].to_date
      to = params[:to].to_date
      
    else
       redirect_to root_url
       flash[:alert] = "Enter From and To date"
    end
  end
end
