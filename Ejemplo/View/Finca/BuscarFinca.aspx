<%@ Page Title="" Language="C#" MasterPageFile="~/View/Menu/Menu.Master" AutoEventWireup="true" CodeBehind="BuscarFinca.aspx.cs" Inherits="Ejemplo.View.Finca.BuscarFinca" %>

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
            <div class="card-header" style="background:#28a745">
                <strong class="card-title">Informacion Finca</strong>
            </div>
            <div class="card-body">
                <div id="bootstrap-data-table-export_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer">


                    <div class="row">
                        <div class="col-sm-12">
                            <table id="bootstrap-data-table-export" class="table table-striped table-bordered dataTable no-footer" role="grid" aria-describedby="bootstrap-data-table-export_info">
                                <thead>
                                    <tr role="row">
                                        <th class="sorting_asc" tabindex="0" aria-controls="bootstrap-data-table-export" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 150px;">ID Finca</th>
                                        <th class="sorting_asc" tabindex="0" aria-controls="bootstrap-data-table-export" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 209px;">Nombre</th>
                                        <th class="sorting" tabindex="0" aria-controls="bootstrap-data-table-export" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending" style="width: 349px;">Ubicacion</th>
                                        <th class="sorting" tabindex="0" aria-controls="bootstrap-data-table-export" rowspan="1" colspan="1" aria-label="Office: activate to sort column ascending" style="width: 154px;">Area</th>
                                        <th class="sorting" tabindex="0" aria-controls="bootstrap-data-table-export" rowspan="1" colspan="1" aria-label="Office: activate to sort column ascending" style="width: 154px;">Persona</th>
                                          <th class="sorting" tabindex="0" aria-controls="bootstrap-data-table-export" rowspan="1" colspan="1" aria-label="Office: activate to sort column ascending" style="width: 154px;">Acción</th>
                                         </tr>
                                </thead>
                                <tbody>
                                    <asp:ListView runat="server" ID="list_finca">
                                        <ItemTemplate>
                                            <tr>
                                                <td><%#Eval("idFinca")%></td>
                                                <td><%#Eval("Nombre")%> </td>
                                                <td><%#Eval("Ubicacion")%></td>
                                                <td><%#Eval("areaa")%></td>
                                                <td><%#Eval("fk_idpersona")%></td>

                                                <td style="width: 300px">

                                                    <asp:LinkButton Style="color:black" CommandArgument='<%#Eval("idFinca")+","+Eval("Nombre")+","+Eval("Ubicacion")+","+Eval("areaa")+","+Eval("fk_idpersona")%>' OnCommand="Modificar" runat="server" CommandName="traer"><i class="fa fa-pencil"></i>
                                                    Modificar</asp:LinkButton>    
                                                </td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:ListView>
                                </tbody>
                            </table>
                           <%-- <div class="modal fade" id="mediumModal" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-lg" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="mediumModalLabel">Medium Modal</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">

                                            <div class="form-group">
                                                <label for="nf-email" class=" form-control-label">Nombre</label>
                                                --<Input runat="server" type="text" value='<%#Bind("Nombre")%>'  id="nombress" name="nombres"   class="form-control col-lg-12">--%>
                                            <%--</div>


                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                                            <button type="button" class="btn btn-primary">Confirm</button>
                                        </div>
                                    </div>
                                </div>
                            </div--%>

                        </div>


                    </div>
                    <%--<div class="row">
                        <div class="col-sm-12 col-md-5">
                            <div class="dataTables_info" id="bootstrap-data-table-export_info" role="status" aria-live="polite">Showing 1 to 10 of 57 entries</div>
                        </div>
                        <div class="col-sm-12 col-md-7">
                            <div class="dataTables_paginate paging_simple_numbers" id="bootstrap-data-table-export_paginate">
                                <ul class="pagination">
                                    <li class="paginate_button page-item previous disabled" id="bootstrap-data-table-export_previous"><a href="#" aria-controls="bootstrap-data-table-export" data-dt-idx="0" tabindex="0" class="page-link">Previous</a></li>
                                    <li class="paginate_button page-item active"><a href="#" aria-controls="bootstrap-data-table-export" data-dt-idx="1" tabindex="0" class="page-link">1</a></li>
                                    <li class="paginate_button page-item "><a href="#" aria-controls="bootstrap-data-table-export" data-dt-idx="2" tabindex="0" class="page-link">2</a></li>
                                    <li class="paginate_button page-item "><a href="#" aria-controls="bootstrap-data-table-export" data-dt-idx="3" tabindex="0" class="page-link">3</a></li>
                                    <li class="paginate_button page-item "><a href="#" aria-controls="bootstrap-data-table-export" data-dt-idx="4" tabindex="0" class="page-link">4</a></li>
                                    <li class="paginate_button page-item "><a href="#" aria-controls="bootstrap-data-table-export" data-dt-idx="5" tabindex="0" class="page-link">5</a></li>
                                    <li class="paginate_button page-item "><a href="#" aria-controls="bootstrap-data-table-export" data-dt-idx="6" tabindex="0" class="page-link">6</a></li>
                                    <li class="paginate_button page-item next" id="bootstrap-data-table-export_next"><a href="#" aria-controls="bootstrap-data-table-export" data-dt-idx="7" tabindex="0" class="page-link">Next</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>--%>

                </div>
            </div>



        </div>

        <div id="DivModal" style="display: none">
            <div class="modal fade show" id="mediumM" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" style="display: block; padding-left: 0px;">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header" style="background:#28a745">
                            <h5 class="modal-title" id="mediumModalL">Datos Finca</h5>
                            <button type="button" class="close" data-dismiss="modal" onclick="Close('1')" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <%--  <div class="form-group">
                                <label for="nf-email" class=" form-control-label">Nombre</label>
                                <asp:TextBox ID="TB_Nombre" runat="server"></asp:TextBox>
                            </div>--%>

                            

                                 <div class="form-group">
                                <label for="nf-email" class=" form-control-label col-lg-6 ">Id Finca</label>
                                <%--<input runat="server" id="Text1" name="nombres" placeholder="Nombre.." class="form-control col-lg-12">--%>
                                <asp:TextBox ID="IdF" readOnly ="true" runat="server" CssClass="form-control ">

                                </asp:TextBox>
                            </div>

                                <div class="form-group">
                                <label for="nf-email" class=" form-control-label ">Nombre</label>
                                <%--<input runat="server" id="Text2" name="nombres" placeholder="Nombre.." class="form-control col-lg-12">--%>
                                <asp:TextBox ID="TB_Nombre"  runat="server" CssClass="form-control ">

                                </asp:TextBox>
                            </div>

                        
                             <div class="form-group">
                                <label for="nf-email" class=" form-control-label ">Ubicacion</label>
                                <%--<input runat="server" id="t_nomb" name="nombres" placeholder="Nombre.." class="form-control col-lg-12">--%>
                                <asp:TextBox ID="Ubicacion" runat="server" CssClass="form-control ">

                                </asp:TextBox>
                            </div>

                          
                          <div class="form-group">
                                <label for="nf-email" class=" form-control-label ">Area</label>
                               <%--<input runat="server" id="t_nombre" name="nombres" placeholder="Nombre.." class="form-control col-lg-12">--%>
                               <asp:TextBox ID="Area" runat="server" CssClass="form-control "></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label for="nf-email"  class=" form-control-label ">Persona</label>
                               <%--<input runat="server" id="Text3" name="nombres" placeholder="Nombre.." class="form-control col-lg-12">--%>
                               <asp:TextBox ID="idpersona" readOnly ="true" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>

                             <div class="modal-footer">
                            
                            <%--<button type="button" class="btn btn-primary" >Confirm</button>--%>
                             <asp:Button ID="Button1"  CssClass="btn btn-primary btn-success mt-4" runat="server" Text="Modificar" OnClick="Button1_Click" />
                               
                              <asp:Button ID="Button3"  CssClass="btn btn-secondary btn-round mt-4" runat="server" Text="Cerrar" />
                        </div>
                        </div>
                       
                    </div>
                </div>
            </div>
            <div class="modal-backdrop fade show"></div>
        </div>


    </form>
</asp:Content>
