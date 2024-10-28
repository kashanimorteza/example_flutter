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

# [<span style="color:black;">Flutter Script</span>](Flutter.md)
[Diagram](Flutter-Diagram.md) |
[Basic](Flutter-Basic.md) |
[Structure](Flutter-Structure.md) |
[Script](Flutter-Script.md) |
[Application](Flutter-Application.md) |
[My Library](Flutter-MyLibrary.md)

<div class="md3"></div>
<a href="#1">1   : Basic</a><br>
<a href="#2">2   : Basic</a><br>
<a href="#3">3   : Basic</a><br>
<a href="#4">4   : Button</a><br>
<a href="#5">5   : Input</a><br>
<a href="#6">6   : Mapping Lists to Widgets</a><br>
<a href="#7">7   : ListView</a><br>
<a href="#8">8   : ListTile</a><br>
<a href="#9">9   : AppBar IconButton / Floating Action Button</a><br>
<a href="#10">10 : Chart</a><br>
<a href="#11">11 : Date Picker</a><br>
<a href="#12">12 : Remove item from list</a><br>




<div class="md1"></div>

#### 1

<span class="red">Basic</span> 

	import 'package:flutter/material.dart';

	void main() 
	{
		runApp
		(
			Text
			(
				"Hello Flutter", 
				textDirection: TextDirection.ltr
			)
		);
	}



<div class="md1"></div>

#### 2

<span class="red">Basic</span> 

	import 'package:flutter/material.dart';

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
				home: Text('Hello Flutter')
			);
		}
	}


<div class="md1"></div>

#### 3

<span class="red">Basic</span> 

	import 'package:flutter/material.dart';

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
				home: Scaffold
				(
					appBar: AppBar(title: Text("Application")),
					body: Text('Hello Flutter'),
				)
			);
		}
	}


<div class="md1"></div>

#### 4

<span class="red">Button</span> 

	import 'package:flutter/material.dart';

	void main() 
	{
		runApp(MyApp());
	}

	class MyApp extends StatefulWidget 
	{
		@override
		_MyAppState createState() => _MyAppState();
	}

	class _MyAppState extends State<MyApp> 
	{
		var item = 0;

		void answer() 
		{
			setState(() {item = item + 1;});

			print(item.toString());
		}

		@override
		Widget build(BuildContext context) 
		{
			return MaterialApp
			(
				home: Scaffold
				(
					appBar: AppBar(title: Text("Application")),
					body: Column
					(
						children: 
						[
							Text(item.toString()),
							ElevatedButton(child: Text('Add'), onPressed: answer),
						],
					),
				)
			);
		}
	}






<div class="md1"></div>

#### 5

<span class="red">Input</span> 

	import 'package:flutter/material.dart';

	void main() 
	{
		runApp(MyApp());
	}

	class MyApp extends StatefulWidget 
	{
		@override
		_MyAppState createState() => _MyAppState();
	}

	class _MyAppState extends State<MyApp> 
	{
		final dataController=TextEditingController();

		var item='';

		void show() 
		{
			setState(() {item = dataController.text;});

			print(item);
		}

		@override
		Widget build(BuildContext context) 
		{
			return MaterialApp
			(
				home: Scaffold
				(
					appBar: AppBar(title: Text("Application")),
					body: Column
					(
						children: 
						[
							TextField
							(  
								decoration: InputDecoration(labelText: 'data'),
								controller: dataController,
							),                  
							ElevatedButton(child: Text('Show'), onPressed: show),
							Text(item),
						],
					),
				)
			);
		}
	}





<div class="md1"></div>

#### 6

