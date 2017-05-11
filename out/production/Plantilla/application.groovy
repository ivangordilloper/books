

// Added by the Spring Security Core plugin:
grails.plugin.springsecurity.userLookup.userDomainClassName = 'Plantilla.Usuario'
grails.plugin.springsecurity.userLookup.authorityJoinClassName = 'Plantilla.UsuarioRole'
grails.plugin.springsecurity.authority.className = 'Plantilla.Role'
grails.plugin.springsecurity.logout.postOnly = false
grails.plugin.springsecurity.auth.loginFormUrl = '/inicio/iniciarSesion'
grails.plugin.springsecurity.failureHandler.defaultFailureUrl = '/inicio/iniciarSesion'
grails.plugin.springsecurity.defaultTargetURL = '/inicio/home'
grails.plugin.springsecurity.successHandler.defaultTargetUrl = '/seguro'
grails.plugin.springsecurity.logout.afterLogoutUrl = '/inicio/home'

grails.plugin.springsecurity.controllerAnnotations.staticRules = [
	[pattern: '/',               access: ['permitAll']],
	[pattern: '/error',          access: ['permitAll']],
	[pattern: '/index',          access: ['permitAll']],
	[pattern: '/index.gsp',      access: ['permitAll']],
	[pattern: '/shutdown',       access: ['permitAll']],
	[pattern: '/assets/**',      access: ['permitAll']],
	[pattern: '/**/js/**',       access: ['permitAll']],
	[pattern: '/**/css/**',      access: ['permitAll']],
	[pattern: '/**/images/**',   access: ['permitAll']],
	[pattern: '/**/documentosRDF/**',   access: ['permitAll']],

	[pattern: '/**/favicon.ico', access: ['permitAll']]
]

grails.plugin.springsecurity.filterChain.chainMap = [
	[pattern: '/assets/**',      filters: 'none'],
	[pattern: '/**/js/**',       filters: 'none'],
	[pattern: '/**/css/**',      filters: 'none'],
	[pattern: '/**/images/**',   filters: 'none'],
	[pattern: '/**/favicon.ico', filters: 'none'],
	[pattern: '/**',             filters: 'JOINED_FILTERS']
]

grails {
	mail {
		host = "smtp.gmail.com"
		port = 465
		username = "bookscomtt@gmail.com"
		password = "tteando123"
		props = ["mail.smtp.auth":"true",
				 "mail.smtp.socketFactory.port":"465",
				 "mail.smtp.socketFactory.class":"javax.net.ssl.SSLSocketFactory",
				 "mail.smtp.socketFactory.fallback":"false"]
	}
}