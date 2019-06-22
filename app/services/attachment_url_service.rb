class AttachmentUrlService
  class << self
    include Rails.application.routes.url_helpers
    
    def url(file)
      rails_blob_url(file, host: Rails.application.secrets.host)  
    end
  end
end
