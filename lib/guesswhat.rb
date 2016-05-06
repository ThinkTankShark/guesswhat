require "guesswhat/version"
require 'rest-client'

module Guesswhat
  class Product

    def self.image(args = {})

      item = args.fetch(:item, "shoes")
      size = args.fetch(:size, "xlarge")
      limit = args.fetch(:limit, 10)
      type = args.fetch(:type, "png")
      color = args.fetch(:color, "color")

      key = "AIzaSyBvSuUjfRZ0ImQP6KEgDdQEtdUoB1nWQY8"
      cx = "008288361057280940904:caao_sbv0xy"

      #Default URL for finding images from Google
      url = "https://www.googleapis.com/customsearch/v1?q=#{item}&cx=#{cx}&fileType=#{type}&filter=1&imgColorType=#{color}&imgSize=#{size}&num=#{limit}&key=#{key}"
      response = JSON.parse(RestClient.get url)

      rand_index = rand(1-10) + 1
      #Finding the first image from Google Images
      if response["items"][rand_index - 1]["link"] != nil
        image_url = response["items"][rand_index - 1]["link"]
      else
        image_url = nil
      end

      return image_url
    end
  end
end

