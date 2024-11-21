package br.com.kaikedev.authenticationJwtExample.Controller;

import br.com.kaikedev.authenticationJwtExample.Entities.*;
import br.com.kaikedev.authenticationJwtExample.Repository.UsersRepo;
import br.com.kaikedev.authenticationJwtExample.Service.TokenService;
import jakarta.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/auth")
public class AuthenticationController {

    @Autowired
    private AuthenticationManager authenticationManager;

    @Autowired
    private UsersRepo userRepository;
    @Autowired
    private TokenService tokenService;

    @PostMapping("/login")
    public ResponseEntity login(@RequestBody @Valid AuthenticationDto authenticationDto) {

        var usernamePassword = new UsernamePasswordAuthenticationToken(authenticationDto.email(), authenticationDto.password());
        var auth = this.authenticationManager.authenticate(usernamePassword);

        var token = tokenService.generateToken((Users) auth.getPrincipal());

        System.out.println(auth.getPrincipal());


        return ResponseEntity.ok(new LoginResponseDTO(token));
    }

    @PostMapping("/register")
    public ResponseEntity register(@RequestBody @Valid RegisterDto registerDto) {

        if (this.userRepository.findByEmail(registerDto.email()) != null) {
            return ResponseEntity.badRequest().build();
        }
        String encryptedPassword = new BCryptPasswordEncoder().encode(registerDto.password());

        Users user = new Users(registerDto.email(), encryptedPassword, registerDto.role());

        this.userRepository.save(user);

        return ResponseEntity.ok().build();
    }
}
