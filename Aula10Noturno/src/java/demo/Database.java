/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package demo;

import java.util.ArrayList;

/**
 *
 * @author Fatec
 */
public class Database {
    public static ArrayList<Contato> getContatos(){
        ArrayList<Contato> list = new ArrayList<>();
        list.add(new Contato("Fulano", "99100-0001", new Data(1, 1, 2000)));
        list.add(new Contato("Fulana", "99888-4401", new Data(3, 3, 2020)));
        list.add(new Contato("Fulane", "99444-2001", new Data(2, 2, 2010)));

        return list;
    }
}
