import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
from scipy import stats

# Set visual styling for clean output
sns.set_theme(style="whitegrid")
plt.rcParams["figure.figsize"] = (10, 5)

# -----------------------------------------------------------------------------
# 1. SAMPLE DATA GENERATION
# -----------------------------------------------------------------------------
# Simulating a dataset (e.g., Data Science Salaries in USD)
np.random.seed(42)
salary_data = np.random.normal(loc=75000, scale=15000, size=1000)

# Add some outliers to make it realistic
outliers = np.array([180000, 195000, 210000, 220000])
salary_data = np.concatenate([salary_data, outliers])

df = pd.DataFrame({'Salary': salary_data})
print("Dataset Overview:")
print(df.head())
print("-" * 50)

# -----------------------------------------------------------------------------
# 2. MEASURES OF CENTRAL TENDENCY
# -----------------------------------------------------------------------------
mean_salary = df['Salary'].mean()
median_salary = df['Salary'].median()
# Rounding values to find a meaningful mode for continuous data
mode_salary = stats.mode(df['Salary'].round(-3), keepdims=True).mode[0]

print("📊 MEASURES OF CENTRAL TENDENCY:")
print(f"• Mean   : ${mean_salary:,.2f}  (Sensitive to outliers)")
print(f"• Median : ${median_salary:,.2f}  (Robust against outliers)")
print(f"• Mode   : ${mode_salary:,.2f}  (Most frequent value bin)\n")

# -----------------------------------------------------------------------------
# 3. MEASURES OF DISPERSION (SPREAD)
# -----------------------------------------------------------------------------
range_val = df['Salary'].max() - df['Salary'].min()
variance_val = df['Salary'].var()
std_dev = df['Salary'].std()
q1 = df['Salary'].quantile(0.25)
q3 = df['Salary'].quantile(0.75)
iqr = q3 - q1

print("📏 MEASURES OF DISPERSION:")
print(f"• Range               : ${range_val:,.2f}")
print(f"• Variance            : {variance_val:,.2f}")
print(f"• Standard Deviation  : ${std_dev:,.2f}")
print(f"• IQR (Q3 - Q1)       : ${iqr:,.2f}\n")

# -----------------------------------------------------------------------------
# 4. MEASURES OF SHAPE (SKEWNESS & KURTOSIS)
# -----------------------------------------------------------------------------
skew_val = df['Salary'].skew()
kurt_val = df['Salary'].kurt()

print("📐 MEASURES OF SHAPE:")
print(f"• Skewness : {skew_val:.2f} (>0 means Right-Skewed distribution)")
print(f"• Kurtosis : {kurt_val:.2f} (>0 means heavy-tailed / presence of outliers)\n")

# -----------------------------------------------------------------------------
# 5. DATA VISUALIZATION
# -----------------------------------------------------------------------------
fig, axes = plt.subplots(1, 2, figsize=(16, 5))

# Plot 1: Histogram + KDE Distribution
sns.histplot(df['Salary'], kde=True, color='teal', ax=axes[0])
axes[0].axvline(mean_salary, color='red', linestyle='--', linewidth=2, label=f'Mean: ${mean_salary:,.0f}')
axes[0].axvline(median_salary, color='orange', linestyle='-', linewidth=2, label=f'Median: ${median_salary:,.0f}')
axes[0].set_title("Salary Distribution (Histogram & KDE)", fontsize=12, fontweight='bold')
axes[0].set_xlabel("Salary ($)")
axes[0].legend()

# Plot 2: Boxplot for Outlier Detection
sns.boxplot(x=df['Salary'], color='salmon', ax=axes[1])
axes[1].set_title("Boxplot (Identifying Outliers)", fontsize=12, fontweight='bold')
axes[1].set_xlabel("Salary ($)")

plt.tight_layout()
plt.show()
