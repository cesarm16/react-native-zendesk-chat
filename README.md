# react-native-zendesk-chat

Simple module that allows displaying Zopim Chat from Zendesk for React Native.

## VERSIONS

For RN version higher than 0.60

## Getting started

Follow the instructions to install the SDK for [iOS](https://developer.zendesk.com/embeddables/docs/ios-chat-sdk/introduction) and [Android](https://developer.zendesk.com/embeddables/docs/android-chat-sdk/introduction).

#### Android

1. `npm install react-native-zendesk-chat --save`
2. Open up `android/app/main/java/[...]/MainActivity.java`

- Add `import com.taskrabbit.zendesk.*;` to the imports at the top of the file
- Add `new RNZendeskChatPackage(this)` to the list returned by the `getPackages()` method

3. Append the following lines to `android/settings.gradle`:

```
include ':react-native-zendesk-chat'
project(':react-native-zendesk-chat').projectDir = new File(rootProject.projectDir,	'../node_modules/react-native-zendesk-chat/android')
```

4. Insert the following lines inside the dependencies block in `android/app/build.gradle`:

```
compile project(':react-native-zendesk-chat')
```

5. Configure `ZopimChat` in `android/app/main/java/[...]/MainActivity.java`

```
ZopimChat.init("YOUR_ZENDESK_ACCOUNT_KEY").build();
```

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
