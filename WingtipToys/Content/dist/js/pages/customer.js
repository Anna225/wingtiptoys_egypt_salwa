$(document).ready(function () {
    $(".customer-icon-card.edit").click(function (e) {
        console.log($(e.target).parentsUntil(".customer-list-details").parent());
    });
    $(".customer-icon-card.delete").click(function (e) {
        $(e.target).parentsUntil(".customer-list-details").parent().remove();
    });
    $(".customer-icon-card.set").click(function (e) {
        $("span.customer-icon-card.set span:nth-child(2)")
            .text("Set customer");
        $(e.target)
            .parentsUntil(".customer-list-details")
            .parent().find("span.customer-icon-card.set span:nth-child(2)")
            .text("Current customer");
    });
});