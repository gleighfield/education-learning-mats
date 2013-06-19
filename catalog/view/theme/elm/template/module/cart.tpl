<div id="cart">
    <div class="heading">
        <h4>
            <?php echo $heading_title; ?>: <?php echo $text_items; ?> - <a class="cartCheckout" href="<?php echo $checkout; ?>"></a>
        </h4>
    </div>
    <div class="content">
        <?php if ($products || $vouchers) { ?>
        <div class="mini-cart-info">
            <table>
                <?php foreach ($products as $product) { ?>
                <tr>
                    <td class="image"><?php if ($product['thumb']) { ?>
                        <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
                        <?php } ?></td>
                    <td class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                        <div>
                            <?php foreach ($product['option'] as $option) { ?>
                            - <small><?php echo $option['name']; ?> <?php echo $option['value']; ?></small><br />
                            <?php } ?>
                        </div></td>
                    <td class="quantity">x&nbsp;<?php echo $product['quantity']; ?></td>
                    <td class="total"><?php echo $product['total']; ?></td>
                    <td class="remove"><img src="catalog/view/theme/default/image/remove-small.png" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" onclick="(getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') ? location = 'index.php?route=checkout/cart&remove=<?php echo $product['key']; ?>' : $('#cart').load('index.php?route=module/cart&remove=<?php echo $product['key']; ?>' + ' #cart > *');" /></td>
                </tr>
                <?php } ?>
                <?php foreach ($vouchers as $voucher) { ?>
                <tr>
                    <td class="image"></td>
                    <td class="name"><?php echo $voucher['description']; ?></td>
                    <td class="quantity">x&nbsp;1</td>
                    <td class="total"><?php echo $voucher['amount']; ?></td>
                    <td class="remove"><img src="catalog/view/theme/default/image/remove-small.png" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" onclick="(getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') ? location = 'index.php?route=checkout/cart&remove=<?php echo $voucher['key']; ?>' : $('#cart').load('index.php?route=module/cart&remove=<?php echo $voucher['key']; ?>' + ' #cart > *');" /></td>
                </tr>
                <?php } ?>
            </table>
        </div>
        <div class="mini-cart-total">
            <table>
                <?php foreach ($totals as $total) { ?>
                <tr>
                    <td class="right"><b><?php echo $total['title']; ?>:</b></td>
                    <td class="right"><?php echo $total['text']; ?></td>
                </tr>
                <?php } ?>
            </table>
        </div>
        <div class="checkout"><a href="<?php echo $cart; ?>"><?php echo $text_cart; ?></a> | <a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></div>
        <?php } else { ?>
        <div class="empty"><?php echo $text_empty; ?></div>
        <?php } ?>
    </div>
</div>

<script>
$(function () {});
    $('.add_to_cart').each(function(){
        var _pa = $(this);
        var _pid = _pa.attr('rel');
        _pa.click(function () {
            $.ajax({
                type: 'post',
                url: 'index.php?route=module/cart/callback',
                dataType: 'html',
                data: $('#product_'+_pid+' :input'),
                success: function (html) {
                    $('#module_cart .middle').html(html);
                },
                complete: function () {
                    var image = $('#image_'+_pid).offset();
                    var cart  = $('#module_cart').offset();

                    $('#image_'+_pid).before('<img src="' + $('#image_'+_pid).attr('src') + '" id="temp_'+_pid+'" style="position: absolute; top: ' + image.top + 'px; left: ' + image.left + 'px;" />');

                    params = {
                        top : cart.top + 'px',
                        left : cart.left + 'px',
                        opacity : 0.0,
                        width : $('#module_cart').width(),
                        heigth : $('#module_cart').height()
                    };
                    $('#temp_'+_pid).animate(params, 'slow', false, function () {
                        $('#temp_'+_pid).remove();
                    });
                }
            });
        });
    });
</script>