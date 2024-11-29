import 'package:flutter/material.dart';
import 'pizza.dart';
import 'httphelper.dart';

class PizzaDetailScreen extends StatefulWidget {
  final Pizza pizza;
  final bool isNew;
  const PizzaDetailScreen({
    super.key,
    required this.pizza,
    required this.isNew,
  });
  @override
  State<PizzaDetailScreen> createState() => _PizzaDetailScreenState();
}

class _PizzaDetailScreenState extends State<PizzaDetailScreen> {
  final TextEditingController txtId = TextEditingController();
  final TextEditingController txtPizzaName = TextEditingController();
  final TextEditingController txtDescription = TextEditingController();
  final TextEditingController txtPrice = TextEditingController();
  final TextEditingController txtImageUrl = TextEditingController();

  String operationResult = '';

  @override
  void dispose() {
    txtId.dispose();
    txtPizzaName.dispose();
    txtDescription.dispose();
    txtPrice.dispose();
    txtImageUrl.dispose();
    super.dispose();
  }

  @override
  void initState(){
    if(!widget.isNew){
      txtId.text = widget.pizza.id.toString();
      txtPizzaName.text = widget.pizza.pizzaName;
      txtDescription.text = widget.pizza.description;
      txtPrice.text = widget.pizza.price.toString();
      txtImageUrl.text = widget.pizza.imageUrl;
    }
    super.initState();
  }

  Future postPizza() async{
    HttpHelper helper = HttpHelper();
    Pizza pizza = Pizza(
      id: int.tryParse(txtId.text) ?? 0,
      pizzaName: txtPizzaName.text,
      description: txtDescription.text,
      price: double.parse(txtPrice.text),
      imageUrl: txtImageUrl.text,
    );
    String result = await helper.postPizza(pizza);
    setState(() {
      operationResult = result;
    });
  }

    Future savePizza() async {
    HttpHelper helper = HttpHelper();
    
    Map<String, dynamic> pizzaData = {
      'id': int.tryParse(txtId.text),
      'pizzaName': txtPizzaName.text,
      'description': txtDescription.text,
      'price': double.tryParse(txtPrice.text),
      'imageUrl': txtImageUrl.text,
    };
    Pizza pizza = Pizza.fromJson(pizzaData);

    final result = await (widget.isNew ? helper.postPizza(pizza):helper.putPizza(pizza));
    setState(() {
      operationResult = result;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pizza Detail Eddo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(children: [
            Text(
              operationResult,
              style: TextStyle(
                backgroundColor: Colors.green[200],
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 24),
            TextField(
              controller: txtId,
              decoration: const InputDecoration(
                labelText: 'ID',
                hintText: 'Insert ID'
              ),
            ),
            const SizedBox(height: 24),
            TextField(
              controller: txtPizzaName,
              decoration: const InputDecoration(
                labelText: 'Pizza Name',
                hintText: 'Insert Pizza Name'
              ),
            ),
            const SizedBox(height: 24),
            TextField(
              controller: txtDescription,
              decoration: const InputDecoration(
                labelText: 'Description',
                hintText: 'Insert Description'
              ),
            ),
            const SizedBox(height: 24),
            TextField(
              controller: txtPrice,
              decoration: const InputDecoration(
                labelText: 'Price',
                hintText: 'Insert Price'
              ),
            ),
            const SizedBox(height: 24),
            TextField(
              controller: txtImageUrl,
              decoration: const InputDecoration(
                labelText: 'Image URL',
                hintText: 'Insert Image URL'
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(child: const Text('Send Post'), onPressed: () => savePizza(),)
          ],),
        ),  
      )
    );
  }
}