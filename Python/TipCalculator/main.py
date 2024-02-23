bill = float(input("How much did your meal cost? ").replace("$", ""))

tax_rate_15 = 0.15
tax_rate_18 = 0.18
tax_rate_20 = 0.20

tip_amount_15 = bill * tax_rate_15
tip_amount_18 = bill * tax_rate_18
tip_amount_20 = bill * tax_rate_20

print("Recommended tip amounts are:\n")
print(f"- For 15% taxes: ${tip_amount_15:.2f}")
print(f"- For 18% taxes: ${tip_amount_18:.2f}")
print(f"- For 20% taxes: ${tip_amount_20:.2f}")