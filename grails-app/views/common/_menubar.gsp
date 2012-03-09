<r:require modules='dropmenu'/>
<r:script>
$(function() {
    $(".apple").dropmenu({
           	  effect  : 'fade',
              speed   : 'fast',
              nbsp    : true,
              timeout : 500,
              maxWidth: 200
           });

    /* remove empty menus TODO: not yet complete */
    $('#menubar ul').not(':has(li)').prev().remove();
    $('#menubar ul').not(':has(li)').remove();

 });
</r:script>

<r:img id='logo' file="logo.jpg"/>
<ul class="apple">
    <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>

    <li>
        <span>Widgets</span>
        <ul>
            %{--<beye:menuitem controller="bull" action="list">Something</beye:menuitem>
            <beye:menuitem controller="bull" action="relocate">relocate a Bull</beye:menuitem>
            <beye:menuitem controller="teaser" action="list">Teasers</beye:menuitem>
            <beye:menuitem controller="rfid" action="list">Rfid</beye:menuitem>
            <beye:menuitem controller="bullAdmission" action="list">Admissions</beye:menuitem>--}%
        </ul>
    </li>

    <g:pageProperty name="page.navigation"/>
</ul>