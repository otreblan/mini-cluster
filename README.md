# Arch linux -> Raspbian
Reemplazé Arch Linux arm con Raspbian.

- [ ] Raspbian con ssh por default
- [ ] Clonar los discos `dd if=/dev/mmcblk0 bs=64K conv=sync,noerror status=progress > pi-backup.img`
- [ ] Buscar las direcciones ip con nmap
- [ ] Cambiar los hostnames: master, slave01, slave02 ....
- [ ] Instalar openmpi-bin libopenmpi-dev
- [ ] Generar llaves ssh sin contraseña: ssh-keygen
- [ ] Copiar .ssh/ del maestro a todos los slaves y reiniciar
- [ ] Clonar el código del proyecto N-Body
- [ ] En cada slave: `sshfs pi@master:/home/pi/N-Body N-Body`
- [ ] `cd N-Body; make # Algunos binarios antiguos podrian interferir`
- [ ] `mpirun --hostfile hostfile.txt ./cpu-4th #https://www.open-mpi.org/faq/?category=running#mpirun-host`
