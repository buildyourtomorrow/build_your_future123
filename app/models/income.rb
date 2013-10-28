class Income < ActiveRecord::Base
	attr_accessible :amount, :description, :frequency, :savings, :start_date

	validates :amount, :description, :frequency, :savings, :start_date, :presence => true
	validates :description, :length => {:maximum => 20}

	FREQUENCY_HASH = {"1" => "Weekly", "2" => "Every other week", "3" => "15th and last day of month", "4" => "Monthly"}

	WEEKLY = 1
	OTHER_WEEK = 2
	TWICE_MONTH = 3
	MONTHLY = 4
end
