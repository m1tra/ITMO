export function NegaPositionalToBaseInt(n: number, base: number = -10) {
  if (n === 0) return "0";

  // eslint-disable-next-line prefer-const
  let digits: number[] = [];
  let num = n;

  while (num != 0) {
    let ost = num % base;
    if (ost < 0) {
      ost -= base;
      num += base;
    }
    digits.push(ost);
    num = Math.trunc(num / base)
  }
  return digits.reverse().join("")

}
