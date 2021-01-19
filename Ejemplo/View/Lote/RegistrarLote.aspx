<%@ Page Title="" Language="C#" MasterPageFile="~/View/Menu/Menu.Master" AutoEventWireup="true" CodeBehind="RegistrarLote.aspx.cs" Inherits="Ejemplo.View.Lote.RegistrarLote" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <form runat="server">
        <div class="content  col-lg-6 offset-md-3">
            <div class="card">
                <div style="background-color: #28a745" class="card-header ">
                    <strong>Datos Lote</strong>
                </div>

                <div class="card-body card-block">
                    <div class="form-group" s>
                        <label for="nf-email" class=" form-control-label">Identificador del lote</label>
                        <input runat="server" type="text" id="idlote" name="nombres" class="form-control col-lg-12">
                    </div>

                    <div class="form-group">
                        <label for="nf-email" class=" form-control-label">Nombre</label>
                        <input runat="server" type="text" id="nombre" name="nombres" class="form-control col-lg-12">
                    </div>

                    <div class="form-group">
                        <label for="nf-password" class=" form-control-label">Tamaño</label>
                        <input runat="server" type="text" id="tamano" name="ubicaiones" class="form-control col-lg-12">
                    </div>
                 
                     <div class="form-group">
                        <label for="nf-password" class=" form-control-label">Finca</label>
                        <input runat="server" type="text" id="finca" name="ubicaiones" class="form-control col-lg-12">
                    </div>
                </div>
                <%--<<%--div class="card-footer">
                                                        <button type="submit"  ="btn btn-primary btn-sm offset-md-5">
                                                            <i class="fa fa-dot-circle-o"></i> Registrar
                                                        </button>
                                                        
                                                    </div>--%>
                <div class="text-center">
                    <asp:Button ID="Button1" Style="color: #212529" CssClass="btn btn-secondary btn-lg btn-success" runat="server" Text="Registrar" OnClick="Button1_Click"/>
                    <%--<button type="submit" class="btn btn-primary btn-round mt-4" runat="server" OnClick="Registro">Registrar </button>--%>
                </div>
                <br />

            </div>

        </div>
    </form>

</asp:Content>
