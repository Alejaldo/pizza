function something()
{
        var x = window.localStorage.getItem('bbb'); // x = hh['bbb']

        x = x*1 + 1; // x = x + 1 , beacause var x is String according to JS

        window.localStorage.setItem('bbb', x); // hh['bbb'] = x

        alert(x);
}

function add_to_cart(id)
{
        alert('You just added pizza with id: ' + id);
}