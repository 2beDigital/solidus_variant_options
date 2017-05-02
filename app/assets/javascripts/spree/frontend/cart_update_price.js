function actualizarPrecio(params, id, price)
{
    var id_quantity = '#'+ id;
    var patron = /\d{1,9}/g;
    var order = $('#total_order_cost').text();
    var array = order.split(' ');
    array[0] = array[0].replace(',','');
    var ids = ('#line-item-' + params);
    var total_variant = $(ids + ' .lead.text-primary.cart-item-total').text();
    var currency = 0;
    var order_total = 0;
    if (isNaN(array[0]) == false){
        currency = array[1];
        order_total =  parseFloat(array[0]);
        var a = total_variant.split(' '+ currency +' ');
        var num = a[0].replace(',','');
        total_variant = parseFloat(num);
    } else {
        var array_currency = array[0].split(patron);
        currency = array_currency[0];
        var array_2 = array[0].split(currency);
        array_2[1] = array_2[1].replace(',','');
        order_total =  parseFloat(array_2[1]);
        var x = total_variant.split(currency);
        x[1] = x[1].replace(',','');
        total_variant = parseFloat(x[1]);
    }

    var cart_count = parseInt($('#cart_count').text());

    var suma = order_total - total_variant;

    var cantidad = $(id_quantity).val();

    var total = price * cantidad;

    var count = (total - total_variant) / price;

    count = Math.round(count);
    cart_count = cart_count + count;

    suma = suma + total;

    suma = suma.toFixed(2);

    total = total.toFixed(2);

    if (isNaN(array[0]) == false) {
        $(ids + ' .lead.text-primary.cart-item-total').text(total + ' ' + currency);
        $('#total_order_cost').text( suma + ' ' + currency);
    } else {
        $(ids + ' .lead.text-primary.cart-item-total').text(currency + total);
        $('#total_order_cost').text(currency + suma);
    }

    $('#cart_count').text(cart_count);
};
