
package model;

/**
 *
 * @author User
 */
public class Users {
    int idUser;
    String nameBusiness;
    String documentType;
    int documentNumber;
    String direction;
    String phono;
    String email;

    public Users(int idUser, String nameBusiness, String documentType, int documentNumber, String direction, String phono, String email) {
        this.idUser = idUser;
        this.nameBusiness = nameBusiness;
        this.documentType = documentType;
        this.documentNumber = documentNumber;
        this.direction = direction;
        this.phono = phono;
        this.email = email;
    }

    public Users(int idUser, String nameBusiness, String documentType, int documentNumber, String direction, String phono) {
        this.idUser = idUser;
        this.nameBusiness = nameBusiness;
        this.documentType = documentType;
        this.documentNumber = documentNumber;
        this.direction = direction;
        this.phono = phono;
    }

    public Users(String nameBusiness, String documentType, int documentNumber, String direction, String phono, String email) {
        this.nameBusiness = nameBusiness;
        this.documentType = documentType;
        this.documentNumber = documentNumber;
        this.direction = direction;
        this.phono = phono;
        this.email = email;
    }

    
    

    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public String getNameBusiness() {
        return nameBusiness;
    }

    public void setNameBusiness(String nameBusiness) {
        this.nameBusiness = nameBusiness;
    }

    public String getDocumentType() {
        return documentType;
    }

    public void setDocumentType(String documentType) {
        this.documentType = documentType;
    }

    public int getDocumentNumber() {
        return documentNumber;
    }

    public void setDocumentNumber(int documentNumber) {
        this.documentNumber = documentNumber;
    }

    public String getDirection() {
        return direction;
    }

    public void setDirection(String direction) {
        this.direction = direction;
    }

    public String getPhono() {
        return phono;
    }

    public void setPhono(String phono) {
        this.phono = phono;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
}
