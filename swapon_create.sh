#!/bin/bash

#Create the Swap File
sudo fallocate -l 2g /mnt/2GiB.swap
sudo chmod 600 /mnt/2GiB.swap
sudo mkswap /mnt/2GiB.swap
#Enable use of Swap File
sudo swapon /mnt/2GiB.swap
cat /proc/swaps 
#Enable Swap File at Bootup
echo '/mnt2GiB.swap swap swap defaults 0 0' | sudo tee -a /etc/fstab




###################

-----BEGIN RSA PRIVATE KEY-----
MIIEpQIBAAKCAQEAj+J8dqvJHDece5LJ+GD9E0bxIJSoVhaJIkwnnqpJ35KiAan4Btg0L8UoPI/3
YlaUDHenVMEIeqpUwn4py7jCwuB0V0MoIzsF844Iao6yAV702klfRK8ePJ1qFFDInwcjgUgxfBpt
9p2644Nx0ljGO3Ti/ajM7ScOZs20lLaO17Y9PJ3L/XKDVp2oZ5lke6VUVk+8vz0Y2+22/OW/63iC
vkwLPPSQcFfR7SJngOjjo2Z9GgSHNjSTtNYJJxCfIQrOHTj/PUdEfAMsL5oYVacX942/kAA+wwov
2lUaITuXlXt58YfvM5u0H8IUTsoHRo6ukWVYQ8mUXY1it6x/5VgRlQIDAQABAoIBAD34K+bogct3
YBwQ0o/5JcZhrYR8wiuhtRpidkXtzbdO7huNWteH0qIoZfX/g2qFI2pjNlxYbxB1v9+ses/VGXzZ
MwJKWEUkLKIDMDjEkIHqpcZGB5QLYBh3K7LoQB/N8UrDDx0GPQoUUOOgPyt7NJVy+DiLtQcG5Tr9
qaLLJaZdnoEEz6/UAKGttQ0mXXpbr6PZxgedQvioteuXMwhVD9hGII6E0W+SyPJ4KjjQ6JNZ3ppB
wYLlMm3pphce4YiAvadJ29betCo0ZDMYQvA97UPTzpg8pAMdNVMkWYjZeRSbV2f16lKzttlXqjQW
JE9303g2jmFGzp+Alf61nLX8HUECgYEA13Hkla30YNq+oJPITPBD7hBL51JOCyA1Q0HrTafGUUQP
XQKKEYXhkWXen8h4O25DqSH2UT/ihhzisdB6643+FHz8ueoWf5hCvFvnK4Qmi6jAtCN4/EB+yT/T
Hc71fHQYIo44yt+sMSGYbVwfOZIOlA7BwepBruPvsTqZVJVSgV0CgYEAqvgrLMy6spqBY4zTJ3bW
Ek+UZ7AzZbEFbhYZmqDuZWFLteUvYVO9jY37/yUxbdCV+grO7MOiBGxTJyc7fSA1EMRRpZVphIFJ
WT+IbKQ39YScTOywgZ5p4BjxEIksIZGz6oEHCR0CarsiIOHwi6nVUEG33JYti6DXIH1HKWS6tZkC
gYEAztQkIh3x8dmOEBJPxK0UScOTWuuEyOGOwJbUEqTymqnAJgZ+Dfx9ZFxrsPF/m25rvj9AfRfb
m+y3JQWEPAcA2SJ0bPbxymSeDL4d24TujDzhYw5644/3J7UCNCevPF8nnGT02K6KXFBoSPSbdWVm
YXUZRdRiYkeooHglIzKHFnECgYEAoAnsSGRgQz2z7p7tLVzlKIDLt3/NrNxW6+TOFNueLNI1z8/4
WQ/NOQt2nzCOo3AEY+noJuM97wwDjnwACLG0WryafPhurHVlVqDNMH1MUIvQz4Uj+EF0dCyEw2jU
IZxFITekgVhhYc1INiWpSOMyZY0O8fK2MaTem3AJw+qhh8kCgYEAm1oLz9NJ4wOp8LKfkhyL1Mmb
E52n3rjCyZtn0yz55g+7OeQ5JcQYQMlI3/r41wrLJwvYtQMrVKi2GBcCFGZCGUGXYNot19yHeGm1
vhp3Vb+OEdfJ95mKBqfgrLGLfcXtMdg5lztnbw8PhiQzjwF/Sm23oHokfUAv6dGeBy53Ojc=
-----END RSA PRIVATE KEY-----

###

#	$OpenBSD: sshd_config,v 1.100 2016/08/15 12:32:04 naddy Exp $

