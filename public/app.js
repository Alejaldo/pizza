function something()
{
        var x = window.localStorage.getItem('bbb'); // x = hh['bbb']

        x = x*1 + 1; // x = x + 1 , beacause var x is String according to JS

        window.localStorage.setItem('bbb', x); // hh['bbb'] = x

        alert(x);
}

function add_to_cart(id)
{
        var key = 'product_' + id;
        
        var x = window.localStorage.getItem(key);
        x = x*1 + 1;
        window.localStorage.setItem(key, x);

        update_orders();
        update_orders_button()
}

function update_orders()
{
        var orders = get_orders();
        $('#orders_epta').val(orders); 
}

function update_orders_button()
{
        var info = 'Cart (' + total_products() + ')';
        $('#button4ik').val(info);
}

function total_products()
{
        var total = 0;

        for(var i = 0; i < window.localStorage.length; i++)
        {
                var x = window.localStorage.key(i);
                var y = window.localStorage.getItem(x);

                if(x.indexOf('product_') == 0)
                {
                        total += y*1;
                }
        }

        return total;
}

function get_orders()
{
        var orders = '';

        for(var i = 0; i < window.localStorage.length; i++)
        {
                var x = window.localStorage.key(i);
                var y = window.localStorage.getItem(x);

                if(x.indexOf('product_') == 0)
                {
                        orders = orders + x + '=' + y + ',';
                }
        }

        return orders;
}