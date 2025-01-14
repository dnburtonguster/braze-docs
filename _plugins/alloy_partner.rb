# https://github.com/dimitri-koenig/jekyll-plugins
# modified to allow variable url
require 'net/http'
require 'uri'

module Jekyll

  class AlloyPartner < Liquid::Tag

    def initialize(tag_name, markup, tokens)
      @url = markup.strip
      super
    end

    def render(context)
      url =  context[@url.strip]
      puts 'Fetching content of url: ' + url

      if url =~ URI::regexp
        @results = fetchContent(url)
      else
        puts 'Error fetching: ' + url
      end

      if @results.code != '200'
        '{}'
      else
        if @results.body
          @results.body.force_encoding('UTF-8')
        else
          puts 'Empty content from : ' + url
          '{}'
        end
      end
    end

    def fetchContent(url)
      Net::HTTP.get_response(URI.parse(URI.encode(url.strip)))
    end
  end
end

Liquid::Template.register_tag('alloy_partner', Jekyll::AlloyPartner)
