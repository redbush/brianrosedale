module PostsHelper

  def format_datetime(dt)
    formated_dt = 'Unknown'
    begin
      formated_dt = dt.strftime('%m/%d/%Y')
    rescue NoMethodError
      formated_dt
    end
  end

end
