package br.com.kaikedev.authenticationJwtExample.Repository;

import br.com.kaikedev.authenticationJwtExample.Entities.Users;
import org.springframework.data.repository.CrudRepository;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Repository;

@Repository
public interface UsersRepo extends CrudRepository<Users, Integer> {

    UserDetails findByEmail(String email);
}
