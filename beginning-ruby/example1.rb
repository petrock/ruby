# Read file text.txt 
# Count lines
# Character count with whitespace
# Character count without whitespace
# Word count
# Sentence count
# Paragraph count
# Calculate averages

text = ''
line_count = 0
File.open("text.txt").each do |line|
    line_count += 1
    text << line
end

puts "Line count is: #{line_count}"



