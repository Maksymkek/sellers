import 'package:sellers/presentation/home_page/categories/page_config/block_states.dart';

abstract base class BlockConfig {
  BlockConfig(this.children);

  final List<Block> children;
}

final class RowConfig extends BlockConfig {
  RowConfig(super.children);
}

final class ColumnConfig extends BlockConfig {
  ColumnConfig(super.children);
}
