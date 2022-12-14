package pl.coderslab;

public class User {
    private long id;
    private String userName;
    private String email;
    private String password;


    public User(){

    }

    public User(String userName, String email, String password){
        this.userName = userName;
        this.email = email;
        this.password = password;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String toString(){
        return ("User: " + id + " : nick: " + userName + ", mail: " + email + ", password: " + password + "\n");
    }

}
