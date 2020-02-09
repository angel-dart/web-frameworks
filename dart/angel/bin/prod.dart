import 'package:angel_framework/angel_framework.dart';
import 'package:angel_production/angel_production.dart';

main(List<String> args) => Runner('angel_benchmark', configureServer).run(args);

configureServer(Angel app) {
  app
    ..get('/', (req, res) => res.close())
    ..get('/user/:id', (req, res) => res.write(req.params['id']))
    ..post('/user', (req, res) => res.close());
}
