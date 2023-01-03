
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
/*

*/






$(document).ready(function () {
    /* DEBUT GENERATION */

    let generateButton = document.getElementById("button-generate");

    /*
    generateButton.onclick = () => {
        const result = "<?php echo testcaca()?>" ;
        document.getElementsByTagName("footer")[0].innerHTML = result;
    }
     */

    let oldPlayerChoose = document.querySelector("#old-player-select");
    let newPlayerChoose = document.getElementById("new-player-select");
    //let validateForm = document.getElementById("validate-form");
    let oldCourtChoose = document.getElementById("old-court-select");
    let newCourtChoose = document.getElementById("new-court-select");

    oldPlayerChoose.addEventListener("change", () => {
        console.log(oldPlayerChoose.value);
    });

    newPlayerChoose.addEventListener("change", () => {
        window.location.search = "?page=generation&modify=true&oldPlayer="+oldPlayerChoose.value+"&newPlayer="+newPlayerChoose.value;
    });


    newCourtChoose.addEventListener("change", () => {
        window.location.search = "?page=generation&modify=true&oldCourt="+oldCourtChoose.value+"&newCourt="+newCourtChoose.value;
    });






    /* FIN GENERATON */

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

