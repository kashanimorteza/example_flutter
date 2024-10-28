<style>
	.md0{margin-top: 150px;}
	.md1{margin-top: 75px;}
	.md2{margin-top: 50px;}
	.md3{margin-top: 25px;}
	.md4{margin-top: 5px;}
	.tbl1 td#header{background-color: D1ECCF}
	.tbl1 tr#header{background-color: D1ECCF}
	.red{color:#E74C3C;font-size: 16px;}
	.blue{color:#3498DB}
	.green{color:#28B463}
</style>

# [<span style="color:black;">Flutter Application</span>](Flutter.md)
[Diagram](Flutter-Diagram.md) |
[Basic](Flutter-Basic.md) |
[Structure](Flutter-Structure.md) |
[Script](Flutter-Script.md) |
[Application](Flutter-Application.md) |
[My Library](Flutter-MyLibrary.md)



<div class="md3"></div>
<a href="#1">1 : Input / Button / Mapping Lists to Widgets / Passing Callback Functions Around</a><br>
<a href="#2">2 : Question / Answer</a><br>
<a href="#3">3 : AppBar IconButton / Floating Action Button</a><br>
<a href="#4">4 : Add / List / appbar IconButton / Floating Action Button / Chart / ListTile</a> <br>




<div class="md1"></div>

#### 1

<span class="red">Input / Button / Mapping Lists to Widgets / Passing Callback Functions Around</span> 

	import 'package:flutter/material.dart';
	import 'package:flutter/cupertino.dart';
	import 'package:intl/intl.dart';

	void main() {
	runApp(MyApp());
	}

	class MyApp extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
		title: 'Application',
		home: MyHomePage(),
		);
	}
	}

	class MyHomePage extends StatefulWidget {
	@override
	_MyHomePageState createState() => _MyHomePageState();
	}

	class _MyHomePageState extends State<MyHomePage> {
	final List<Model> modelList = [
		Model(id: '1', title: 'MHU', amount: '200', date: DateTime.now()),
		Model(
			id: '2',
			title: 'AAu',
			amount: '400',
			date: DateTime.now().subtract(Duration(days: 1)))
	];

	void modelAddFunction(String title, String amount) {
		final model = Model(
			id: DateTime.now().toString(),
			title: title,
			amount: amount,
			date: DateTime.now());

		setState(() {
		modelList.add(model);
		});
	}

	@override
	Widget build(BuildContext context) {
		return Scaffold(
		body: SingleChildScrollView(
			child: Column(
			crossAxisAlignment: CrossAxisAlignment.stretch,
			children: [ModelAdd(modelAddFunction, false), ModelList(modelList)],
			),
		),
		);
	}
	}

	class ModelAdd extends StatefulWidget {
	final Function modelAddFunction;
	final bool buttonType;

	ModelAdd(this.modelAddFunction, this.buttonType);

	@override
	_ModelAddState createState() => _ModelAddState();
	}

	class _ModelAddState extends State<ModelAdd> {
	final titleController = TextEditingController();
	final amountController = TextEditingController();

	void submitData() {
		final String title = titleController.text;
		final String amount = amountController.text;

		if (title.isEmpty || amount.isEmpty) {
		return;
		}
		widget.modelAddFunction(title, amount);
	}

	@override
	Widget build(BuildContext context) {
		return Card(
		elevation: 5,
		child: Container(
			padding: EdgeInsets.all(10),
			child: Column(
			crossAxisAlignment: CrossAxisAlignment.end,
			children: [
				TextField(
				decoration: InputDecoration(labelText: 'Title'),
				controller: titleController,
				),
				TextField(
				decoration: InputDecoration(labelText: 'Amount'),
				controller: amountController,
				keyboardType: TextInputType.number,
				),
				TextButton(
				child: Text('Add Transaction'),
				onPressed: submitData,
				)
			],
			),
		),
		);
	}
	}

	class ModelList extends StatelessWidget {
	final List<Model> modelList;

	ModelList(this.modelList);

	@override
	Widget build(BuildContext context) {
		return Container(
			child: SingleChildScrollView(
				child: Column(
					children: modelList.map((model) {
		return Card(
			child: Row(
			children: [
				Container(
					margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
					padding: EdgeInsets.all(10),
					decoration: BoxDecoration(
					border: Border.all(color: Colors.purple, width: 2),
					),
					child: Text('\$${model.amount}')),
				Column(
				crossAxisAlignment: CrossAxisAlignment.start,
				children: [
					Text(model.title),
					Text(DateFormat('yyyy-MM-dd HH:mm:ss').format(model.date))
				],
				),
			],
			),
		);
		}).toList())));
	}
	}

	class Model {
	//Field
	String id;
	String title;
	String amount;
	DateTime date;

	//Constructor
	Model(
		{@required this.id,
		@required this.title,
		@required this.amount,
		@required this.date});
	}






