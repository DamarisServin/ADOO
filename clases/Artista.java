package clases;

public class Artista {
    private String nombre;
    private String genero;
    private String cdNacimiento;
    private String biografia;
    private boolean banda;
    private String nombreBanda;
    private String sitioWeb;

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getCdNacimiento() {
        return cdNacimiento;
    }

    public void setCdNacimiento(String cdNacimiento) {
        this.cdNacimiento = cdNacimiento;
    }

    public String getBiografia() {
        return biografia;
    }

    public void setBiografia(String biografia) {
        this.biografia = biografia;
    }

    public boolean isBanda() {
        return banda;
    }

    public void setBanda(boolean banda) {
        this.banda = banda;
    }

    public String getNombreBanda() {
        return nombreBanda;
    }

    public void setNombreBanda(String nombre) {
        this.nombreBanda = nombre;
    }

    public String getSitioWeb() {
        return sitioWeb;
    }

    public void setSitioWeb(String sitioWeb) {
        this.sitioWeb = sitioWeb;
    }
    
}
