function output = blur(img,w) % w indicates the level of blur
[a,b]=size(double(img))
k=floor((2*w+1)/2)
output=zeros(a,b);
times=0;  
for ii = 1:a
    for jj = 1:b
        for m = ii-k:ii+k

            for n = jj-k:jj+k
                if m>0 && m<a+1 && n>0 && n<b+1
                    output(ii,jj) = output(ii,jj) + double(img(m,n));
                    times = times+1;
                end
            end
        end
        output(ii,jj) =  output(ii,jj)/times;
        times=0;    
    end
end
output = uint8(output);
end