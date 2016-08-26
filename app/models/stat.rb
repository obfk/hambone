class Stat < ApplicationRecord

  SUBSET_SIZE = 10

  def self.active_date
    subset(Stat.all.pluck(:date).map(&:to_s), SUBSET_SIZE)
  end

  def self.active_30
    subset(Stat.all.pluck(:logins_within_thirty_days), SUBSET_SIZE)
  end

  def self.active_60
    subset(Stat.all.pluck(:logins_within_sixty_days), SUBSET_SIZE)
  end

  def self.active_90
    subset(Stat.all.pluck(:logins_within_ninety_days), SUBSET_SIZE)
  end

  private

  def self.subset(section, n)
    section.each_slice(n).map(&:last)
  end
end
