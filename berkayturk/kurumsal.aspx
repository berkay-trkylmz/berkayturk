<%@ Page Title="" Language="C#" MasterPageFile="~/Taslak.Master" AutoEventWireup="true" CodeBehind="kurumsal.aspx.cs" Inherits="berkayturk.kurumsal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row" class="flued-container">
        <div class="col-md-6" style="padding : 15px 35px;">
          <div id="myCarousel" class="carousel slide" data-ride="carousel" style="width:100%;">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="bs/css/rsm/kurumsal1.jpg">
    </div>

    <div class="item">
      <img src="bs/css/rsm/kurumsal2.jpg">
    </div>

  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only"></span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only"></span>
  </a>
</div>
          
        </div>
        <div class="col-md-6" style="padding : 15px;"> 
          <h4><b>BerkayTurk Bilişim Danışmanlık;</b></h4>
          <p>
            

Dünya standartlarında bilişim uygulamaları ile şirketlere fayda sağlamayı hedefleyen     genç ve dinamik bir yapıya sahiptir. Internet Çözümleri, İş Bilgilendirme Sistemleri, Yazılım Çözümleri, danışmanlık ve alt yapı çalışmaları konularındaki çalışmalarımızı, uzman kadromuz ile gerçekleştirmekteyiz.
<br><br>
<b>Misyonumuz;</b>
<br><br>
Bilgi Teknolojilerinin getirdiği faydaları müşterilerimize yaymaktır.
<br><br>
<b>Ömür boyunca kullanılabilir,</b>
<br><br>
Firmanızda ileride gerçekleşebilecek yenilik ve değişiklilere uygun, Firma dışı kaynaklara bağımlılığı ortadan kaldırıldığı veya minimuma indirildiği Bilişim Teknolojilerini en verimli şekilde kullanan bir yapı kurulmaya çalışılmıştır.
<br><br>
<b>BerkayTurk'u Neden Tercih Etmelisiniz?</b>
<br><br>
Tüm çalışmalarımızda temel amacımız kullanıcı memnuniyetidir. İş yaptığımız firmalar, ticari bir etkileşimden çok, uzun soluklu iş birliği olarak göz önünde tutulur. Şirketlerin durum ve ihtiyaçları objektif olarak değerlendirilir ve sadece o yapıya uygun olan çözümler sunulur.
<br><br>
Dünyadaki teknolojik gelişmeleri takip ederek ürün ve hizmetlerimizi sürekli geliştirir, her türlü uygulama ile ilgili teknik destek ile birlikte tüm sorunlarınızın en kısa zamanda çözüme ulaşmasını sağlarız.
          </p>
        </div>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="fother" Runat="Server">
    <div>
        <div style="background-image:url('bs/css/rsm/bg.jpg');background-repeat:repeat; background-attachment:fixed;background-position:center;" >
    <table class="container">
        <br />
        <br />
        
    <asp:Repeater ID="tekrar" runat="server">
        <ItemTemplate>
                    
                <tr class="col-md-3 text-center" style="border:1px solid #fff;padding-left:50px;" >
                    <td style="height:200px;width:200px;line-height:200px;"><a href="<%# Eval("fotoadres") %>"><img src="bs/css/rsm/ref/<%# Eval("fotourl") %>" class="img-responsive"  /></a></td>
                </tr>

        </ItemTemplate>
    </asp:Repeater>
        
    </table>

        <br />
        <br />
        </div>
    </div>
</asp:Content>

