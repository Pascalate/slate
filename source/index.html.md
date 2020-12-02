---
title: Pascalate API Documentation v1
language_tabs:
  - shell: Curl
  - nodejs: NodeJS
language_clients:
  - shell: ""
  - nodejs: ""
toc_footers: []
includes: []
search: false
highlight_theme: darkula
headingLevel: 2

---

<!-- Generator: Widdershins v4.0.1 -->

<h1 id="pascalate-api-documentation">Pascalate API Documentation v1</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

Base URLs:

* <a href="https://fegendata.azurewebsites.net">https://fegendata.azurewebsites.net</a>

<h1 id="pascalate-api-documentation-date">Date</h1>

Date Generators

## Generate a date

> Code samples

```shell
# You can also use wget
curl -X GET https://fegendata.azurewebsites.net/api/Date \
  -H 'Accept: text/plain'

```

```nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'text/plain'
};

fetch('https://fegendata.azurewebsites.net/api/Date',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

`GET /api/Date`

sample date remarks

<h3 id="generate-a-date-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|type|query|[DateRequestType](#schemadaterequesttype)|false|Date request type|
|ageType|query|[UserAgeType](#schemauseragetype)|false|Desired age type. Used only if type is set to birthday|
|min|query|string|false|Minimum date|
|max|query|string|false|Maximum date|

#### Enumerated Values

|Parameter|Value|
|---|---|
|type|Birthday|
|type|Future|
|type|Past|
|ageType|Infant|
|ageType|Child|
|ageType|Teenager|
|ageType|Adult|
|ageType|Youth|
|ageType|Retired|

> Example responses

> 200 Response

```
"string"
```

```json
"string"
```

<h3 id="generate-a-date-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Generated Date|string|

<aside class="success">
This operation does not require authentication
</aside>

<h1 id="pascalate-api-documentation-id">Id</h1>

Generate Valid random Identifiers

## Generates a random numerical identifier with a given length

> Code samples

```shell
# You can also use wget
curl -X GET https://fegendata.azurewebsites.net/api/Id/numerical

```

```nodejs
const fetch = require('node-fetch');

fetch('https://fegendata.azurewebsites.net/api/Id/numerical',
{
  method: 'GET'

})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

`GET /api/Id/numerical`

<h3 id="generates-a-random-numerical-identifier-with-a-given-length-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|length|query|integer(int32)|false|none|

<h3 id="generates-a-random-numerical-identifier-with-a-given-length-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Generated value|None|

<aside class="success">
This operation does not require authentication
</aside>

## Generates a Random US Social Security Number (SSN)

> Code samples

```shell
# You can also use wget
curl -X GET https://fegendata.azurewebsites.net/api/Id/ssn

```

```nodejs
const fetch = require('node-fetch');

fetch('https://fegendata.azurewebsites.net/api/Id/ssn',
{
  method: 'GET'

})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

`GET /api/Id/ssn`

<h3 id="generates-a-random-us-social-security-number-(ssn)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|format|query|boolean|false|Format SSN(xxx-xx-xxxx) or not (xxxxxxxxx)|

<h3 id="generates-a-random-us-social-security-number-(ssn)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Generated SSN|None|

<aside class="success">
This operation does not require authentication
</aside>

## Generate a random US EIN

> Code samples

```shell
# You can also use wget
curl -X GET https://fegendata.azurewebsites.net/api/Id/ein

```

```nodejs
const fetch = require('node-fetch');

fetch('https://fegendata.azurewebsites.net/api/Id/ein',
{
  method: 'GET'

})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

`GET /api/Id/ein`

<h3 id="generate-a-random-us-ein-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|format|query|boolean|false|Format EIN(XX-XXXXX) or not (XXXXXXX)|

<h3 id="generate-a-random-us-ein-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Generated EIN|None|

<aside class="success">
This operation does not require authentication
</aside>

