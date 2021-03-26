# Welcome to Sonic Pi

##| live_loop :flibble do
##|   sample :ambi_choir, rate: 0.2
##|   sample :bd_haus, rate: 1
##|   sleep 0.5
##| end

live_loop :boom do
  play 50, amp: 0.1, pan: -1
  sleep 0.25
  play 55, amp: 0.2, pan: -1
  sleep 0.25
  play 57, amp: 0.4, pan: 0
  sleep 0.25
  play 62, amp: 1, pan: 1
  sleep 0.25
  play 62, amp: 1, pan: 1
  sleep 0.25
  play 57, amp: 0.4, pan: 0
  sleep 0.25
  play 55, amp: 0.2, pan: -1
  sleep 0.25
  play 50, amp: 0.1, pan: -1
end

sleep 8

live_loop :flibble do
  sample :ambi_choir, rate: 0.2
  sample :bd_haus, rate: 1
  sleep 0.5
end

live_loop :guit do
  with_fx :echo, mix: 0.3, phase: 0.25 do
    sample :guit_em9, rate: 0.5
  end
  sample :guit_em9, rate: 1.5
  sleep 8
end

sleep 2

live_loop :boom do
  with_fx :reverb, room: 1 do
    sample :bd_boom, amp: 10, rate: 1
  end
  sleep 4
end
