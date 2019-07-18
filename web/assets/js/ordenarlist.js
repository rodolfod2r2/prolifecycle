/**
 * Created by rodolfo on 25/04/2017.
 */


$(function () {
    /*$('#tags').searchableOptionList({
        showSelectAll: true,
        texts: {
            noItemsAvailable: 'Selecionar Item',
            selectAll: 'Selecionar Todos',
            selectNone: 'Remover Todos',
            searchplaceholder: 'Selecionar Noticias'
        }
    });
    $('#noticias').searchableOptionList({
        showSelectAll: true,
        texts: {
            noItemsAvailable: 'Selecionar Item',
            selectAll: 'Selecionar Todos',
            selectNone: 'Remover Todos',
            searchplaceholder: 'Selecionar Noticias'
        }
    });

    $('.teditoria').sortable({
        opacity: 0.8, cursor: 'move', update: function () {
            var order = $(this).sortable("serialize") + '&update=update';
            $.post("../../view/administracao/editoria.php", order);
            console.log('ordenado');
        }
    }).disableSelection();
*/
    $('.tcategoria').sortable({
        opacity: 0.8, cursor: 'move', update: function () {
            var order = $(this).sortable("serialize") + '&update=update';
            $.post("lcategoria.php", order);
            console.log('ordenado');
        }
    }).disableSelection();

    $(".tsubcategoria").sortable({
        opacity: 0.8, cursor: 'move', update: function () {
            var order = $(this).sortable("serialize") + '&update=update';
            $.post("../../view/administracao/subcategoria.php", order);
            console.log('ordenado');
        }
    }).disableSelection();


});