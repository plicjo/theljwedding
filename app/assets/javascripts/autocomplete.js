$(document).on('page:change', function(){  
  var completer;

  completer = new GmapsCompleter({
    inputField: '#autocomplete',
    errorField: '#gmaps-error'
  });

  completer.autoCompleteInit({
    country: "us"
  });
});
