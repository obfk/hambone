require 'csv'

# Stats
CSV.foreach('/Users/pivotal/Desktop/hambone/db/data/stats.csv') do |row|
  Stat.create(
    date:                      row[0],
    logins_within_thirty_days: row[1],
    logins_within_sixty_days:  row[2],
    logins_within_ninety_days: row[3]
  )
end
