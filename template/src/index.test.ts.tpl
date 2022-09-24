import { sayHello } from '.';

test('should sayHello as expected', () => {
  expect(sayHello('{{{ name }}}')).toBe('Hi!{{{ name }}}');
});
