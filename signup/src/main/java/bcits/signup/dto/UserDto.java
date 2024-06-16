package bcits.signup.dto;

import java.time.LocalDate;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.Data;

@Data
@Entity
public class UserDto {

	private String uname;
	private long umobile;
	private LocalDate dob;
	@Id
	private String umail;
	private String ccpwd;
	private String address;
}
