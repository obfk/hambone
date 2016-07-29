class Stat < ApplicationRecord
  def self.active_30
    Stat.all.pluck(:logins_within_thirty_days).each_slice(10).map(&:last)
  end

  def self.active_60
    Stat.all.pluck(:logins_within_sixty_days).each_slice(10).map(&:last)
  end

  def self.active_90
    Stat.all.pluck(:logins_within_ninety_days).each_slice(10).map(&:last)
  end
end
