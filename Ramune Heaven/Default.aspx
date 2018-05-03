<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ramune_Heaven.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    My Home
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">
           
</asp:Content>


<asp:Content ID="Content4" ContentPlaceHolderID="Content" runat="server">
    
        <form id="form1" runat="server">
            
        <hr><br />
        <div id="searchbar" style="background:maroon; height:25px; padding-top:2px; padding-bottom:2px; width: 945px;">
        <div id="box" style="float:right; padding-right:5px;">
        <asp:TextBox ID="searchbox" runat="server" Width="235px" Height="20px" Style="padding-left:10px; margin-left: 0;"></asp:TextBox>
        <asp:Button ID="searchproduct" runat="server" OnClick="Button1_Click" Text="Search" Width="81px"  />
        </div>
        </div>
            
            
        <div id="searchname" style="width: 939px">
        <asp:Repeater ID="search" runat="server" DataSourceID="SqlDataSource2">
              <HeaderTemplate>
                 <table><tr>
                  </HeaderTemplate>
                   <ItemTemplate>
                            <td>
                                <br />
                                <div class="ProductNameBox">
                                    <a href="<%#Eval("ProductID","Product.aspx?ProductID={0}") %>"><asp:Image ID="ProductImage"  style="border: 2px solid; margin-right:20px; width:20px; height:15px;"
                                      ImageUrl='<%#string.Format("Images/ProductImage/{0}.jpg", Eval("ProductID")) %>' runat="server" /></a>
                                    <a class="ProductName" href="<%#Eval("ProductID","Product.aspx?ProductID={0}") %>"><%#Eval("ProductName") %></a><br />
                                </div>
                            </td>
                     </ItemTemplate>
                    <FooterTemplate>
                  </tr></table>
              </FooterTemplate>
         </asp:Repeater>

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" SelectCommand="SELECT * FROM [Product] WHERE ([ProductName] LIKE '%' + @ProductName + '%')">
                <SelectParameters>
                    <asp:QueryStringParameter Name="ProductName" QueryStringField="SearchProduct" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>

        </div>   
            
  
        <br />

        <div class="slideshowbanner">
            <h1>Explore Ramune Toy Candy Product</h1>
            <script src="responsiveslides/slideshowbanner.js"></script>
            <div class="rslides_container " style="padding-top:5px;">
              <ul class="rslides" id="slider1">
                <li><asp:Image runat="server" ImageUrl="responsiveslides/b1.jpg"/></li>
                <li><asp:Image runat="server" ImageUrl="responsiveslides/b2.jpg"/></li>
                <li><asp:Image runat="server" ImageUrl="responsiveslides/b3.jpg"/></li>
              </ul>
            </div>
          </div>
                    

        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <HeaderTemplate><table class="homeProduct"><tr></HeaderTemplate>
            <ItemTemplate>  
                <td>          
                     <br></br><br />
                    <a href="<%#Eval("ProductID","Product.aspx?ProductID={0}") %>"><asp:Image ID="ProductImage"  style="border: 2px solid; margin-right:20px; width:215px; height:145px;"
                      ImageUrl='<%#string.Format("Images/ProductImage/{0}.jpg", Eval("ProductID")) %>' runat="server" /></a>
                    <br />
                    
                    <div class="ProductNameBox">
                        <a class="ProductName" href="<%#Eval("ProductID","Product.aspx?ProductID={0}") %>"><%#Eval("ProductName") %></a><br />
                        
                    </div>
                    <a class="Price">Bnd<%#Eval("Price") %></a><br /><a class="ProductQuantity">Quantity:<%#Eval("ProductQuantity") %></a></td> 
                   
                    
            </ItemTemplate>
            <FooterTemplate></tr></table></FooterTemplate>
        </asp:Repeater>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" SelectCommand="SELECT Top 4 * FROM [Product] WHERE ProductQuantity > 1 ORDER BY ProductID DESC"></asp:SqlDataSource>
         
             
        <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource3">
            <HeaderTemplate><table class="homeProduct"><tr></HeaderTemplate>
            <ItemTemplate>  
                <td>          
                     <br></br><br />
                    <a href="<%#Eval("ProductID","Product.aspx?ProductID={0}") %>"><asp:Image ID="ProductImage"  style="border: 2px solid; margin-right:20px; width:215px; height:145px;"
                      ImageUrl='<%#string.Format("Images/ProductImage/{0}.jpg", Eval("ProductID")) %>' runat="server" /></a>
                    <br />
                    
                    <div class="ProductNameBox">
                        <a class="ProductName" href="<%#Eval("ProductID","Product.aspx?ProductID={0}") %>"><%#Eval("ProductName") %></a><br />
                        
                    </div>
                    <a class="Price">Bnd<%#Eval("Price") %></a><br /><a class="ProductQuantity">Quantity:<%#Eval("ProductQuantity") %></a></td> 
                    
            </ItemTemplate>
            <FooterTemplate></tr></table></FooterTemplate>
        </asp:Repeater>
         
              
             
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" SelectCommand="SELECT TOP 4 * FROM [Product]"></asp:SqlDataSource>
         
              
             
       </form>

</asp:Content>
