class PagesController < ApplicationController
  def index
    @urls = PagesHelper::Links
  end

  def animation
  end
  
  def resume
    pdf_filename = File.join(Rails.root, "public/MaxPleanersResume.pdf")
    send_file(pdf_filename, :filename => "your_document.pdf", :disposition => "inline", :type => "application/pdf")
  end

end