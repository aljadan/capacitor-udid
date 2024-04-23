import { registerPlugin } from '@capacitor/core';

import type { UdidPlugin } from './definitions';

const Udid = registerPlugin<UdidPlugin>('Udid', {
  web: () => import('./web').then(m => new m.UdidWeb()),
});

export * from './definitions';
export { Udid };