<div class="md1"></div>

#### 2

	import 'package:flutter/material.dart';

	void main() 
	{
		runApp(MyApp());
	}

	class MyApp extends StatefulWidget 
	{
		@override
		State<StatefulWidget> createState() 
		{
			return _MyAppState();
		}
	}

	class _MyAppState extends State<MyApp> 
	{
		final _questions = const 
		[
			{'questionText': 'What\'s your favorite color?','answers': ['Black', 'Red', 'Green', 'White'],},
			{'questionText': 'What\'s your favorite animal?','answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],},
			{'questionText': 'Who\'s your favorite instructor?','answers': ['Max', 'Max', 'Max', 'Max'],},
		];

		var _questionIndex = 0;

		void _answerQuestion() 
		{
			setState(() { _questionIndex = _questionIndex + 1;});

			print(_questionIndex);

			if (_questionIndex < _questions.length) 
			{
				print('We have more questions!');
			} 
			else 
			{
				print('No more questions!');
			}
		}

		@override
		Widget build(BuildContext context) 
		{
			return MaterialApp(
			home: Scaffold(
				appBar: AppBar(title: Text('Splitting the App Into Widgets'),),
				body: _questionIndex < _questions.length
					? Quiz(answerQuestion: _answerQuestion, questionIndex: _questionIndex, questions: _questions,)
					: Result(),
			),
			);
		}
	}



	class Quiz extends StatelessWidget 
	{
		final List<Map<String, Object>> questions;
		final int questionIndex;
		final Function answerQuestion;

		Quiz({
			@required this.questions,
			@required this.answerQuestion,
			@required this.questionIndex,
		});

		@override
		Widget build(BuildContext context) 
		{
			return Column(
			children: [
				Question(questions[questionIndex]['questionText'],),
				...(questions[questionIndex]['answers'] as List<String>).map((answer) {
				return Answer(answerQuestion, answer);
				}).toList()
			],
			);
		}
	}


	class Answer extends StatelessWidget 
	{
		final Function selectHandler;
		final String answerText;

		Answer(this.selectHandler, this.answerText);

		@override
		Widget build(BuildContext context) 
		{
			return Container(
			width: double.infinity,
			child: ElevatedButton(child: Text(answerText),onPressed: selectHandler,),
			);
		}
	}


	class Question extends StatelessWidget 
	{
		final String questionText;

		Question(this.questionText);

		@override
		Widget build(BuildContext context) 
		{
			return Container(child: Text(questionText,),);
		}
	}



	class Result extends StatelessWidget 
	{
		@override
		Widget build(BuildContext context) 
		{
			return Center(child: Text('You did it!'),);
		}
	}




<div class="md1"></div>

#### 3

<span class="red">appbar IconButton / Floating Action Button</span> 

	import 'package:flutter/material.dart';
	import 'package:intl/intl.dart';
	import 'package:flutter/cupertino.dart';

	void main() 
	{
	runApp(MyApp());
	}

	class MyApp extends StatelessWidget 
	{ 
	@override
	Widget build(BuildContext context) 
	{
		return MaterialApp
		(
		title: 'flutter_01',
		home: MyHomePage(),
		);
	}
	}




	class MyHomePage extends StatefulWidget
	{
	@override
	_MyHomePageState createState() => _MyHomePageState();
	}

	class _MyHomePageState extends State<MyHomePage> 
	{
	//Field
	final List<Model>  modelList = 
	[
		Model(id: '1', title: 'MatherBoard', amount: '100', date: DateTime.now()),
		Model(id: '2', title: 'CPU', amount: '200', date: DateTime.now()),
	];

	//Method
	void modelAddFunction(String title, String amount)
	{
		final model = Model
		(
		id: DateTime.now().toString(),
		title: title,
		amount: amount,
		date: DateTime.now()
		);

		setState(()
		{
		modelList.add(model);
		});
	}

	void startAddNewModel(BuildContext ctx) 
	{
		showModalBottomSheet
		(
		context: ctx,
		builder: (_) 
		{
			return SingleChildScrollView
			(
			child: GestureDetector
				(
				onTap: () {},
				child: ModelAdd(modelAddFunction, true),
				behavior: HitTestBehavior.opaque,
				)
			);
		},
		);
	}


	@override
	Widget build(BuildContext context) 
	{
		return Scaffold
		(
		appBar: 
			AppBar        
			(
			title: Text('My First Application'),
			actions: 
			[
				IconButton
				(
				icon: Icon(Icons.add), 
				onPressed: () => startAddNewModel(context),
				)
			],
			),
		body: 
			SingleChildScrollView
			(
			child: 
				Column
				(
				crossAxisAlignment: CrossAxisAlignment.stretch,
				children: 
				[
					ModelAdd(modelAddFunction, false),  
					ModelList(modelList)   
				],
				),
			),
			
		floatingActionButton: 
			FloatingActionButton
			(
			child: Icon(Icons.add),
			onPressed: () => startAddNewModel(context),
			),
		floatingActionButtonLocation: 
		FloatingActionButtonLocation.centerFloat,
		);
	}
	}



	class ModelAdd extends StatefulWidget 
	{
	//Field
	final Function modelAddFunction;
	final bool buttonType;

	//Constructor
	ModelAdd(this.modelAddFunction, this.buttonType);

	@override
	_ModelAddState createState() => _ModelAddState();
	}

	class _ModelAddState extends State<ModelAdd> 
	{
	//Field
	final titleController=TextEditingController();
	final amountController=TextEditingController();

	void submitData()
	{
		final String title=titleController.text;
		final String amount=amountController.text;

		if(title.isEmpty || amount.isEmpty)
		{
		return;
		}
		widget.modelAddFunction(title, amount);

		if (widget.buttonType==true)
		{
		Navigator.of(context).pop();
		} 
	}

	@override
	Widget build(BuildContext context) 
	{
		return Card
		(
		elevation: 5,
		child: 
			Container
			(                
			padding: EdgeInsets.all(10) ,
			child: Column
			(
				crossAxisAlignment: CrossAxisAlignment.end,
				children: 
				[
				TextField
				(
					decoration: InputDecoration(labelText: 'Title'),
					controller: titleController,
				),
				TextField
				(  
					decoration: InputDecoration(labelText: 'Amount'),
					controller: amountController,
					keyboardType: TextInputType.number,
				),
				TextButton
				(
					child: Text('Add Transaction'), 
					onPressed: submitData,
				)
				],
			),
			),
		);
	}
	}



	class ModelList extends StatelessWidget 
	{
	final List<Model>  modelList;

	ModelList(this.modelList);

	@override
	Widget build(BuildContext context) 
	{
		return Container
		(
		height: 400,
		child: 
			ListView.builder
			(
			itemCount: modelList.length, 
			itemBuilder:  (ctx, index)
			{
				return Card
				(
				child: 
				Row
				(
					children: 
					[
					Container
					(
						margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
						padding: EdgeInsets.all(10),
						decoration: BoxDecoration(border: Border.all(color: Colors.purple, width: 2),),
						child: 
						Text
						(
							'\$${modelList[index].amount}',
							style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.purple)
						)
					),
					Column
					(
						crossAxisAlignment: CrossAxisAlignment.start,
						children: 
						[
						Text
						(
							modelList[index].title,
							style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black),
						),
						Text
						(
							DateFormat('yyyy-MM-dd HH:mm:ss').format(modelList[index].date),
							style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.grey),
						)
						],
					),
					],
				),
				);
			},  
			)
		);
	}
	}


	class Model
	{
	//Field
	String id;
	String title;
	String amount;
	DateTime date;

	//Constructor
	Model
	({
		@required this.id,
		@required this.title,
		@required this.amount,
		@required this.date
	});
	}





