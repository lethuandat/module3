package service.impl;

import model.Product;
import service.ProductService;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService {
    private static Map<Integer, Product> productList;

    static {
        productList = new HashMap<>();
        productList.put(1, new Product(1, "Wave RSX", 1000, "Màu đỏ đen, dung tích 125 cm3", "Honda"));
        productList.put(2, new Product(2, "Exciter 150", 2000, "Màu xanh xám, dung tích 150 cm3", "Yamaha"));
        productList.put(3, new Product(3, "SH 125", 3000, "Màu trắng, dung tích 150 cm3", "Honda"));
        productList.put(4, new Product(4, "Lead", 2100, "Màu mận, dung tích 125 cm3", "Honda"));
        productList.put(5, new Product(5, "Vision", 1700, "Màu xanh lá cây, dung tích 125 cm3", "Honda"));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(productList.values());
    }

    @Override
    public void save(Product product) {
        productList.put(product.getId(), product);
    }

    @Override
    public Product findById(int id) {
        return productList.get(id);
    }

    @Override
    public void update(int id, Product product) {
        productList.put(id, product);
    }

    @Override
    public void remove(int id) {
        productList.remove(id);
    }
}
