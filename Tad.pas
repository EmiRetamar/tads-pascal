TAD TipoEstadio
interface
type exportado Estadio

procedure crear(var E: estadio; est: boolean; pers: string; dia: 1..31; hora: 1..24; cantLibres: integer);

procedure vender(var E: estadio;);

function consultar(E: estadio): integer;

implementation

info = record
     pers: string;
     ocupada: boolean;
     end;
butacas = array [1..1000] of info;
Estadio = record
        plateas: butacas;
        dia: 1..31;
        hora: 1..24;
        cantLibres: 1..1000;
        end;

procedure crear(var E: estadio; dia: 1..31; hora: 1..24; cantLibres: integer);
          var i: integer;
          begin
          E.dia:= dia;
          E.hora:= hora;
          E.cantLibres:= 1000;
          for i:= 1 to 1000 do
              E.plateas[i].ocupada:= false;
          end;

procedure vender(var E: estadio; pers: string; i: integer);
          begin
          E.plateas[i].ocupada:= true;
          E.plateas[i].pers:= pers;
          E.cantLibres:= cantLibres - 1;
          end;

function consultar(E: estadio): integer;
         begin
         consultar:= E.cantLibres;
         end
