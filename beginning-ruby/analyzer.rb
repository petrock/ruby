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

lines = File.readlines("text.txt")
line_count = lines.size
text = lines.join

# Character count with whitespace
total_characters = text.length

# Character count without whitespace
total_characters_nospaces = text.gsub(/\s+/,'').length

# Word count
# Using scan() - scan counts hyphenated words and is harder to read
word_count = text.scan(/\w+/).length

# Experiment - find number of hyphens
hyphen_count = text.scan(/-/).count

# Using split() - split counts on spaces by default and is clearer to read
word_count = text.split.length

# Experiment - find number of hyphens
hyphen_count = text.split('-').length

# Paragraph count
paragraph_count = text.split(/\n\n/).length

# Sentence count
sentence_count = text.split(/\.|\?|!/).length

# Interesting words
stopwords = %w{the a by on for of are with just but and to the my I has some in}
all_words = text.scan(/\w+/)
good_words = all_words.reject{ |word| stopwords.include?(word) }
good_percentage = ((good_words.length.to_f/all_words.length.to_f) * 100).to_i

# Output results
puts "#{line_count} lines via File.open"
puts "#{line_count} lines via File.readlines"
puts "#{total_characters} characters via text.length"
puts "#{total_characters_nospaces} characters excluding spaces via text.gsub"
puts "#{word_count} words via scan"
puts "#{hyphen_count} number of hyphens via scan"
puts "#{word_count} words via split"
puts "#{hyphen_count} number of hyphens via split"
puts "#{paragraph_count} paragraphs"
puts "#{sentence_count} sentences"
puts "#{sentence_count/paragraph_count} sentences per paragraph (avg)"

# Calculate averages
puts "#{word_count/sentence_count} words per sentence (avg)"
puts "#{word_count/sentence_count} words per sentence (avg)"

puts "#{good_percentage}% of words are non-fluff"
