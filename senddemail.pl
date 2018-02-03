#!/usr/bin/perl
use strict;
use warnings;
use MIME::Lite;
    ### Create a new single-part message, to send a GIF file:
    $msg = MIME::Lite->new(
        From     => 'bhemanth@localhost',
        To       => 'root@localhost',
        Cc       => 'bhemanth@localhost',
        Subject  => 'Helloooooo, youtuber!',
        Type     => 'image',
        Encoding => 'base64',
        Path     => 'youtube.png'
    );
    $msg->send; # send via default
