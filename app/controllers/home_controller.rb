class HomeController < ApplicationController
  def index


  end
  def display_image
    ch = ChartDemo.pie_chart
    file_name = ChartDemo.render_graph(ch)
    send_file file_name , :type => 'image/png', :disposition => 'inline'
  end
end
