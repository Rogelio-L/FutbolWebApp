\# Sprint 2: Navegación



\## From main: SelectLiga → ZoomLiga



Las dos vistas utilizan liga como tabla principal. Al pulsar el botón de detalle, se abre la ficha del registro seleccionado.



\- InvokingView: oSelectLiga.

\- InvokingObject: oDetailButton, el botón que inicia la navegación.

\- InvokedView: oZoomLiga.



WebRegisterPath registra el destino y Send NavigatePath ejecuta la navegación.



El evento OnGetNavigateForwardData se ejecuta en el objeto que inicia la navegación, oDetailButton. En él se establece bReadOnly a True para abrir la ficha en modo consulta.



Prueba realizada: al pulsar el detalle de Premier League, se abre su ficha conservando el registro seleccionado.


## From child: ZoomEquipo → SelectLiga

Desde el buscador del campo Liga se abre SelectLiga. Al elegir una liga, se vuelve al equipo con esa seleccion.

InvokingView: oZoomEquipo.
InvokingObject: oligaNombre.
InvokedView: oSelectLiga.

La relacion es equipo.LigaID → liga.ID: equipo es hijo de liga.
Se comprobo la seleccion y se restauro LaLiga para Real Madrid.

## From parent: liga y sus equipos

Primera version: oVerEquiposBtn, dentro de ZoomLiga, abre SelectEquipo mediante ntNavigateForward. El listado muestra solamente los equipos de la liga seleccionada.

Segunda version: se sustituye el boton por oEquiposList dentro de ZoomLiga. La lista utiliza oequipo_DD, conectado a oliga_DD y limitado mediante Constrain_File a liga.File_Number. La tabla principal de la ficha sigue siendo liga. En esta version no se navega a otra pantalla.

Ambas versiones quedan registradas en commits separados.
Se comprobaron los tres equipos de LaLiga y los tres de Premier League.

## Undefined: ZoomJugador → SelectPosicion

El boton oVerPosicionesBtn abre oSelectPosicion mediante ntNavigateForward y NavigatePath.

No existe una relacion directa de padre e hijo entre jugador y posicion. Existe una relacion de muchos a muchos mediante jugadorposicion, pero este salto no recorre esa tabla intermedia.

La navegacion es nfUndefined: abre todas las posiciones, sin filtrarlas ni asignarlas al jugador.
Se comprobo el acceso desde una ficha de jugador.
