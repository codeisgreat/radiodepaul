Time.zone = 'Central Time (US & Canada)'

@slots = Slot.find(:all, :order => 'start_time', :conditions => ["quarter=?", "SQ2012"])
puts @slots.length
@slots.each do |slot|
	puts "SQ2012 show:"
	puts "ID: " + slot.id.to_s
	puts "Quarter: " + slot.quarter.to_s
	puts "Show_ID: " + slot.show_id.to_s
	puts "Start Time: " + slot.start_time.to_s
	puts "End Time: " + slot.end_time.to_s
	puts slot.monday.to_s + " " + slot.tuesday.to_s + " " + slot.wednesday.to_s + " " + slot.thursday.to_s + " " + slot.friday.to_s + " " + slot.saturday.to_s + " " + slot.sunday.to_s
	puts ""

new_slot = Slot.new
	new_slot.quarter = "SU2012"
	new_slot.show_id = slot.show_id
	new_slot.start_time = Time.now
	new_slot.end_time = Time.now
	new_slot.monday = slot.monday
	new_slot.tuesday = slot.tuesday
	new_slot.wednesday = slot.wednesday
	new_slot.thursday = slot.thursday
	new_slot.friday = slot.friday
	new_slot.saturday = slot.saturday
	new_slot.sunday = slot.sunday
	puts new_slot.to_s
new_slot.save
@slots_summer = Slot.find(:all, :order => 'start_time', :conditions => ["quarter=?", "SU2012"])
puts @slots_summer.length
end