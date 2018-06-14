package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.bean.ProdutoBean;
import model.factory.ConnectionFactory;

public class ProdutoDAO {

    private Connection con;

    public ProdutoDAO() {
        this.con = new ConnectionFactory().getConnection();
    }

    public List<ProdutoBean> buscarTodos() throws SQLException {
        List<ProdutoBean> listProduto = new ArrayList<>();
        String sql = "select * from produto";
        try (PreparedStatement ps = con.prepareStatement(sql)) {
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                ProdutoBean produtoBean = new ProdutoBean(rs.getString("nome"), rs.getString("marca"), rs.getString("ano"), rs.getString("descricao"));
                listProduto.add(produtoBean);
            }
           
        } catch (SQLException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        con.close();
        return listProduto;
    }

    public void cadastrar(ProdutoBean produto) throws SQLException {
        String sql = "insert into produto(nome,marca,ano, descricao) values(?,?,?,?)";
        try (PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, produto.getNome());
            ps.setString(2, produto.getMarca());
            ps.setString(3, produto.getAno());
            ps.setString(4, produto.getDescricao());
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        con.close();
    }

    // VALIDAR LOGIN DO USUARIO
    public boolean autenticar(String nome, String senha) {
        String sql = "select * from usuario where nome=? and senha=?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, nome);
            ps.setString(2, senha);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return true;
            } else {
                return false;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
}
