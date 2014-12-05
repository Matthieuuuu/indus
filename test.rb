// instantiate the bloodhound suggestion engine
var numbers = new Bloodhound({
  datumTokenizer: Bloodhound.tokenizers.obj.whitespace('num'),
  queryTokenizer: Bloodhound.tokenizers.whitespace,
  local: <%= raw(@uniq_places) %>
});

// initialize the bloodhound suggestion engine
numbers.initialize();

// instantiate the typeahead UI
$('#typesearch').typeahead(null, {
  displayKey: 'num',
  source: numbers.ttAdapter()
});
