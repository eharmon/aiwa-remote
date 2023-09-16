Aiwa RC-T300 / Aiwa RC-R300
===========================

Remote key codes for the Aiwa RC-T300 remote control and RC-R300 remote control reciever.

These were used with Aiwa Series 50 and 60 mini-component stereo systems from around 1980. These codes may also be compatible with the System 80, which used an RC-R500 remote control reciever.

Being an extremely early IR remote these don't use more modern "higher-level" protocols, and modern equipment can have trouble understanding these remotes. 

By using `ir-ctl` and confirming with an oscilliscope, we can confirm the following attributes:

- Carrier frequency @ 30.5kHz
- Space encoded
- Gap: 125ms
- Pulse: 1.05ms
- Zero: 3.2ms
- One: 7.4ms

There is no header, preamble, repeat bits, or device IDs.

Instead the button code is sent as a raw stream of 10 space-encoded bits. Most keys on the original remote do not repeat, excepting Tuning and Volume, which simply repeat the 10-bit code with a 125ms gap.

This repo includes the raw codes, their binary representation, a Linux rc_keymap for sending commands, and a simple script wrapper to send them.
