class Scenario {
    String name;
    String description;
    DateTime createdAt;

    Scenario({required this.name, required this.description}) : createdAt = DateTime.now();

    @override
    String toString() {
        return 'Scenario{name: \$name, description: \$description, createdAt: \$createdAt}';
    }
}