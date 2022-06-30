package model;

public class User {
    private int id;
    private String name;
    private String email;
    private int countryId;

    public User() {
    }

    public User(String name, String email, int countryId) {
        this.name = name;
        this.email = email;
        this.countryId = countryId;
    }

    public User(int id, String name, String email, int countryId) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.countryId = countryId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getCountryId() {
        return countryId;
    }

    public void setCountryId(int countryId) {
        this.countryId = countryId;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", country=" + countryId +
                '}';
    }
}
