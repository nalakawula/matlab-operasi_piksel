function H = ideal_filter(co,ro,fc)
    cx = round(co/2); % find the center of the image
    cy = round (ro/2);
    H=zeros(co,ro);
    if fc > cx & fc > cy
        H = ones(co,ro);
        return;
    end;
    for i = 1 : co
        for j = 1 : ro
            if (i-cx).^2 + (j-cy).^2 <= fc .^2
                H(i,j)=1;
            end;
        end;
    end;
