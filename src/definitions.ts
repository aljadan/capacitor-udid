export interface UdidPlugin {
  getUdid(): Promise<{ value: string }>;
}
