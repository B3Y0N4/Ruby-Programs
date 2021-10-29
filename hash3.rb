languages = {
    :de => 'German',
    :en => 'English',
    :es => 'Spanish',
  }
  
  dictionary = {
    :de => { :one => 'eins', :two => 'zwei', :three => 'drei' },
    :en => { :one => 'one', :two => 'two', :three => 'three' },
    :es => { :one => 'uno', :two => 'dos', :three => 'tres' }
  }
  
  # Store the dictionary values in an array of arrays
  # [[eins, zwei, drei], [one, two, three], [uno, dos, tres]]
  dictionary_to_array = dictionary.values.map { |words| words.values }
  
  # Transpose the array to arrange values according to each column
  # [[eins, one, uno], [zwei, two, dos], [drei, three, tres]]
  columns = dictionary_to_array.transpose
  
  # iterate over each subarray in columns and store the length of 
  # the largest element in each subarray
  # widths = [4, 4, 5] since eins, zwei and three are the strings with the 
  # largest lengths in their respective subarrays
  widths = columns.map do |column|
    # The max_by method will get the string with the largest length in each subarray
    column.max_by { |word| word.length }.length
  end
  
  # lines will store the final formatted table
  lines = languages.keys.map do |key|
    # get values corresponding to each key in an array
    words = dictionary[key].values
    # pad each word with an appropriate number of whitespaces
    # for example, the string 'one' after 'one'.lstrip(4) would be 'one '
    # notice the extra whitespace
    words = words.map.with_index { |word, ix| word.ljust(widths[ix]) }
    "#{key} #{words.join(' ')}"
  end
  
  puts lines.join("\n")