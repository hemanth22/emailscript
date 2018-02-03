# Set our content type properly
         $msg->attr("content-type"  => "multipart/mixed");

         # Attach a PDF to the message
         $msg->attach(  Type        =>  'application/pdf',
                        Path        =>  '/path/to/this-users.pdf',
                        Filename    =>  'your-receipt.pdf',
                        Disposition =>  'attachment'
         );
