({
    init: function (cmp, event, helper) {
        //
        cmp.set('v.mapMarkers', [
            {
                location: {
                    Street: '1600 Pennsylvania Ave NW',
                    City: 'Washington',
                    State: 'DC'
                },

                title: 'The White House',
                description: 'Landmark, historic home & office of the United States president, with tours for visitors.'
            },
            {
                location: {
                    Street: '156 Erford Rd',
                    City: 'Camphill',
                    State: 'PA'
                },

                title: 'Home',
                description: 'Landmark, historic home & office of the United States president, with tours for visitors.'
            }
        ]);
        cmp.set('v.zoomLevel', 5);
    }
})