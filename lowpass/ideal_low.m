function  [out, H] = ideal_low(im, fc)
    imf = fftshift(fft2(im));
    [co,ro]=size(im);
    H = ideal_filter(co,ro,fc);
    outf=imf.*H;
    out=abs(ifft2(outf));