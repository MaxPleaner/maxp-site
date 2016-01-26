class PagesController < ApplicationController
  def index
    @urls = PagesHelper::Links
    # render text: File.read(Rails.root.join("public/weebly.html"))
  end

  def animation
  end
  
  def resume
    @resume = File.read(Rails.root.join("public", "resume_export.html"))
    # pdf_filename = File.join(Rails.root, "public/MaxPleanersResume.pdf")
    # send_file(pdf_filename, :filename => "your_document.pdf", :disposition => "inline", :type => "application/pdf")
  end
  
  def portfolio
    redirect_to "http://maxpleaner.com/#links"
  end

end