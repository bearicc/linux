#!/usr/bin/python

import os
from calendar import monthrange
import scipy as sp
import matplotlib.pyplot as plt
from matplotlib.ticker import MultipleLocator, FormatStrFormatter

month = {"Jan":1,"Feb":2,"Mar":3,"Apr":4,"May":5,"Jun":6,"Jul":7,"Aug":8,"Sep":9,"Oct":10,"Nov":11,"Dec":12}
day = {"Jan":1,"Feb":2,"Mar":3,"Apr":4,"May":31,"Jun":30,"Jul":31,"Aug":31,"Sep":30,"Oct":31,"Nov":30,"Dec":31}
fn = os.environ['HOME']+"/local/bin/check.sh"
data = sp.genfromtxt(fn,dtype='str',skiprows=4)
x = sp.zeros(len(data))
count = sp.zeros(len(data))

for i in range(0,len(data)):
    line = data[i]
    count[i] = sp.int32(line[1][1:])
    y = sp.int32(line[7][0:-1])
    m = month[line[3]]
    (_,day) = monthrange(y,m)
    d = sp.int32(line[4])
    tmp = line[5].split(':')
    t = sp.double(tmp[0])/24+sp.double(tmp[1])/24/60+sp.double(tmp[2])/24/60/60
    x[i] = y+(m+(d-1+t)/day)/100.0

majorFormatter = FormatStrFormatter('%.2f')

plt.figure()
plt.plot(x,count,'b.-')
plt.axis('tight')
plt.title('Load Cycle Count')
plt.xlabel('time')
plt.ylabel('count')
plt.axes().xaxis.set_major_formatter(majorFormatter)
plt.show(block=True)
