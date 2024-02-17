enum APIPath { worktimesummary }

extension APIPathExtension on APIPath {
  String? get value {
    switch (this) {
      case APIPath.worktimesummary:
        return 'worktimesummary';
    }
  }
}
