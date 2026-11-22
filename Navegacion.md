\# Sprint 2: Navegación



\## From main: SelectLiga → ZoomLiga



Las dos vistas utilizan liga como tabla principal. Al pulsar el botón de detalle, se abre la ficha del registro seleccionado.



\- InvokingView: oSelectLiga.

\- InvokingObject: oDetailButton, el botón que inicia la navegación.

\- InvokedView: oZoomLiga.



WebRegisterPath registra el destino y Send NavigatePath ejecuta la navegación.



El evento OnGetNavigateForwardData se ejecuta en el objeto que inicia la navegación, oDetailButton. En él se establece bReadOnly a True para abrir la ficha en modo consulta.



Prueba realizada: al pulsar el detalle de Premier League, se abre su ficha conservando el registro seleccionado.

