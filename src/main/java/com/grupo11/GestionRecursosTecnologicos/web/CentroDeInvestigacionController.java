package com.grupo11.GestionRecursosTecnologicos.web;

import com.grupo11.GestionRecursosTecnologicos.entities.CentroDeInvestigacion;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/centro-investigacion")
public class CentroDeInvestigacionController {
    @GetMapping("/all")
    public CentroDeInvestigacion findAll() {
        return new CentroDeInvestigacion("Centro de Investigaciones y Estudios sobre Cultura y Sociedad (C.I.E.C.S.) | Co.N.I.C.E.T. y U.N.C.");
    }
} 
