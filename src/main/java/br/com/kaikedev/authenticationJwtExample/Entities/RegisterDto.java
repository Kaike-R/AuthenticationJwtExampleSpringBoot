package br.com.kaikedev.authenticationJwtExample.Entities;

public record RegisterDto(String email, String password, UserRole role) {
}