<span class="red">Mapping Lists to Widgets </span> 

	import 'package:flutter/material.dart';
	import 'package:flutter/cupertino.dart';
	import 'package:intl/intl.dart';

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
			title: 'Mapping Lists to Widgets ',
			home: ModelList(),
		);
	}
	}

	class ModelList extends StatelessWidget 
	{
		final List<Model>  modelList = 
		[
			Model(id: '1', title: 'MHU', amount: '200', date: DateTime.now()),
			Model(id: '2', title: 'AAu', amount: '400', date: DateTime.now().subtract(Duration(days: 1))),
			Model(id: '3', title: 'BBU', amount: '600', date: DateTime.now().subtract(Duration(days: 2))),
			Model(id: '4', title: 'CCU', amount: '800', date: DateTime.now().subtract(Duration(days: 3))),
			Model(id: '5', title: 'DDU', amount: '1000', date: DateTime.now().subtract(Duration(days: 4))),
			Model(id: '6', title: 'EEU', amount: '1200', date: DateTime.now().subtract(Duration(days: 5))),
			Model(id: '7', title: 'FFU', amount: '1400', date: DateTime.now().subtract(Duration(days: 6))),
			Model(id: '8', title: 'GGU', amount: '1600', date: DateTime.now().subtract(Duration(days: 7))),
			Model(id: '9', title: 'HHU', amount: '1800', date: DateTime.now().subtract(Duration(days: 8))),
			Model(id: '10', title: 'HHU', amount: '1900', date: DateTime.now().subtract(Duration(days: 9))),
			Model(id: '11', title: 'HHU', amount: '2000', date: DateTime.now().subtract(Duration(days: 10))),
			Model(id: '12', title: 'HHU', amount: '2200', date: DateTime.now().subtract(Duration(days: 11))),
		];

	@override
	Widget build(BuildContext context) 
	{
		return Scaffold
		(
		appBar: AppBar(title: Text("Mapping Lists to Widgets ")),
		body: SingleChildScrollView
		(
			child: Column
			(
			crossAxisAlignment: CrossAxisAlignment.stretch,
			children: 
			[
				Container
				(     
				child: SingleChildScrollView
				(
					child: Column
					(
					children: modelList.map((model) 
					{
						return Card
						(
						child: Row
						(
							children: 
							[
							Container
							(
								margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
								padding: EdgeInsets.all(10),
								decoration: BoxDecoration(border: Border.all(color: Colors.purple, width: 2),),
								child: Text('\$${model.amount}')
							),
							Column
							(
								crossAxisAlignment: CrossAxisAlignment.start,
								children: 
								[
								Text(model.title),
								Text(DateFormat('yyyy-MM-dd HH:mm:ss').format(model.date))                            
								],                                               
							)
							],
						),
						);
					}).toList()
					)
				)
				)
			]
			),
		),
		);
	}
	}

	class Model
	{
	String id;
	String title;
	String amount;
	DateTime date;

	Model
	({
		@required this.id,
		@required this.title,
		@required this.amount,
		@required this.date
	});
	}





<div class="md1"></div>

#### 7

<span class="red">ListView</span>

