package Plantilla

import grails.plugin.springsecurity.SpringSecurityService
import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString
import grails.compiler.GrailsCompileStatic

@GrailsCompileStatic
@EqualsAndHashCode(includes='username')
@ToString(includes='username', includeNames=true, includePackage=false)
class Usuario implements Serializable {

	private static final long serialVersionUID = 1

	SpringSecurityService springSecurityService

	String username
	String password
	boolean enabled = true
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired
	String nombre
	String apellidoP
	String apellidoM
	Date fechaNac = new Date()
	int telefono
	String correo
	String genero
	String token
	String idf


	Set<Role> getAuthorities() {
		(UsuarioRole.findAllByUsuario(this) as List<UsuarioRole>)*.role as Set<Role>
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService?.passwordEncoder ? springSecurityService.encodePassword(password) : password
	}

	static transients = ['springSecurityService']

	static constraints = {
		password blank: false, password: true
		username blank: false, unique: true
	}

	static mapping = {
		password column: '`password`'
	}

	static hasMany = [amigos: Usuario, listasL: ListaPreferenciaLibro]
	static hasOne = [ListaA: ListaPreferenciaAutor]
}
