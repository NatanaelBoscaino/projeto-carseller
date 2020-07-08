/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Modelo;



/**
 *
 * @author Wolley
 */
public class Locar {
    private int id;
    private String numero;
    private String fabricante;
    private String modelo;
    private String ano;
    private String cor;
    private String status;
    private String placa;
    
    



    // Métodos de acesso.

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }

    public String getFabricante() {
        return fabricante;
    }

    public void setFabricante(String fabricante) {
        this.fabricante = fabricante;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public String getAno() {
        return ano;
    }

    public void setAno(String ano) {
        this.ano = ano;
    }

    public String getCor() {
        return cor;
    }

    public void setCor(String cor) {
        this.cor = cor;
    }
    
    public String getStatus(){
        return status;
    }

    public void setStatus(String status){
        this.status = status;
    }
    public String getPlaca() {
        return placa;
    }

    public void setPlaca(String placa) {
        this.placa = placa;
    }
    

}
