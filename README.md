# Grayratio

![greybalance](https://cloud.githubusercontent.com/assets/40650/4846728/99611e3a-604d-11e4-9b41-41dab56d19a8.jpg)

Everyone knows no one uses phones for phone calls anymore, everyone is texting.
But how often are they texting? The ratio of who sends more messages in a
conversation between two people can say a lot, especially if they are newly
dating.

Apparently, this informal metric is a _big deal_ for a modern dater to evaluate,
based on a casual survey of some of my NYC friends in their twenties.

Thankfully, now that iMessage runs locally on MacOSX, many of us have a handy
unencrypted copy of our message database we can easily access to solve this
problem _with science_. :microscope:

Grayratio will simply check your messages for the past 30 days, and give you a
list of the top 10 people you've been texted with, and what the ratio is with
each of them.

**Disclaimer:** please don't hold me responsible for any potential relationships
ruined. :broken_heart:

## Screenshot

<!-- screenshot in HTML so it can be force-half-sized for HiDPI support -->
<img src="https://cloud.githubusercontent.com/assets/40650/4848081/a7050588-6057-11e4-982c-a54118be602a.png" width="682">

## Usage
Clone or download this repo, and then when within the directory, do:

    ./grayratio.sh

You're probably smart enough to figure out how to modify the script if you want
some other information.

## TODO
I've considered wrapping this as a nicely formatted command line program that
takes options from the CLI, etc.  But I'm not sure if anyone actually wants
that!  So if you do, just let me know, and I'll work on adding it (or feel free
to send a PR).


## Acknowledgements

 1. ["If You Don't Know Your 'Gray Ratio,' You'd Better Find Out Before You Send Your Next Text,"][article] Meredith Haggerty, The Date Report, 28 May 2014.

[article]: http://www.thedatereport.com/dating/communication/if-you-dont-know-your-gray-ratio-youd-better-find-out-before-you-send-your-next-text/
