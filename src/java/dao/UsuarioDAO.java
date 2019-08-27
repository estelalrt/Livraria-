
package dao;

import modelo.Usuario;


public class UsuarioDAO extends GenericDAO<Usuario, Long> {
    
     public UsuarioDAO(){
        super(Usuario.class);
    }
    
}
