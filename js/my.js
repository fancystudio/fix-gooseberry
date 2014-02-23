$(document).ready(function(){
  $(".addImage").click(function(){
    previewsImg = $( ".imageItem" ).last();
    previewsImg.clone().appendTo( "#sortable" );
    nextImg = $( ".imageItem" ).last();
    nextImg.find(".imageName").html("Obrázok " + $( ".imageItem" ).length + ": ");
    nextImg.find(".imageClass").attr("src","../modules/Cataloger/Cataloger.Image.php?i=" + nextImg.find(".imageAlias").attr("name") + "_ct_" + $( ".imageItem" ).length + "_90_1.jpg&ac=841");
    nextImg.find(".imageFile").attr("name","image"+$( ".imageItem" ).length);
    nextImg.find(".textSk").attr("name","text_sk"+$( ".imageItem" ).length)
            .attr("value","");
    nextImg.find(".textEn").attr("name","text_en"+$( ".imageItem" ).length)
            .attr("value","");
    nextImg.find(".imageRemove").attr("id","rm_image_" + nextImg.find(".imageAlias").attr("name") + "_" + $( ".imageItem" ).length);
    nextImg.find(".imageRemove").attr("name","rm_image_" + nextImg.find(".imageAlias").attr("name") + "_" + $( ".imageItem" ).length);
    nextImg.find(".imageRemoveLabel").attr("for","rm_image_" + nextImg.find(".imageAlias").attr("name") + "_" + $( ".imageItem" ).length);
    nextImg.find(".imagePosition").attr("name","position" + $( ".imageItem" ).length) 
            .attr("value","");
    
  });
  $(".addFile").click(function(){
    previewsImg = $( ".fileItem" ).last();
    previewsImg.clone().appendTo( "#sortable" );
    nextImg = $( ".fileItem" ).last();
    //nextImg.find(".fileName").html("File # " + $( ".fileItem" ).length + ": ");
    nextImg.find(".fileName").empty().html("File # " + $( ".fileItem" ).length + ": ");
    nextImg.find(".itemFile").attr("name","file"+ ($( ".fileItem" ).length - 1));
    nextImg.find(".textSk").attr("name","text_sk"+ ($( ".fileItem" ).length - 1))
            .attr("value","");
    nextImg.find(".textEn").attr("name","text_en"+ ($( ".fileItem" ).length - 1))
            .attr("value","");
    nextImg.find(".removeFile").remove();
    nextImg.find(".filePosition").attr("name","position" + ($( ".fileItem" ).length - 1)) 
            .attr("value","");
    
  });
});