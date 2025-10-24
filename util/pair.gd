class_name Pair extends List

func _init(item1: Variant, item2: Variant):
    super._init([item1, item2])

func add(_item: Variant):
    print("Cannot add to a pair")

func get_first():
    return arr[0]

func get_second():
    return arr[1]
