var promiseCount = 0;

function testPromise(){
    var thisPromiseCount = ++promiseCount;

    var log = document.getElementById('log');
    log.insertAdjacentHTML('beforeend', '<br />' + thisPromiseCount + 
    ') Test Promesa (<small> Comenzó el código sincrónico</small>)<br />');

    var p1 = new Promise(
        function(resolve, reject) {
            log.insertAdjacentHTML('beforeend', thisPromiseCount +
            ') Lanzando la promesa (<small> Código AAAsincrónico!!!!</small>)<br />');

            window.setTimeout(
                function(){
                    resolve(thisPromiseCount);
                }, (Math.random() * 5000 + 1000));
        }
        
    );
    log.insertAdjacentHTML('beforeend', thisPromiseCount +
        ') Promesa lanzada, esperando (<small>Código sincrónico terminado!!!!</small>)<br />');

    p1.then(
        function(val){
            log.insertAdjacentHTML('beforeend', val +
            ') Promesa terminada (<small>Código AAAsincrónico terminado!!!!</small>)<br />');
        })
        .catch(
            function(reason) {
                console.log('Manejar promesa rechazada (' + reason + ' aquí.')
            }
        );
    
}