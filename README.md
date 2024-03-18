<center><a href="https://washingtonsoilhealthinitiative.com/state-of-the-soils/"><img src="images/washi-logo.jpg" alt="Washington Soil Health Initiative logo" height="138"/></a></center>

**Data Management Plan for the [Washington Soil Health
Initiative](https://washingtonsoilhealthinitiative.com/) (WaSHI) [State of the
Soils
Assessment](https://washingtonsoilhealthinitiative.com/state-of-the-soils/)
(SOS)**

## **How to re-publish after edits**

For small edits (e.g., fixing hyperlinks or revising a few sentences), open and
edit `sos-data-management-plan.docx` in the `washi-dmp` main folder. By editing
this file directly, you won't need to do all the tedious formatting fixes listed
in the next section.

For major edits (e.g., rewriting sections or adding new tables), follow step 1
below, then skip to [Formatting .docx], and then come back to step 2.

1.  After editing the `.qmd` files, run `quarto render` in Terminal.

2.  Change date to Last Modified: \<date\>.

3.  Update the table of contents.

4.  Save as `sos-data-management-plan.docx` and as PDF in the `washi-dmp`
    project folder and in the shared drive `data-management` folder.

5.  Run `quarto render` again in Terminal.

6.  Push changes to GitHub, which will trigger the GitHub action to re-publish.

## **Formatting `.docx`**

After rendering (`quarto render` in Terminal), open `Data-Management-Plan.docx`
in the `_book` folder. Make the following formatting changes and then continue
with step 2 above.

-   Turn the data life cycle steps into a table (vertical align icons) and
    format.

-   For each table, turn off column banding and choose Plain Table 1 in
    `Table Design`.

-   Scroll through and adjust image wrapping/sizing, bullet lists, spacing, and
    page breaks as necessary.

-   Delete extra line breaks after some images.

-   Extend margin for code block in `snippet header` to get all `=` in one line
    in (section 9.3).
