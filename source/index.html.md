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

* <a href="http://api.pascalate.com">http://api.pascalate.com</a>

<h1 id="pascalate-api-documentation-date">Date</h1>

Date Generators

## Dates

> Code samples

```shell
curl --request GET \
  --url http://api.pascalate.com/api/Date \
  --header 'Accept: text/plain'
```

`GET /api/Date`

sample date remarks

<h3 id="dates-parameters">Parameters</h3>

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

<h3 id="dates-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Generated Date|string|

<aside class="success">
This operation does not require authentication
</aside>

<h1 id="pascalate-api-documentation-id">Id</h1>

Valid random Identifiers

## Numerical identifier of a given length

> Code samples

```shell
curl --request GET \
  --url http://api.pascalate.com/api/Id/numeric \
  --header 'Accept: text/plain'
```

`GET /api/Id/numeric`

<h3 id="numerical-identifier-of-a-given-length-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|length|query|integer(int32)|false|none|

> Example responses

> 200 Response

```
"string"
```

```json
"string"
```

<h3 id="numerical-identifier-of-a-given-length-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Generated numeric value|string|

<aside class="success">
This operation does not require authentication
</aside>

## Alphanumeric string

> Code samples

```shell
curl --request GET \
  --url http://api.pascalate.com/api/Id/alphanumeric \
  --header 'Accept: text/plain'
```

`GET /api/Id/alphanumeric`

<h3 id="alphanumeric-string-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|length|query|integer(int32)|false|length|
|with_numbers|query|boolean|false|include numbers|

> Example responses

> 200 Response

```
"string"
```

```json
"string"
```

<h3 id="alphanumeric-string-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Generated value|string|

<aside class="success">
This operation does not require authentication
</aside>

## Guid

> Code samples

```shell
curl --request GET \
  --url http://api.pascalate.com/api/Id/guid \
  --header 'Accept: text/plain'
```

`GET /api/Id/guid`

> Example responses

> 200 Response

```
"string"
```

```json
"string"
```

<h3 id="guid-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Generated Guid|string|

<aside class="success">
This operation does not require authentication
</aside>

## Social Security Number (SSN)

> Code samples

```shell
curl --request GET \
  --url http://api.pascalate.com/api/Id/ssn \
  --header 'Accept: text/plain'
```

`GET /api/Id/ssn`

<h3 id="social-security-number-(ssn)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|format|query|boolean|false|Format SSN(xxx-xx-xxxx) or not (xxxxxxxxx)|

> Example responses

> 200 Response

```
"string"
```

```json
"string"
```

<h3 id="social-security-number-(ssn)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Generated SSN|string|

<aside class="success">
This operation does not require authentication
</aside>

## US EIN

> Code samples

```shell
curl --request GET \
  --url http://api.pascalate.com/api/Id/ein \
  --header 'Accept: text/plain'
```

`GET /api/Id/ein`

<h3 id="us-ein-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|format|query|boolean|false|Format EIN(XX-XXXXX) or not (XXXXXXX)|

> Example responses

> 200 Response

```
"string"
```

```json
"string"
```

<h3 id="us-ein-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Generated EIN|string|

<aside class="success">
This operation does not require authentication
</aside>

## Soundex representation of a name

> Code samples

```shell
curl --request GET \
  --url http://api.pascalate.com/api/Id/soundex \
  --header 'Accept: text/plain'
```

`GET /api/Id/soundex`

<h3 id="soundex-representation-of-a-name-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|name|query|string|false|Name|

> Example responses

> 200 Response

```
"string"
```

```json
"string"
```

<h3 id="soundex-representation-of-a-name-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Generated Soundex representation|string|

<aside class="success">
This operation does not require authentication
</aside>

## valid Drivers license number. Currently work only for Florida Numbers

> Code samples

