package ASM.DAO;
import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.CrudRepository;

import ASM.model.Account;

public interface AccountDAO extends CrudRepository<Account,String>{
	Page<Account> findAllByUsernameLike(String keywords, Pageable pageable);

	Account findByUsername(String username);

}
