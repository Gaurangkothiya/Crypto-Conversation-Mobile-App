import 'package:flutter/cupertino.dart';
import 'package:flutter_chat_demo/widget/source.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:flutter/material.dart';

class CurrenciesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SfDataGrid(
      columns: buildGridColumns(),
    );
  }

  List<GridColumn> buildGridColumns() => <GridColumn>[
        GridColumn(
          columnName: CurrencyColumn.id.toString(),
          label: buildLabel('ID'),
        ),
         GridColumn(
          columnName: CurrencyColumn.rank.toString(),
          label: buildLabel('Rank'),
        ),
         GridColumn(
          columnName: CurrencyColumn.name.toString(),
          label: buildLabel('Name'),
        ),
         GridColumn(
          columnName: CurrencyColumn.price.toString(),
          label: buildLabel('Price'),
        ),
         GridColumn(
          columnName: CurrencyColumn.oneHourChange.toString(),
          label: buildLabel('One Hour Change'),
        ),
        GridColumn(
          columnName: CurrencyColumn.oneDayChange.toString(),
          label: buildLabel('One Day Change'),
        ),
         GridColumn(
          columnName: CurrencyColumn.marketCap.toString(),
          label: buildLabel('Market Cap'),
        ),
         GridColumn(
          columnName: CurrencyColumn.rankDelta.toString(),
          label: buildLabel('Rank Delta'),
        )
      ];

  Widget buildLabel(String text) => Text(
        text,
      );
}
