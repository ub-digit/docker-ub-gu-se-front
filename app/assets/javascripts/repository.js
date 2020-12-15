$( document ).ready(function() {
    $(document).on( "click",'.btn-copy-to-clipboard', function(e) {
        let repoStr = $(e.currentTarget).data("repo");
        copyToClipboard(repoStr);
        showSuccess();
        return false;
    });
});

function showSuccess() {
    var $temp = $('<div class="alert alert-info" role="alert">Copied to clipboard</diV>');
    $(".alert-area").html($temp.hide().fadeIn(100).delay(1000).fadeOut(100));
}

function copyToClipboard(str) {
    var $temp = $("<input>");
    $("body").append($temp);
    $temp.val(str).select();
    document.execCommand("copy");
    $temp.remove();
}