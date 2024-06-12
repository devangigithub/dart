
import 'dart:io';

class Customers
{
  int cust_id;
  String cust_name;
  String cust_contact;

  List<Map<String,dynamic>>cart = [];

  Customers({ required this.cust_id,required this.cust_name,required this.cust_contact});

void tocart(Product product, int quantity)
{
 
 cart.add(
  {
         "pro_id": product.pro_id,
        "pro_name": product.pro_name,
        "pro_qty": quantity,
        "pro_price": product.pro_price * quantity
  }
 );

}

double calculateTotal() 
  {
    return cart.fold(0, (sum, item) => sum + item['pro_price']);
  }

  double discount() 
  {
    double total = calculateTotal();
    double discount = 0;

    if (total > 500 && total <= 1500) 
    {
      discount = total * 0.10;
    } 
    
    else if (total > 1500 && total <= 3500) 
    {
      discount = total * 0.20;
    } 
    
    else if (total > 3500 && total <= 6500) 
    {
      discount = total * 0.25;
    } 
    
    else if (total > 6500) 
    {
      discount = total * 0.30;
    }

    return total - discount;
  }

  double calculateDiscount() 
  {
    double total = calculateTotal();

    if (total > 500 && total <= 1500) 
    {
      return total * 0.10;
    } 
    
    else if (total > 1500 && total <= 3500) 
    {
      return total * 0.20;
    } 
    
    else if (total > 3500 && total <= 6500) 
    {
      return total * 0.25;
    } 
    
    else if (total > 6500) 
    {
      return total * 0.30;
    }
    return 0;
  }
    
void customersetdata()
{
  print("Customers id${this.cust_id}");
  print("Customers name${this.cust_name}");
  print("Customers contact${this.cust_contact}");
}
}

class Product
{

  int  pro_id;
  String pro_name;
  double  pro_price;

  Product({required this.pro_id,required this.pro_name,required this.pro_price});

}



void main()
{
  List<Customers> customers = [];
  List<Product> products = 
  [
    Product(pro_id: 1,  pro_name: "Apple", pro_price :100.0),
    Product(pro_id: 2,  pro_name: "Mop",   pro_price:500.0),
    Product(pro_id: 3,  pro_name: "Bedsheet",pro_price: 2500.0),
    Product(pro_id: 4,  pro_name:  "Dish", pro_price: 600.0),
    Product(pro_id: 5,  pro_name: "Bread", pro_price: 250.0)
  ];
  
   while (true) 
  {
    print("1. Add Customer...");
    print("2. Add Product to Cart...");
    print("3. Generate Bill...");
    print("4. Search Customer...");
    print("0. Exit...");

    String choice = stdin.readLineSync()!;

    switch (choice) 
    {
      case '1':
        print("Enter Customer ID:");
        int id = int.parse(stdin.readLineSync()!);
        print("Enter Customer Name:");
        String name = stdin.readLineSync()!;
        print("Enter Customer Contact:");
        String contact = stdin.readLineSync()!;
        customers.add(Customers(cust_id:id,cust_name: name, cust_contact: contact));
        break;

      case '2':
        print("Enter Customer ID:");
        int custo_Id = int.parse(stdin.readLineSync()!);
        Customers? customer = customer_detail(customers, custo_Id);

        if (customer == null) 
        {
          print("Customer not found.");
        }
         else 
        {
          print("Available Products:");

          for (int i = 0; i < products.length; i++) 
          {
            print('${products[i].pro_id}  ${products[i].pro_name}  ${products[i].pro_price}');
          }

          print("Enter Product ID:");
          int prod_Id = int.parse(stdin.readLineSync()!);
          print("Enter Quantity:");
          int qty = int.parse(stdin.readLineSync()!);
          Product? product = findProductById(products, prod_Id);
          
         
          if (product == null)
          {
            print('"Product not found.');
          } 
          else 
          {
            customer.tocart(product, qty);
          }
        }
        break;

      case '3':
        print("Enter Customer ID:");
        int custo_Id = int.parse(stdin.readLineSync()!);
        Customers? customer = customer_detail(customers, custo_Id);
        
        if (customer == null) 
        {
          print("Customer not found.");
        } 
        else 
        {
          print('Customer: ${customer.cust_name}');
          print('Contact: ${customer.cust_contact}');
          print('Cart:');
          
          for (int i = 0; i < customer.cart.length; i++) {
            var item = customer.cart[i];
            print('${item['pro_name']} : ${item['pro_qty']} x ${item['pro_price'] / item['pro_qty']} = ${item['pro_price']}');
          }
          double total = customer.calculateTotal();
          double discount = customer.calculateDiscount();
          double discountedTotal = customer.discount();
          print('Total: ${total}');
          print('Discount: ${discount}');
          print('Amount to Pay: ${discountedTotal}');
        }
        break;

      case '4':
        print('Enter Customer ID:');
        int custo_Id = int.parse(stdin.readLineSync()!);
        Customers? customer = customer_detail(customers, custo_Id);

        if (customer == null) 
        {
          print("Customer not found.");
        }
        
         else 
        {
          print('Customer ID: ${customer.cust_id}');
          print('Customer Name: ${customer.cust_name}');
          print('Customer Contact: ${customer.cust_contact}');
          print('Cart:');
          
          for (int i = 0; i < customer.cart.length; i++) {
            var item = customer.cart[i];
            print('${item['pro_name']} - ${item['pro_qty']} x ${item['pro_price'] / item['pro_qty']} = ${item['pro_price']}');
          }
          double total = customer.calculateTotal();
          double discount = customer.calculateDiscount();
          double discountedTotal = customer.discount();
          print('Total: ${total}');
          print('Discount: ${discount}');
          print('Amount to Pay: ${discountedTotal}');
        }
        break;

      case '0':
        return ;
      default:
        print('Invalid choice. Please try again.');
    }
  }
}

Customers? customer_detail(List<Customers> customers, int custo_Id) 
{
  
  for(int i=0;i<customers.length;i++)
  {
    if (customers[i].cust_id == custo_Id) {
    {
      return customers[i];
    }
  }
  return null;
}
}

Product? findProductById(List<Product> products, int prod_Id ) 
{
  
  for (int i = 0; i < products.length; i++) 
  {
    if (products[i].pro_id == prod_Id) 
    
    {
      return products[i];
    }
  }
return null;
 }
 
  