## Generates the Soundex representation of a name

> Code samples

```shell
# You can also use wget
curl -X GET https://fegendata.azurewebsites.net/api/Id/soundex

```

```nodejs
const fetch = require('node-fetch');

fetch('https://fegendata.azurewebsites.net/api/Id/soundex',
{
  method: 'GET'

})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

`GET /api/Id/soundex`

<h3 id="generates-the-soundex-representation-of-a-name-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|name|query|string|false|Name|

<h3 id="generates-the-soundex-representation-of-a-name-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Generated soundex representation|None|

<aside class="success">
This operation does not require authentication
</aside>

## Generates a valid Drivers license number. Currently work only for Florida Numbers

> Code samples

```shell
# You can also use wget
curl -X POST https://fegendata.azurewebsites.net/api/Id/driverlicense \
  -H 'Content-Type: application/json-patch+json'

```

```nodejs
const fetch = require('node-fetch');
const inputBody = {
  "country": "string",
  "state": "string",
  "firstName": "string",
  "middleName": "string",
  "lastName": "string",
  "dateOfBirth": "2019-08-24T14:15:22Z",
  "gender": "string"
};
const headers = {
  'Content-Type':'application/json-patch+json'
};

fetch('https://fegendata.azurewebsites.net/api/Id/driverlicense',
{
  method: 'POST',
  body: JSON.stringify(inputBody),
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

`POST /api/Id/driverlicense`

> Body parameter

```json
{
  "country": "string",
  "state": "string",
  "firstName": "string",
  "middleName": "string",
  "lastName": "string",
  "dateOfBirth": "2019-08-24T14:15:22Z",
  "gender": "string"
}
```

<h3 id="generates-a-valid-drivers-license-number.-currently-work-only-for-florida-numbers-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|format|query|boolean|false|none|
|body|body|[DriverLicenseRequest](#schemadriverlicenserequest)|false|none|

<h3 id="generates-a-valid-drivers-license-number.-currently-work-only-for-florida-numbers-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Generated drivers license|None|

<aside class="success">
This operation does not require authentication
</aside>

# Schemas

<h2 id="tocS_DateRequestType">DateRequestType</h2>
<!-- backwards compatibility -->
<a id="schemadaterequesttype"></a>
<a id="schema_DateRequestType"></a>
<a id="tocSdaterequesttype"></a>
<a id="tocsdaterequesttype"></a>

```json
"Birthday"

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|string|false|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|*anonymous*|Birthday|
|*anonymous*|Future|
|*anonymous*|Past|

<h2 id="tocS_UserAgeType">UserAgeType</h2>
<!-- backwards compatibility -->
<a id="schemauseragetype"></a>
<a id="schema_UserAgeType"></a>
<a id="tocSuseragetype"></a>
<a id="tocsuseragetype"></a>

```json
"Infant"

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|string|false|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|*anonymous*|Infant|
|*anonymous*|Child|
|*anonymous*|Teenager|
|*anonymous*|Adult|
|*anonymous*|Youth|
|*anonymous*|Retired|

<h2 id="tocS_DriverLicenseRequest">DriverLicenseRequest</h2>
<!-- backwards compatibility -->
<a id="schemadriverlicenserequest"></a>
<a id="schema_DriverLicenseRequest"></a>
<a id="tocSdriverlicenserequest"></a>
<a id="tocsdriverlicenserequest"></a>

```json
{
  "country": "string",
  "state": "string",
  "firstName": "string",
  "middleName": "string",
  "lastName": "string",
  "dateOfBirth": "2019-08-24T14:15:22Z",
  "gender": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|country|string¦null|false|none|none|
|state|string¦null|false|none|none|
|firstName|string¦null|false|none|none|
|middleName|string¦null|false|none|none|
|lastName|string¦null|false|none|none|
|dateOfBirth|string(date-time)|false|none|none|
|gender|string¦null|false|none|none|

