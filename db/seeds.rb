# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

Resort.delete_all

CSV.foreach("Resorts3.csv") do |col|
  Resort.create(
  	:resort_name => col[0],
  	:country => col[1],
  	:nearest_airport => col[2],
  	:transfer_time => col[3],
  	:size_of_ski_domain => col[4],
  	:easy_runs_km => col[5],
  	:medium_runs_km => col[6],
  	:hard_runs_km => col[7],
    :off_piste_rating => col[8],
    :cost_of_pass => col[9],
    :beginner_rating => col[10],
    :apres_ski_rating => col[11],
    :altitude => col[12]
  	)
end