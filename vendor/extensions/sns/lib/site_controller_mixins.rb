module SiteControllerMixins

  def self.included(base)
    base.class_eval do
      prepend_before_filter :ensure_no_login_required
      before_filter :parse_url_for_text_assets, :only => :show_page
    end
  end


  def text_asset_cache
    @text_asset_cache ||= TextAssetResponseCache.instance
  end


  private

    # There's some really weird behavior going on here.  For some reason -- only
    # when running specs -- the LoginSystem seems to be reset and so, forgets
    # that login is not required for SiteController.  This method was added to
    # refresh its memory (I really wish I didn't have to do this step).
    def ensure_no_login_required
      SiteController.no_login_required unless no_login_required?
    end


    def parse_url_for_text_assets
      url = params[:url]
      if url.kind_of?(Array)
        url = url.join('/')
      else
        url = url.to_s
      end
      if url =~ %r{^\/?(#{Sns::Config[:stylesheet_directory]})\/(.*)$}
        show_text_asset($2, 'stylesheet')

      elsif url =~ %r{^\/?(#{Sns::Config[:javascript_directory]})\/(.*)$}
        show_text_asset($2, 'javascript')
      end
    end


    def show_text_asset(filename, asset_type)
      response.headers.delete('Cache-Control')
      cache_url = "#{asset_type}_cache/#{filename}"

      if (request.get? || request.head?) and live? and (text_asset_cache.response_cached?(cache_url))
        text_asset_cache.update_response(cache_url, response, request)
        @performed_render = true
      else
        show_uncached_text_asset(filename, asset_type, cache_url)
      end
    end


    def show_uncached_text_asset(filename, asset_type, cache_url)
      @text_asset = asset_type.camelcase.constantize.find_by_filename(filename)
      mime_type = Sns::Config["#{asset_type}_mime_type"]

      unless @text_asset.nil?
        response.headers['Content-Type'] = mime_type
        response.headers['Last-Modified'] = @text_asset.effectively_updated_at.httpdate
        response.body = @text_asset.render
        # for text_assets, we cache no matter what (no 'status' setting for them)
        text_asset_cache.cache_response(cache_url, response) if request.get?
        @performed_render = true
      end
    end

end