
console.log("aaa");



$(document).ready(function () {
    /* DEBUT GENERATION */


    let oldPlayerChoose = document.querySelector("#old-player-select");
    let newPlayerChoose = document.getElementById("new-player-select");

    let oldCourtChoose = document.getElementById("old-court-select");
    let newCourtChoose = document.getElementById("new-court-select");


    newPlayerChoose.addEventListener("change", () => {
        window.location.search = "?page=generation&modify=true&oldPlayer="+oldPlayerChoose.value+"&newPlayer="+newPlayerChoose.value;
    });


    newCourtChoose.addEventListener("change", () => {
        window.location.search = "?page=generation&modify=true&oldCourt="+oldCourtChoose.value+"&newCourt="+newCourtChoose.value;
    });



    $("#modify-player").click(function () {
        if ($("#old-court-select").css("visibility") === "visible") {
            $("#old-court-select").animate({left: "-=21vw", opacity: 0.4},1000, function () {
                $("#old-court-select").css("visibility","hidden");
            });
        }
        $("#old-player-select").css("visibility","visible")
            .animate({left: "+=21vw", opacity: 1},1000);
    });
    $("#modify-court").click(function () {
        if ($("#old-player-select").css("visibility") === "visible") {
            $("#old-player-select").animate({left: "-=21vw", opacity: 0.4},1000, function () {
                $("#old-player-select").css("visibility","hidden");
            });
        }
        $("#old-court-select").css("visibility","visible")
            .animate({left: "+=21vw", opacity: 1},1000);
    });

    $("#old-player-select").change(function() {
        $("#new-player-select").css("visibility","visible")
            .animate({right: "15vw", opacity: 1},1000);
        let joueur_selectionne = $(this).find("option:selected");
    });

    $("#old-court-select").change(function() {
        $("#new-court-select").css("visibility","visible")
            .animate({right: "15vw", opacity: 1},1000);
        let court_selectionne = $(this).find("option:selected");
    });


    $("#old-player-select option").each(function () {
        if ($(this).text()!=="--JOUEUR A CHANGER--") {
            $(this).text($(this).text().split(" ")[1].toUpperCase() + " " + $(this).text().split(" ")[0]);
        }
    });
    $("#new-player-select option").each(function () {
        if ($(this).text()!=="--NOUVEAU JOUEUR--") {
            $(this).text($(this).text().split(" ")[1].toUpperCase() + " " + $(this).text().split(" ")[0]);
        }
    });

    /* FIN GENERATION */
});

