module BuoyWithTitleHelper
  def buoy_with_title(*args)
    buoy(*args)
    content_for(:title, "#{buoys.last.text} | finz") unless content_for?(:title)
  end
end
