
console.log("aaa");


/*
let generateButton = document.getElementById("button-generate");

generateButton.addEventListener("click", function call() {
    console.log("test");
});
*/
/*
generateButton.addEventListener("click", async function callPhpMethod(event) {
    document.body.innerHTML+= '<br>'+ await(await fetch('?remove=1')).text();
});

 */


$(document).ready(function () {
    $("#modify-player").click(function () {
        $("#old-player-select").css("visibility","visible")
            .animate({right: "36vw", opacity: 1},1000);
    });
    $("#modify-court").click(function () {
        $("#old-court-select").css("visibility","visible")
            .animate({right: "36vw", opacity: 1},1000);
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
});