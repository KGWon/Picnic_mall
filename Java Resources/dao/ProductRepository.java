package dao;

import java.util.ArrayList;

import dto.Product;

// 자바 빈즈로 사용할 상품 데이터 접근 클래스 만들기
// DAO(Data Access Object)란 실제로 DB에 접근하는 객체
public class ProductRepository {
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	private static ProductRepository instance = new ProductRepository();
	 
//	생성자를 이용하여 3개의 상품 초기값 설정(listOfProducts)
	public ProductRepository() {
		Product p1 = new Product("P2001", "피크닉 종합 세트", 30000); 
		
		Product p2 = new Product("P2002", "인스타 감성 전구", 20000); 
		
		Product p3 = new Product("P2003", "테이블 와인세트", 10000); 
		
		Product p4 = new Product("P2005", "대형 피크닉 매트", 5000);
		
		Product p5 = new Product("P2006", "라탄 피크닉바구니", 5000);
		
		listOfProducts.add(p1);
		listOfProducts.add(p2);
		listOfProducts.add(p3);
		listOfProducts.add(p4);
		listOfProducts.add(p5);
	}
	 
//	상품 목록을 가져오는 메소드
	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}
	
//	상품 상세 정보를 가져오는 메소드
	public Product getProductById(String productId) {
		Product productById = null;
		
		for(int i = 0; i < listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
//			listOfProducts에서 가져올 값이 있고, 상품 아이디가 있고, 상품 아이디 값이 물품 검색명과 같다면
//			그 상품의 정보를 리턴
			if(product != null && product.getProductId() != null && 
			product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}
	
//	신규 상품의 데이터를 불러오는 메소드
	public static ProductRepository getInstance() {
		return instance;
	}
	
//	신규 상품의 데이터를 리스트에 추가
	public void addProduct(Product product) {
		listOfProducts.add(product);
	}
}
