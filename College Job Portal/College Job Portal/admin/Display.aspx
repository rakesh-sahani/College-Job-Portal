<%@ Page Language="C#" MasterPageFile="~/admin/Menu.Master" AutoEventWireup="true" CodeBehind="Display.aspx.cs" Inherits="College_Job_Portal.admin.Display" %>

 <asp:Content ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ContentPlaceHolderID="title" runat="server">View | DashBoard</asp:Content>
  <asp:Content ContentPlaceHolderID="Heading" runat="server">
   <form id="form1" runat="server"> 
  <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          

        <div class="box">
           <div class="box box-danger">
            <div class="box-header with-border">
              <h3 class="box-title">Student Details</h3>
            </div>
            <div class="box-body">
              <div class="row">
                <div class="col-xs-3">
                     <asp:textbox  id="name" runat="server"  Cssclass="form-control" placeholder="Full Name" />                    
                </div>
                <div class="col-xs-3">
                       <div class="form-group">
                        <asp:DropDownList ID="Scourse" class="form-control select2" Style="width: 100%;" runat="server">
                            <asp:ListItem Selected="selected" disabled="disabled" Value="-1">--Course--</asp:ListItem>
                            <asp:ListItem Value="MCA">MCA</asp:ListItem>
                            <asp:ListItem Value="MBA">MBA</asp:ListItem>
                        </asp:DropDownList>                        
                    </div>
                </div>
                <div class="col-xs-3">
                 <div class="form-group">
                         <asp:DropDownList ID="SYear" class="form-control select2" Style="width: 100%;" runat="server">
                            <asp:ListItem Selected="selected" disabled="disabled" Value="-1">--Year--</asp:ListItem>
                            <asp:ListItem Value="1">1</asp:ListItem>
                            <asp:ListItem Value="2">2</asp:ListItem>
                            <asp:ListItem Value="3">3</asp:ListItem>
                        </asp:DropDownList>                                   
                    </div>
                </div>
                  <div class="col-xs-3">
                <asp:Button ID="Button1" Text="Search" runat="server" OnClick="btn_Search" Cssclass="btn btn-block btn-info btn-flat" />
                </div>
              </div>
            </div>
            <!-- /.box-body -->
          </div>
            <!-- /.box-header -->
            <div class="box-body">
            <asp:GridView  RowStyle-Font-Size="Medium" ID="GridView1" runat="server" CSSclass="table table-bordered table-striped" OnRowDataBound="OnRowDataBound"
               AutoGenerateColumns="false" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >

                <Columns>   
                    <asp:BoundField DataField="E_NO" HeaderText="E_NO" />
					<asp:BoundField DataField="FName" HeaderText="Full Name" />
					<asp:BoundField DataField="DOB" HeaderText="DOB" />			
					<asp:BoundField DataField="Course" HeaderText="Course" />
					<asp:BoundField DataField="Year" HeaderText="Year" />
            		<asp:BoundField DataField="Email" HeaderText="Email" />
					<asp:BoundField DataField="Mobile" HeaderText="Mobile" />
                     <asp:TemplateField HeaderText = "Photo">
            <ItemTemplate>
                <asp:Image ID="Photo" runat="server" Height="80" Width="80" />
            </ItemTemplate>
        </asp:TemplateField>  
                     <asp:ButtonField FooterStyle-ForeColor="White" Text="Edit" CommandName="Select" ItemStyle-Width="50" ItemStyle-CssClass="btn btn-block btn-success"  />                                              
                      <asp:ButtonField FooterStyle-ForeColor="White" Text="Delete" CommandName="Delete" ItemStyle-Width="50" ItemStyle-CssClass="btn btn-block btn-danger"  />                                              
            </Columns>                                      
            </asp:GridView>                
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>

</form>

        </asp:Content>