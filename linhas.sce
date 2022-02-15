// Linha-de-transmiss-o-coaxial
clear;
clc;
z0=50;//IMPEDANCIA CARACTERISTICA
er=2.1//PERMISSIVIDADE RELATIVA
e0=8.85*10^-12
e=er*e0
vluz=3*10^8
//PELA FORMULA Z0=[60/sqrt(er)] x ln(b/a),isolando ln(b/a) e aplicando log da definição.
lnba=z0*sqrt(er)/60;//Achando o resultado de ln(b/a)=z0*sqrt(er)/60
valorba=%e^lnba;// FAZENDO LOG DA DEFINIÇÃO PARA ENCONTARAR A RAZÃO B/A
b=2+(5-2)*rand()//numero entre 2 e 5 que são os limites das dimensões
a=b/valorba//raio do condutor interno baseado na formula b/a=valorba,isolando a=b/valorba
while(a<0.5)//raio interno não pode ser menor que 0,5
    b=2+(5-2)*rand()
    a=b/valorba
end

printf("raio do condutor interno em mm")
disp([a])//raio do condutor interno
printf("raio do condutor central em mm")
disp([b])//raio do condutor central

//CONFERINDO O RESULTADO
z01=(60/sqrt(er))* log(b/a)//Formula da impedancia caracteristica em um cabo coaxial
printf("impedancia caracteristica")
disp([z01])//valor da impedancia caracteristica encontrada
printf("CAPACITANCIA POR METRO")
c=2*%pi*e/log(b/a);//capacitancia
disp([c])
printf("INDUTANCIA POR METRO")
l=(z0^2)*c//indutancia
disp([l])
printf("CONDUTANCIA POR METRO")
g=2*%pi*10^-23/log(b/a)//condutancia
disp([g])
printf("RESISTENCIA POR METRO")
r=g*l/c//resistencia
disp([r])
printf("Velocidade de propagação")
v=vluz/sqrt(er)//velocidade de propagação
disp([v])
disp([valorba])
