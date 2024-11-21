package br.com.kaikedev.authenticationJwtExample.Controller;


import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping("/Calender/v1")
@RestController
public class HelloController {

    @GetMapping
    public ResponseEntity<String> Hello() {
        System.out.println("Chamado o Endpoint");
        return ResponseEntity.ok("Hello World");
    }
}
