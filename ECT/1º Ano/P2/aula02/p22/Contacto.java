public class Contacto {
  private String nome;
  private String telefone;
  private String email;

  public Contacto(String n, String tele) {
    nome = n;
    telefone = tele;
    email = null;
  }

  public Contacto(String n, String tele, String mail) {
    nome = n;
    telefone = tele;
    email = mail;
  }

  public String nome()
  { 
	  return nome; 
  }
  public String telefone()
  { 
	  return telefone;
  }
  public String email()
  { 
	  return email; 
  }
	  

}
