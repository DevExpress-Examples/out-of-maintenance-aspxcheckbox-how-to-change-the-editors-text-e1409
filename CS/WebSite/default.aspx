<%@ Page Language="C#" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="checkBox" %>

<%@ Register Assembly="DevExpress.Web.v13.1" Namespace="DevExpress.Web.ASPxEditors"
    TagPrefix="dxe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
<table cellspacing="0" cellpadding="4">
<tr valign="top">
    <td>Do you agree?</td>
    <td>
    
<script type="text/javascript">
var checkBoxText = "I have read and agree to the Terms of Service and Privacy Policy.";
function UpdateCheckBoxText(s, e){
	if (s.GetChecked()){
        s.SetText(checkBoxText);
        ASPxButton1.SetEnabled(true);
    }
    else {
        ASPxButton1.SetEnabled(false);
        if(s.GetValue() == null)
	    	s.SetText('<span style="color:gray;">' + checkBoxText + '</span>');
        else     
		    s.SetText('<span style="color:red;">' + checkBoxText + '</span>');
    }
}
</script>    
        <dxe:aspxcheckbox id="ASPxCheckBox1" runat="server" text="I have read and agree to the ..." Value='<%# null %>'>
<ClientSideEvents CheckedChanged="UpdateCheckBoxText" Init="UpdateCheckBoxText"></ClientSideEvents>
</dxe:aspxcheckbox>
    
    </td>
</tr>
</table>    
        <br />
<dxe:aspxbutton id="ASPxButton1" runat="server" text="Submit" ClientEnabled="false" ClientInstanceName="ASPxButton1"></dxe:aspxbutton>        
        </div>
        
    </form>
</body>
</html>
