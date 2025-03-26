<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MasterPage.aspx.cs" Inherits="MasterPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        * {
            margin: 0;   
        }
        #premenu {
            height: 80px;
            background-color: #C599B6;
            color: black;
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: 'Roboto';
            font-size: 30px;
        }
        nav {
            height: 50px;
            background-color: #FAD0C4;
            display: flex;
            align-items: center;
            justify-content: space-evenly;
        }
        p {
            width: 80%;
            color: black;
            padding: 20px;
            display: block;
            margin: 10px auto;
            background-color: #FFF7F3;
            border: 2px solid black;
        }
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="premenu">

            <asp:Label ID="Label1" runat="server" Text="My Website"></asp:Label>

        </div>
        <nav>

            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://google.com/" ForeColor="Black">Google</asp:HyperLink>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="https://facebook.com/" ForeColor="Black">Facebook</asp:HyperLink>
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="https://instagram.com/" ForeColor="Black">Instagram</asp:HyperLink>
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="https://whatsapp.com/" ForeColor="Black">Whatsapp</asp:HyperLink>

        </nav>
        <p>

            <asp:Label ID="Label2" runat="server" Text="Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.

Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo.

Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus.

Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus.

Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi.

Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum.

Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus.

Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,"></asp:Label>

        </p>
    </form>
</body>
</html>
