local matio = require 'matio'
require 'torch'

-- save a single tensor to a .mat file
data = torch.rand(5,5)
matio.save('test1.mat',data)

-- save a set of tensors to a .mat file
data1 = torch.rand(5,5)
data2 = torch.rand(2,3):float()
matio.save('test2.mat',{t1=data1,t2=data2})

--save a mix of tensors, booleans, strings, and chars
data1 = torch.rand(2,3):float()
matio.save('test3.mat',{t1=data1,t2='hello',t3=9,t4=false})

--save a table of string keys as a struct 
matio.save('test4.mat',{ myStruct = {t1=9,t2=false} })