HTMLWidgets.widget({

  name: 'gio',

  type: 'output',

  factory: function(el, width, height) {

    // TODO: define shared variables for this instance
    var controller;

    return {

      renderValue: function(x) {

        // TODO: code to render the widget, e.g.
        var container = document.getElementById(el.id);
        controller = new GIO.Controller( container );
        controller.addData(x.data);
        controller.setStyle(x.style);

        // callback
        function callback ( selectedCountry, relatedCountries ) {
          Shiny.setInputValue(el.id + "_selected_country", selectedCountry);
        }

        controller.onCountryPicked( callback );

        controller.init();

      },

      resize: function(width, height) {

        // TODO: code to re-render the widget with a new size
        controller.resizeUpdate();

      }

    };
  }
});
