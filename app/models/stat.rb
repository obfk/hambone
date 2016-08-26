class Stat < ApplicationRecord

  SUBSET_REDUCER = 10

  def self.stories_created_today
    Stat.last.total_number_of_stories - number_of_stories_24_hours_ago
  end

  def self.stories_created_this_week
    Stat.last.total_number_of_stories - number_of_stories_1_week_ago
  end

  def self.total_number_of_stories
    Stat.last.total_number_of_stories
  end

  def self.active_date
    subset(Stat.all.pluck(:date).map(&:to_s), SUBSET_REDUCER)
  end

  def self.active_30
    subset(Stat.all.pluck(:logins_within_thirty_days), SUBSET_REDUCER)
  end

  def self.active_60
    subset(Stat.all.pluck(:logins_within_sixty_days), SUBSET_REDUCER)
  end

  def self.active_90
    subset(Stat.all.pluck(:logins_within_ninety_days), SUBSET_REDUCER)
  end

  private

  def self.subset(section, n)
    section.each_slice(n).map(&:last).compact
  end

  def self.number_of_stories_24_hours_ago
    (Stat.where('total_number_of_stories IS NOT NULL AND created_at > ?', 1.day.ago).select([:total_number_of_stories]).first.total_number_of_stories || 0)
  end

  def self.number_of_stories_1_week_ago
    (Stat.where('total_number_of_stories IS NOT NULL AND created_at > ?', 1.week.ago).select([:total_number_of_stories]).first.total_number_of_stories || 0)
  end
end
