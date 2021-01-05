<%@ Page Title="" Language="C#" MasterPageFile="~/View/Menu/Menu.Master" AutoEventWireup="true" CodeBehind="RegistrarTrabajador.aspx.cs" Inherits="Ejemplo.View.Trabajador.RegistrarTrabajador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <div class="content  col-lg-6 offset-md-3">
            <div class="card">
                <div style="background-color: #28a745" class="card-header ">
                    <strong>Trabajador</strong>
                </div>

                <div class="card-body card-block">
                    <div class="form-group" s>
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
                <%--<<%--div class="card-footer">
                                                        <button type="submit"  ="btn btn-primary btn-sm offset-md-5">
                                                            <i class="fa fa-dot-circle-o"></i> Registrar
                                                        </button>
                                                        
                                                    </div>--%>
                <div class="text-center">
                    <asp:Button ID="Button1" Style="color: #212529" CssClass="btn btn-secondary btn-lg btn-success" runat="server" Text="Registrar" OnClick="Button1_Click" />
                    <%--<button type="submit" class="btn btn-primary btn-round mt-4" runat="server" OnClick="Registro">Registrar </button>--%>
                </div>
                <br />

            </div>

        </div>
    </form>
</asp:Content>
