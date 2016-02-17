ls raw | parallel "cat raw/{} | perl decode.pl | formail > mbox/{}.mbox"
