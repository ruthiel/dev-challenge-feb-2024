using {sap.capire.bookshop as my} from '../db/schema';

annotate my.Books with @PersonalData       : {EntitySemantics: 'DataSubject'} {
    ID         @PersonalData.FieldSemantics: 'DataSubjectID';
    author     @PersonalData.IsPotentiallyPersonal;
    stock      @PersonalData.IsPotentiallySensitive;
    createdAt  @PersonalData.IsPotentiallySensitive;
    modifiedAt @PersonalData.IsPotentiallySensitive;
};

using {CatalogService as cat} from './cat-service';

annotate cat.submitOrder with @PersonalData;
