# capacitor-udid

A robust plugin for Capacitor that provides a persistent Universal Device Identifier (UDID) across app reinstalls on iOS and Android platforms.

## Installation

```bash
npm install capacitor-udid
npx cap sync
```

## Usage

### Retrieve UDID

```typescript
import { Udid } from 'capacitor-udid';

async function fetchUdid() {
  const result = await Udid.getUdid();
  console.log(`Device UDID: ${result.value}`);
}
```

## API Reference

### `getUdid()`

```typescript
getUdid() => Promise<{ value: string; }>
```

## Platform Details

The UDID is derived using platform-specific mechanisms:

- **iOS:** Uses `identifierForVendor` combined with Keychain storage to persist across app reinstalls.
- **Android:** Utilizes `Settings.Secure.ANDROID_ID` as the base identifier.

## Considerations

The UDID can change after a factory reset! Additionally if a device has been updated to Android 8.0 through an OTA and the app is reinstalled the UDID may change as well due to security changes in Android 8.0. On rooted and jailbroken devices the ID can be changed, so please take this into account. However, it should not be possible to identify as a different device through random guessing because of the complexity of the ID. Furthermore, the UDID may also change if there is a change in the app's signing signature, for both iOS and Android. Ensure that you always use the same digital signature to sign your app.

## Acknowledgments

This plugin was inspired by the [flutter_udid](https://pub.dartlang.org/packages/flutter_udid) plugin, which offers a similar functionality for Flutter applications across multiple platforms.
