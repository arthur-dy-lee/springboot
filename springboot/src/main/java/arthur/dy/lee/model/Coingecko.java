package arthur.dy.lee.model;

import lombok.Data;

import java.io.Serializable;

@Data
public class Coingecko implements Serializable {
    private String id;
    private String symbol;
    private String name;
}
