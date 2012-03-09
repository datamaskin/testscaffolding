
/**
 * Created by IntelliJ IDEA.
 * User: david
 * Date: 3/5/12
 * Time: 10:22 AM
 * To change this template use File | Settings | File Templates.
 */

modules = {
    dropmenu {
        dependsOn 'jquery'
        resource url:'css/dropmenu_apple.css'
        resource url:'js/jquery/jquery.dropmenu-1.1.4.js'
    }

    datepicker {
        dependsOn 'jquery-ui'
        resource url:'js/jquery/jquery-ui-timepicker-addon.js'
        resource url:'js/activate_datepicker.js'
    }

    'full-calendar' {
        dependsOn 'jquery-ui'
        resource url:'css/fullcalendar.css', attrs:[media:'screen']
        resource url:'css/fullcalendar.print.css', attrs:[media:'print']
        resource url:'js/jquery/fullcalendar.js'  // TODO: apply minified version for production
    }

    selectboxes {
        dependsOn 'jquery'
        resource url:'js/jquery/jquery.selectboxes.js'
    }

    selectchain {
        dependsOn 'jquery'
        resource url:'js/jquery/select-chain.js'
    }
}