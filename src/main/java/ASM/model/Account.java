package ASM.model;

import java.io.Serializable;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name ="Accounts" )
public class Account implements Serializable {
	@Id
	@Column(columnDefinition = "nvarchar(30)")
	@NotEmpty(message = "{NotEmpty.Account.username}")
	private String username;
	@NotBlank(message = "{NotBlank.Account.password}")
	@Min(value=6, message = "{Min.Account.password}")
	@Column(columnDefinition = "nvarchar(30)")
	private String password;
	@Column(columnDefinition = "nvarchar(50)")
	@NotBlank(message = "{NotBlank.Account.fullname}")
	private String fullname;
	@Column(columnDefinition = "nvarchar(50)")
	@NotBlank(message = "{NotBlank.Account.email}")
	@Email(message = "{Email.Account.email}")
	private String email;
	private String photo;
	@NotNull(message = "{NotNull.Account.phone}")
	@Min(value=10, message = "{Min.Account.phone}")
	private String phone;
	@NotNull(message="{NotNull.Account.gender}")
	private Boolean gender;
	private Boolean activated;
	private Boolean admin;
	@Column(columnDefinition = "nvarchar(50)")
	private String faculty;
	@JsonIgnore
	@OneToMany(mappedBy = "account")
	List<Oder> orders;
}
