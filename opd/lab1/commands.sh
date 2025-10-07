set -x

mkdir -p lab0/floatzel5/feebas
mkdir -p lab0/floatzel5/grotle
mkdir -p lab0/floatzel5/mandibuzz

mkdir -p lab0/onix9/lombre
mkdir -p lab0/onix9/phanpy
mkdir -p lab0/onix9/gurdurr
mkdir -p lab0/onix9/swablu

mkdir -p lab0/mienfoo0/dragonair
mkdir -p lab0/mienfoo0/cherubi
mkdir -p lab0/mienfoo0/nidorino

echo "weigth=332.0 height=55.0 atk=8 def=9" > lab0/floatzel5/walrein
echo -e "Развитые\nспособности Hustle" > lab0/floatzel5/nidoranM
echo -e "Возможности Overland=1 Surface=3\nSky=12 Power=2 Intelligence=4 Invisbility=0 Phasing=0" > lab0/mismagius4
echo -e "Тип\nдиеты Omnivore" > lab0/onix9/skitty
echo "satk=7 sdef=8 spd=9" > lab0/onix9/golbat
echo -e "satk=3 sdef=3\nspd=3" > lab0/sunkern6
echo "Развитые способности Overcoat" > lab0/wormadam7 

chmod u=wx,g=x,o=w lab0/floatzel5
chmod u=rw,g=r,o= lab0/floatzel5/walrein
chmod u=rx,g=rwx,o=rwx lab0/floatzel5/feebas
chmod 550 lab0/floatzel5/grotle
chmod 751 lab0/floatzel5/mandibuzz
chmod 660 lab0/floatzel5/nidoranM
chmod 764 lab0/mienfoo0 
chmod 524 lab0/mienfoo0/dragonair
chmod 551 lab0/mienfoo0/cherubi
chmod 733 lab0/mienfoo0/nidorino
chmod 624 lab0/mismagius4
chmod 511 lab0/onix9
chmod 060 lab0/onix9/skitty
chmod 620 lab0/onix9/golbat
chmod 355 lab0/onix9/lombre
chmod 755 lab0/onix9/phanpy
chmod 573 lab0/onix9/gurdurr
chmod 751 lab0/onix9/swablu
chmod 400 lab0/sunkern6
chmod 064 lab0/wormadam7

chmod u+r lab0/onix9/skitty
cat lab0/onix9/golbat lab0/onix9/skitty > lab0/mismagius4_62
cp -r lab0/mienfoo0 lab0/onix9/swablu
chmod u+w lab0/onix9
ln -s ../sunkern6 lab0/onix9/golbatsunkern
chmod u+w lab0/onix9/gurdurr
cp lab0/sunkern6 lab0/onix9/gurdurr
cat lab0/mismagius4 > lab0/onix9/skittymismagius
ln -s mienfoo0 lab0/Copy_23 
ln lab0/sunkern6 lab0/floatzel5/walreinsunkern

wc -l lab0/floatzel5/nidoranM lab0/onix9/skitty 2>/dev/null > /tmp/count
chmod u-r lab0/onix9/skitty
ls -tlR lab0 2>&1 | grep 'y$' 
cat -n lab0/sunkern6 2>/tmp/errors | sort -r
ls lab0/mienfoo0 2>/dev/null | sort -r 
chmod u+w lab0/sunkern6
wc -m lab0/sunkern6 >> lab0/sunkern6 2>&1
ls -lR lab0 2>&1 | grep '^[\-d]' | sort -k5 -n | head -n 2  

rm lab0/mismagius4
rm lab0/onix9/golbat
rm lab0/Copy_*
rm lab0/floatzel5/walreinsunke* 
chmod -R u+rw lab0/onix9
rm -r lab0/onix9
rmdir lab0/floatzel5/grotle
