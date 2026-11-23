# Jonathan Morris's Resume

This repository contains the LaTeX source files for my professional resume. As a Senior Software Engineer, I've developed a variety of skills and experiences that are detailed within this document. Feel free to explore the contents to understand more about my professional journey and technical capabilities.

## Overview

The resume highlights my experience across several key areas:

- **Software Development:** In-depth knowledge and application in both frontend and backend technologies.
- **Leadership and Project Management:** Experience leading projects and managing cross-functional teams to drive technology solutions.
- **Open Source Contributions:** Active participation in open source projects, demonstrating a commitment to collaborative software development.

## Repository Structure

- `resume.tex` - LaTeX source file for the resume.
- `install.sh` - Script to install the needed TeX dependencies that do not come with BasicTeX.
- `deps` - List of TeX Live packages installed by `install.sh`.
- `lock.sh` - Regenerates `tl-lock.txt` from the build output.
- `tl-lock.txt` - Record of the TeX Live packages (and revisions) used by the last build.
- `sections/` - Directory containing the various resume sections.
- `awesome-cv.cls` - Main class file for formatting the pdf.

## How to Use This Repository

To compile the resume from source:

1. Ensure you have LaTeX installed on your machine. For installation instructions, visit [LaTeX Project](https://www.latex-project.org/get/).
2. Clone the repository to your local machine:

```bash
git clone https://github.com/jonathanmorris180/resume.git
cd resume
```

3. Install the needed dependencies if you don't already have them:

```bash
./install.sh
```

4. Compile the LaTeX source file:

```bash
xelatex resume.tex
```

This will generate a `resume.pdf` file in the same directory.

## Dependency Management

The rendered layout depends on installed TeX Live packages, not just on the code in this repository, so dependencies are pinned in three ways:

- `deps` — the TeX Live packages that `install.sh` installs with `tlmgr` on top of a BasicTeX installation. The list is kept to exactly what the documents load, so a fresh machine is self-sufficient. Note that `tlmgr` cannot install specific versions of a package.
- `\RequirePackage[2025-11-01]{latexrelease}` at the top of `resume.tex` and `cover-letter.tex` — freezes the LaTeX kernel and rollback-aware packages (notably `array`, whose 2024-06-01 release changed the spacing of `\cventry` blocks) to a fixed release. A newer TeX Live installation emulates that release instead of changing the layout. To upgrade to a newer LaTeX release, change the date in both files and re-check the spacing between entries.
- `tl-lock.txt` — a record of every TeX Live package the build loads, with its `tlmgr` revision and catalogue version. Regenerate it with `./lock.sh` after a successful build. If the layout ever shifts on a new machine, run `./lock.sh` and diff the result against the committed `tl-lock.txt` to see exactly which packages changed.

## Contact Information

For more information or to reach out for professional inquiries, please contact me via:

- **Email:** jonathanmorris678@gmail.com
- **LinkedIn:** [Jonathan Morris LinkedIn](https://www.linkedin.com/in/jonathanmorris180)
- **GitHub:** [jonathanmorris4](https://github.com/jonathanmorris4)

Thank you for your interest!
