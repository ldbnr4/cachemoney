import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Portfolio> fetchPortfolio() async {
  var address = "0xc391B88b0304FbF91E134C6C7FB1EDEC98de2AE3";
  final response = await http.get(Uri.https('www.yieldwatch.net', "api/all/$address", {
    "platforms": "beefy"
  }));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    var json_response = jsonDecode(response.body);
    if (json_response['status'] != "1") throw Exception('Failed to load portfolio: bad status');
    return Portfolio.fromJson(json_response['result']);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load portfolio: bad status code');
  }
}

class Portfolio {
  final double totalBalance;
  final double investment;
  final double gains;
  final List<dynamic> vaults;

  Portfolio({this.totalBalance,this.investment, this.gains, this.vaults});

  factory Portfolio.fromJson(Map<String, dynamic> json) {
      var beefy = json['BeefyFinance'];
      var vaults = new List();


      var beefyVaults = beefy['vaults'];
      var beefyVaultTotals = beefyVaults['totalUSDValues'];
      var vault_balance = beefyVaultTotals['total'];
      var vault_investment = beefyVaultTotals['deposit'];
      var vault_gains = beefyVaultTotals['yield'];
      vaults.addAll(beefyVaults['vaults']);

      var beefyLPVaults = beefy['LPVaults'];
      var beefyLPVaultTotals = beefyLPVaults['totalUSDValues'];
      var lp_vault_balance = beefyLPVaultTotals['total'];
      var lp_vault_investment = beefyLPVaultTotals['deposit'];
      var lp_vault_gains = beefyLPVaultTotals['yield'];
      vaults.addAll(beefyLPVaults['vaults'];)

      
    return Portfolio(
      totalBalance: lp_vault_balance + vault_balance,
      investment: lp_vault_investment + vault_investment,
      gains: lp_vault_gains + vault_gains,
      vaults: vaults,
    );
  }
}