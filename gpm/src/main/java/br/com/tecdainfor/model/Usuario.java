package br.com.tecdainfor.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Usuario {
	
	//Atributos da classe usu�rio
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int codigo;
	@NotEmpty(message = "Nome � obrigat�ria")
	@Size(max = 60, message = "O Nome n�o pode conter mais de 60 caracteres")
	private String nome;
	@NotEmpty(message = "Email � obrigat�ria")
	@Size(max = 60, message = "O Email n�o pode conter mais de 60 caracteres")
	private String email;
	@NotEmpty(message = "Senha � obrigat�ria")
	@Size(max = 60, message = "A Senha n�o pode conter mais de 60 caracteres")
	private String senha;
	@NotEmpty(message = "Telefone � obrigat�ria")
	@Size(max = 60, message = "O Telefone n�o pode conter mais de 60 caracteres")
	private String telefone;
	@NotEmpty(message = "Perfil � obrigat�ria")
	@Size(max = 60, message = "O Perfil n�o pode conter mais de 60 caracteres")
	private String perfil;
	
	//Gets e Sets da classe usu�rio.
	
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
