const id = document.getElementById("id")
const nombre = document.getElementById("nombre")
const email = document.getElementById("email")
const pass = document.getElementById("password")
const form = document.getElementById("form")
const parrafo = document.getElementById("warnings")

form.addEventListener("submit", e=>{
    e.preventDefault()
    let warnings = ""
    let entrar = false
    let regexEmail = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,4})+$/
    parrafo.innerHTML = ""
    if (id.value.length < 1 || id.value.length > 4) {
        warnings += `El id no es valido, debe tener entre 1 y 4 cifras <br><br>`
        entrar = true
    }
    if(nombre.value.length <6){
        warnings += `El nombre no es valido, debe tener min 6 caracteres <br><br>`
        entrar = true
    }
    if(!regexEmail.test(email.value)){
        warnings += `El email no es valido <br><br>`
        entrar = true
    }
    if(pass.value.length < 8){
        warnings += `La contraseña no es valida, debe tener min 8 caracteres <br><br>`
        entrar = true
    }

    if(entrar){
        parrafo.innerHTML = warnings
    }else{
        parrafo.innerHTML = "Enviado"
    }
})
