package fi.softala.votingEngine.dao.opiskelija;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;




import javax.inject.Inject;




import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;




import org.springframework.stereotype.Repository;

import fi.softala.votingEngine.bean.Opiskelija;
import fi.softala.votingEngine.dao.EiLoydyPoikkeus;
import fi.softala.votingEngine.util.Kryptaaja;
@Repository
public class OpiskelijaSpringImpl implements OpiskelijaDao{
	
	
	
	
	
	
	
	@Inject
	private JdbcTemplate jdbcTemplate;

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	
	
	
	
	
	public void talletaOpiskelija(Opiskelija o){
		
		
		
		
		
		
		final String sql = "insert into opiskelija(etunimi, sukunimi, opiskelijanumero, email, ryhmaId, valtuusId, enabled, opiskelijanumeroKryptattuna) values(?,?,?,?,?,?,?,?)";

		// anonyymi sis�luokka tarvitsee vakioina v�litett�v�t arvot,
		// jotta roskien keruu onnistuu t�m�n metodin suorituksen p��ttyess�.
		Kryptaaja kryptaaja=new Kryptaaja();
		final String etunimi = o.getEtunimi();
		final String sukunimi = o.getSukunimi();
		final String opiskelijanumero=o.getOpiskelijanumero();
		final String email=o.getEmail();
		final int ryhmaId=1;
		final int valtuusId=1;
		final String kryptaus=kryptaaja.opiskelijanumeroKryptattuna(opiskelijanumero);

		// jdbc pist�� generoidun id:n t�nne talteen
		KeyHolder idHolder = new GeneratedKeyHolder();

		// suoritetaan p�ivitys itse m��ritellyll� PreparedStatementCreatorilla
		// ja KeyHolderilla
		jdbcTemplate.update(new PreparedStatementCreator() {
			public PreparedStatement createPreparedStatement(
					Connection connection) throws SQLException {
				PreparedStatement ps = connection.prepareStatement(sql,
						new String[] { "id" });
				ps.setString(1, etunimi);
				ps.setString(2, sukunimi);
				ps.setString(3, opiskelijanumero);
				ps.setString(4, email);
				ps.setInt(5, ryhmaId);
				ps.setInt(6, valtuusId);
				ps.setInt(7, 1);
				ps.setString(8, kryptaus);
				return ps;
			}
		}, idHolder);

		// tallennetaan id takaisin beaniin, koska
		// kutsujalla pit�isi olla viittaus samaiseen olioon
		o.setId(idHolder.getKey().intValue());	
		
		
		
		
		
	}
	
	
	
	
	
	
	
	

}