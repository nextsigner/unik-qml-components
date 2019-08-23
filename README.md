# unik-qml-components

Este repositorio contiene archivos QML ùtiles para programar aplicaciones en el entorno Unik Qml Engine.

## Modo de Uso en Linux

Crear un alias con la funciòn que nos permitirà descargar el componente en la carpeta del proyecto QML.

* $:cd ~
* Editar el archivo .bash_aliases con 

$:nano .bash_aliases

* Pegar el siguiente còdigo y guardar los cambios: 

alias g='getUnikQmlComponent'
function getUnikQmlComponent(){
        wget https://raw.githubusercontent.com/nextsigner/unik-qml-components/m$
}

### Nota: En GNU/Linux los archivos que comienzan con un punto son ocultos.

* Recargar los aliases para utilizarlos en nuestro terminal.

$:source ~/.bash_aliases

* Ahora puedes descargar archivos QML desde este repositorio con el siguiente comando

Supongamos que deseamos descargas el componente de este repositorio llamado UnikSettings.qml

$:cd myUnikQmlProject
$:g 'UnikSettings'

* Por ùltimo comprobamos el estado del archivo con el comando "stat"

$:stat UnikSettings.qml

* O si quieres ver su còdigo fuente

$:cat UnikSettings.qml


## Si quieres publicar archivos QML en este repositorio, suscrìbete a GitHub.com, luego entra a este repositorio y envìame un comentario. De esta manera te agrego como programador para que publiques màs componentes ùtiles para todos.


## Màs informaciòn

E-Mail: nextsigner@gmail.com
Twitter: @nextsigner
Whatsapp: +54 11 3802 4370

