import pandas as pd
import matplotlib.pyplot as plt

lines = 10000
result = pd.read_csv('yolov4-tinyLog_formatted.csv', error_bad_lines=False, names=['loss', 'avg', 'rate', 'seconds', 'images'])
# skiprows=[x for x in range(lines) if ((x%10 != 9))]

result['loss']=result['loss'].str.split(' ').str.get(1)
result['loss']=pd.to_numeric(result['loss'])

fig = plt.figure()
ax = fig.add_subplot(1, 1, 1)
x = np.arange(0,10000,1)
ax.scatter(x,result['loss'].values,s=1)
# ax.legend(loc='best')
ax.set_title('Loss Curve')
ax.set_xlabel('Itrations')
ax.set_ylabel('Loss')
fig.savefig('Loss-Itrations.png', dpi=1200)
