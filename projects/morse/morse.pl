
# Start with ASCII Message

$_ = 'THE QUICK BROWN FOX JUMPED OVER THE LAZY DOGS BACK';

# Convert ASCII to Morse Code

s/A/.- /g;
s/B/-... /g;
s/C/-.-. /g;
s/D/-.. /g;
s/E/. /g;
s/F/..-. /g;
s/G/--. /g;
s/H/.... /g;
s/I/.. /g;
s/J/.--- /g;
s/K/-.- /g;
s/L/.-.. /g;
s/M/-- /g;
s/N/-. /g;
s/O/--- /g;
s/P/.--. /g;
s/Q/--.- /g;
s/R/.-. /g;
s/S/... /g;
s/T/- /g;
s/U/..- /g;
s/V/...- /g;
s/W/.-- /g;
s/X/-..- /g;
s/Y/-.-- /g;
s/Z/--.. /g;

# Convert Morse Code to Txtzyme

s/\./25{1mom0o}50m\n/g;
s/\-/75{1mom0o}50m\n/g;
s/ /mmm\n/g;
print;

# Send Txtzyme to Teensy

`echo '$_' >/dev/cu.usbmodem12341`;

