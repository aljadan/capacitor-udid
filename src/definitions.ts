export interface UdidPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
