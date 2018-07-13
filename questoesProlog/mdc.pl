mdc(M,N,MDC) :-
	M == 0 -> MDC is N ;
	mdc(N mod M,M,MDC).
