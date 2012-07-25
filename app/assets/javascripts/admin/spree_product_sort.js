jQuery(document).ready(function(){
  $('.products_ul').sortable(
    { items:'li',
      containment:'parent',
      axis:'y',
      handle:'.handle',
      update: function(){
        $.post('/admin/taxons/reorder_products/<%=taxon.id || 0%>',
               '_method=put&'+$(this).sortable('serialize'))
      }
    }
  )
});