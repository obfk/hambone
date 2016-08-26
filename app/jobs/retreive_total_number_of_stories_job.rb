require 'httparty'

class RetreiveTotalNumberOfStoriesJob < ApplicationJob
  RUN_EVERY = 1.hour

  def perform(*args)
    response_body = JSON.parse(
      HTTParty.get(
        'https://www.pivotaltracker.com/services/area_51/tracker_total_stories'
      ).body
    )

    Stat.create(total_number_of_stories: response_body['count'])

    self.class.set(wait: RUN_EVERY).perform_later
  end
end
