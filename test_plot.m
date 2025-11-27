
x000000 = readmatrix("trace000000.csv");
x000001 = readmatrix("trace000001.csv");

% DEFINE AXES
fs = 32000;

w = -pi:pi/8000:pi-pi/8000;
t = 1/fs:1/fs:length(x000000)/fs;

% GRAPH

X000000 = DTFT(x000000,w);
X000001 = DTFT(x000001,w);

figure(1)

subplot(411)
plot(w,abs(X000000))
xlabel('Normalized Frequency (Radians)')
ylabel('Magnitude')

subplot(412)
plot(t,x000000)
xlabel('Time [s]')
ylabel('x[n]')

subplot(413)
plot(t,x000001)
xlabel('Time [s]')
ylabel('x[n]')

subplot(414)
plot(t,x000001-x000000)
xlabel('Time [s]')
ylabel('x[n]')


function H = DTFT(x,w)
% DTFT(X,W)  compute the Discrete-time Fourier Transform of signal X
% acroess frequencies defined by W. 

    H = zeros(length(w),1);
    for nn = 1:length(x)
        H = H + x(nn).*exp(-1j*w.'*(nn-1));
    end
    
end