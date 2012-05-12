TableSelector = function() {

}

TableSelector.init = function (table_id) {
    $("#"+table_id+" tbody tr").each(function(index, item){
        item.click(function(){
            alert("heey");
        });
        //item.getAttribute("row_id")
    });
}