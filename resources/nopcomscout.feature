Feature: Book Category

  Background: I should be able to see homework
  Given       I enter URL "https://demo.nopccommerce.com/" in browser
  And         I am on home page

  Scenario Outline: I should be able to see top menu tabs on homepage with categories
    When            I am on home page
    Then            I should be able to see top menu tabs with "<Categories>"

    Example:
      |Categories       |
      |Computer         |
      |Electronic       |
      |Apparel          |
      |Digital downloads|
      |Books            |
      |Jewellery        |
      |Gift card        |

      Scenario Outline: I should be able to see Book page with filters
        When            I select Book category from top menu tabs on home page
        Then            I should be navigated to book category
        And             I should be able to see "<filters>"

        Examples:
        |Filters |
        |Short by|
        |Display |
        |The Grid|
        |List Tab|

        Scenario Outline: I should be able to see list of terms of each filter
          Given           I am on book page
          When            I click on "<Filter>"
          Then            I should be able to see "<List>" in dropdown menu

          Examples:
          |Filter  |List                                                          |
          |Sort by |Name: Z to A, Price:Low to High, Price:High to Low, Created on|
          |Display |3,6,9                                                         |

          Scenario Outline: I should be able to chose any filter option with specific result
            Given           I am on book page
            When            I click on any "<Filter>"
            And             I click on any "<Option>"
            Then            I Should be able to chose any filter option from the list
            And             I should be able to see "Result>"

            Examples:
            |Filter|Option|Result                                                                   |
            |Sort by |Name A to Z |sorted product with the product name in alphabetical order A to Z|
            |Sort by |Name: Z to A|sorted product with the product name in alphabetical order Z to Z|
            |Sort by |Price: Low to High|sorted product with the price in descending order          |
            |Sort by |Price: High to Low|sorted product with the price in ascending order           |
            |Sort by |Created on        |Recently added product should be show fist                 |
            |Display |3                 |3 products in a page                                       |
            |Display |6                 |6 products in a page                                       |
            |Display |9                 |9 products in a page                                       |

            Scenario Outline: I should be able to see product display format according display format type as per given
                              picture in sts document
              Given           I am on book page
              When            I click on "<display format icon>"
              Then            I should be able to see product display format according display format type as per given                               picture in SRS document

              Examples:
              |display format icon|
              |Grid               |
              |List               |




