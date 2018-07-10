package org.fatec.ancora.controllers;

import org.fatec.ancora.models.Produtos;
import org.fatec.ancora.models.ProdutosRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class MainController {

    @Autowired
    ProdutosRepo prodRepo;
    
    

    @RequestMapping("/vendas")
    public ModelAndView vendas(){
        ModelAndView mv = new ModelAndView("vendas");
        return mv;
    }
    @RequestMapping("/login")
    public ModelAndView login(){
        ModelAndView mv = new ModelAndView("default");
        return mv;
    }
    
    
    
    @RequestMapping("/")
    public ModelAndView doHome(){
        ModelAndView mv = new ModelAndView("index");
        mv.addObject("lists",prodRepo.findAll());
        return mv;
    }
    @RequestMapping( value = "/save", method = RequestMethod.POST)
    public ModelAndView doSave(@RequestParam("id") String id, @RequestParam("produto") String produto, @RequestParam("quantidade") String quantidade,
    		@RequestParam("lote") String lote,@RequestParam("validade") String validade) throws Exception{
        ModelAndView mv = new ModelAndView("redirect:/");
        Produtos prod;
        if(!id.isEmpty()){
            prod =(Produtos)prodRepo.findOne(Integer.parseInt(id));
        } else {
            prod = new Produtos();
        }
        
        prod.setProduto(produto);
        prod.setQtde(quantidade);
        prod.setLote(lote);
        prod.setVlde(validade);
        prodRepo.save(prod);
        return mv;
    }

    @RequestMapping( value = "/view/{id}", method = RequestMethod.GET)
    public ModelAndView doView(@PathVariable("id") int id){
        ModelAndView mv = new ModelAndView("view");
        mv.addObject("lists",prodRepo.findOne(id));
        return mv;
    }

    @RequestMapping( value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView doDelete(@PathVariable("id") int id){
        ModelAndView mv = new ModelAndView("redirect:/");
        prodRepo.delete(id);
        return mv;
    }

    @RequestMapping( value = "/edit/{id}", method = RequestMethod.GET)
    public ModelAndView doEdit(@PathVariable("id") int id){
        ModelAndView mv = new ModelAndView("edit");
        mv.addObject("lists",prodRepo.findOne(id));
        return mv;
    }

}