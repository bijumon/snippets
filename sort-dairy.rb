#!/usr/bin/env ruby
#
# A date by itself on a line = dateline
# A dateline followed by text is a dairy entry
# 
# sort dairy entries in chronological order

require 'date'

abort "arguments needed" if ARGV.empty?
ARGV.each { |p| 
	abort "#{p} doesn't exist" unless File.readable?(p)
}

def dateline(line)

end

def isdateline(line)
	hasDate = notDate = 0
	date_found = Array.new
	dateToken=["2007", "2008", "2009", "2010", "2011", "2012", "january", "february", "march", "april", "may", "june", "july", "august", "september", "october", "november", "december", "jan", "feb", "mar", "apr", "may", "jun", "jul", "aug", "sep", "oct", "nov", "dec","sunday", "monday", "tuesday", "wednesday", "thursday", "friday", "saturday","sun", "mon", "tue", "wed", "thu", "fri", "sat"]
	words=line.chomp.downcase.split
	wordcount = 0
	words.each { |w| 
		if wordcount >= 8 then
			break
		end
		dateToken.each { |dt|
			#print dt, " ", w,"\n"
			if dt.eql? w then
				hasDate += 1
				date_found.push w
				break
			end
			}
		wordcount += 1
	}
	if hasDate > 1 then
		entry_date = date_found.uniq.join(' ')
		puts line, '>> ' + entry_date, Date.parse(line)
		return entry_date
	end

	answer=false
end

ARGV.each { |p|
	fp = File.open(p)
	lines = fp.readlines
	lines.each { |x|
		entry_date = isdateline(x)
		if entry_date.eql? false then
			#puts x
		else
			#print ">>> ", entry_date, " \n"
		end
	}
	fp.close
}

