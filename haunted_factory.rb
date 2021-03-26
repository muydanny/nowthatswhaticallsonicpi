
live_loop :notel do
  sample :bass_thick_c, attack: 1.5, amp: 0.1
  sample :bass_thick_c, attack: 1.5, amp: 0.1
  sample :ambi_choir, rate: 0.5
  sleep 1
end


live_loop :flibble do
  sample :ambi_choir, rate: 2
  sample :loop_amen, rate: 0.2
  sleep 1.5
end


sleep 10
use_synth :hollow
with_fx :reverb, mix: 0.7 do
  
  live_loop :note1 do
    play choose([:D4,:E4]), attack: 6, release: 6
    sleep 8
  end
  
  live_loop :note2 do
    play choose([:Fs4,:G4]), attack: 4, release: 5
    sleep 10
  end
  
  live_loop :note3 do
    play choose([:A4, :Cs5]), attack: 5, release: 5
    sleep 11
  end
  
end



