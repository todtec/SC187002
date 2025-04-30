# NCBI BLAST Tutorial: A Step-by-Step Guide

## Table of Contents
- [Introduction](#introduction)
- [What is BLAST?](#what-is-blast)
- [Types of BLAST Programs](#types-of-blast-programs)
- [Using BLAST on the NCBI Website](#using-blast-on-the-ncbi-website)
  - [Step 1: Navigate to BLAST](#step-1-navigate-to-blast)
  - [Step 2: Choose a BLAST Program](#step-2-choose-a-blast-program)
  - [Step 3: Enter Query Sequence](#step-3-enter-query-sequence)
  - [Step 4: Select Database](#step-4-select-database)
  - [Step 5: Set Algorithm Parameters](#step-5-set-algorithm-parameters)
  - [Step 6: Submit BLAST Search](#step-6-submit-blast-search)
  - [Step 7: Interpret BLAST Results](#step-7-interpret-blast-results)
- [Example: Using Nucleotide BLAST](#example-using-nucleotide-blast)
- [Example: Using Protein BLAST](#example-using-protein-blast)
- [Advanced BLAST Options](#advanced-blast-options)
- [Troubleshooting](#troubleshooting)
- [References and Resources](#references-and-resources)

## Introduction

The National Center for Biotechnology Information (NCBI) provides a suite of database resources and analysis tools for biological data. One of the most widely used tools is BLAST (Basic Local Alignment Search Tool), which allows researchers to compare query sequences with databases of sequences to identify similar sequences and infer functional and evolutionary relationships.

This tutorial provides a step-by-step guide to using the web-based BLAST tools available through the NCBI website.

## What is BLAST?

BLAST is an algorithm for comparing primary biological sequence information, such as amino acid sequences of proteins or nucleotide sequences of DNA. A BLAST search enables a researcher to:

- Compare a query sequence with a database of sequences
- Identify sequences that resemble the query sequence above a certain threshold
- Infer functional and evolutionary relationships between sequences
- Help identify members of gene families

## Types of BLAST Programs

NCBI offers several BLAST programs depending on your specific needs:

| Program | Description |
|---------|-------------|
| **BLASTn** | Compares a nucleotide query sequence against a nucleotide sequence database |
| **BLASTp** | Compares an amino acid query sequence against a protein sequence database |
| **BLASTx** | Compares a nucleotide query sequence translated in all reading frames against a protein sequence database |
| **tBLASTn** | Compares a protein query sequence against a nucleotide sequence database dynamically translated in all reading frames |
| **tBLASTx** | Compares the six-frame translations of a nucleotide query sequence against the six-frame translations of a nucleotide sequence database |

## Using BLAST on the NCBI Website

### Step 1: Navigate to BLAST

1. Open your web browser and go to the NCBI website: [https://www.ncbi.nlm.nih.gov/](https://www.ncbi.nlm.nih.gov/)
2. Click on "BLAST" in the top menu or directly visit [https://blast.ncbi.nlm.nih.gov/Blast.cgi](https://blast.ncbi.nlm.nih.gov/Blast.cgi)

You will see the BLAST homepage with various BLAST program options.

### Step 2: Choose a BLAST Program

Select the appropriate BLAST program based on your query sequence and what you want to compare it against:

- **Nucleotide BLAST (blastn)** - For DNA or RNA sequences
- **Protein BLAST (blastp)** - For protein sequences
- **blastx** - For nucleotide sequences translated into protein
- **tblastn** - For protein queries against translated nucleotide databases
- **tblastx** - For translated nucleotide queries against translated nucleotide databases

Click on the program that fits your needs.

### Step 3: Enter Query Sequence

There are multiple ways to enter your query sequence:

1. **Paste a sequence** in FASTA format in the main text box
2. **Upload a file** containing the sequence by clicking the "Choose File" button
3. **Enter an accession number** or GI number in the text box

Example of FASTA format:
```
>Sequence_Name
ATGCTAGCTAGCTAGCTAGCTAGCTAGCTAGCTAGCTAGCT
```

The ">" symbol marks the beginning of the description line, followed by the sequence name, and the actual sequence starts on the next line.

### Step 4: Select Database

Choose the database you want to search against:

- For nucleotide searches:
  - **Nucleotide collection (nr/nt)** - Comprehensive
  - **Reference RNA sequences (refseq_rna)**
  - **Reference genomic sequences (refseq_genomic)**
  - **Human genomic plus transcript (Human G+T)**
  - **Mouse genomic plus transcript (Mouse G+T)**
  - Other organism-specific databases

- For protein searches:
  - **Non-redundant protein sequences (nr)**
  - **Reference proteins (refseq_protein)**
  - **Model Organisms** (SwissProt, PDB, etc.)

You can also limit your search to specific organisms by typing the organism name in the "Organism" field (e.g., "Homo sapiens", "Mus musculus").

### Step 5: Set Algorithm Parameters

Adjust the algorithm parameters as needed:

- **Max target sequences**: Maximum number of aligned sequences to display (default is 100)
- **Expected threshold (E-value)**: Lower values increase stringency (default is 10)
- **Word size**: Length of initial exact match (smaller values are more sensitive but slower)
- **Max matches in a query range**: Limits the number of matches to a query range
- **Match/Mismatch Scores** (for nucleotide BLAST): Rewards and penalties for matches and mismatches
- **Gap Costs**: Penalties for opening and extending gaps in alignments

For most basic searches, the default parameters work well.

### Step 6: Submit BLAST Search

Click the "BLAST" button to submit your search. The search might take anywhere from a few seconds to several minutes, depending on:

- Length of your query sequence
- Size of the database
- Server load
- Complexity of the search

A Request ID (RID) will be generated. You can use this ID to retrieve your results later if needed.

### Step 7: Interpret BLAST Results

Once the search is complete, you'll see the results page with several sections:

1. **Search Summary**: Shows your query parameters and a brief summary
2. **Graphic Summary**: Visual representation of alignments with color-coded scoring
3. **Descriptions**: List of sequences with significant alignments, sorted by E-value
4. **Alignments**: Detailed pairwise alignments between your query and the matches

Key elements to understand in the results:

- **Score (Bits)**: Higher scores indicate better alignments
- **E-value (Expect value)**: Number of hits expected by chance when searching the database; lower is better
- **Percent Identity**: Percentage of identical matches in the aligned region
- **Query Coverage**: Percentage of the query sequence aligned to the subject sequence
- **Gaps**: Insertions or deletions in the alignment

## Example: Using Nucleotide BLAST

Let's walk through a specific example using Nucleotide BLAST (blastn):

1. Go to [https://blast.ncbi.nlm.nih.gov/Blast.cgi](https://blast.ncbi.nlm.nih.gov/Blast.cgi)
2. Click on "Nucleotide BLAST"
3. In the query box, paste this example sequence (human insulin gene fragment):
   ```
   ATGGCCCTGTGGATGCGCCTCCTGCCCCTGCTGGCGCTGCTGGCCCTCTGGGGACCTGA
   CCCAGCCGCAGCCTTTGTGAACCAACACCTGTGCGGCTCACACCTGGTGGAAGCTCTCT
   ```
4. Under "Choose Search Set":
   - Select "Nucleotide collection (nr/nt)" as the database
   - Type "Homo sapiens" in the Organism field to limit to human sequences
5. Under "Program Selection":
   - Confirm "Highly similar sequences (megablast)" is selected
6. Click BLAST to submit
7. When results appear:
   - Notice the top hits (likely insulin genes from human)
   - Examine the graphic summary showing alignment regions
   - Review the alignments to see exact matching regions

## Example: Using Protein BLAST

Here's an example workflow for Protein BLAST (blastp):

1. Go to [https://blast.ncbi.nlm.nih.gov/Blast.cgi](https://blast.ncbi.nlm.nih.gov/Blast.cgi)
2. Click on "Protein BLAST"
3. In the query box, paste this example sequence (human insulin protein):
   ```
   MALWMRLLPLLALLALWGPDPAAAFVNQHLCGSHLVEALYLVCGERGFFYTPKTRREAED
   LQVGQVELGGGPGAGSLQPLALEGSLQKRGIVEQCCTSICSLYQLENYCN
   ```
4. Under "Choose Search Set":
   - Select "Non-redundant protein sequences (nr)" as the database
   - Type "Mammalia" in the Organism field to limit to mammalian sequences
5. Under "Algorithm parameters":
   - Keep default parameters
6. Click BLAST to submit
7. When results appear:
   - Observe insulin proteins from various mammals
   - Note the conservation levels across species
   - Examine specific amino acid changes in the alignments

## Advanced BLAST Options

### Position-Specific Iterated BLAST (PSI-BLAST)

PSI-BLAST is useful for finding distantly related proteins:

1. Start with a protein BLAST search
2. From the results page, click "Run PSI-BLAST iteration 1"
3. Select sequences to include in the position-specific scoring matrix
4. Run the next iteration
5. Repeat until no new significant matches are found

### BLAST with Conserved Domains

To identify conserved domains in your protein sequence:

1. From the Protein BLAST page, click the "Algorithm parameters" section
2. Check the box for "Show Conserved Domain Search results"
3. Submit your BLAST search
4. Review the Conserved Domains section in your results

### Primer-BLAST

To design PCR primers specific to your target sequence:

1. From the BLAST homepage, select "Primer-BLAST"
2. Enter your template DNA sequence
3. Set primer parameters (length, Tm, GC content, etc.)
4. Choose the database to check primer specificity
5. Submit and review the suggested primer pairs

## Troubleshooting

### Common Issues and Solutions

1. **No significant matches found**
   - Check that you've selected the appropriate BLAST program
   - Try a less stringent E-value threshold
   - Consider using a different database
   - Verify your sequence is in the correct format

2. **Too many matches**
   - Use a more stringent E-value threshold
   - Limit the search to specific organisms
   - Consider using a smaller, curated database

3. **BLAST search is taking too long**
   - Shorten your query sequence
   - Choose a smaller database
   - Increase the word size parameter
   - Use the "Somewhat similar sequences" or "Highly similar sequences" options

4. **Error in sequence format**
   - Ensure your sequence contains only valid characters (A, T, G, C, N for nucleotides; standard amino acid codes for proteins)
   - Remove any numbers, spaces, or special characters from the sequence
   - Check that your FASTA format is correct if using that format

## References and Resources

- [NCBI BLAST Homepage](https://blast.ncbi.nlm.nih.gov/Blast.cgi)
- [BLAST Help Documentation](https://blast.ncbi.nlm.nih.gov/Blast.cgi?CMD=Web&PAGE_TYPE=BlastDocs)
- [BLAST Tutorial Video](https://www.youtube.com/watch?v=HXEpBnUbAMo)
- [NCBI BLAST Course](https://www.ncbi.nlm.nih.gov/Class/BLAST/)
- [BLAST: Basic Local Alignment Search Tool](https://www.ncbi.nlm.nih.gov/pubmed/2231712) (Original publication)

---

This tutorial was last updated: April 2025.

For questions or feedback about this tutorial, please [create an issue](https://github.com/yourusername/your-repo/issues) on GitHub.
