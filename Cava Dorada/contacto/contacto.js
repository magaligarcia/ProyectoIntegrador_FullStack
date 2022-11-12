function validar() {
  let form = document.form;
  let nombre = form.nombre.value;
  let correo = form.correo.value;
  let mensaje = form.mensaje.value;

  if (nombre == 0) {
    form.nombre.value = "";
    form.nombre.focus();
    return false;
  }

  if (nombre.length < 4 || nombre.length > 20) {
    alert("Su nombre debe tener entre 4 y 20 caracteres");
    form.nombre.value = "";
    form.nombre.focus();
    return false;
  }
 
  if (correo.endsWith("@hotmail.com")) {
    alert("El correo electrónico no puede ser de hotmail");
    form.correo.value = "";
    form.correo.focus();
    return false;
  }

  if (mensaje == 0) {
    form.mensaje.value = "";
    form.mensaje.focus();
    return false;
  }

  alert("Datos enviados con  éxito");
  form.submit();
}

