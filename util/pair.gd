class_name Pair extends List

func _init(item1: Variant, item2: Variant):
    super._init([item1, item2])

func add(item: Variant):
    if (size() == 1):
        add(item)
    else:
        print("Cannot add item")

func get_first():
    return get_item(0)

func get_second():
    return get_item(1)
