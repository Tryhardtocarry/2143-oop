
```python
import json

class JsonDB:
    def __init__(self, filepath):
        self.filepath = filepath
        self.data = None
        self._load_data()
        self.current = 0

    def _load_data(self):
        try:
            with open(self.filepath, 'r') as f:
                self.data = json.load(f)
        except (FileNotFoundError, json.JSONDecodeError):
            self.data = []

    def _save_data(self):
        with open(self.filepath, 'w') as f:
            json.dump(self.data, f, indent=4)

    def create(self, record):
        self.data.append(record)
        self._save_data()
        return record

    def atEnd(self):
        return self.current == len(self.data) - 1

    def getNext(self):
        if not self.data:
            return None
        record = self.data[self.current]
        self.current += 1
        if self.current >= len(self.data):
            self.current = 0
        return record

    def read(self, **filters):
        if not filters:
            return self.data
        results = []
        for item in self.data:
            match = True
            for key, value in filters.items():
                if key not in item or value not in str(item[key]):
                    match = False
                    break
            if match:
                results.append(item)
        return results

    def update(self, record_id, updated_data):
        try:
            self.data[record_id].update(updated_data)
            self._save_data()
            return self.data[record_id]
        except IndexError:
            raise ValueError

    def delete(self, record_id):
        try:
            removed = self.data.pop(record_id)
            self._save_data()
            return removed
        except IndexError:
            raise ValueError
python
def main():
    db = JsonDB("videogames.json")

    print("All Action games:")
    action_games = db.read(genre="Action")
    print(action_games)

```
