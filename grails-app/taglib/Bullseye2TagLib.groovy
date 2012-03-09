import org.codehaus.groovy.grails.plugins.web.taglib.FormatTagLib
import java.text.DecimalFormatSymbols
import java.text.DecimalFormat
/**
 * Created by IntelliJ IDEA.
 * User: david
 * Date: 3/5/12
 * Time: 11:27 AM
 * To change this template use File | Settings | File Templates.
 */
class Bullseye2TagLib {

    static namespace = 'beye'

	def formatSelect = { attrs ->
		def format = attrs.format
		def locale = new FormatTagLib().resolveLocale(attrs.locale)

		if (format) {
			DecimalFormatSymbols dcfs = locale ? new DecimalFormatSymbols( locale ) : new DecimalFormatSymbols()
            DecimalFormat decimalFormat = new DecimalFormat(format, dcfs)

			attrs.from = attrs.from.collect { decimalFormat.format(it) }
		}
		out << select(attrs)
	}

    /**
     * emitts a link inside a &lt;li&gt; tag if the user has permission to access the resource
     * attributes: see g:link
     *
     */
    def menuitem = { attrs, body ->
        def attrsCopy = attrs.clone() // sec.access empties attrs map, so make a copy
        out << sec.access(attrs) {
            out << '<li>' << link(attrsCopy, body) << '</li>'
        }
    }

}
