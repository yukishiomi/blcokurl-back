module Api
  module V2
    class ProhibitionsController < ApplicationController
      def scrape
        agent = Mechanize.new
        target_url = params[:url]
        page = agent.get(target_url)
        present_array = page.body.split(/\n/)
        binding.pry
        render json: { status: 'SUCCESS', message: 'Loaded posts', data: present_array }
      end
    end
  end
end

