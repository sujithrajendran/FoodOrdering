package FoodOrder.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import FoodOrder.Bean.Food;
import FoodOrder.Util.DBconnection;


public class DAOFood {
	Connection con=DBconnection.getDBConnection();
	public String order(Food f) {
		String result="Fail";
		if(con!=null)
		{
		try
		{
			PreparedStatement pst=con.prepareStatement("insert into Food(Idly,Dosai,Parotta,MasalDosai,OnionDosai,EggFriedRice,EggNoodles,ChickenFriedRice,ChickenNoodles,Chappathi,ChcikenBriyani,EggBriyani,MuttonBriyani,ChilliChicken) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?) ");
			pst.setString(1,f.getIdly());
			pst.setString(2,f.getDosai());
			pst.setString(3,f.getParotta());
			pst.setString(4,f.getMasalDosai());
			pst.setString(5,f.getOnionDosai());
			pst.setString(6,f.getEggFriedRice());
			pst.setString(7,f.getEggNoodles());
			pst.setString(8,f.getChickenFriedRice());
			pst.setString(9,f.getChickenNoodles());
			pst.setString(10,f.getChappathi());
			pst.setString(11,f.getChcikenBriyani());
			pst.setString(12,f.getEggBriyani());
			pst.setString(13,f.getMuttonBriyani());
			pst.setString(14,f.getChilliChicken());
			if(pst.executeUpdate()>0)
         {
         	result="done";
         }
		}
		catch (SQLException e) 
		{
			e.printStackTrace();
		} 
		
		}
		return result;
	}
}
