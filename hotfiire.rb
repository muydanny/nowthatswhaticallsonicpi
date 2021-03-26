# Welcome to Sonic Pi


play 50, amp: 0.1
sleep 0.25
play 55, amp: 0.2
sleep 0.25
play 57, amp: 0.4
sleep 0.25
play 62, amp: 1


live_loop :ghost do
  sample :ambi_choir, rate: 0.2
  sample :bd_haus, rate: 1
  sleep 0.5
end

live_loop :bass do
  play 36
  sleep 1
  play 36
  sleep 1
  play 36
  sleep 1
  play 48
  sleep 0.5
end



live_loop :ate_oh_ate do
  sample :bd_808, amp: 50
  sleep 1
end

live_loop :zelda_chime do
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






