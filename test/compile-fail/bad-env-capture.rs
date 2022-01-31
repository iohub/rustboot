// xfail-stage0
// xfail-stage1
// error-pattern: attempted dynamic environment-capture
fn foo() {
  let int x;
  fn bar() {
    log x;
  }
}
fn main() {
  foo();
}