package beans;
import java.util.List;
import model.bean.ProdutoBean;
import model.dao.ProdutoDAO;

public class ProdutoLista {
    public List<ProdutoBean> getProdutos() {
        ProdutoDAO dao = new ProdutoDAO();
        return dao.buscarTodos();
    
}}
