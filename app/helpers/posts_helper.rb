module PostsHelper

  def format_datetime(dt)
    formated_dt = 'Unknown'
    begin
      formated_dt = dt.strftime('%m/%d/%Y')
    rescue NoMethodError
      formated_dt
    end
  end

  def chunk_text(text, n)
    chunked_text = ''
    begin
      chunked_text = "#{text[0..n]} ..."
    rescue NoMethodError
      chunked_text
    end
  end

end
