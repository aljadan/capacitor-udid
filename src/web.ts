import { WebPlugin } from '@capacitor/core';

import type { UdidPlugin } from './definitions';

export class UdidWeb extends WebPlugin implements UdidPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
