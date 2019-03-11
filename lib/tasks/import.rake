require 'csv'
namespace :import do
  desc "TODO"
  task csv: :environment do
    path = './lib/seeds/Liste_Rosiers.csv'
    CSV.foreach(path, headers: true) do |row|
      name = row[4].to_s.strip
      next if name.blank?
      person = row[6]
      number = row[8]
      plant = Plant.find_or_create_by name: name
      plant.family = row[7]
      plant.creationDate = row[5]
      plant.getter = row[6]
      plant.existingNumber = row[8]
      plant.save
    end
  end

  task csv_positions: :environment do
    path = './lib/seeds/Liste_Positions.csv'
    CSV.foreach(path, headers: true) do |row|
      name = row[4].to_s.strip
      next if name.blank?
      person = row[6]
      number = row[8]
      plant = Plant.find_or_create_by name: name
      plant.family = row[7]
      plant.creationDate = row[5]
      plant.getter = row[6]
      plant.existingNumber = row[8]
      plant.save
    end
  end
end