# This is the sshd server system-wide configuration file.  See
# sshd_config(5) for more information.

# This sshd was compiled with PATH=/usr/local/bin:/usr/bin

# The strategy used for options in the default sshd_config shipped with
# OpenSSH is to specify options with their default value where
# possible, but leave them commented.  Uncommented options override the
# default value.

# If you want to change the port on a SELinux system, you have to tell
# SELinux about this change.
# semanage port -a -t ssh_port_t -p tcp #PORTNUMBER
#
#Port 22
#AddressFamily any
#ListenAddress 0.0.0.0
#ListenAddress ::

HostKey /etc/ssh/ssh_host_rsa_key
#HostKey /etc/ssh/ssh_host_dsa_key
HostKey /etc/ssh/ssh_host_ecdsa_key
HostKey /etc/ssh/ssh_host_ed25519_key

# Ciphers and keying
#RekeyLimit default none

# Logging
#SyslogFacility AUTH
SyslogFacility AUTHPRIV
#LogLevel INFO

# Authentication:

#LoginGraceTime 2m
#PermitRootLogin yes
#StrictModes yes
#MaxAuthTries 6
#MaxSessions 10

#PubkeyAuthentication yes

# The default is to check both .ssh/authorized_keys and .ssh/authorized_keys2
# but this is overridden so installations will only check .ssh/authorized_keys
AuthorizedKeysFile .ssh/authorized_keys

#AuthorizedPrincipalsFile none

#AuthorizedKeysCommand none
#AuthorizedKeysCommandUser nobody

# For this to work you will also need host keys in /etc/ssh/ssh_known_hosts
#HostbasedAuthentication no
# Change to yes if you don't trust ~/.ssh/known_hosts for
# HostbasedAuthentication
#IgnoreUserKnownHosts no
# Don't read the user's ~/.rhosts and ~/.shosts files
#IgnoreRhosts yes

# To disable tunneled clear text passwords, change to no here!
#PasswordAuthentication yes
#PermitEmptyPasswords no
PasswordAuthentication no

# Change to no to disable s/key passwords
#ChallengeResponseAuthentication yes
ChallengeResponseAuthentication no

# Kerberos options
#KerberosAuthentication no
#KerberosOrLocalPasswd yes
#KerberosTicketCleanup yes
#KerberosGetAFSToken no
#KerberosUseKuserok yes

# GSSAPI options
GSSAPIAuthentication yes
GSSAPICleanupCredentials no
#GSSAPIStrictAcceptorCheck yes
#GSSAPIKeyExchange no
#GSSAPIEnablek5users no

# Set this to 'yes' to enable PAM authentication, account processing,
# and session processing. If this is enabled, PAM authentication will
# be allowed through the ChallengeResponseAuthentication and
# PasswordAuthentication.  Depending on your PAM configuration,
# PAM authentication via ChallengeResponseAuthentication may bypass
# the setting of "PermitRootLogin without-password".
# If you just want the PAM account and session checks to run without
# PAM authentication, then enable this but set PasswordAuthentication
# and ChallengeResponseAuthentication to 'no'.
# WARNING: 'UsePAM no' is not supported in Red Hat Enterprise Linux and may cause several
# problems.
UsePAM yes

#AllowAgentForwarding yes
#AllowTcpForwarding yes
#GatewayPorts no
X11Forwarding yes
#X11DisplayOffset 10
#X11UseLocalhost yes
#PermitTTY yes
#PrintMotd yes
#PrintLastLog yes
#TCPKeepAlive yes
#UseLogin no
#UsePrivilegeSeparation sandbox
#PermitUserEnvironment no
#Compression delayed
#ClientAliveInterval 0
#ClientAliveCountMax 3
#ShowPatchLevel no
#UseDNS yes
#PidFile /var/run/sshd.pid
#MaxStartups 10:30:100
#PermitTunnel no
#ChrootDirectory none
#VersionAddendum none

# no default banner path
#Banner none

# Accept locale-related environment variables
AcceptEnv LANG LC_CTYPE LC_NUMERIC LC_TIME LC_COLLATE LC_MONETARY LC_MESSAGES
AcceptEnv LC_PAPER LC_NAME LC_ADDRESS LC_TELEPHONE LC_MEASUREMENT
AcceptEnv LC_IDENTIFICATION LC_ALL LANGUAGE
AcceptEnv XMODIFIERS

# override default of no subsystems
Subsystem sftp	/usr/libexec/openssh/sftp-server

# Example of overriding settings on a per-user basis
#Match User anoncvs
#	X11Forwarding no
#	AllowTcpForwarding no
#	PermitTTY no
#	ForceCommand cvs server
