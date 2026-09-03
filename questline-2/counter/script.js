let count = 0;

const val = document.getElementById('val');

document.getElementById('inc').onclick = () => {
  count++;
  val.textContent = count;
};

document.getElementById('dec').onclick = () => {
  count--;
  val.textContent = count;
};

document.getElementById('res').onclick = () => {
  count = 0;
  val.textContent = count;
};