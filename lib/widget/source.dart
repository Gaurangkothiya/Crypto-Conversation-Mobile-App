import 'package:flutter_chat_demo/model/currency.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

enum CurrencyColumn {
  id,
  name,
  rank,
  price,
  oneHourChange,
  oneDayChange,
  marketCap,
  rankDelta
}

class CurrencyDataSource extends DataGridSource {

  CurrencyDataSource({required List<Currency> currencies}){
    buildDataGrid(currencies);
  }

  void buildDataGrid(List<Currency> currencies) => currencies
    .map<DataGridRow>(
    (currency) => DataGridRow(
      cells: CurrencyColumn.values
        .map(
          (column) => DataGridCell<Currency>(
            columnName : column.toString(),
            value : currency
          ),
      ).toList(),
    ),
    )
    .toList();

  @override
  DataGridRowAdapter buildRow(DataGridRow row) => DataGridRowAdapter(
    cells: row.getCells().map<Widget>((dataGridCell){
      return Text('Hello');
    })
  ).toList());
}