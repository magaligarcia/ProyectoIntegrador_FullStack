
function validarDatos(){ 
    const name=document.getElementById("name").value;
    const email=document.getElementById("email").value;
    const telefono=document.getElementById("telefono").value;
    const cantidad=document.getElementById("cantidad").value;
    const actividad=document.getElementById("actividad").value;
    const fecha=document.getElementById("fecha").value;
    const hora=document.getElementById("hora").value
    const mensaje=document.getElementById("mensaje_login")

    if (name==""){
        mensaje.innerHTML="Ingrese el nombre completo"
        mensaje.style.color="red"
        mensaje.style.fontSize="10px"
        return false
    }

        else{
            mensaje.innerHTML="Enviando..."
            mensaje.style.color="green"
            mensaje.style.fontSize="10px"  
            return true
        }
}