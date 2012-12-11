//= require jquery-ui

var sendSortRequestOfModel;
sendSortRequestOfModel = function(model_name) {
    var formData;
    formData = $('#' + model_name + ' tbody').sortable('serialize');
    formData += "&" + $('meta[name=csrf-param]').attr("content") + "=" + encodeURIComponent($('meta[name=csrf-token]').attr("content"));
    return $.ajax({
        type: 'post',
        data: formData,
        dataType: 'script',
        url: '/admin/' + model_name + '/sort'
    });
};


$(document).ready(function() {

    var sortableSelector = '.index_table';

    if ($(sortableSelector).length) {
        $(sortableSelector).each(function(){
            var modelName = $(this).attr('id');
            var $tableBody = $('tbody', this);
            $tableBody.disableSelection();
            return $tableBody.sortable({
                axis: 'y',
                cursor: 'move',
                update: function(event, ui) {
                    return sendSortRequestOfModel(modelName);
                }
            });
        });
    }
});