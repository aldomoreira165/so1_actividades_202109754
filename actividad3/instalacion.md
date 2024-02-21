# System Unit

  

Para el proceso de instalación del servicio se deben seguir los siguientes pasos:

 1. Otorgar permisos de ejecución al script con el comando **chmod +x tarea.sh**
 2. Ir a la ruta /etc/systemd/system/
 3. Crear el servicio con **nano tarea.service**
 4. Luego, en el editor de texto en el apartado ExecStart debemos poner la ruta en la cual se encuentra el script
 5. Guardamos
 6. Le damos permisos al fichero creado con **chmod 0644 /etc/systemd/system/tarea.service**
 7. Reiniciamos los demonios con **systemctl daemon-reload**
 8. Habilitamos el servicio con **enable tarea.service**
 9. FInalmente, iniciamos el servicio con **start tarea.service**
 10. Para verificar los logs del servicio, utilizamos **journalctl -u tarea.service**
 