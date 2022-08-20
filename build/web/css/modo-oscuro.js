const tematable = document.getElementById('tematable');
const boton = document.querySelector('#boton');
const localConfig = localStorage.getItem('tema');

if (localConfig === 'dark') {
    document.body.classList.add('modo-oscuro')

} else if (localConfig === 'light') {
    document.body.classList.remove('modo-oscuro')
}
if (localConfig === 'dark' && tematable !=null) {
    tematable.classList.add('table-dark')
    
}else if (localConfig === 'light' && tematable != null) {
    tematable.classList.remove('table-dark')
}
boton.addEventListener('click', () => {
    let colorTema;
    if (tematable === null && document.body.classList.contains('modo-oscuro')){
        document.body.classList.remove('modo-oscuro')
        colorTema = 'light'
    }
    else if(tematable != null && document.body.classList.contains('modo-oscuro')){
        document.body.classList.remove('modo-oscuro')
        tematable.classList.remove('table-dark')
        colorTema = 'light'
    }
    else if(tematable === null  && !document.body.classList.contains('modo-oscuro')){
        document.body.classList.add('modo-oscuro')
        colorTema = 'dark'
    }
    else if(tematable != null  && !document.body.classList.contains('modo-oscuro')){
        document.body.classList.add('modo-oscuro')
        tematable.classList.add('table-dark')
        colorTema = 'dark'
    }
    localStorage.setItem('tema', colorTema)
}) 