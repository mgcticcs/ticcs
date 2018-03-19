#define ARRAY_SIZE 100
int ABC[ARRAY_SIZE];

void initArray() {
	int i = 0;
	for( i = 0; i < ARRAY_SIZE; ++i) {
		ABC[i] = i;
	};
}
void shiftArray() {
	static int delta = 0;
	int i = 0;
	for( i = 0; i < ARRAY_SIZE; ++i) {
		ABC[i] = (delta + i) % ARRAY_SIZE;
	};
	++delta;
}
void main() {
	initArray();
	while(1) {
		shiftArray();
	}
}
