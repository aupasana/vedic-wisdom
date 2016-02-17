rm mbox_2006/*
rm mbox_2007/*
rm mbox_2008/*
rm mbox_2009/*
rm mbox_2010/*
rm mbox_2011/*
rm mbox_2012/*
rm mbox_2013/*
rm mbox_2014/*
rm mbox_2015/*
rm mbox_2016/*
rm mbox_pvr/*

grep -r "^Date:.*2006.*$" mbox | cut -f1 -d: | xargs -I{} cp {} mbox_2006
grep -r "^Date:.*2007.*$" mbox | cut -f1 -d: | xargs -I{} cp {} mbox_2007
grep -r "^Date:.*2008.*$" mbox | cut -f1 -d: | xargs -I{} cp {} mbox_2008
grep -r "^Date:.*2009.*$" mbox | cut -f1 -d: | xargs -I{} cp {} mbox_2009
grep -r "^Date:.*2010.*$" mbox | cut -f1 -d: | xargs -I{} cp {} mbox_2010
grep -r "^Date:.*2011.*$" mbox | cut -f1 -d: | xargs -I{} cp {} mbox_2011
grep -r "^Date:.*2012.*$" mbox | cut -f1 -d: | xargs -I{} cp {} mbox_2012
grep -r "^Date:.*2013.*$" mbox | cut -f1 -d: | xargs -I{} cp {} mbox_2013
grep -r "^Date:.*2014.*$" mbox | cut -f1 -d: | xargs -I{} cp {} mbox_2014
grep -r "^Date:.*2015.*$" mbox | cut -f1 -d: | xargs -I{} cp {} mbox_2015
grep -r "^Date:.*2016.*$" mbox | cut -f1 -d: | xargs -I{} cp {} mbox_2016

grep -r "^From:.*pvr" mbox | cut -f1 -d: | xargs -I{} cp {} mbox_pvr

ls mbox_2006 | xargs -I{} cat mbox_2006/{} >> vedic-wisdom.2006.mbox
ls mbox_2007 | xargs -I{} cat mbox_2007/{} >> vedic-wisdom.2007.mbox
ls mbox_2008 | xargs -I{} cat mbox_2008/{} >> vedic-wisdom.2008.mbox
ls mbox_2009 | xargs -I{} cat mbox_2009/{} >> vedic-wisdom.2009.mbox
ls mbox_2010 | xargs -I{} cat mbox_2010/{} >> vedic-wisdom.2010.mbox
ls mbox_2011 | xargs -I{} cat mbox_2011/{} >> vedic-wisdom.2011.mbox
ls mbox_2012 | xargs -I{} cat mbox_2012/{} >> vedic-wisdom.2012.mbox
ls mbox_2013 | xargs -I{} cat mbox_2013/{} >> vedic-wisdom.2013.mbox
ls mbox_2014 | xargs -I{} cat mbox_2014/{} >> vedic-wisdom.2014.mbox
ls mbox_2015 | xargs -I{} cat mbox_2015/{} >> vedic-wisdom.2015.mbox
ls mbox_2016 | xargs -I{} cat mbox_2016/{} >> vedic-wisdom.2016.mbox
ls mbox_pvr | xargs -I{} cat mbox_pvr/{} >> vedic-wisdom.pvr.mbox




