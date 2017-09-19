package br.com.tecdainfor.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Usuario {
	
	//Atributos da classe usuário
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int codigo;
	@NotEmpty(message = "Nome é obrigatória")
	@Size(max = 60, message = "O Nome não pode conter mais de 60 caracteres")
	private String nome;
	@NotEmpty(message = "Email é obrigatória")
	@Size(max = 60, message = "O Email não pode conter mais de 60 caracteres")
	private String email;
	@NotEmpty(message = "Senha é obrigatória")
	@Size(max = 60, message = "A Senha não pode conter mais de 60 caracteres")
	private String senha;
	@NotEmpty(message = "Telefone é obrigatória")
	@Size(max = 60, message = "O Telefone não pode conter mais de 60 caracteres")
	private String telefone;
	@NotEmpty(message = "Perfil é obrigatória")
	@Size(max = 60, message = "O Perfil não pode conter mais de 60 caracteres")
	private String perfil;
	
	//Gets e Sets da classe usuário.
	
	public int getCodigo() {
		return codigo;
	}
	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public String getTelefone() {
		return telefone;
	}
	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
	public String getPerfil() {
		return perfil;
	}
	public void setPerfil(String perfil) {
		this.perfil = perfil;
	}
		
}
