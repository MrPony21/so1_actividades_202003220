# Actividad 4 - 202003220
## Comandos para instalar el service



sudo nano /etc/systemd/system/actividad4.service


[Unit]
Description=Hora y fecha infinitos al iniciar el sistema

[Service]
ExectStart=/home/marksink/Documentos/SOPES/so1_actividades_202003220/Actividad4>
Restart=always 

[Install]
WantedBy=multi.user.target


sudo systemctl daemon-reload

sudo systemctl enable actividad4.service

sudo systemctl start actividad4.service

##### Para verificar es con este comando
sudo systemctl status actividad4.service
