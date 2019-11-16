import 'package:Pax/components/base_dialog/base_dialog.dart';
import 'package:Pax/components/button%20/button.dart';
import 'package:Pax/components/stars_avaliation/stars_avaliation.dart';
import 'package:flutter/material.dart';

class PaxDetailDialog extends StatelessWidget {
  final String providerName;
  final String providerPhoto;
  var pax;

  PaxDetailDialog({this.pax, this.providerName, this.providerPhoto});

  @override
  Widget build(BuildContext context) {
    return BaseDialog(
      height: 425,
      body: Column(
        children: <Widget>[
          Container(
            height: 70,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
            ),
            child: Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(left: 30),
                  width: 43,
                  height: 43,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 1.3, color: Colors.white),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(providerPhoto),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      providerName,
                      style: Theme.of(context)
                          .textTheme
                          .title
                          .copyWith(color: Colors.white),
                    ),
                    SizedBox(height: 4),
                    Text(
                      pax['date'],
                      style: TextStyle(
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontSize: 13,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Column(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Qualidade do Serviço',
                      style: Theme.of(context).textTheme.title,
                    ),
                    SizedBox(height: 5),
                    StarsAvaliation(4.5, context),
                  ],
                ),
                SizedBox(height: 18),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Sobre o prestador',
                      style: Theme.of(context).textTheme.title,
                    ),
                    SizedBox(height: 5),
                    StarsAvaliation(0, context),
                  ],
                ),
                SizedBox(height: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Descrição',
                      style: Theme.of(context).textTheme.title,
                    ),
                    SizedBox(height: 7),
                    Text(
                        'Substituição de tela do celular Galaxy S6 edge plus e rodar uns testes gerais no celular para verificar o touch screen',
                        textAlign: TextAlign.justify,
                        style: TextStyle(height: 1.5)),
                  ],
                ),
                SizedBox(height: 25),
                Button(
                  buttonText: 'Reportar',
                  tapHandler: () {},
                  type: 'danger',
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
