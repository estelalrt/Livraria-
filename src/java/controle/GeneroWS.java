
package controle;

import dao.GeneroDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Genero;


@WebServlet(name = "GeneroWS", urlPatterns = {"/admin/genero/GeneroWS"})
public class GeneroWS extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String acao = request.getParameter("txtAcao");
        RequestDispatcher destino;
        String pagina;
        
        switch(String.valueOf(acao)){
            case "add":
                pagina = "add.jsp";
                break;
            case "edit":
                pagina = "edit.jsp";
                break;
            case "del":
                pagina = "list.jsp";
                break;
            default:
                String filtro = request.getParameter("filtro");
                if(filtro==null){
                    
                }else{
                    
                }
                pagina = "list.jsp";
        }
            destino = request.getRequestDispatcher(pagina);
            destino.forward(request, response);
    }        

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Genero obj;
        GeneroDAO dao = new GeneroDAO();
        Boolean deucerto;
        String msg;
        String pagina;
        RequestDispatcher destino;
        List<Genero> generos;
        
        String id = request.getParameter("txtId");
        String nome = request.getParameter("txtGenero");
        
        if(id != null){
            obj = dao.buscarPorChavePrimaria(Long.parseLong(id));
        }else{
            obj = new Genero();
        }
                
        obj.setNome(nome);        
         
        if(id != null){
            deucerto = dao.alterar(obj);
            pagina = "list.jsp";
            generos = dao.listar();
            request.setAttribute("lista", generos);
            if(deucerto){
                msg = "Gênero "+obj.getNome()+ " alterado com sucesso";
            }else{
                msg = "Problemas ao editar";
            }
        }else{
            deucerto = dao.incluir(obj);
            pagina = "add.jsp";
            if(deucerto){
                msg = "Gênero "+obj.getNome()+ " adicionado com sucesso";

            }else{
                msg = "Problemas ao adicionar";
            }
        }                   
        
        request.setAttribute("msg", msg);
        destino = request.getRequestDispatcher(pagina);
        destino.forward(request, response);
    }
}

