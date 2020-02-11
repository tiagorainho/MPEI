function hash = DJB31MA(chars, seed)
    s = rng;                                % guardar estado do rand
    rng(seed);
    randSeed = randi(1000) + 1;
    rng(s);                                 % retomar estado antigo do rand
    for i=1:length(chars)
        randSeed = 31*randSeed + chars(i);
    end
    hash = randSeed;
end