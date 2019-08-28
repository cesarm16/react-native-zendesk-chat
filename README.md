# react-native-zendesk-chat

Simple module that allows displaying Zopim Chat from Zendesk for React Native.

## VERSIONS

For RN version higher than 0.60

## Getting started

Follow the instructions to install the SDK for [iOS](https://developer.zendesk.com/embeddables/docs/ios-chat-sdk/introduction) and [Android](https://developer.zendesk.com/embeddables/docs/android-chat-sdk/introduction).

## Usage

In your code add `import ZendeskChat from 'react-native-zendesk-chat';`.

```
ZendeskChat.startChat({
  name: user.full_name,
  email: user.email,
  phone: user.mobile_phone,
  tags: ['tag1', 'tag2'],
  department: "Your department"
});
```

## TODO

- Allow setting form configuration from JS
- Add examples
