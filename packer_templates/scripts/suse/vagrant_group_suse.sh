#!/bin/sh -eux

# User 'vagrant' belogs to the 'users' group by default so we need to
# create a new group 'vagrant' and put our user there.

groupadd -f users
gpasswd -a user users
