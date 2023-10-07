<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Página sin título</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EnableModelValidation="True" DataKeyNames="id">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
            </Columns>
        </asp:GridView>
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:hola %>"
    InsertCommand="INSERT INTO Cuentas (Descripcion) VALUES (@Descripcion)"
    SelectCommand="SELECT * FROM Cuentas"
    UpdateCommand="UPDATE Cuentas SET Descripcion = @Descripcion WHERE [id] = @id"
    DeleteCommand="DELETE FROM Cuentas WHERE [id] = @id">
    <UpdateParameters>
        <asp:Parameter Name="Descripcion" Type="String" />
        <asp:Parameter Name="ID" Type="Int32" />
    </UpdateParameters>
    <DeleteParameters>
        <asp:Parameter Name="ID" Type="Int32" />
    </DeleteParameters>
</asp:SqlDataSource>
 <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" EnableModelValidation="True" DataKeyNames="id">
            <Columns>
                <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="IdCuenta" HeaderText="IdCuenta" SortExpression="IdCuenta" />
                <asp:BoundField DataField="Monto" HeaderText="Monto" SortExpression="Monto" />
                <asp:CheckBoxField DataField="Tipo" HeaderText="Tipo" SortExpression="Tipo" />
            </Columns>
        </asp:GridView>



        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:hola %>" SelectCommand="select * from RegistroContable" UpdateCommand="UPDATE RegistroContable SET IdCuenta = @IdCuenta, Monto = @Monto, Tipo = @Tipo where [ID] = @id" DeleteCommand="DELETE FROM RegistroContable where [ID] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="IdCuenta" />
                <asp:Parameter Name="Monto" />
                <asp:Parameter Name="Tipo" />
                <asp:Parameter Name="id" />
            </UpdateParameters>
        </asp:SqlDataSource>


    </div>
    </form>
</body>
</html>
