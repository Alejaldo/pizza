function something()
{
        var x = window.localStorage.getItem('bbb'); // x = hh['bbb']

        x = x*1 + 1; // x = x + 1 , beacause var x is String according to JS

        window.localStorage.setItem('bbb', x); // hh['bbb'] = x

        alert(x);
}