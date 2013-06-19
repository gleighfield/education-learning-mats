<?php echo $header;

$testimonials = array(
    '"Kids will love the mats because they are eye-catching, colourful and appealing. The text links well with the pictures so they are easy to follow and understand." <span>Vanessa, Primary school teacher with 30 years’ experience, Wirral</span>',
    '"Bright, colourful, inviting, accessible ... a link between school and home… the children really engaged with them. They especially like being able to clean them and start again!" <span>Rachel Ashman, Head of Early Years Foundations Stage, St Francis, Pewsey</span>',
    '"At last my son has learnt his etre and avoir - without even noticing! By combining something very pleasurable (eating) with something more onerous (French prep), these mats take the ugh out of learning. Thank you and good luck!" <span>Samantha Fletcher (Parent)</span>',
    '"The children I tested them on really enjoyed them and wanted to do them. As a teacher I think their greatest use would be to consolidate and practice a skill taught." <span>S. Keppel, Primary school teacher, Wiltshire</span>',
    '"The children loved using the Times Tables mats. They worked in partners and were fully engaged in the activity. There was a healthy competitive atmosphere amongst the children to see who could finish first!" <span>E. Cahill, Early Years teacher, St Francis Primary School, Swindon</span>',
    '"My children (11 & 13) engaged with the French mats as soon as we got them and they are now permanent fixtures on our kitchen table." <span>Kate Morley (Parent)</span>',
    '"Eye-catching and colourful. Relevant to the Curriculum… a useful homework tool." <span>Fairholme Preparatory School, St Asaph, Wales</span>',
);
$testimonial_comment = $testimonials[array_rand($testimonials, 1)];

?>

<div id="content">

    <?php echo $column_left; ?>

    <div class="column-right">
        <div class="fpSlider">
            <ul class="bxslider">
                <li>
                    <img src="catalog/view/theme/elm/img/slider1.png">
                </li>
                <li>
                    <img src="catalog/view/theme/elm/img/slider2.png">
                </li>
                <li>
                    <img src="catalog/view/theme/elm/img/slider3.png">
                </li>
            </ul>

        </div>
    </div>


    <?php echo $column_right; ?>

    <div class="frontPageMatSections">
        <div class="mat">
            <span class="productFrontPageTitle">Early Years</span>
            <a href="english_mats">
                <img src="catalog/view/theme/elm/img/fpEarlyYears.jpg">
            </a>
        </div>
        <div class="mat">
            <span class="productFrontPageTitle">Maths</span>
            <a href="maths_mats">
                <img src="catalog/view/theme/elm/img/fpMaths.jpg">
            </a>
        </div>
        <div class="mat">
            <span class="productFrontPageTitle">French</span>
            <a href="french_mats">
                <img src="catalog/view/theme/elm/img/fpFrench.jpg">
            </a>
        </div>

    </div>

    <div id="column-left">
        <div class="box customerComments">
            <div class="box-heading">Customer Comments</div>
            <div class="box-content">
                <p><? echo $testimonial_comment; ?></p>
                <img src="catalog/view/theme/elm/img/paypalver.png">
            </div>
        </div>
    </div>
    <div class="fpContent">
        <?php echo $content_top; ?>

    </div>
</div>
<?php echo $footer; ?>