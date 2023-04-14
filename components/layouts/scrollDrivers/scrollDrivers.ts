import { LaxDriver } from 'use-lax'

const scrollHeight: LaxDriver = {
  name: 'scrollY',
  getValueFn: () => window.scrollY,
  options: { inertiaEnabled: true }
}

export const scrollDrivers = [scrollHeight]
