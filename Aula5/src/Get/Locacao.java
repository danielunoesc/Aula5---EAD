package Get;

public class Locacao {
	
	private String Cod;
	private String dtLoc;
	private String dtEst;
	private String carros;
	private String pessoas;
	private String ValorLoc;
	
	public String getCod() {
		return Cod;
	}
	public void setCod(String cod) {
		Cod = cod;
	}
	public String getDtLoc() {
		return dtLoc;
	}
	public void setDtLoc(String dtLoc) {
		this.dtLoc = dtLoc;
	}
	public String getDtEst() {
		return dtEst;
	}
	public void setDtEst(String dtEst) {
		this.dtEst = dtEst;
	}
	public String getCarros() {
		return carros;
	}
	public void setCarros(String carros) {
		this.carros = carros;
	}
	public String getPessoas() {
		return pessoas;
	}
	public void setPessoas(String pessoas) {
		this.pessoas = pessoas;
	}
	public String getValorLoc() {
		return ValorLoc;
	}
	public void setValorLoc(String valorLoc) {
		ValorLoc = valorLoc;
	}
	
}
