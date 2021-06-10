/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controlador;

import datos.producto;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author bryan
 */
public class controlador extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");
        producto p = new producto();
        logica.logica_producto pdao = new logica.logica_producto();
        switch (accion) {
            case "Guardar":
                ArrayList<String> lista = new ArrayList<>();
                try {
                    FileItemFactory file = new DiskFileItemFactory();
                    ServletFileUpload fileUpload = new ServletFileUpload(file);
                    List items = fileUpload.parseRequest(request);
                    for (int i = 0; i < items.size(); i++) {
                        FileItem fileItem = (FileItem) items.get(i);
                        if (!fileItem.isFormField()) {
                            /*D:\escritorio-nexus\Universidad\sistemas inteligentes\nuevo\proyecto_final\web\imagenes*/
                            // File f = new File("D:\\escritorio-nexus\\Universidad\\sistemas inteligentes\\nuevo\\proyecto_final\\web\\imagenes\\productos\\" + fileItem.getName());
                            //   File f = new File("D:\\escritorio-nexus\\Universidad\\diseño web\\proyecto_final\\web\\imagenes\\productos\\" + fileItem.getName());
                            File f = new File("C:\\Users\\magna\\OneDrive\\Escritorio\\sowad_final\\proyecto_final\\web\\imagenes\\productos\\" + fileItem.getName());
                            fileItem.write(f);
                            p.setProducto_imagen(f.getAbsolutePath());
                        } else {
                            lista.add(fileItem.getString());
                        }
                    }
                    p.setProducto_nombre(lista.get(0));
                    p.setProducto_precio(Float.parseFloat(lista.get(1)));
                    p.setProducto_caracteristica(lista.get(2));
                    p.setProducto_descripcion(lista.get(3));
                    p.setProducto_categoria(Integer.parseInt(lista.get(4)));
                    p.setProducto_peso(lista.get(5));
                    p.setProducto_tipo_peso(lista.get(6));
                    pdao.agregar(p);
                } catch (Exception e) {
                }
                //request.getRequestDispatcher("Controlador?accion=Listar").forward(request, response);
                response.sendRedirect("producto_trabajador/crud_producto.jsp");
                break;

            /*
            case "Listar":
                List<Producto> productos=pdao.listar();
                request.setAttribute("productos", productos);
                request.getRequestDispatcher("index.jsp").forward(request, response);
                break;*/
            default:
                throw new AssertionError();
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
