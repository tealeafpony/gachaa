define( [

    'marionette'
    , 'hbs!config/templates/index'

] , function(

    Marionette
    , template

) {
    'use strict';

    var exports = Marionette.Layout.extend( {
        template: template

        , regions: {
            // TODO
        }
    } );

    return exports;

} );