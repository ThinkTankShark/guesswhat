# require "guesswhat/version"
require 'rest-client'

module Guesswhat
  class Product

    def self.image(item)

      #Default URL for finding images from google
      url = "https://www.googleapis.com/customsearch/v1?q=#{item}&cx=008288361057280940904%3Acaao_sbv0xy&fileType=png&filter=1&imgSize=xlarge&num=1&safe=high&searchType=image&key=AIzaSyBvSuUjfRZ0ImQP6KEgDdQEtdUoB1nWQY8"
      response = JSON.parse(RestClient.get url)

      #Finding the first image from Google Images
      if response["items"][0]["link"] != nil
        image_url = response["items"][0]["link"]
      else
        image_url = nil
      end

      return image_url
    end
  end
end

