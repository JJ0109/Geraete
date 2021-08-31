namespace my.geraet;

using { managed, cuid } from '@sap/cds/common';



entity Geraetetyp : managed, cuid {
    uuid     : UUID;
    key geraetetypnr : String(10);
    bezeichnung  : String (100);
    verbindung   : Association to many Geraete on verbindung.verbindunggeraet = $self;
}



entity Geraete : managed, cuid {
    uuid         : UUID;
    key geraetenr        : String(10);
    verbindunggeraet : Association to Geraetetyp;
}