class PagesController < ApplicationController


  def index
    @urls = PagesHelper::Links
     render "index2"
    # render text: File.read(Rails.root.join("public/weebly.html"))
  end

  def animation
  end
  
  def resume
    @resume = File.read(Rails.root.join("public", "resume_export.html")).html_safe
    # pdf_filename = File.join(Rails.root, "public/MaxPleanersResume.pdf")
    # send_file(pdf_filename, :filename => "your_document.pdf", :disposition => "inline", :type => "application/pdf")
  end
  
  def portfolio
    redirect_to "http://maxpleaner.com/#links"
  end

  def business_cards
    @content = <<-TXT

     Max Pleaner             Programmer
     maxpleaner.com       San Francisco

      Startups -  Sobrr, Timeset (backend dev)
      Education - App Academy, CodeUnion, UCSC Politics
      Political campaigns - ‘08-’13

      Ruby, Sinatra, Rails, RSpec, Mechanize, Redis
      Javascript, jQuery, Backbone.js, Jasmine, PhantomJs, Node
      JSON, REST, SQL, Git, Heroku, AWS, Bash, Linux
    TXT
    @image = params[:image]

  end

  def linode
    redirect_to "http://li1196-141.members.linode.com:8000/"
  end

end
