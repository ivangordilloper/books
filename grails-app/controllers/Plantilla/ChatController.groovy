package Plantilla

import grails.plugin.springsecurity.annotation.Secured

import java.nio.file.Files


@Secured(['permitAll'])

class ChatController {
    def springSecurityService
    def index() {
        [user:[nombre:'ivan'],idU1:springSecurityService.principal]
    }

    def log(){
        String file = "grails-app/assets/chat/log.html";
        def fileContents = new File( file)
        render(fileContents.text)
    }

    def setData(){
        if (request.getMethod().equals('POST')){
            print params
            print "\n"
            if(params.text.size()>0){
                String file = "grails-app/assets/chat/log.html";
                def fileContents = new File( file)
                fileContents.write fileContents.text +"<div class='msgln'>("+new Date().format('YY-MM-dd HH:mm:ss')+") <b>"+"IVAN"+"</b>: "+params.text+"<br></div>"
            }
        }
        render("")



    }
}

