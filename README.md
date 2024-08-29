# BaseTrainingPlan

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://fieldofnodes.github.io/BaseTrainingPlan.jl/stable/)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://fieldofnodes.github.io/BaseTrainingPlan.jl/dev/)
[![Build Status](https://github.com/fieldofnodes/BaseTrainingPlan.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/fieldofnodes/BaseTrainingPlan.jl/actions/workflows/CI.yml?query=branch%3Amain)


# BaseTrainingPlan

Welcome to the `BaseTrainingPlan` module! This Julia package is designed to assist with the processing and analysis of training assessments. It provides functionality to read and validate training assessment files, ensuring that they conform to expected formats, and to generate training modules based on the assessment data.

## Features

- **Read Training Assessment Files**: Easily load and validate CSV files containing training assessment data.
- **Validate Data Structure**: The module checks for proper column names, data types, and value ranges to ensure the integrity of the assessment data.
- **Generate Training Modules**: Extracts relevant skills from the assessment data to aid in creating tailored training modules.

## Installation

Before using `BaseTrainingPlan`, ensure that you have Julia installed on your machine. You can add this module to your Julia environment by including it in your project or environment:

```julia
] add https://github.com/your-repo/BaseTrainingPlan
```

## Usage

To start using `BaseTrainingPlan`, simply import the module into your Julia environment:

```julia
using BaseTrainingPlan
```

### Reading and Validating a Training Assessment File

To read a training assessment file (in CSV format) and validate its structure, use the `read_training_assessment_file` function:

```julia
assessment_data = read_training_assessment_file("path/to/assessment_file.csv")
```

This function reads the CSV file and checks:

- The file has exactly 4 columns.
- The column names are `Number`, `Skill`, `Current_skills`, and `Desired_skill`.
- All entries in the `Skill` column are non-empty strings.
- All values in the `Current_skills` and `Desired_skill` columns are integers within the range 0 to 5.

### Generating Training Modules

To generate a list of training modules (i.e., skills) from the assessment data, use the `generate_modules_from_training_assessment` function:

```julia
modules = generate_modules_from_training_assessment("path/to/assessment_file.csv")
```

This function returns an array containing the skills listed in the `Skill` column of the validated assessment file.

## Contributing

Contributions to `BaseTrainingPlan` are welcome! Please submit a pull request with your changes or open an issue if you encounter any problems.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contact

For questions, suggestions, or feedback, feel free to reach out via [GitHub Issues](https://github.com/your-repo/BaseTrainingPlan/issues).

---

This README provides an overview of the functionality within `BaseTrainingPlan`. For detailed examples and additional information, please refer to the module's source code and documentation.