<span class="blue">General</span> 

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
				title: 'ListView General',
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
			Model(id: '1', title: 'MHU', amount: '200', date: DateTime.now()),
			Model(id: '2', title: 'AAu', amount: '400', date: DateTime.now().subtract(Duration(days: 1))),
			Model(id: '3', title: 'BBU', amount: '600', date: DateTime.now().subtract(Duration(days: 2))),
			Model(id: '4', title: 'CCU', amount: '800', date: DateTime.now().subtract(Duration(days: 3))),
			Model(id: '5', title: 'DDU', amount: '1000', date: DateTime.now().subtract(Duration(days: 4))),
			Model(id: '6', title: 'EEU', amount: '1200', date: DateTime.now().subtract(Duration(days: 5))),
			Model(id: '7', title: 'FFU', amount: '1400', date: DateTime.now().subtract(Duration(days: 6))),
			Model(id: '8', title: 'GGU', amount: '1600', date: DateTime.now().subtract(Duration(days: 7))),
			Model(id: '9', title: 'HHU', amount: '1800', date: DateTime.now().subtract(Duration(days: 8))),
		];

		//Method
		@override
		Widget build(BuildContext context) 
		{
			return Card
			(
				child: SingleChildScrollView
				(
					child: Column
					(
						crossAxisAlignment: CrossAxisAlignment.stretch,
						children: 
						[
							ModelList(modelList)
						],
					)
				)
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
		child: ListView
		(
			children: modelList.map((model)        
			{
			return Card
			(
				child: Row
				(
				children: 
				[
					Container
					(
					margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
					padding: EdgeInsets.all(10),
					decoration: BoxDecoration(border: Border.all(color: Colors.purple, width: 2),),
					child: Text('\$${model.amount}')                       
					),
					Column
					(
					crossAxisAlignment: CrossAxisAlignment.start,
					children: 
					[
						Text(model.title),
						Text(DateFormat('yyyy-MM-dd HH:mm:ss').format(model.date))
					],
					),
				],
				)
			);
			}
			).toList()
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

#### <span class="blue">Builder</span> 

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
				title: 'ListView',
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
			Model(id: '1', title: 'MHU', amount: '200', date: DateTime.now()),
			Model(id: '2', title: 'AAu', amount: '400', date: DateTime.now().subtract(Duration(days: 1))),
			Model(id: '3', title: 'BBU', amount: '600', date: DateTime.now().subtract(Duration(days: 2))),
			Model(id: '4', title: 'CCU', amount: '800', date: DateTime.now().subtract(Duration(days: 3))),
			Model(id: '5', title: 'DDU', amount: '1000', date: DateTime.now().subtract(Duration(days: 4))),
			Model(id: '6', title: 'EEU', amount: '1200', date: DateTime.now().subtract(Duration(days: 5))),
			Model(id: '7', title: 'FFU', amount: '1400', date: DateTime.now().subtract(Duration(days: 6))),
			Model(id: '8', title: 'GGU', amount: '1600', date: DateTime.now().subtract(Duration(days: 7))),
			Model(id: '9', title: 'HHU', amount: '1800', date: DateTime.now().subtract(Duration(days: 8))),
		];

		//Method
		@override
		Widget build(BuildContext context) 
		{
			return Card
			(
				child: SingleChildScrollView
				(
					child: Column
					(
						crossAxisAlignment: CrossAxisAlignment.stretch,
						children: 
						[
							ModelList(modelList)
						],
					)
				)
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
		child: ListView.builder
		(
			itemCount: modelList.length, 
			itemBuilder:  (ctx, index)
			{
			return Card
			(
				child: Row
				(
				children: 
				[
					Container
					(
					margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
					padding: EdgeInsets.all(10),
					decoration: BoxDecoration(border: Border.all(color: Colors.purple, width: 2),),
					child: Text('\$${modelList[index].amount}')                        
					),
					Column
					(
					crossAxisAlignment: CrossAxisAlignment.start,
					children: 
					[
						Text(modelList[index].title),
						Text(DateFormat('yyyy-MM-dd HH:mm:ss').format(modelList[index].date))
					],
					),
				],
				)
			);
			}  
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

#### 8

#### <span class="red">ListTile</span>

#### <span class="blue">General</span> 

#### <span class="blue">Builder</span> 

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
				title: 'ListTile',
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
			Model(id: '1', title: 'MHU', amount: '200', date: DateTime.now()),
			Model(id: '2', title: 'AAu', amount: '400', date: DateTime.now().subtract(Duration(days: 1))),
			Model(id: '3', title: 'BBU', amount: '600', date: DateTime.now().subtract(Duration(days: 2))),
			Model(id: '4', title: 'CCU', amount: '800', date: DateTime.now().subtract(Duration(days: 3))),
			Model(id: '5', title: 'DDU', amount: '1000', date: DateTime.now().subtract(Duration(days: 4))),
			Model(id: '6', title: 'EEU', amount: '1200', date: DateTime.now().subtract(Duration(days: 5))),
			Model(id: '7', title: 'FFU', amount: '1400', date: DateTime.now().subtract(Duration(days: 6))),
			Model(id: '8', title: 'GGU', amount: '1600', date: DateTime.now().subtract(Duration(days: 7))),
			Model(id: '9', title: 'HHU', amount: '1800', date: DateTime.now().subtract(Duration(days: 8))),
		];

		//Method
		@override
		Widget build(BuildContext context) 
		{
			return Card
			(
				child: SingleChildScrollView
				(
					child: Column
					(
						crossAxisAlignment: CrossAxisAlignment.stretch,
						children: 
						[
							ModelList(modelList)
						],
					)
				)
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
				height: 600,
				child: ListView.builder
				(
					itemCount: modelList.length, 
					itemBuilder:  (ctx, index)
					{
						return Card
						(
							elevation: 5,
							margin: EdgeInsets.symmetric(vertical: 8,horizontal: 5),
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
								subtitle: Text(DateFormat.yMMMd().format(modelList[index].date)),
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
	
#### 9

<span class="red">AppBar IconButton / Floating Action Button</span>

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

	class Model
	{
	String id;
	String title;
	String amount;
	DateTime date;

	Model
	({
		@required this.id,
		@required this.title,
		@required this.amount,
		@required this.date
	});
	}















<div class="md1"></div>
	
#### 10
	
<span class="red">Chart</span>

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
			title: 'Chart',
			theme: ThemeData
			(
				primarySwatch: Colors.green,
				accentColor: Colors.red
			),
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
			Model(id: '1', title: 'MHU', amount: '200', date: DateTime.now()),
			Model(id: '2', title: 'AAu', amount: '400', date: DateTime.now().subtract(Duration(days: 1))),
			Model(id: '3', title: 'BBU', amount: '600', date: DateTime.now().subtract(Duration(days: 2))),
			Model(id: '4', title: 'CCU', amount: '800', date: DateTime.now().subtract(Duration(days: 3))),
			Model(id: '5', title: 'DDU', amount: '1000', date: DateTime.now().subtract(Duration(days: 4))),
			Model(id: '6', title: 'EEU', amount: '1200', date: DateTime.now().subtract(Duration(days: 5))),
			Model(id: '7', title: 'FFU', amount: '1400', date: DateTime.now().subtract(Duration(days: 6))),
			Model(id: '8', title: 'GGU', amount: '1600', date: DateTime.now().subtract(Duration(days: 7))),
			Model(id: '9', title: 'HHU', amount: '1800', date: DateTime.now().subtract(Duration(days: 8))),
		];


		//Property
		List<Model> get recentModelList
		{
			return modelList.where((model) 
			{
			return model.date.isAfter
			(
				DateTime.now().subtract(Duration(days: 7),
			));
			}).toList();
		}


		//Method
		@override
		Widget build(BuildContext context) 
		{
			return Card
			(
			child: SingleChildScrollView
			(
				child: Column
				(
				crossAxisAlignment: CrossAxisAlignment.stretch,
				children: 
				[
					Chart(recentModelList),
				],
				)
			)
			);
		}
	}



	class Chart extends StatelessWidget
	{
		//Field
		final List<Model> recentModelList;
		double totalSpending=0;

		//Constructor
		Chart(this.recentModelList)
		{
			this.totalSpending = groupModelValue.fold(0.0, (sum, item) {return sum + item['amount'];});
		}

		//Property
		List<Map<String, Object>> get groupModelValue
		{
			return List.generate(7, (index)
			{
			final weekDay=DateTime.now().subtract(Duration(days: index),);
			var totalSum = 0.0;
			for(var i=0; i<recentModelList.length;i++)
			{
				if
				(
				recentModelList[i].date.day == weekDay.day && 
				recentModelList[i].date.month == weekDay.month &&
				recentModelList[i].date.year == weekDay.year 
				)
				{
				totalSum +=double.parse(recentModelList[i].amount);
				}
			}
			return {'day': DateFormat.E().format(weekDay), 'amount': totalSum};
			});
		}

		//Method
		@override
		Widget build(BuildContext context) 
		{
			return Card
			(
			elevation: 6,
			margin: EdgeInsets.all(20),
			child: Padding
			(
				padding: EdgeInsets.all(10),
				child: Row
				(
				mainAxisAlignment: MainAxisAlignment.spaceAround,
				children: groupModelValue.map
				(
					(data) 
					{
					return Flexible
					(
						fit: FlexFit.tight,
						child: ChartBar
						(
						data['day'],
						data['amount'],
						totalSpending == 0.0 ? 0.0 : (data['amount'] as double) / totalSpending,
						),
					);
					}
				).toList()
				),
			)
			);
		}
	}



	class ChartBar extends StatelessWidget 
	{
		//Field
		final String day;
		final double amount;
		final double percent;

		//Constructor
		ChartBar(this.day, this.amount, this.percent);

		//Method
		@override
		Widget build(BuildContext context)
		{
			return Column
			(
			children: <Widget>
			[
				Container
				(
					height: 20,
					child: FittedBox(child: Text('\$${amount.toStringAsFixed(0)}'),),
				),
				SizedBox(height: 5,),
				Container
				(
					height: 200,
					width: 10,
					child: Stack
					(
					children: <Widget>
					[
						Container
						(
						decoration: BoxDecoration
						(
							border: Border.all(color: Colors.grey, width: 1.0),
							color: Color.fromRGBO(220, 220, 220, 1),
							borderRadius: BorderRadius.circular(10),
						),
						),
						FractionallySizedBox
						(
						heightFactor: percent,
						child: Container
						(
							decoration: BoxDecoration
							(
							color: Theme.of(context).primaryColor,
							borderRadius: BorderRadius.circular(10),
							),
						),
						),
					],
					),
				),
				SizedBox(height: 5,),
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
	
#### 11
		
<span class="red">Date Picker</span>

	import 'package:flutter/material.dart';
	import 'package:intl/intl.dart';
	import 'package:flutter/cupertino.dart';

	void main() {
	runApp(MaterialApp(
		home: Scaffold(
		body: ModelAdd(),
		),
	));
	}

	class ModelAdd extends StatefulWidget {
	@override
	_ModelAddState createState() => _ModelAddState();
	}

	class _ModelAddState extends State<ModelAdd> {
	DateTime selectedDate;

	void datePicker() {
		showDatePicker(
				context: context,
				initialDate: DateTime.now(),
				firstDate: DateTime(2019),
				lastDate: DateTime.now())
			.then((data) {
		if (data == null) {
			return;
		}
		setState(() {
			selectedDate = data;
		});
		});
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
				Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
				Container(
					height: 70,
					child: Row(
					children: [
						Text(selectedDate == null
							? 'No Date'
							: DateFormat.yMd().format(selectedDate)),
						TextButton(
							child: Text('Choose Date'), onPressed: datePicker)
					],
					),
				)
				]),
			],
			),
		),
		);
	}
	}










<div class="md1"></div>
	
#### 12
		
<span class="red">Remove item from list</span>

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
				title: 'Remove item from list',
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
		final List<Model> modelList = 
		[
			Model(id: '1', title: 'AAA', amount: 100, date: DateTime.now()),
			Model(id: '2', title: 'BBB', amount: 200, date: DateTime.now().subtract(Duration(days: 1))),
			Model(id: '3', title: 'CCC', amount: 300, date: DateTime.now().subtract(Duration(days: 2))),
		];

		void modelRemoveFunction(String id) 
		{
			setState(() 
			{
			modelList.removeWhere((element) {return element.id==id;});
			});
		}

		@override
		Widget build(BuildContext context) 
		{
			return Scaffold
			(
			appBar: AppBar(title: Text('Remove item from list'),),
			body: SingleChildScrollView
			(
				child: Column
				(
				crossAxisAlignment: CrossAxisAlignment.stretch,
				children: 
				[
					ModelList(modelList, modelRemoveFunction)
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














































<div class="md1"></div>

## General

	import 'package:flutter/material.dart';
	
	void main() 
	{
	  runApp(Text("Welcome",textDirection: TextDirection.ltr,));
	}
	
	-------------------------------------------------------------
	
	import 'package:flutter/material.dart';

	void main() 
	{

	  void click() 
	  {    
		print('interaction is here');         
	  }

	  var my_appbar_text = Text("My First Application1");
	  var my_appbar = AppBar(title: my_appbar_text);
	  var my_scaffold = Scaffold(
		appBar: my_appbar,
			body: Column(
			  children: [
				Text(''),
				RaisedButton(
				  child: Text('Click me'),
				  onPressed: click,
				),
			  ]
		),
	  );
		
	  var my_material_app = MaterialApp(
		home: my_scaffold,
	  );
	  
	  runApp(my_material_app);
	}
	
	-------------------------------------------------------------
	
	import 'package:flutter/material.dart';

	void main() {
	  runApp(MyApp());
	}

	class MyApp extends StatelessWidget{

	  Widget build(BuildContext context) {
		return MaterialApp(home: Text('Hello', ));
	  }

	}
		
	-------------------------------------------------------------
	
	void main () 
	{
	  runApp(MyApp());    
	}

	class MyApp extends StatelessWidget 
	{
	  @override
	  Widget build(BuildContext context) 
	  {
		return 
		MaterialApp(
		  home: 
			Text(
			  'hello',
			  textAlign: TextAlign.center,
			  style: TextStyle(color: Colors.red,),
			),
		);
	  }  
	}
	
	-------------------------------------------------------------
	
	void main() {
	  //--- Way 1
	  var my_appbar_text = Text("My First Application1");
	  var my_appbar = AppBar(title: my_appbar_text);
	  var my_scaffold = Scaffold(
		appBar: my_appbar,
	  );
	  var my_material_app = MaterialApp(
		home: my_scaffold,
	  );
	  //var my_stateless_widget=StatelessWidget()
	  //runApp(my_material_app);

	  //--- Way 2
	  runApp(MyApp());
	}

	class MyApp extends StatelessWidget {
	  Widget build(BuildContext context) {
		return MaterialApp(
		  home: Scaffold(
			appBar: AppBar(
			  title: Text("My fist Application2"),
			),
		  ),
		);
	  }
	}
	
	-------------------------------------------------------------
	
	void main() => runApp(MyApp());

	class MyApp extends StatefulWidget {
	  @override
	  State<StatefulWidget> createState() {
		return _MyAppState();
	  }
	}

	class _MyAppState extends State<MyApp> {
	  var questions = [
		'RaisedButton',
		'RaisedButton 1',
		'RaisedButton 2',
		'RaisedButton 3',
	  ];

	  var qi = 0;

	  void answerQuestion() {
		setState(() {
		  print('RaisedButton 1');
		  qi = 1;
		});
	  }

	  @override
	  Widget build(BuildContext context) {
		return MaterialApp(
		  home: Scaffold(
			appBar: AppBar(
			  title: Text('My First application'),
			),
			body: Column(
			  children: [
				Text(questions[qi]),
				RaisedButton(
				  child: Text('RaisedButton 1'),
				  onPressed: answerQuestion,
				),
				RaisedButton(
				  child: Text('RaisedButton 2'),
				  onPressed: () => qi = 2,
				),
				RaisedButton(
				  child: Text('RaisedButton 3'),
				  onPressed: () {
					// ...
					qi = 3;
					print('qi=' + qi.toString());
				  },
				),
			  ],
			),
		  ),
		);
	  }
	}
	
	-------------------------------------------------------------
	
	import 'package:flutter/material.dart';

	class Question extends StatelessWidget {
	  final String questionText;

	  Question(this.questionText);

	  @override
	  Widget build(BuildContext context) {
		return Container(
		  width: double.infinity,
		  margin: EdgeInsets.all(10),
		  child: Text(
			questionText,
			style: TextStyle(fontSize: 28),
			textAlign: TextAlign.center,
		  ),
		);
	  }
	}
	
	-------------------------------------------------------------
	
	import 'package:flutter/material.dart';

	void main() => runApp(MyApp());

	class MyApp extends StatelessWidget {
	  @override
	  Widget build(BuildContext context) {
		return MaterialApp(
		  title: 'Flutter App',
		  home: MyHomePage(),
		);
	  }
	}

	class MyHomePage extends StatelessWidget {
	  @override
	  Widget build(BuildContext context) {
		return Scaffold(
		  appBar: AppBar(
			title: Text('Flutter App'),
		  ),
		  body: Column(
			children: <Widget>[
			  Container(
				width: double.infinity,
				child: Card(
				  color: Colors.blue,
				  child: Text('CHART!'),
				  elevation: 5,
				),
			  ),
			  Card(
				child: Text('LIST OF TX'),
			  ),
			],
		  ),
		);
	  }
	}

	
	
	



	
<div class="md1"></div>

## Example 1
#### main.dart
	import 'package:flutter/material.dart';
	import './transaction.dart';
	import './myclass.dart';

	void main() => runApp(MyApp());

	class MyApp extends StatelessWidget {
	  @override
	  Widget build(BuildContext context) {
		return MaterialApp(
		  title: 'Flutter App',
		  home: MyHomePage(),
		);
	  }
	}

	class MyHomePage extends StatelessWidget {
	  
	  MyClass m = new MyClass();

	  final List<Transaction> transactions = [
		Transaction(
		  id: 't1',
		  title: 'New Shoes',
		  amount: 69.99,
		  date: DateTime.now(),
		),
		Transaction(
		  id: 't2',
		  title: 'Weekly Groceries',
		  amount: 16.53,
		  date: DateTime.now(),
		),
	  ];

	  @override
	  Widget build(BuildContext context) {
		return Scaffold(
		  appBar: AppBar(
			title: Text('Flutter App'),
		  ),
		  body: Column(
			mainAxisAlignment: MainAxisAlignment.spaceAround,
			crossAxisAlignment: CrossAxisAlignment.stretch,
			children: <Widget>[
			  Column(
				children: transactions.map((lits_item) {
				  return Card(
					color: Color.fromARGB(0xFF, 0x42, 0xA5, 0xF5),
					child: Row(
					  children: <Widget>[
						Container(
						  margin: EdgeInsets.symmetric(
							vertical: 10,
							horizontal: 15,
						  ),
						  decoration: BoxDecoration(
							border: Border.all(
							  color: Colors.purple,
							  width: 2,
							),
						  ),
						  padding: EdgeInsets.all(10),
						  child: m.myText(
							  id: 1, text: lits_item.amount.toString(), style: 3),
						),
						Column(
						  crossAxisAlignment: CrossAxisAlignment.start,
						  children: <Widget>[
							m.myText(id: 1, text: lits_item.title, style: 2),
							m.myText(
								id: 1, text: lits_item.date.toString(), style: 1),
						  ],
						),
					  ],
					),
				  );
				}).toList(),
			  ),
			],
		  ),
		);
	  }
	}


#### transaction.dart
	import 'package:flutter/foundation.dart';

	class Transaction {
	  final String id;
	  final String title;
	  final double amount;
	  final DateTime date;

	  Transaction({
		@required this.id,
		@required this.title,
		@required this.amount,
		@required this.date,
	  });
	}


#### myclass.dart
	import 'package:flutter/cupertino.dart';
	import 'package:flutter/material.dart';

	class MyClass {
	  
	  Text myText({int id, String text, int style}) {
		switch (id) {
		  case 1:
			return Text(
			  text,
			  style: myTextStyle(style),
			);
		}
	  }

	  TextStyle myTextStyle(int id) {
		switch (id) {
		  case 1:
			return TextStyle(
			  color: Colors.red,
			);
		  case 2:
			return TextStyle(
			  fontSize: 16,
			  fontWeight: FontWeight.bold,
			);
		  case 3:
			return TextStyle(
			  fontWeight: FontWeight.bold,
			  fontSize: 20,
			  color: Colors.purple,
			);
		}
	  }
	}


































	








<div class="md1"></div>

## Model

#### <span class="red">General</span> 

<span class="blue">main.dart</span>
