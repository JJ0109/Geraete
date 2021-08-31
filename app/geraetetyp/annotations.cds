using geraetservice as service from '../../srv/my.geraet.cds';


annotate geraetservice.GeraetetypSet with @UI : {
    LineItem  : [
        {
            Label : 'UUID',
            Value : uuid,
            ![@UI.Hidden] : true
        },
        {
            Label : 'Gerätetypnr',
            Value : geraetetypnr,
        },
        {
            Label : 'Bezeichnung',
            Value : bezeichnung,
        },        
    ],

    HeaderInfo  : {
        $Type : 'UI.HeaderInfoType',
        TypeName : 'Gerätetyp',
        TypeNamePlural : 'Gerätetypen',
        Title : {
            $Type : 'UI.DataField',
            Value : geraetetypnr,
                },
            Description :
                {
            $Type : 'UI.DataField',
            Value : bezeichnung,
                },
    },

    FieldGroup#Geraetetyp  : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value: uuid, 
            },
            {
                $Type : 'UI.DataField',
                Value: geraetetypnr, 
            },
            {
                $Type : 'UI.DataField',
                Value: bezeichnung,   
            },                    
                ],  
    },

    Facets  : [ 
        {
            $Type : 'UI.CollectionFacet',
            Label : 'Information Gerätetyp',
            
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    ID : 'GeraetetypFacet',
                    Target : '@UI.FieldGroup#Geraetetyp',
                },
            ]
        },   
    ],
};
