<?php
require_once(PATH_CONTROLLERS_P.'header.php');
?>

<form class="achat" action="" method="post">
    <div class="match">
        <label for="choixmatch">Match :</label>
        <select name="choixmatch" id="choixmatch">
            <option value="">1/16 de finale</option>
            <option value="">1/8 de finale</option>
            <option value="">1/4 de finale</option>
            <option value="">1/2 finale</option>
            <option value="">finales</option>
        </select>
    </div>
   
    <div class="date">
        <label for="choixdate">Date :</label>
        <input type="date" name="choixdate" id="choixdate">
    </div>
   

    <div class="heure">
        <label for="hours">Heure :</label>
        <select name="hours" id="hours">
            <option value="">10h</option>
            <option value="">12h</option>
            <option value="">14h</option>
            <option value="">16h</option>
        </select>
    </div>
    

    <div class="qté">
        <label for="choixqte">Quantité :</label>
        <input type="number" name="choixqte" id="choixqte">
    </div>
    

    <div class="place">
        <label for="choixplace">Choisir une place :</label>
        <select name="choixplace" id="choixplace">
            <option value="">Loge</option>
            <option value="">Catégorie 1</option>
            <option value="">Catégorie 2</option>
        </select>
    </div>
    
    <div class="button">
        <button type="reset" id="annuler">Annuler</button>
        <button type="submit" id="ok">Acheter</button>
    </div>
   
</form>

<?php
require_once(PATH_VIEWS.'footer.php');
?>