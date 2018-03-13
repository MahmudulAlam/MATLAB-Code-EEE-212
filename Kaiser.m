clear all() ;
clc;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Fs = 1000 ; 
Fc = 250 ; 
delF = 50 ;
delta = .001 ;

fc = Fc / Fs ;
delf = delF/ Fs ; 
delW = 2*pi * delf ;

A = -20*log10(delta) ;
N = (A - 8) / (2.285*delW) + 1 ;
N = floor(N) ;
alfa = (N-1)/2 ;

if A >50 
    beta = .1102*(A-8.7) ;
elseif 21<= A  && A <= 50 
    beta = .5842*(A-21)^.4 + .07886*(A-21) ;
elseif A<21
    beta = 0.0 ;
end

n= 0: N-1 ;
val = ( ( n-alfa ) / alfa ).^2 ;
x= beta * ( (1-val) .^ 5) ;
inotx = inot(x) ;
w = inot(x) ./ inot(beta) ;
p= (n- (N-1)/2 )*2*pi*fc ;

for i= 1 : length(n)
    if n(i) == (N-1) /2
        x = 1;
    else
        x=0 ;
    end 
end

if x == 1
    hd = 2*fc*(sin(p) / p ) ;
elseif x == 0
    hd = 2*fc ;
end
    
h = hd .* w ;
disp(beta) ;
plot(h) ;

%======================%=======================%====================%
%======================%=======================%====================%
%======================%=======================%====================%

NFFT = 1024 ; 
hfir = fft( h , NFFT ) ;
k = 0: NFFT-1 ;
faxis = 1/NFFT .*k ; 
magresdB = 20*log10(abs(hfir)) ; 
subplot (312),plot (faxis(1:NFFT/2+1) * Fs ,magresdB( 1:NFFT/2+1)) ;
grid on ; 
xlabel ('Frequency Hz') ;
ylabel('Magnitude response in dB') ; 
subplot (313) ;
plot(faxis(1:NFFT/2+1)*Fs,(unwrap(angle(hfir(1:NFFT/2+1))))*180/pi) ;
grid on ; 
xlabel('Frequency Hz' ) ;
ylabel('Phase response (degee)');


%%EndLine%%