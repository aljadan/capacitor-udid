import { WebPlugin } from '@capacitor/core';

import type { UdidPlugin } from './definitions';

export class UdidWeb extends WebPlugin implements UdidPlugin {
  async getUdid(): Promise<{ value: string }> {
    throw this.unimplemented('Not implemented on web.');
  }
}
