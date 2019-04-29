/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mypackage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author genuine
 */
public class dbquery {
    Statement st,st1,st2,st3,st4;
    ResultSet rs;
    public dbquery()
    {
        try {
            dbcon db=new dbcon();
            Connection conn=db.getc();
            st=conn.createStatement();
            st1=conn.createStatement();
            st2=conn.createStatement();
            st3=conn.createStatement();
            st4=conn.createStatement();
        } catch (Exception e) {
            System.err.println(e.toString());
        }
    }
    
public ResultSet login(String username, String password)
{
  
    try {
        String str="select * from login where username='"+username+"' and password='"+password+"'";
     rs=st.executeQuery(str);
    } catch (Exception e) {
        System.err.println(e.toString());
    }
    return rs;
}
public int adcommando_add(String name, String place,String post,String pin,String district,String state,String dob, String gender,String image,String password ,String email)
{
int i=0;
String lid="";
    try {
        st.executeUpdate("insert into login values(null,'"+email+"','"+password+"','commando')");
        rs=st.executeQuery("select max(login_id)from login");
        if(rs.next())
        {
            lid=rs.getString(1);
        }
        String str="insert into commando values(null,'"+name+"','"+place+"','"+post+"','"+pin+"','"+district+"','"+state+"','"+gender+"','"+image+"','"+lid+"','"+dob+"','"+email+"')";
        i=st1.executeUpdate(str);
        sendmail sm=new sendmail();
        sm.send(email, "Your Password is " +password, "Your Password");
    } catch (Exception e) {
        System.err.println(e.toString());
    }
return i;
}

public int delete(String id)
{
    int i=0;
    try {
      
        i=st.executeUpdate("delete from commando where Cid='"+id+"'");
    } catch (Exception e) {
    }
    return i;
}
public ResultSet cmdo_view()
{
    try {
        String str="select * from commando";
        rs=st.executeQuery(str);
    } catch (Exception e) {
    }
    return rs;
}
public ResultSet commando_view()
{
    try {
        String str="select commando.* from commando,team where commando.clogin_id not in (select Clogin_id from team)and commando.clogin_id not in(select Clogin_id from teammembers) group by commando.clogin_id ";
        rs=st.executeQuery(str);
    } catch (Exception e) {
    }
    return rs;
}
public int update(String id,String name, String place,String post,String pin,String district,String state,String gender,  String image, String dob)
{
int i=0;
    try {
        i=st.executeUpdate("update commando set name='"+name+"', place='"+place+"',post='"+post+"',pin='"+pin+"',district='"+district+"',state='"+state+"',gender='"+gender+"',image='"+image+"',dob='"+dob+"' where clogin_id='"+id+"'");
    } catch (Exception e) {
    }
    return i;
}
public ResultSet updt_view( String id)
{
    try {
        
       String str="select commando.* from commando  where commando.clogin_id='"+id+"'";
       rs=st.executeQuery(str);
    } catch (Exception e) {
    }
    return rs;
}
public int adteam_add(String tname,String head)
{
    int i=0;
 
    try {
      
         String str="insert into team values(null,'"+tname+"','"+head+"')";
         
        i=st.executeUpdate(str);
        st4.executeUpdate("update login set type='military_officer' where login_id='"+head+"' and type='commando' ");
       
        
    } catch (Exception e) {
     
    }

return i;
}
public ResultSet team_view()
{
    try {
        String str="select * from team";
        rs=st.executeQuery(str);
    } catch (Exception e) {
    }
    return rs;
}
public ResultSet ad_team(String tid)
{
    try {
        String str="select teammembers.*,commando.* from teammembers,commando where teammembers.Clogin_id=commando.clogin_id and teammembers.Tid='"+tid+"'";
        rs=st.executeQuery(str);
    } catch (Exception e) {
    }
    return rs;
}
public int teamdel(String id)
{
    int i=0;
    try {
       
          i=st2.executeUpdate("delete from team where Tid='"+id+"'");
    } catch (Exception e) {
        System.err.println(e.toString());
    }
    return i;
}
public int add_member(String tid,String mid)
{
    int i=0;
    try {
       rs=st.executeQuery("select * from teammembers where Clogin_id='"+mid+"'");
       if(!rs.next())
       {
          i=st2.executeUpdate("insert into teammembers(Tid,Clogin_id)values('"+tid+"','"+mid+"')");
       }else{
           i=0;
       }
    } catch (Exception e) {
        System.err.println(e.toString());
    }
    return i;
}
public ResultSet members_view()
{
    try {
         String str="select * from teammembers";
    rs=st.executeQuery(str);
    } catch (Exception e) {
    }
   return rs;
}
public int notification_add(String notification)
{
    int i=0;
    try {
        String str="insert into notification values(null,'"+notification+"',curdate(),curtime())";
        i=st.executeUpdate(str);
    } catch (Exception e) {
    }
    return i;
}
public ResultSet notification_view()
{
    try {
        String str="select * from notification";
        rs=st.executeQuery(str);
    } catch (Exception e) {
    }
    return rs;
}
public int notification(String id)
{
    int i=0;
    try {
          i=st3.executeUpdate("delete from notification where id='"+id+"'");
    
       
    } catch (Exception e) {
         System.err.println(e.toString());
    }
    return i;
}

public int complaint_add(String complaint,String login_id)
{
    int i=0;
    try {
        String str="insert into complaint(compliaint,login_id,complaint_date)values('"+complaint+"','"+login_id+"',curdate())";
        i=st.executeUpdate(str);
        i=1;
    } catch (Exception e) {
        System.err.println(e.toString());
    }
    return i;
}
public ResultSet cmplt_view()
{
    try {
        String str="select complaint.*,commando.* from complaint, commando where commando.clogin_id=complaint.login_id";
    rs=st.executeQuery(str);
    } catch (Exception e) {
        
    }return rs;
}

public ResultSet complaint_view( String lid)
{
    try {
        String str="select team.*,teammembers.*, complaint.*,commando.* from team,teammembers,complaint,commando where commando.clogin_id=complaint.login_id and complaint.login_id=teammembers.Clogin_id and teammembers.Tid=team.Tid and team.Clogin_id='"+lid+"'";
        rs=st.executeQuery(str);
    } catch (Exception e) {
    }
    return rs;
}
public int reply_add(String reply,String cid)
{
    int i=0;
    try {
        String str="update complaint set reply='"+reply+"',reply_date=curdate() where Com_id='"+cid+"'";
    i=st.executeUpdate(str);
    
    } catch (Exception e) {
    }
    return i;
}
public ResultSet cmplnt_view(String cid)
{
 
    try {
       
       String str="select * from complaint where login_id='"+cid+"'";
  rs=st.executeQuery(str);
  } catch (Exception e) {
    }
    return rs;
}
public ResultSet cmndo_view(String cid)
{
    try {
        String str="select * from commando where clogin_id='"+cid+"'";
        rs=st.executeQuery(str);
    } catch (Exception e) {
    }
    return rs;
}
public ResultSet meme_view(String cid)
{
    try {
        String str="select team.*,teammembers.*,commando.* from team, teammembers, commando where team.Tid=teammembers.Tid and teammembers.Clogin_id=commando.clogin_id and team.Clogin_id='"+cid+"'";
   rs=st.executeQuery(str);
    } catch (Exception e) {
    }
    return rs;
}
public ResultSet teammem_view(String cid)
{
    try {
        String str="SELECT team.`tname`,commando.name FROM commando,team WHERE commando.clogin_id=`team`.Clogin_id AND `team`.`Tid` IN(SELECT `team`.`Tid` FROM `team`,`teammembers` WHERE `teammembers`.`Clogin_id`='"+cid+"' AND `teammembers`.`Tid`=`team`.`Tid`)";
        rs=st.executeQuery(str);
    } catch (Exception e) {
    }
    return rs;
}
public ResultSet mem_view(String tid)
{
    try {
        String str="select teammembers.*,commando.* from commando,teammembers where commando.clogin_id=teammembers.Clogin_id and teammembers.Tid='"+tid+"'";
        str="SELECT team.`tname`,commando.*,`teammembers`.`Clogin_id` FROM commando,team,teammembers WHERE commando.clogin_id=`teammembers`.Clogin_id AND team.Tid=teammembers.Tid AND `team`.`Tid` IN(SELECT `team`.`Tid` FROM `team`,`teammembers` WHERE `teammembers`.`Clogin_id`='"+tid+"' AND `teammembers`.`Tid`=`team`.`Tid`)";
        rs=st.executeQuery(str);
    } catch (Exception e) {
    }
    return rs;
}
public ResultSet military_view(String tid)
{
    try {
        String str="select * from commando where clogin_id='"+tid+"'";
        rs=st.executeQuery(str);
    } catch (Exception e) {
    }
    return rs;
}
public int forgot_view(String email)
{
   int i=0;
    try {
        String str="select * from login where username='"+email+"'";
        rs=st.executeQuery(str);
        
        if(rs.next())
        {
            String password=rs.getString(3);
            sendmail sm=new sendmail();
            sm.send(email, "Your Password is " +password, "Your Password");
            i=1;
        }
    } catch (Exception e) {
        System.err.println(e.toString());
    }
    return  i;
}

public int AddChat(String lid,String toid,String msg) 
 {
     int i=0;
    try
    {
        i=st.executeUpdate("INSERT INTO `chat`(`senderid`,`rid`,`msg`,`date`,`time`,`status`)VALUES('"+lid+"','"+toid+"','"+msg+"',CURDATE(),CURTIME(),'unseen')");
        
    }
    catch(Exception ex)
    {
        System.out.println(ex.toString());   
    }
    return i;
 }
public ResultSet view_chat(String lid,String toid)
 {
    try
    {
        rs=st.executeQuery("SELECT `chat`.* FROM `chat` WHERE ((`senderid`='"+lid+"' AND `rid`='"+toid+"') OR (`senderid`='"+toid+"' AND `rid`='"+lid+"'))");
        
    }
    catch(Exception ex)
    {
        
    }
    return rs;
 }
public ResultSet view_officers(String lid)
{
    try {
        String str="SELECT * FROM `commando`,`login` WHERE `commando`.`clogin_id`=`login`.`login_id` AND `login`.`type`='military_officer' and `login`.`login_id`!='"+lid+"'  ORDER BY `name`";
   rs=st.executeQuery(str);
    } catch (Exception e) {
    }
    return rs;
}

public ResultSet maxSid()
{
    try {
        String str="SELECT MAX(`msg_id`) FROM `secretmsg`";
        rs=st.executeQuery(str);
    } catch (Exception e) {
    }
    return rs;
}
public ResultSet chatnoti(String lid)
{
    try {
        String str="select distinct name,clogin_id from chat,commando where chat.senderid=commando.clogin_id and chat.rid='"+lid+"' and chat.status='unseen'";
        rs=st.executeQuery(str);
    } catch (Exception e) {
    }
    return rs;
}

public int AddImage(String lid,String toid,String image) 
 {
     int i=0;
    try
    {
        i=st.executeUpdate("INSERT INTO `secretmsg` VALUES(NULL,'"+lid+"','"+image+"',CURDATE(),CURTIME(),'"+toid+"')");
        
    }
    catch(Exception ex)
    {
        System.out.println(ex.toString());
    }
    return i;
 }
public int updatechat(String rid,String sid) 
 {
     int i=0;
    try
    {
        i=st.executeUpdate("update chat set status='seen' where senderid='"+sid+"' and rid='"+rid+"'");
        
    }
    catch(Exception ex)
    {
        System.out.println(ex.toString());
    }
    return i;
 }
public ResultSet ViewImage(String lid)
{
    try
    {
        String str="select commando.name, secretmsg.sender_id,secretmsg.stegnoimage,secretmsg.time,secretmsg.date,email from commando, secretmsg where secretmsg.sender_id=commando.clogin_id and secretmsg.rid='"+lid+"'";
        rs=st.executeQuery(str);
    
    }catch(Exception e){}
return rs;
}
}