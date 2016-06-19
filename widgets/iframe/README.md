# dashing-iframe
IFrame plugin for dashing

## Description

[Dashing](http://shopify.github.com/dashing) widget to display an iframe with specified src

## Installation

Create the folder `iframe` in the `/widgets/` directory. Put the files `iframe.coffee`, `iframe.html` and `iframe.scss` in that folder.

This can also be done by using the gist: https://gist.github.com/hussfelt/a6fe71ebd7cce327df29

    dashing install a6fe71ebd7cce327df29

## Dashboard configuration

Put the following in your dashboard.erb file to show the iframe:

```html
    <li data-row="1" data-col="1" data-sizex="1" data-sizey="1">
      <div data-id="iframeId1" data-view="Iframe"></div>
    </li>
```

## Updating the src

### Curl

```bash
curl -d '{
	"auth_token": "YOUR_AUTH_TOKEN",
	"src": "http://example.com/"
}' http://0.0.0.0:3030/widgets/iframeId1
```

### Inline

```html
    <li data-row="1" data-col="1" data-sizex="1" data-sizey="1">
      <div data-id="iframeId1" data-view="Iframe" data-src="http://example.com/"></div>
    </li>
```

# License
Distributed under the MIT license