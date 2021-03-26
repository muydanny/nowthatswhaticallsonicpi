live_loop :haunted, amp: 0.5 do
  sample :perc_bell, rate: rrand(-1.5, 1.5)
  sleep rrand(0.1, 2)
end

live_loop :fibble do
  sample :bass_thick_c, release: 1.5, amp: 0.1
  sample :bass_thick_c, release: 1.5, amp: 0.1
  sleep 0.5
  sample :elec_blup, amp: 0.5
  sleep 0.5
  sample :elec_blup, amp: 0.5
  sample :elec_blup, amp: 0.5
  sample :ambi_glass_rub, amp: 0.2
end

with_fx :reverb, amp: 0.2 do
  loop do
    s = synth [:bnoise, :cnoise, :gnoise].choose, amp: rrand(0.5, 1.5), attack: rrand(0, 4), sustain: rrand(0, 2), release: rrand(1, 3), cutoff_slide: rrand(0, 3), cutoff: rrand(60, 80), pan: rrand(-1, 1), pan_slide: 1, amp: rrand(0.5, 1)
    control s, pan: rrand(-1, 1), cutoff: rrand(60, 115)
    sleep rrand(2, 3)
  end
end
