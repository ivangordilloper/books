package Plantilla

import grails.transaction.Transactional

@Transactional
class LibroService {

    def libroToList() {
        return Libro.list()
    }

}
