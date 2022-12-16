def cleanup(string)
  cleaned = string.gsub(/[^a-z]/, " ")
  while cleaned.include?("  ")
    cleaned = cleaned.gsub("  ", " ")
  end
  cleaned
end


p cleanup("---what's my +*& line?") == ' what s my line '
p cleanup("---what's my +*& line?")