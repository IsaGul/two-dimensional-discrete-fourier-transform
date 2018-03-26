im1= imread('test_image.jpg');
im2=rgb2gray(im1);
im3=im2double(im2);
[M,N]=size(im3);
result = [];

c1=0;
for j=0:1:M-1
    for k=0:1:N-1
        for p=0:1:M-1
            for q=0:1:N-1
                c = im3(p+1,q+1) * exp(-1i*2*pi*(k*p/N + j*q/M));
                c1=c1+c;
            end
        end
        result(k+1,j+1)=c1;
        c1=0;
    end
end


imagesc(abs(fftshift(result)))
