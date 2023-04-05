function(settings){
  var instance = settings.oInstance;
  var table = instance.api();
  var $inputs = instance.parent().find('.form-group input');
  $inputs.off('keyup search input').on('keyup', function(){
    var keyword = $(this).val().replaceAll('1','Ӏ').replaceAll('!','Ӏ').replaceAll('I','Ӏ');
    var index = 1 + $inputs.index(this);
    table.column(index).search(keyword, true, false).draw();
  });
}
