rosinit('172.20.88.138') % With IP of where the bag file is played
tops = rostopic('list')
ignores = {'/rosout','/rosout_agg','/clock','/statistics'}
for ii = 1:length(tops)
    top = tops{ii};
    if any(strcmp(top,ignores))
        fprintf('Ignoring topic: %s \n',top);
    else
        fprintf('Receving on topic: %s \n',top);
        imuSub=rossubscriber(top);
        imuMsg = receive(imuSub)
    end
end
rosshutdown

