class GetTitle
    include Sidekiq::Worker
  
    def perform(url_id)
      url = ShortenedUrl.find(url_id)
      agent = Mechanize.new
      page = agent.get(url.sanitize_url)
      url.title = page.title
      url.save
    end
  
  end