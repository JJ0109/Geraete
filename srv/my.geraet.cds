using { my.geraet as my } from '../db/datamodel';


service geraetservice {

@odata.draft.enabled
entity GeraetetypSet as projection on my.Geraetetyp;

@odata.draft.enabled
entity GeraeteSet as projection on my.Geraete;

}