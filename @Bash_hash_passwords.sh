# How to hash passwords on Linux

# mkpasswd is part of the “whois” package
sudo apt install whois

mkpasswd -m sha512crypt --stdin <<< "Pa$$w0rd2"
$6$w6L/0Q6tU$vw5y.nc6wH8AJtXDFdJ2NLi/dlOWkdczKdJB2WUiIDtqSeIMTiXyqpbnNnoTNuOMoCxnl9Iq5lGP0wVwJNMPa.
