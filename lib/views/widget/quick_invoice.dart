import 'package:flutter/material.dart';
import 'package:responsive_adapttie/views/widget/custom_button.dart';
import 'package:responsive_adapttie/views/widget/custom_container.dart';
import 'package:responsive_adapttie/views/widget/latest_transaction.dart';
import 'package:responsive_adapttie/views/widget/latest_transaction_form.dart';
import 'package:responsive_adapttie/views/widget/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 24),
          QuickInvoiceHeader(),
          LatestTransaction(),
          Row(
            children: [
              Expanded(
                child: LatestTransactionForm(
                  hintText: 'Type customer name',
                  text: 'Customer name',
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: LatestTransactionForm(
                  hintText: 'Customer Email',
                  text: 'Type customer email',
                ),
              ),
            ],
          ),
          SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: LatestTransactionForm(
                  hintText: 'Type customer name',
                  text: 'Item name',
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: LatestTransactionForm(
                  hintText: 'USD',
                  text: 'Item mount',
                ),
              ),
            ],
          ),
          SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: CustomButton(
                  text: 'Add more details',
                  backgroundColor: Color(0xffffffff),
                  textColor: Color(0xff4EB7F2),
                ),
              ), //Add more details
              SizedBox(width: 24),
              Expanded(
                child: CustomButton(
                  text: 'Send Money',
                  backgroundColor: Color(0xff4EB7F2),
                  textColor: Color(0xffffffff),
                ),
              ), //'Send Money' Color(0xffffffff)   Color(0xff4EB7F2)
            ],
          ),
          SizedBox(height: 24),
        ],
      ),
    );
  }
}
