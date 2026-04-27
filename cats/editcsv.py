import pandas as pd

# Load your CSV
df = pd.read_csv('/home/Ciheim.Brown/48-SPEAR-cat.csv')

# Insert 'table_id' at the beginning (index 0)
# Replace 'my_table_01' with your desired value
df.insert(0, 'table_id', '')

# Save the result
df.to_csv('48-SPEAR-cat.csv', index=False)
