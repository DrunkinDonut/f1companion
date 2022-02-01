<script type="text/javascript">
    document.addEventListener('DOMContentLoaded', function() {
        var yearInput = document.getElementById('yearInput');
        var minusBtn = document.getElementById('inputMinusBtn');
        var plusBtn = document.getElementById('inputPlusBtn');
        var modal = document.querySelector('.modal');
        var closeModalBtn = document.querySelector('.close_modal');
        var openModalBtn = document.getElementById('yearSelectModalBtn');

        minusBtn.onclick = function() {
            if (parseInt(yearInput.value) >= 1949) {
                yearInput.value = parseInt(yearInput.value) - 1;
            }
        }
        plusBtn.onclick = function() {
            if (parseInt(yearInput.value) <= <?php echo date('Y', strtotime('-1 year')); ?>) {
                yearInput.value = parseInt(yearInput.value) + 1;
            }
        }
        openModalBtn.onclick = function() {
            modal.style.display = 'flex';
        }
        closeModalBtn.onclick = function() {
            modal.style.display = 'none';
        }
        window.onclick = function(event) {
            if (event.target == modal) {
                modal.style.display = 'none';
            }
        }
        document.onkeydown = function(e) {
            if (e.key === 'Escape') {
                modal.style.display = 'none';
            }
        }
    });
</script>

<button id="yearSelectModalBtn" class="season_year">Sezon <?php echo $this->F1Companion->getSeasonYear(); ?></button>

<div class="modal">
    <div class="modal_block">
        <span class="close_modal">&times;</span>
        <form action="<?php echo SITE_PATH; ?>app/set_season.php" method="post">
            <div class="input_block">
                <div class="input_minus">
                    <button type="button" id="inputMinusBtn">-</button>
                </div>
                <input type="number" min="1950" max="<?php echo date("Y"); ?>" name="year" id="yearInput" value="<?php echo $this->F1Companion->getSeasonYear(); ?>">
                <div class="input_plus">
                    <button type="button" id="inputPlusBtn">+</button>
                </div>
            </div>
            <input type="submit" value="Wybierz">
        </form>
    </div>
</div>