DAY 6 - BEST PRACTICES

## Lesson Objectives

After this stage the trainee should be able to:

+ Learn how to structure a scss folders the icalier way.
+ Learn how to properly name clases.
+ Understand how to use compund selectors
+ Undesrstand Dos and Don'ts of SCSS.


 ## Lesson

This lesson consists of a detailed exploration of best practices to write scss code.

+ Explain and demo:
  + folder architecture: `pages`, `base`, `vendor`, `components`, `shame`, `settings`
  + CSS Don'ts
  + Compound selectors

The SCSS folder architecture used in most projects in icalia it's a combination of SMACSS & BEM,  a good way to understand the next architecture is thinking our design system as an Atomic Design, our design is formed by big atoms (single elements).

📄 base.scss
This file contains all the files & partial files imports.

📁 vendor/
Here it goes all the externals stylesheets that you need, could be frameworks, plugins, libraries, etc.

📁 settings/
Here it goes the main files needed for run the styles, for example here goes three very important files:

  📄 _variables.scss
  File with all the variables of the project.

  📄 _typography.scss
  We locate all code relating to text, fonts, titles and other typography related rules.

  📄 _functions.scss
  We locate here the functions and mixins of the project.

📁 elements/
Here it goes all the “single” elements (think like an single atom of a component), for example a button, an “avatar”.

📁 pages/
Here it goes the specific styles need for tweak things in specific pages, for example if you need to separate to specific buttons with and specific _page-name.scss.

📄 _utilities.scss
Here it goes styles like media queries

📄 _shame.scss
Here it goes all the styles that needed the !important declaration or another form of override.

stylesheets/
├── base.scss
├── vendor/
│   ├── _vendor-file..scss
├── settings/
│   ├── _variables.scss
|   ├── _typography.scss
│   ├── _functions.scss
├── elements/
│   ├── _element-name.scss
├── pages/
│   ├── _page-namescss
└── _shame.scss

Don’ts (from Dropbox (S)CSS Style guide)

    Avoid using HTML tags in CSS selectors
        E.g. Prefer .o-modal {} over div.o-modal {}
        Always prefer using a class over HTML tags (with some exceptions like CSS resets)
    Don't use ids in selectors
        #header is overly specific compared to, for example .header and is much harder to override
        Read more about the headaches associated with IDs in CSS here.
    Don’t nest more than 3 levels deep
        Nesting selectors increases specificity, meaning that overriding any CSS set therein needs to be targeted with an even more specific selector. This quickly becomes a significant maintenance issue.
    Avoid using nesting for anything other than pseudo selectors and state selectors.
        E.g. nesting :hover, :focus, ::before, etc. is OK, but nesting selectors inside selectors should be avoided.
    Don't !important
        Ever.
        If you must, leave a comment, and prioritise resolving specificity issues before resorting to !important.
        !important greatly increases the power of a CSS declaration, making it extremely tough to override in the future. It’s only possible to override with another !important declaration later in the cascade.
    Don’t use margin-top.
        Vertical margins collapse. Always prefer padding-top ormargin-bottom on preceding elements
    Avoid shorthand properties (unless you really need them)
        It can be tempting to use, for instance, background: #fff instead of background-color: #fff, but doing so overrides other values encapsulated by the shorthand property. (In this case, background-image and its associative properties are set to “none.”
        This applies to all properties with a shorthand: border, margin, padding, font, etc.

Compound selectors that with SASS help us to group similar styles and name it depending on the element, block or group and then a description of the rules that are being applied.

For the proper naming of classes we follow certain rules:
1. Unique, meaningful names for a logical unit of style. Avoid excessive shorthand.
  Example:
    Good: .alert-box or .recents-intro or .button
    Bad: .feature or .content or .btn

2. Don't create a class name larger than three levels. The same thing with nesting we shouldn't
have classes larger than three leves.
  Example:
    Good: .dojo--card-header
    Bad: .dojo--card-header-pr

The [index.html](lesson/source/index.html.erb) and [lesson/source/stylesheet/base.css.scss](lesson/assets/stylesheet.css) files in this directory contains commented code examples for all of these concepts. These files can also be opened in the browser to demonstrate the effects of the HTML markup and the CSS style.

## Practice

Each trainee will practice the previously covered theory by writing CSS code according to the following instructions/requirements:


### Web Developer Portfolio

In this exercise, you will continue to create your own web developer portfolio by making sure that the project it's using the best CSS practices.

*For this exercise, only the structure is mandatory. Copy (content text) placeholders (Lorem Ipsum for text, placehold.it for images) may be used.*

1. All the points that were requested the past four days.

2. Do a refactor of the code using:
  1. folder architecture.
  2. variables.
  3. Correct naming.
  4. Nesting with compund selectors.


Check out the [practice/](practice/) subdirectory in this directory, which you can use to continue building your static portfolio.

## Self Study

## The Responsive web desginer bootcamp / A better way to name our CSS classes
https://scrimba.com/c/c39epaAB

## Useful Links

+ **Dropbox (S)CSS Style Guide**
https://github.com/dropbox/css-style-guide

