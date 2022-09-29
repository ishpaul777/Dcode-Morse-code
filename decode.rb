@morse_chars = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}

# decoded morse char
def decode_char(char)
  @morse_chars[char]
end

# decoded morse word
def decode_word(morse_word)
  word = ''
  word_splitted = morse_word.split
  word_splitted.each { |char| word += decode_char(char) }
  word
end

# decoded morse message
def decode(morse_message)
  message = ''
  msg_splitted = morse_message.split('  ')
  msg_splitted.each_with_index do |word, index|
    message += if index == msg_splitted.length - 1
                 decode_word(word)
               else
                 "#{decode_word(word)} "
               end
  end
  message
end
