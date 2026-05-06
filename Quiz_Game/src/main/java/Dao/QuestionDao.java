package Dao;

import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;



import model.Question;
public class QuestionDao {
    public Question getRandomQuestion(){
        Question q=null;
        try{
            Connection con= DBConnection.getConnection();
            String sql="select * from questions order by RAND()LIMIT 1";
            PreparedStatement ps=con.prepareStatement(sql);
            ResultSet rs=ps.executeQuery();

            if(rs.next()){
                q=new Question();
                q.setId(rs.getInt("id"));
                q.setQuestion(rs.getString("question"));
                q.setOptionA(rs.getString("optionA"));
                q.setOptionB(rs.getString("optionB"));
                q.setOptionC(rs.getString("optionC"));
                q.setOptionD(rs.getString("optionD"));
                q.setCorrectAnswer(rs.getString("correctAnswer"));
                q.setDifficulty(rs.getString("difficulty"));
                q.setCategory(rs.getString("category"));

            }
        }catch(Exception e){e.printStackTrace();}
        return q;
    }
    public List<Question> getQuestionsByCategory(String category) {

        List<Question> list = new ArrayList<>();

        try {
            Connection con = DBConnection.getConnection();

            String query = "SELECT * FROM questions WHERE LOWER(category) = LOWER(?)";
            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, category);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Question q = new Question();

                q.setId(rs.getInt("id"));
                q.setQuestion(rs.getString("question"));
                q.setOptionA(rs.getString("optionA"));
                q.setOptionB(rs.getString("optionB"));
                q.setOptionC(rs.getString("optionC"));
                q.setOptionD(rs.getString("optionD"));

                q.setCorrectAnswer(rs.getString("correctAnswer"));

                q.setCategory(rs.getString("category"));

                list.add(q);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
}
