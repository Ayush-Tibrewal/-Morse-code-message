# Method to convert morse to letter
def morse_to_letter(morse)
  letter = ''
  morse_hash = {
    a: '.-', b: '-...', c: '-.-.', d: '-..', e: '.',
    f: '..-.', g: '--.', h: '....', i: '..', j: '.---',
    k: '-.-', l: '.-..', m: '--', n: '-.', o: '---',
    p: '.--.', q: '--.-', r: '.-.', s: '...', t: '-',
    u: '..-', v: '...-', w: '.--', x: '-..-', y: '-.--', z: '--..'
  }
  morse_hash.each { |key, value| letter = key.upcase.to_s if value == morse }
  letter
end

def morse_to_word(phrase)
  word = ''
  phrase_array = phrase.split
  phrase_array.each { |section| word += morse_to_letter(section) }
  word
end

def morse_to_message(message)
  sentence = ''
  message_array = message.split('   ')
  message_array.each { |section| sentence += " #{morse_to_word(section)}" }
  sentence.strip
end
puts morse_to_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
