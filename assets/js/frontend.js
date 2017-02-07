function mostrar_descripcion(id)
{
   $("#for_cont_"+id).removeClass();
   $("#for_cont_"+id).addClass('animate col-xs-12 col-md-8 col-lg-6');
   $("#for_panel_"+id).addClass('expanded');
   $("#for_data_"+id).addClass('col-md-5');
   $("#for_descrip_"+id).removeClass('ng-hide');
   $("#for_brief_"+id).addClass('ng-hide');
}

$(document).ready(function() {
	    $(".fancybox").fancybox({
          helpers: {
            overlay: {
              locked: false
            }
          }
        });
});

$(document).ready(function() {
	    $(".video").fancybox({
          helpers: {
            overlay: {
              locked: false
            }
          }
        });
});

$("a.video").click(function() {       
    $.fancybox({ 
            'padding'       : 0,
            'autoScale'     : false,
            'transitionIn'  : 'none',
            'transitionOut' : 'none',
            'title'         : this.title,
            'width'     : 640,
            'height'        : 400,
            'href'          : this.href.replace(new RegExp("watch\\?v=", "i"), 'v/'),
            'type'          : 'swf',
            'swf'           : {
                 'wmode'        : 'transparent',
                'allowfullscreen'   : 'true',
            }  
        });

    return false;
});

function cerrar_modal(modal_id)
{
    //alert(modal_id);
    $('#'+modal_id).modal('hide');
}

jQuery(function(){
        jQuery('.showSingle').click(function(){
              
              $('.tab-convocatoria').removeClass('tab-selected');
              $('.tab-convocatoria').removeClass('tab-normal');
              $('.tab-convocatoria').addClass('tab-normal');
                     
              jQuery('.targetDiv').hide();              
              jQuery(this).parent('div').removeClass('tab-normal');
              jQuery(this).parent('div').addClass('tab-selected');
              
              if($('#div2').hasClass('hide'))
              {
                 $('#div2').removeClass('hide')
              }
              if($('#div3').hasClass('hide'))
              {
                 $('#div3').removeClass('hide')
              }                 
              jQuery('#div'+$(this).attr('target')).show();
        });
});