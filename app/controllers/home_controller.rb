class HomeController < ApplicationController
  def index
    ch = ChartDemo.pie_chart
    @file_name = ChartDemo.render_graph(@ch)

  end
  def display_image
    @ch = ChartDemo.pie_chart
    send_file params[:file_name], :type => 'image/png', :disposition => 'inline'
  end
end
