<# ==========================================
 # Friday 13th
 # ------------------------------------------
 # Our beloved neighbor is a bit superstitious and we would like to help to find the next critical Fridays when it is better to stay at home.
 # It should definitely be a one-liner that we can write on a piece of paper and pin to the door. 
 # Will you help our neighbor keep his peace of mind?
 #
 # ========================================== #>


#somehow a one liner that goes through every year, every month and searches for every 13th, if a found 13th is a friday, print out the month and year
 2022..2027 | % { $year = $_; 1..12 | % { $date = Get-Date -Year $year -Month $_ -Day 13; if ($date.DayOfWeek -eq 'Friday') { "Friday 13th to stay in bed on $((Get-Culture).DateTimeFormat.GetMonthName($date.Month)) $year"} } }