<div class="md1"></div>

#### 4

<span class="red">input / List / appbar IconButton / Floating Action Button / Chart / ListTile</span>

	import 'package:flutter/material.dart';
	import 'package:intl/intl.dart';
	import 'package:flutter/cupertino.dart';

	void main() 
	{
		runApp(MyApp());
	}

	class MyApp extends StatelessWidget 
	{
		@override
		Widget build(BuildContext context) 
		{
			return MaterialApp
			(
			title: 'flutter_01',
			home: MyHomePage(),
			);
		}
	}

	class MyHomePage extends StatefulWidget 
	{
		@override
		_MyHomePageState createState() => _MyHomePageState();
	}

	class _MyHomePageState extends State<MyHomePage> 
	{
		//Field
		final List<Model> modelList = 
		[
			Model(id: '1', title: 'AAA', amount: 100, date: DateTime.now()),
			Model(id: '2', title: 'BBB', amount: 200, date: DateTime.now().subtract(Duration(days: 1))),
			Model(id: '3', title: 'CCC', amount: 300, date: DateTime.now().subtract(Duration(days: 2))),
		];

		//Property
		List<Model> get recentModelList 
		{
			return modelList.where((model) 
			{
			return model.date.isAfter(DateTime.now().subtract(Duration(days: 7),));
			}).toList();
		}

		//Method
		void modelAddFunction(String title, double amount, DateTime date) 
		{
			final model = Model
			(
			id: date.toString(),
			title: title,
			amount: amount,
			date: date
			);

			setState(() 
			{
			modelList.add(model);
			});
		}

		void modelRemoveFunction(String id) 
		{

			setState(() 
			{
			modelList.removeWhere((element) {
				return element.id==id;
			});
			});
		}

		void startAddNewModel(BuildContext ctx) 
		{
			showModalBottomSheet
			(
			context: ctx,
			builder: (_) 
			{
				return SingleChildScrollView
				(
				child: GestureDetector
				(
					onTap: () {},
					child: ModelAdd(modelAddFunction, true),
					behavior: HitTestBehavior.opaque,
				)
				);
			},
			);
		}

		@override
		Widget build(BuildContext context) 
		{
			return Scaffold
			(
			appBar: AppBar
			(
				title: Text('My First Application'),
				actions: 
				[
				IconButton
				(
					icon: Icon(Icons.add),
					onPressed: () => startAddNewModel(context),
				)
				],
			),
			body: SingleChildScrollView
			(
				child: Column
				(
				crossAxisAlignment: CrossAxisAlignment.stretch,
				children: [Chart(recentModelList), ModelList(modelList, modelRemoveFunction)],
				),
			),
			floatingActionButton: FloatingActionButton
			(
				child: Icon(Icons.add),
				onPressed: () => startAddNewModel(context),
			),
			floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
			);
		}
	}

	class ModelAdd extends StatefulWidget 
	{
		//Field
		final Function modelAddFunction;
		final bool buttonType;

		//Constructor
		ModelAdd(this.modelAddFunction, this.buttonType);

		@override
		_ModelAddState createState() => _ModelAddState();
		}

		class _ModelAddState extends State<ModelAdd> 
		{
		//Field
		final titleController = TextEditingController();
		final amountController = TextEditingController();
		DateTime selectedDate;

		void submitData() 
		{
			final String title = titleController.text;
			final double amount = double.parse(amountController.text);

			if (title.isEmpty || amount <=0 || selectedDate == null) {return;}

			widget.modelAddFunction(title, amount, selectedDate);

			if (widget.buttonType == true) 
			{
			Navigator.of(context).pop();
			}
		}

		void datePicker() 
		{
			showDatePicker
			(
			context: context,
			initialDate: DateTime.now(),
			firstDate: DateTime(2019),
			lastDate: DateTime.now()
			).then((data) 
			{
			if (data == null) 
			{
				return;
			}
			setState(() 
			{
				selectedDate = data;
			});
			});
		}

		@override
		Widget build(BuildContext context) 
		{
			return Card
			(
			elevation: 5,
			child: Container
			(
				padding: EdgeInsets.all(10),
				child: Column
				(
				crossAxisAlignment: CrossAxisAlignment.end,
				children: 
				[
					TextField
					(
					decoration: InputDecoration(labelText: 'Title'),
					controller: titleController,
					),
					TextField
					(
					decoration: InputDecoration(labelText: 'Amount'),
					controller: amountController,
					keyboardType: TextInputType.number,
					),
					Column
					(
					crossAxisAlignment: CrossAxisAlignment.end, 
					children: 
					[
						Container
						(
						height: 70,
						child: Row
						(
							children: 
							[
							Text(selectedDate == null? 'No Date': DateFormat.yMd().format(selectedDate)),
							TextButton(child: Text('Choose Date'), onPressed: datePicker)
							],
						),
						)
					]
					),
					ElevatedButton(child: Text('Add'),onPressed: submitData,)
				],
				),
			),
			);
		}
	}

	class ModelList extends StatelessWidget 
	{
		final Function modelRemoveFunction;
		final List<Model> modelList;

		ModelList(this.modelList, this.modelRemoveFunction);

		@override
		Widget build(BuildContext context) 
		{
			return Container
			(
			height: 300,
			child: ListView.builder
			(
				itemCount: modelList.length,
				itemBuilder: (ctx, index) 
				{
				return Card
				(
					elevation: 5,
					margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
					child: ListTile
					(
					leading: CircleAvatar
					(
						radius: 30,
						child: Padding
						(
						padding: EdgeInsets.all(6),
						child: FittedBox
						(
							child: Text('\$${modelList[index].amount}')
						),
						)
					),
					title: Text(modelList[index].title),
					subtitle:Text(DateFormat.yMMMd().format(modelList[index].date)),
					trailing: IconButton
					(
						icon: Icon(Icons.delete),
						onPressed: () => modelRemoveFunction(modelList[index].id),
					),
					),
				);
				},
			)
			);
		}
	}

	class Chart extends StatelessWidget 
	{
	//Field
	final List<Model> recentModelList;
	double totalSpending = 0;

	//Constructor
	Chart(this.recentModelList) {
		this.totalSpending = groupModelValue.fold(0.0, (sum, item) {
		return sum + item['amount'];
		});
	}

	//Property
	List<Map<String, Object>> get groupModelValue {
		return List.generate(7, (index) {
		final weekDay = DateTime.now().subtract(
			Duration(days: index),
		);
		var totalSum = 0.0;
		for (var i = 0; i < recentModelList.length; i++) {
			if (recentModelList[i].date.day == weekDay.day &&
				recentModelList[i].date.month == weekDay.month &&
				recentModelList[i].date.year == weekDay.year) {
			totalSum += recentModelList[i].amount;
			}
		}
		return {'day': DateFormat.E().format(weekDay), 'amount': totalSum};
		});
	}

	//Method
	@override
	Widget build(BuildContext context) {
		return Card(
			elevation: 6,
			margin: EdgeInsets.all(20),
			child: Padding(
			padding: EdgeInsets.all(10),
			child: Row(
				mainAxisAlignment: MainAxisAlignment.spaceAround,
				children: groupModelValue.map((data) {
					return Flexible(
					fit: FlexFit.tight,
					child: ChartBar(
						data['day'],
						data['amount'],
						totalSpending == 0.0
							? 0.0
							: (data['amount'] as double) / totalSpending,
					),
					);
				}).toList()),
			));
	}
	}

	class ChartBar extends StatelessWidget {
	//Field
	final String day;
	final double amount;
	final double percent;

	//Constructor
	ChartBar(this.day, this.amount, this.percent);

	//Method
	@override
	Widget build(BuildContext context) {
		return Column(
		children: <Widget>[
			Container(
			height: 20,
			child: FittedBox(
				child: Text('\$${amount.toStringAsFixed(0)}'),
			),
			),
			SizedBox(
			height: 5,
			),
			Container(
			height: 100,
			width: 10,
			child: Stack(
				children: <Widget>[
				Container(
					decoration: BoxDecoration(
					border: Border.all(color: Colors.grey, width: 1.0),
					color: Color.fromRGBO(220, 220, 220, 1),
					borderRadius: BorderRadius.circular(10),
					),
				),
				FractionallySizedBox(
					heightFactor: percent,
					child: Container(
					decoration: BoxDecoration(
						color: Theme.of(context).primaryColor,
						borderRadius: BorderRadius.circular(10),
					),
					),
				),
				],
			),
			),
			SizedBox(
			height: 5,
			),
			Text(day),
		],
		);
	}
	}

	class Model 
	{
	//Field
	String id;
	String title;
	double amount;
	DateTime date;

	//Constructor
	Model
	(
		{
		@required this.id,
		@required this.title,
		@required this.amount,
		@required this.date
		}
	);
	}
