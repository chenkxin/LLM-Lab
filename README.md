# LLM-Lab

## How to run

```bash
# In `Code` directory
# All the code is run using Jupyter Notebook, making it convenient for debugging and displaying the results.

❯ tree .

├── LoRA.ipynb
├── parse_data_limits.ipynb
├── pubmed_100_samples.json
└── split_datasets.ipynb
```

---

### Parse data
In `parse_data_limits.ipynb`, limit the extraction of **samples to 100** from a single XML file, construct **prompt-response** data pairs, and generate the corresponding JSON file.
> Or you can directly use the `pubmed_100_samples.json` file that I have already generated.

---

### Split data to train, val, test
In `split_datasets.ipynb`, divide the dataset into **training set**, **validation set**, and **test set**.

---

### LoRA
In `LoRA.ipynb`, **use LoRA** for model training fine-tuning, **calculate ROUGE metrics**, **save the fine-tuned model**, and **load and validate the fine-tuned model**.
