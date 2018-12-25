# Advanced MATLAB Commands

## Plotting

### Basics 

To plot the graph of a function, we need to take the following steps −

1. Define ```x```, by specifying the range of values for the variable ```x```, for which the function is to be plotted
1. Define the function, ```y = f(x)```
1. Call the plot command, as ```plot(x, y)```

:exclamation: **NOTE**: Vectors used in ```plot()``` must be of the same length.

:bulb: The curve is smoother when the value of the increment is small.

### Adding Title, Labels, Grid Lines and Scaling on the Graph

The following can be done with the ```plot``` function in ```MATLAB``` -

1. The ```xlabel``` and ```ylabel``` commands generate labels along x-axis and y-axis.
1. The ```title``` command allows you to put a title on the graph.
1. The ```grid on``` command allows you to put the grid lines on the graph.
1. The ```axis equal``` command allows generating the plot with the same scale factors and the spaces on both axes.
1. The ```axis square``` command generates a square plot.

### Drawing Multiple Functions on the Same Graph

We can also draw multiple graphs on the same plot.

Here is an example - 

``` matlab
x = [0 : 0.01: 10];
y = sin(x);
g = cos(x);
plot(x, y, x, g, '.-'), legend('Sin(x)', 'Cos(x)')
```
