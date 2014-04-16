# State Machine - 2014/04/16

A state machine is good for modeling things that move in and out of states.

Today we're going to model my dog Baron. Let's assume Baron is very simple (although in reality he has quite complex feelings and emotions). Baron has a few basic states: sleeping, playing, and eating.

He does a few basic things to transition him into different states:
Baron.play
  sleeping => playing
Baron.eat
  playing => eating
Baron.sleep
  eating => sleeping

Again, this is a simple representation, and we can add more states if we run out of things to do.
