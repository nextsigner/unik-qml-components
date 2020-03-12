import QtQuick 2.0

Item {
    id: r
    anchors.fill: parent
    Column{
        spacing: app.fs*0.5
        anchors.centerIn: parent
        UTextInput{
            id: tiNombre
            label: 'Nombre: '
            width: app.fs*10
            maximumLength: 50
        }
        UTextInput{
            id: tiApellido
            label: 'Apellido: '
            width: app.fs*10
            maximumLength: 50
        }
        UTextInput{
            id: tiEdad
            label: 'Edad: '
            width: app.fs*10
            maximumLength: 3
            regularExp: RegExpValidator{regExp: /^[1-9][0-9]{3}/ }
        }
        UTextInput{
            id: tiPromedio
            label: 'Promedio: '
            width: app.fs*10
            maximumLength: 6
            dataType: 'dd.dd'
        }
        BotonUX{
            text: 'Guardar'
            height: app.fs*2
            onClicked: {
                let sql = 'insert into tabla2(nombre, apellido, edad, promedio)values('+
                    '\''+tiNombre.text+'\','+
                    '\''+tiApellido.text+'\','+
                    ''+tiEdad.text+','+
                    ''+tiPromedio.text+''+
                    ')'
                unik.sqlQuery(sql)
            }
        }
    }
}
