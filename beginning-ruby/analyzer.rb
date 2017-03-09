# Read file text.txt 
# Count lines
# Character count with whitespace
# Character count without whitespace
# Word count
# Sentence count
# Paragraph count
# Calculate averages

# Count lines
text = ''
line_count = 0
File.open("text.txt").each do |line|
    line_count += 1
    text << line
end
puts "#{line_count} lines via File.open"

lines = File.readlines("text.txt")
line_count = lines.size
text = lines.join
puts "#{line_count} lines via File.readlines"

# Character count with whitespace
total_characters = text.length
puts "#{total_characters} characters via text.length"

# Character count without whitespace
total_characters_nospaces = text.gsub(/\s+/,'').length
puts "#{total_characters_nospaces} characters excluding spaces via text.gsub"