```shell
curl --request POST \
  --url http://api.pascalate.com/api/Id/driverlicense \
  --header 'Accept: text/plain' \
  --header 'Content-Type: application/json-patch+json' \
  --data '{"country":"us","state":"fl","firstName":"string","middleName":"string","lastName":"string","dateOfBirth":"2019-08-24T14:15:22Z","gender":"female"}'
```

`POST /api/Id/driverlicense`

> Body parameter

```json
{
  "country": "us",
  "state": "fl",
  "firstName": "string",
  "middleName": "string",
  "lastName": "string",
  "dateOfBirth": "2019-08-24T14:15:22Z",
  "gender": "female"
}
```

<h3 id="valid-drivers-license-number.-currently-work-only-for-florida-numbers-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|format|query|boolean|false|none|
|body|body|[DriverLicenseRequest](#schemadriverlicenserequest)|false|none|
|» country|body|string|true|none|
|» state|body|string|true|none|
|» firstName|body|string|true|none|
|» middleName|body|string¦null|false|none|
|» lastName|body|string|true|none|
|» dateOfBirth|body|string(date-time)|true|none|
|» gender|body|string|true|none|

> Example responses

> 200 Response

```
"string"
```

```json
"string"
```

<h3 id="valid-drivers-license-number.-currently-work-only-for-florida-numbers-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Generated Drivers License|string|

<aside class="success">
This operation does not require authentication
</aside>

<h1 id="pascalate-api-documentation-finance">Finance</h1>

## Credit Card Name

> Code samples

```shell
curl --request GET \
  --url http://api.pascalate.com/api/Finance/creditcard/name \
  --header 'Accept: text/plain'
```

`GET /api/Finance/creditcard/name`

Returns a random Credit Card Name

> Example responses

> 200 Response

```
"string"
```

```json
"string"
```

<h3 id="credit-card-name-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Credit Card Name|string|

<aside class="success">
This operation does not require authentication
</aside>

## Credit Card Data

> Code samples

```shell
curl --request GET \
  --url http://api.pascalate.com/api/Finance/creditcard/details \
  --header 'Accept: text/plain'
```

`GET /api/Finance/creditcard/details`

Generates random Valid Credit Card Details

<h3 id="credit-card-data-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|name|query|string|false|Optional Credit card name|

> Example responses

> 200 Response

```
{"issuer":"string","number":"string","month":"string","year":"string"}
```

```json
{
  "issuer": "string",
  "number": "string",
  "month": "string",
  "year": "string"
}
```

<h3 id="credit-card-data-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Generated Date|[CreditCardModel](#schemacreditcardmodel)|

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

<h2 id="tocS_CreditCardModel">CreditCardModel</h2>
<!-- backwards compatibility -->
<a id="schemacreditcardmodel"></a>
<a id="schema_CreditCardModel"></a>
<a id="tocScreditcardmodel"></a>
<a id="tocscreditcardmodel"></a>

```json
{
  "issuer": "string",
  "number": "string",
  "month": "string",
  "year": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|issuer|string¦null|false|none|none|
|number|string¦null|false|none|none|
|month|string¦null|false|none|none|
|year|string¦null|false|none|none|

<h2 id="tocS_DriverLicenseRequest">DriverLicenseRequest</h2>
<!-- backwards compatibility -->
<a id="schemadriverlicenserequest"></a>
<a id="schema_DriverLicenseRequest"></a>
<a id="tocSdriverlicenserequest"></a>
<a id="tocsdriverlicenserequest"></a>

```json
{
  "country": "us",
  "state": "fl",
  "firstName": "string",
  "middleName": "string",
  "lastName": "string",
  "dateOfBirth": "2019-08-24T14:15:22Z",
  "gender": "female"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|country|string|true|none|none|
|state|string|true|none|none|
|firstName|string|true|none|none|
|middleName|string¦null|false|none|none|
|lastName|string|true|none|none|
|dateOfBirth|string(date-time)|true|none|none|
|gender|string|true|none|none|

