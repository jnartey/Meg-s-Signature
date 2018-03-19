/**
 * account-opening-form-main.js
 * @copyright FifthLight Media - http://www.fifthlightmedia.com
 * 2016
 */

window.onload = function () {   // We want to make sure that the page is loaded before we can listen for clicks
    /**
     * Called when the 'Continue button' on each sub page is clicked
     *
     * First sets the footer page number and position and then displays the sub page, hiding the button of the current
     * sub page in the process.
     *
     * @param button object The button that did the clicking
     * @param current_form_element object The current sub page.
     * @param next_form_element object The next sub page to be loaded.
     *
     */
    function continueButtonClicked(button, current_form_element, next_form_element) {
        /* Gets the new page number for the main footer. Used to change from page to page */
        var new_number = next_form_element.getAttribute('data-page'),
            main_footer_number = document.querySelectorAll('.active-ball > span');

        for (var i = 0; i < main_footer_number.length; i++) {
            /* since there are two active ball elements, change all their numbers and after that, you hide the rest */
            main_footer_number[i].innerHTML = new_number.toString();
        }

        var right_container = document.querySelector('#right-container'),
            left_container = document.querySelector('#left-container');
        /* Set the positions of the various footer balls based on the page number */
        right_container.style.display = (new_number == 1 || new_number == 3) ? "block" : "none";
        left_container.style.display = (new_number == 2 || new_number == 4 || new_number == 5) ? "block" : "none";


        var footer = document.querySelector("#" + current_form_element.getAttribute('id') + " .form-page-footer");
        footer.style.display = "none";  /* turn off the footer for the current sub page */

        button.style.display = "none";  /* Turn off the footer for each sub page */
        next_form_element.style.display = "block";  /* display the next sub page */
    }


    var form_page_1 = document.querySelector('#form-page-1'),
        form_page_1_button = document.querySelector('#form-page-1 > .form-page-continue-button > a'),
        form_page_2 = document.querySelector('#form-page-2'),
        form_page_2_button = document.querySelector('#form-page-2 > .form-page-continue-button > a'),
        form_page_3 = document.querySelector('#form-page-3'),
        form_page_3_button = document.querySelector('#form-page-3 > .form-page-continue-button > a'),
        form_page_4 = document.querySelector('#form-page-4'),
        form_page_4_button = document.querySelector('#form-page-4 > .form-page-continue-button > a'),
        form_page_5 = document.querySelector('#form-page-5');


    /* Listen for button clicks */
    form_page_1_button.addEventListener('click', function () {
        continueButtonClicked(this, form_page_1, form_page_2);
    }, false);

    form_page_2_button.addEventListener('click', function () {
        continueButtonClicked(this, form_page_2, form_page_3);
    }, false);

    form_page_3_button.addEventListener('click', function() {
        continueButtonClicked(this, form_page_3, form_page_4);
    }, false);

    form_page_4_button.addEventListener('click', function() {
        continueButtonClicked(this, form_page_4, form_page_5);
    }, false);
};