module com.isaac {
    requires javafx.controls;
    requires javafx.fxml;
    requires java.sql;
    requires transitive javafx.graphics;

    opens com.isaac to javafx.fxml;
    exports com.isaac;
}