module HomeHelper
 def draw_graph_in_pdf(graph)
    filename = "#{Time.now.strftime('%s')}"
    file = Tempfile.new([filename,'.png'])
    file = file.binmode
    file.write(graph.render_png_str)
    file.close
    content_tag(:img,'',:src=> file.path)
  end

end
