Feature: Eteration Cucumber API Test

Background: valid response check

    @posts
Scenario Outline:getting posts
    * def requestBody =
    """
    {
    "userId": <userId>,
    "id": <id>,
    "title": <title>,
    "body": <body>
    }
    """
    Given url 'https://jsonplaceholder.typicode.com'
    And path 'posts',
    And header Content-Type = 'application/json'
    And request requestBody
    When method GET
    Then status 200
    And match response.title == <title>

    Examples:
    | userId |id|title|body|
    |1|1|'sunt aut facere repellat provident occaecati excepturi optio reprehenderit'|'quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto'|
    |1|8|'dolorem dolore est ipsam'|'dignissimos aperiam dolorem qui eum\nfacilis quibusdam animi sint suscipit qui sint possimus cum\nquaerat magni maiores excepturi\nipsam ut commodi dolor voluptatum modi aut vitae'|
    |7|67|'aliquid eos sed fuga est maxime repellendus'|'reprehenderit id nostrum\nvoluptas doloremque pariatur sint et accusantium quia quod aspernatur\net fugiat amet\nnon sapiente et consequatur necessitatibus molestiae'|


#Copilot probably edited the scenario this way because it recognized that sending a body within a GET request is incorrect, and I wanted to add that point as well :)


    @posts2
Scenario Outline: getting posts
    Given url 'https://jsonplaceholder.typicode.com'
    And path 'posts', <id>
    And header Content-Type = 'application/json'
    When method GET
    Then status 200

    Examples:
    | id |
    | 1  |
    | 8  |
    | 67 |

    @comments
Scenario:getting comments

    @photos
Scenario:getting photos

    @todos
Scenario:getting todos

    @users
Scenario:getting users