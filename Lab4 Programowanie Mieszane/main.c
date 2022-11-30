#include <stdio.h>

int szukaj_max(int a, int b, int c, int d);

int main()
{
	int a, b, c, d, wynik;
	printf("\nPodaæ trzy liczby\n");
	scanf_s("%d %d %d %d", &a, &b, &c, &d, 32);
	wynik = szukaj_max(a, b, c, d);

	printf("Max: %d", wynik);

	return 0;
}
