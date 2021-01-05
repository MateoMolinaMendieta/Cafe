<%@ Page Title="" Language="C#" MasterPageFile="~/View/Menu/Menu.Master" AutoEventWireup="true" CodeBehind="RegistrarT.aspx.cs" Inherits="Ejemplo.View.Trabajador.RegistrarT" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script>
        function Open(opc) {
            switch (opc) {
                case "1":
                    var div = document.getElementById("DivModal");
                    div.style.display = 'block';
                    break;
                case "2":
                    var div = document.getElementById("DivModal2");
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
                case "2":
                    var div = document.getElementById("DivModal2");
                    div.style.display = 'none';
                    break;
            }
        }
    </script>
    <form runat="server">
        <div>
            <asp:Button ID="Button2" CssClass="btn btn-lg social foursquare" Style="margin-bottom: 4px" runat="server" Text="Registrar Trabajador" OnClick="Button2_Click" />
        </div>
        <div class="col-md-12">
            <asp:Repeater ID="repTarjetas" runat="server">
                <ItemTemplate>
                       
                      <div class="col-md-4">
                        <aside class="profile-nav alt">
                            <section class="card">
                                <div class="card-header user-header alt bg-dark">
                                    <div class="media">
                                        <a href="#">
                                            <img class="align-self-center rounded-circle mr-3" style="width:85px; height:85px;" alt="" src="../../boostrap/images/admin.jpg">
                                            
                                        </a>
                                        <div class="media-body">
                                            <h5 class="text-light display-6"><%# Eval("Nombre") %></h5>
                                            
                                        </div>
                                    </div>
                                </div>


                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item text-center" >

                                                <asp:LinkButton ID="LinkButton1"
                                                runat="server"
                                                data-popup="tooltip"
                                                title="Modificar Insumo"
                                                CssClass="fa fa-save pr-1  text-center"
                                                CommandArgument='<%#Eval("idtrabajador")+","+Eval("Nombre")+","+Eval("Apellidos")+","+Eval("Telefono")+","+Eval("edad")%>'
                                                OnCommand="LinkButton1_Command">
                                            </asp:LinkButton>

                                    </li>
                                   
                                </ul>

                            </section>
                        </aside>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
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
                   
                <div class="card-body card-block">
                    <div class="form-group" >
                        <label for="nf-email" class=" form-control-label">Cedula</label>
                        <input runat="server" type="text" id="cedula" name="nombres" class="form-control col-lg-12">
                    </div>

                    <div class="form-group">
                        <label for="nf-email" class=" form-control-label">Nombre</label>
                        <input runat="server" type="text" id="nombre" name="nombres" class="form-control col-lg-12">
                    </div>

                    <div class="form-group">
                        <label for="nf-password" class=" form-control-label">Apellidos</label>
                        <input runat="server" type="text" id="apellido" name="ubicaiones" class="form-control col-lg-12">
                    </div>
                    <div class="form-group">
                        <label for="nf-password" class=" form-control-label">Telefono</label>
                        <input type="text" runat="server" id="telefono" name="areas" class="form-control col-lg-12">
                    </div>
                     <div class="form-group">
                        <label for="nf-password" class=" form-control-label">Edad</label>
                        <input type="text" runat="server" id="edad" name="areas" class="form-control col-lg-12">
                    </div>

                </div>
                            <div class="modal-footer">


                                <asp:Button ID="Button1" CssClass="btn btn-primary btn-success mt-4" runat="server" Text="Registrar" OnClick="Button1_Click" />

                                <asp:Button ID="Button3" CssClass="btn btn-secondary btn-round mt-4" runat="server" Text="Cerrar" />
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <div class="modal-backdrop fade show"></div>
        </div>




        <div id="DivModal2" style="display: none">
            <div class="modal fade show" id="mediumM2" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" style="display: block; padding-left: 0px;">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header" style="background:#28a745">
                            <h5 class="modal-title" id="mediumModalL2">Datos Finca</h5>
                            <button type="button" class="close" data-dismiss="modal" onclick="Close('2')" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                        <div class="modal-body">
                           
                            <div class="form-group">
                                <label for="nf-email" class=" form-control-label col-lg-6 ">Cedula</label>

                                <asp:TextBox ID="TBid" ReadOnly="true" runat="server" CssClass="form-control ">

                                </asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label for="nf-email" class=" form-control-label ">Nombre</label>

                                <asp:TextBox ID="TB_Nombre" runat="server" CssClass="form-control ">

                                </asp:TextBox>
                            </div>


                            <div class="form-group">
                                <label for="nf-email" class=" form-control-label ">Apellidos</label>

                                <asp:TextBox ID="TBapellidos" runat="server" CssClass="form-control ">

                                </asp:TextBox>
                            </div>


                            <div class="form-group">
                                <label for="nf-email" class=" form-control-label ">Telefono</label>

                                <asp:TextBox ID="TBteledono" runat="server" CssClass="form-control "></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label for="nf-email" class=" form-control-label ">Edad</label>

                                <asp:TextBox ID="TBEdad" runat="server" CssClass="form-control "></asp:TextBox>
                            </div>

                            
                             <div class="modal-footer">
                            
                            <%--<button type="button" class="btn btn-primary" >Confirm</button>--%>
                             <asp:Button ID="Button4"  CssClass="btn btn-primary btn-success mt-4" runat="server" Text="Modificar" OnClick="Button4_Click" />
                               
                              <asp:Button ID="Button5"  CssClass="btn btn-secondary btn-round mt-4" runat="server" Text="Cerrar" />
                        </div>
                        </div>
                       
                    </div>
                </div>
            </div>
            <div class="modal-backdrop fade show"></div>
        </div>



    </form>
</asp:Content>
