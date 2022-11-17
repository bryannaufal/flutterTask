import 'package:flutter/material.dart';
import 'package:counter_7/drawer.dart';
import 'package:counter_7/budgetData.dart';
import 'package:intl/intl.dart';

class budgetList extends StatefulWidget {
  const budgetList({super.key});

  @override
  State<budgetList> createState() => _budgetListState();
}

class _budgetListState extends State<budgetList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Budget'),
      ),
      drawer: myDrawer(),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    dataBudget.budgets[index].judul,
                    style: const TextStyle(fontSize: 24),
                  ),
                  Text(
                      DateFormat('EEEE, MMMM d, yyyy')
                          .format(dataBudget.budgets[index].tanggal),
                      style: TextStyle(fontSize: 15),
                      textAlign: TextAlign.left),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        dataBudget.budgets[index].nominal.toString(),
                        style: const TextStyle(fontSize: 24),
                      ),
                      Text(
                        dataBudget.budgets[index].jenis,
                        style: const TextStyle(fontSize: 24),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
        itemCount: dataBudget.budgets.length,
      ),
    );
  }
}