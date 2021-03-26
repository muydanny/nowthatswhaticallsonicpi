# Welcome to Sonic Pi

##| This one needs help

live_loop :flibble do
  sample :ambi_choir, amp: 0.25, sustain: 1, release: 3
  sample :loop_amen, rate: 0.25, amp: 0.2, sustain: 1, release: 1.5
  sleep 1.5
end

use_bpm 120
use_synth :dark_ambience

live_loop :vinyl do
  sample :vinyl_hiss, amp: 0.25
  sleep 10
end

live_loop :tetris do
  play_pattern_timed [:e, :b3, :c, :d, :c, :b3], [1, 0.5, 0.5], sustain: 1, release: 3
  play_pattern_timed [:a3, :a3, :c, :e, :d, :c], [1, 0.5, 0.5], sustain: 1, release: 3
  play_pattern_timed [:b3, :c, :d, :e, :c, :a3, :a3], [1.5, 0.5, 1, 1, 1, 1, 2], sustain: 1, release: 3
  play_pattern_timed [:c, :a3, :a3], [1, 1, 2], sustain: 1, release: 3
  ##| play_pattern_timed [:c, :a3, :a3], [1, 1, 2], sustain: 1, release: 3
  ##| play_pattern_timed [:c, :a3, :a3], [1, 1, 2], sustain: 1, release: 3
  ##| sleep 0.25
  ##| use_bpm current_bpm + 40
  sleep 0.5
  play_pattern_timed [:d, :f, :a, :g, :f, :e, :c, :e, :d, :c], [1, 0.5, 1, 0.5, 0.5, 1.5, 0.5, 1, 0.5, 0.5], sustain: 1, release: 3
  play_pattern_timed [:b3, :b3, :c, :d, :e, :c, :a3, :a3], [1, 0.5, 0.5, 1, 1, 1, 1, 2], sustain: 1, release: 3
end








##| sleep 28
##| sample :misc_crow, amp: 1.5

##| live_loop :ate_oh_ate do
##|   sample :bd_808, amp: 50
##|   sample :drum_cowbell
##|   sleep 1
##| end



