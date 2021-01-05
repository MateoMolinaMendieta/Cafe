<%@ Page Title="" Language="C#" MasterPageFile="~/View/Menu/Menu.Master" AutoEventWireup="true" CodeBehind="BuscarTrabajador.aspx.cs" Inherits="Ejemplo.View.Trabajador.BuscarTrabajador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <script>
        function Open(opc) {
            switch (opc) {
                case "1":
                    var div = document.getElementById("DivModal");
                    div.style.display = 'block';
                    break;
            }
        }
        function Close(opc) {
            switch (opc) {
                case "1":
                    var div = document.getElementById("DivModal");
                    div.style.display = 'none';
                    break;
            }
        }
    </script>
    <form runat="server">
        <div class="card">
            <div class="card-header" style="background: #28a745">
                <strong class="card-title">Informacion Trabajador</strong>
            </div>
            <div class="card-body">
                <div id="bootstrap-data-table-export_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer">


                    <div class="row">
                        <div class="col-sm-12">
                            <table id="bootstrap-data-table-export" class="table table-striped table-bordered dataTable no-footer" role="grid" aria-describedby="bootstrap-data-table-export_info">
                                <thead>
                                    <tr role="row">
                                        
                                        <th class="sorting_asc" tabindex="0" aria-controls="bootstrap-data-table-export" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 209px;">Cedula</th>
                                        <th class="sorting_asc" tabindex="0" aria-controls="bootstrap-data-table-export" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 209px;">Nombre</th>
                                        <th class="sorting" tabindex="0" aria-controls="bootstrap-data-table-export" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending" style="width: 349px;">Apellidos</th>
                                        <th class="sorting" tabindex="0" aria-controls="bootstrap-data-table-export" rowspan="1" colspan="1" aria-label="Office: activate to sort column ascending" style="width: 154px;">Telefono</th>
                                        <th class="sorting" tabindex="0" aria-controls="bootstrap-data-table-export" rowspan="1" colspan="1" aria-label="Office: activate to sort column ascending" style="width: 154px;">Edad</th>
                                        <th class="sorting" tabindex="0" aria-controls="bootstrap-data-table-export" rowspan="1" colspan="1" aria-label="Office: activate to sort column ascending" style="width: 154px;">Accion</th>
                                         </tr>
                                </thead>
                                <tbody>
                                    <asp:ListView runat="server" ID="list_trabajador">
                                        <ItemTemplate>
                                            <tr>
                                                <td><%#Eval("idtrabajador")%></td>
                                                <td><%#Eval("Nombre")%> </td>
                                                <td><%#Eval("Apellidos")%></td>
                                                <td><%#Eval("Telefono")%></td>
                                                <td><%#Eval("edad")%></td>

                                                <td style="width: 300px">

                                                    <asp:LinkButton Style="color: black" CommandArgument='<%#Eval("idtrabajador")+","+Eval("Nombre")+","+Eval("Apellidos")+","+Eval("Telefono")+","+Eval("edad")%>' OnCommand="Modificar" runat="server" CommandName="traer"><i class="fa fa-pencil"></i>
                                                    Modificar</asp:LinkButton>
                                                </td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:ListView>
                                </tbody>
                            </table>


                        </div>


                    </div>


                </div>
            </div>



        </div>

        <div id="DivModal" style="display: none">
            <div class="modal fade show" id="mediumM" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" style="display: block; padding-left: 0px;">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header" style="background: #28a745">
                            <h5 class="modal-title" id="mediumModalL">Datos Finca</h5>
                            <button type="button" class="close" data-dismiss="modal" onclick="Close('1')" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                        <div class="modal-body">




                            <div class="form-group">
                                <label for="nf-email" class=" form-control-label col-lg-6 ">Cedula</label>

                                <asp:TextBox ID="cedula" ReadOnly="true" runat="server" CssClass="form-control ">

                                </asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label for="nf-email" class=" form-control-label ">Nombre</label>

                                <asp:TextBox ID="TB_Nombre" runat="server" CssClass="form-control ">

                                </asp:TextBox>
                            </div>


                            <div class="form-group">
                                <label for="nf-email" class=" form-control-label ">Apellidos</label>

                                <asp:TextBox ID="apellidos" runat="server" CssClass="form-control ">

                                </asp:TextBox>
                            </div>


                            <div class="form-group">
                                <label for="nf-email" class=" form-control-label ">Telefono</label>

                                <asp:TextBox ID="teledono" runat="server" CssClass="form-control "></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label for="nf-email" class=" form-control-label ">Edad</label>

                                <asp:TextBox ID="edad" runat="server" CssClass="form-control "></asp:TextBox>
                            </div>

                            <div class="modal-footer">


                                <asp:Button ID="Button1" CssClass="btn btn-primary btn-success mt-4" runat="server" Text="Modificar" OnClick="Button1_Click" />

                                <asp:Button ID="Button3" CssClass="btn btn-secondary btn-round mt-4" runat="server" Text="Cerrar" />
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <div class="modal-backdrop fade show"></div>
        </div>
    </form>
</asp:Content>
