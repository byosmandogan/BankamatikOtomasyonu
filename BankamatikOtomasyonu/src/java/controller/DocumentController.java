/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSF/JSFManagedBean.java to edit this template
 */
package controller;

import dao.DocumentDAO;
import entity.Document;
import jakarta.inject.Named;
import jakarta.enterprise.context.SessionScoped;
import jakarta.servlet.http.Part;
import java.io.File;
import java.io.InputStream;
import java.io.Serializable;
import java.nio.file.Files;
import java.util.List;

/**
 *
 * @author byosmandogan
 */
@Named(value = "documentController")
@SessionScoped
public class DocumentController implements Serializable {

    /**
     * Creates a new instance of DocumentController
     */
    
    private Document document;
    private List<Document> documentList;
    private DocumentDAO documentDao;
    private Part doc;
    
    private final String uploadTo ="/Users/byosmandogan/upload";
    
    public DocumentController() {
    }
    
    public void upload(){
        try{
            InputStream input =doc.getInputStream();
            File f =new File(uploadTo+doc.getSubmittedFileName());
            Files.copy(input, f.toPath());
        }catch(Exception e){
            System.out.println(e.getMessage());
        }
    }

    public String getUploadTo() {
        return uploadTo;
    }
    
    public Document getDocument() {
        if(this.document==null){
            this.document=new Document();
        }
        return document;
    }

    public void setDocument(Document document) {
        this.document = document;
    }

    public List<Document> getDocumentList() {
        this.documentList=this.getDocumetDao().findAll();
        return documentList;
    }

    public void setDocumentList(List<Document> documentList) {
        this.documentList = documentList;
    }

    public DocumentDAO getDocumetDao() {
        if(this.documentDao==null){
            this.documentDao=new DocumentDAO();
        }
        return documentDao;
    }

    public void setDocumetDao(DocumentDAO documetDao) {
        this.documentDao = documetDao;
    }

    public DocumentDAO getDocumentDao() {
        return documentDao;
    }

    public void setDocumentDao(DocumentDAO documentDao) {
        this.documentDao = documentDao;
    }

    public Part getDoc() {
        return doc;
    }

    public void setDoc(Part doc) {
        this.doc = doc;
    }
    
}
