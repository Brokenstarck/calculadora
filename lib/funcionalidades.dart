
import 'package:math_expressions/math_expressions.dart';

class Calculadora {
  String operacion = '0';
  String resultado = '0';
  String ultimaoperacion = '';

  String calcular(String expresion) {
    try {
      GrammarParser parser = GrammarParser();

      Expression exp = parser.parse(expresion);

      RealEvaluator evaluador = RealEvaluator(ContextModel());

      double valor = evaluador.evaluate(exp).toDouble();

      if (valor == valor.roundToDouble()) {
        return valor.toInt().toString();
      } else {
        return valor.toString();
      }

    } catch (e) {
      return 'Error';
    }
  }

  void pulsarBoton(String valor) {

    if (valor == 'C') {
      operacion = '0';
      resultado = '0';
      ultimaoperacion = '';
    }

    else if (valor == '<-') {
      if (operacion.length > 1) {
        operacion = operacion.substring(0, operacion.length - 1);
      } else {
        operacion = '0';
      }
    }

    else if (valor == '=') {
      ultimaoperacion = operacion;
      resultado = calcular(operacion);
      operacion = resultado;
    }

    else {
      if (operacion == '0') {
        operacion = valor;
      } else {
        operacion += valor;
      }
    }
  }
}
