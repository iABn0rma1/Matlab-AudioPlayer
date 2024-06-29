clc;

% Reading the audio file
filename = 'sample1.wav';
[x, Fs] = audioread(filename);

% Audio player
player = audioplayer(x, Fs);
play(player);

% Loop to adjust audio playback speed
while true

    speed = input('Audio Speed Menu:\n1: 1x\n2: 2x\n3: 0.5x\n4: Stop\n5: Play\n0: Exit\nEnter speed: ');

    if speed == 1
        set(player, 'SampleRate', Fs);
    elseif speed == 2
        set(player, 'SampleRate', Fs*2);
    elseif speed == 3
        set(player, 'SampleRate', Fs*0.5);
    elseif speed == 4
        pause(player);
    elseif speed == 5
        resume(player);
    elseif speed == 0
        % Release device player and exit
        stop(player);
        return;
    else
        disp('Invalid rate!');
        set(player, 'SampleRate', Fs);
    end

end
