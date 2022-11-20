﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Master/Main.Master" AutoEventWireup="true" CodeBehind="PurchasesTableForm.aspx.cs" Inherits="Антикварный_магазин.Pages.Login.Seller.Покупки.PurchasesForm" %>

<asp:Content ID="PurchasesContent" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">


    <h1 class="text-center">Покупки </h1>
    <br />

    <div class="center-display">
        <asp:Table runat="server" ID="purchasesTable" BorderStyle="Solid"
            BorderWidth="2px" ForeColor="Black" GridLines="Both"
            Height="47px" Style="margin-left: 0px; margin-bottom: 14px; text-align: center;" Width="70%">

            <asp:TableFooterRow>
                <asp:TableHeaderCell> ID покупки </asp:TableHeaderCell>
                <asp:TableHeaderCell> Дата </asp:TableHeaderCell>
                <asp:TableHeaderCell> Статус </asp:TableHeaderCell>
                <asp:TableHeaderCell> ID клиента </asp:TableHeaderCell>
                <asp:TableHeaderCell> ID сотрудника </asp:TableHeaderCell>
                <asp:TableHeaderCell> ID антиквариата </asp:TableHeaderCell>
            </asp:TableFooterRow>

        </asp:Table>
    </div>

    <asp:Panel ID="ActionPurchasesPanel" runat="server" Width="470px" CssClass="center">
        <table style="width: 100%; margin-top: 20px;" border="0" cellpadding="0" cellspacing="0">
            <tr>
                <div class="center-display">
                    Выбор по ID: 
                    <asp:TextBox ID="IdSearchTextBox" runat="server" Width="50%" />
                </div>
            </tr>
            <tr style="margin: 0 auto;">
                <td style="height: 26px; width: 50%;">
                    <div class="center-display">
                        <asp:Button runat="server" ID="RedactButton" OnClick="RedactButton_Click" Text="Изменить" />
                        <asp:Button runat="server" ID="NewButton" OnClick="NewButton_Click" Text="Добавить новый элемент" />
                        <asp:Button runat="server" ID="DeleteButton" OnClick="DeleteButton_Click" Text="Удалить" />
                    </div>

                    <div class="center-display">
                        <asp:Label runat="server" ID="actionSuccessLabel">  </asp:Label>
                        <asp:Label runat="server" ID="actionErrorLabel">  </asp:Label>
                    </div>

                </td>
            </tr>
        </table>
    </asp:Panel>

</asp:Content>
