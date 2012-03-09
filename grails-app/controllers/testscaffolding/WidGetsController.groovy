package testscaffolding

class WidGetsController {

    def index() { redirect(action:list,params:params) }

    def list = {
        if(!params.max) params.max = 10
        [ widGetsList: WidGets.list( params ) ]
    }
}
