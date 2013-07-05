import com.jdourd.datatables.grails.Animal

class BootStrap {

    def init = { servletContext ->
		if (!Animal.count()) {
			print new Animal(name:"Itak",species:"Dog",birthDate:Date.parse( "yyyy-M-d", "2011-01-15" )).save(flush:true).errors
			print new Animal(name:"Eiffel",species:"Dog",birthDate:Date.parse( "yyyy-M-d", "2013-12-31" )).save(flush:true).errors
			print new Animal(name:"Mazarin",species:"Cat",birthDate:Date.parse( "yyyy-M-d", "2012-05-02" )).save(flush:true).errors
		}
	}
    def destroy = {
    }
}
