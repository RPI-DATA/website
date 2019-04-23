---
title: "PyTorch"
weight: 1
---



<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p><a href="http://rpi.analyticsdojo.com"><img src="https://github.com/rpi-techfundamentals/fall2018-materials/blob/master/fig/final-logo.png?raw=1" alt="AnalyticsDojo"></a></p>
<center><h1>Pytorch with the MNIST Dataset - MINST</h1></center>
<center><h3><a href = 'http://rpi.analyticsdojo.com'>rpi.analyticsdojo.com</a></h3></center><p><a href="https://colab.research.google.com/github/RPI-DATA/tutorials-intro/blob/master/website/04_pytorch_mnist.ipynb"><img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab"></a></p>

</div>
</div>
</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>From Kaggle: 
"MNIST ("Modified National Institute of Standards and Technology") is the de facto “hello world” dataset of computer vision. Since its release in 1999, this classic dataset of handwritten images has served as the basis for benchmarking classification algorithms. As new machine learning techniques emerge, MNIST remains a reliable resource for researchers and learners alike."</p>
<p><a href="https://www.kaggle.com/c/digit-recognizer">Read more.</a></p>
<p><a title="By Josef Steppan [CC BY-SA 4.0 (https://creativecommons.org/licenses/by-sa/4.0)], from Wikimedia Commons" href="https://commons.wikimedia.org/wiki/File:MnistExamples.png"><img width="512" alt="MnistExamples" src="https://upload.wikimedia.org/wikipedia/commons/2/27/MnistExamples.png"/></a></p>

</div>
</div>
</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>This code is adopted from the pytorch examples repository. 
It is licensed under BSD 3-Clause "New" or "Revised" License.
Source: <a href="https://github.com/pytorch/examples/">https://github.com/pytorch/examples/</a>
LICENSE: <a href="https://github.com/pytorch/examples/blob/master/LICENSE">https://github.com/pytorch/examples/blob/master/LICENSE</a></p>
<p><img src="https://github.com/rpi-techfundamentals/fall2018-materials/blob/master/10-deep-learning/mnist-comparison.png?raw=1" alt="">
Table from <a href="https://en.wikipedia.org/wiki/MNIST_database">Wikipedia</a></p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[0]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="o">!</span>pip install torch torchvision
</pre></div>

</div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>Requirement already satisfied: torch in /anaconda3/envs/carme/lib/python3.6/site-packages (0.3.0.post4)
Requirement already satisfied: torchvision in /anaconda3/envs/carme/lib/python3.6/site-packages (0.2.0)
Requirement already satisfied: pyyaml in /anaconda3/envs/carme/lib/python3.6/site-packages (from torch) (3.12)
Requirement already satisfied: numpy in /anaconda3/envs/carme/lib/python3.6/site-packages (from torch) (1.12.1)
Requirement already satisfied: pillow&gt;=4.1.1 in /anaconda3/envs/carme/lib/python3.6/site-packages (from torchvision) (5.1.0)
Requirement already satisfied: six in /anaconda3/envs/carme/lib/python3.6/site-packages (from torchvision) (1.11.0)
<span class="ansi-red-fg">kaggle-cli 0.12.13 has requirement lxml&lt;4.1,&gt;=4.0.0, but you&#39;ll have lxml 3.8.0 which is incompatible.</span>
<span class="ansi-red-fg">awscli 1.14.32 has requirement botocore==1.8.36, but you&#39;ll have botocore 1.9.7 which is incompatible.</span>
<span class="ansi-red-fg">apache-airflow 1.9.0 has requirement bleach==2.1.2, but you&#39;ll have bleach 2.1.3 which is incompatible.</span>
<span class="ansi-red-fg">apache-airflow 1.9.0 has requirement flask&lt;0.12,&gt;=0.11, but you&#39;ll have flask 0.12.2 which is incompatible.</span>
<span class="ansi-red-fg">apache-airflow 1.9.0 has requirement jinja2&lt;2.9.0,&gt;=2.7.3, but you&#39;ll have jinja2 2.10 which is incompatible.</span>
</pre>
</div>
</div>

</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<h3 id="Pytorch-Advantages-vs-Tensorflow">Pytorch Advantages vs Tensorflow<a class="anchor-link" href="#Pytorch-Advantages-vs-Tensorflow"></a></h3><ul>
<li>Pytorch Enables dynamic computational graphs (which change be changed) while Tensorflow is static. </li>
<li>Tensorflow enables easier deployment. </li>
</ul>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[0]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="c1">#Import Libraries</span>


<span class="kn">from</span> <span class="nn">__future__</span> <span class="k">import</span> <span class="n">print_function</span>
<span class="kn">import</span> <span class="nn">argparse</span>
<span class="kn">import</span> <span class="nn">torch</span>
<span class="kn">import</span> <span class="nn">torch.nn</span> <span class="k">as</span> <span class="nn">nn</span>
<span class="kn">import</span> <span class="nn">torch.nn.functional</span> <span class="k">as</span> <span class="nn">F</span>
<span class="kn">import</span> <span class="nn">torch.optim</span> <span class="k">as</span> <span class="nn">optim</span>
<span class="kn">from</span> <span class="nn">torchvision</span> <span class="k">import</span> <span class="n">datasets</span><span class="p">,</span> <span class="n">transforms</span>
<span class="kn">from</span> <span class="nn">torch.autograd</span> <span class="k">import</span> <span class="n">Variable</span>
</pre></div>

</div>
</div>
</div>

</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[0]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="n">args</span><span class="o">=</span><span class="p">{}</span>
<span class="n">kwargs</span><span class="o">=</span><span class="p">{}</span>
<span class="n">args</span><span class="p">[</span><span class="s1">&#39;batch_size&#39;</span><span class="p">]</span><span class="o">=</span><span class="mi">1000</span>
<span class="n">args</span><span class="p">[</span><span class="s1">&#39;test_batch_size&#39;</span><span class="p">]</span><span class="o">=</span><span class="mi">1000</span>
<span class="n">args</span><span class="p">[</span><span class="s1">&#39;epochs&#39;</span><span class="p">]</span><span class="o">=</span><span class="mi">10</span>  <span class="c1">#The number of Epochs is the number of times you go through the full dataset. </span>
<span class="n">args</span><span class="p">[</span><span class="s1">&#39;lr&#39;</span><span class="p">]</span><span class="o">=</span><span class="mf">0.01</span> <span class="c1">#Learning rate is how fast it will decend. </span>
<span class="n">args</span><span class="p">[</span><span class="s1">&#39;momentum&#39;</span><span class="p">]</span><span class="o">=</span><span class="mf">0.5</span> <span class="c1">#SGD momentum (default: 0.5) Momentum is a moving average of our gradients (helps to keep direction).</span>

<span class="n">args</span><span class="p">[</span><span class="s1">&#39;seed&#39;</span><span class="p">]</span><span class="o">=</span><span class="mi">1</span> <span class="c1">#random seed</span>
<span class="n">args</span><span class="p">[</span><span class="s1">&#39;log_interval&#39;</span><span class="p">]</span><span class="o">=</span><span class="mi">10</span>
<span class="n">args</span><span class="p">[</span><span class="s1">&#39;cuda&#39;</span><span class="p">]</span><span class="o">=</span><span class="kc">False</span>
</pre></div>

</div>
</div>
</div>

</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[0]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="c1">#load the data</span>
<span class="n">train_loader</span> <span class="o">=</span> <span class="n">torch</span><span class="o">.</span><span class="n">utils</span><span class="o">.</span><span class="n">data</span><span class="o">.</span><span class="n">DataLoader</span><span class="p">(</span>
    <span class="n">datasets</span><span class="o">.</span><span class="n">MNIST</span><span class="p">(</span><span class="s1">&#39;../data&#39;</span><span class="p">,</span> <span class="n">train</span><span class="o">=</span><span class="kc">True</span><span class="p">,</span> <span class="n">download</span><span class="o">=</span><span class="kc">True</span><span class="p">,</span>
                   <span class="n">transform</span><span class="o">=</span><span class="n">transforms</span><span class="o">.</span><span class="n">Compose</span><span class="p">([</span>
                       <span class="n">transforms</span><span class="o">.</span><span class="n">ToTensor</span><span class="p">(),</span>
                       <span class="n">transforms</span><span class="o">.</span><span class="n">Normalize</span><span class="p">((</span><span class="mf">0.1307</span><span class="p">,),</span> <span class="p">(</span><span class="mf">0.3081</span><span class="p">,))</span>
                   <span class="p">])),</span>
    <span class="n">batch_size</span><span class="o">=</span><span class="n">args</span><span class="p">[</span><span class="s1">&#39;batch_size&#39;</span><span class="p">],</span> <span class="n">shuffle</span><span class="o">=</span><span class="kc">True</span><span class="p">,</span> <span class="o">**</span><span class="n">kwargs</span><span class="p">)</span>
<span class="n">test_loader</span> <span class="o">=</span> <span class="n">torch</span><span class="o">.</span><span class="n">utils</span><span class="o">.</span><span class="n">data</span><span class="o">.</span><span class="n">DataLoader</span><span class="p">(</span>
    <span class="n">datasets</span><span class="o">.</span><span class="n">MNIST</span><span class="p">(</span><span class="s1">&#39;../data&#39;</span><span class="p">,</span> <span class="n">train</span><span class="o">=</span><span class="kc">False</span><span class="p">,</span> <span class="n">transform</span><span class="o">=</span><span class="n">transforms</span><span class="o">.</span><span class="n">Compose</span><span class="p">([</span>
                       <span class="n">transforms</span><span class="o">.</span><span class="n">ToTensor</span><span class="p">(),</span>
                       <span class="n">transforms</span><span class="o">.</span><span class="n">Normalize</span><span class="p">((</span><span class="mf">0.1307</span><span class="p">,),</span> <span class="p">(</span><span class="mf">0.3081</span><span class="p">,))</span>
                   <span class="p">])),</span>
    <span class="n">batch_size</span><span class="o">=</span><span class="n">args</span><span class="p">[</span><span class="s1">&#39;test_batch_size&#39;</span><span class="p">],</span> <span class="n">shuffle</span><span class="o">=</span><span class="kc">True</span><span class="p">,</span> <span class="o">**</span><span class="n">kwargs</span><span class="p">)</span>
</pre></div>

</div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>Downloading http://yann.lecun.com/exdb/mnist/train-images-idx3-ubyte.gz
Downloading http://yann.lecun.com/exdb/mnist/train-labels-idx1-ubyte.gz
Downloading http://yann.lecun.com/exdb/mnist/t10k-images-idx3-ubyte.gz
Downloading http://yann.lecun.com/exdb/mnist/t10k-labels-idx1-ubyte.gz
Processing...
Done!
</pre>
</div>
</div>

</div>
</div>

</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[0]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span> 
</pre></div>

</div>
</div>
</div>

</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[0]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="k">class</span> <span class="nc">Net</span><span class="p">(</span><span class="n">nn</span><span class="o">.</span><span class="n">Module</span><span class="p">):</span>
    <span class="c1">#This defines the structure of the NN.</span>
    <span class="k">def</span> <span class="nf">__init__</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
        <span class="nb">super</span><span class="p">(</span><span class="n">Net</span><span class="p">,</span> <span class="bp">self</span><span class="p">)</span><span class="o">.</span><span class="fm">__init__</span><span class="p">()</span>
        <span class="bp">self</span><span class="o">.</span><span class="n">conv1</span> <span class="o">=</span> <span class="n">nn</span><span class="o">.</span><span class="n">Conv2d</span><span class="p">(</span><span class="mi">1</span><span class="p">,</span> <span class="mi">10</span><span class="p">,</span> <span class="n">kernel_size</span><span class="o">=</span><span class="mi">5</span><span class="p">)</span>
        <span class="bp">self</span><span class="o">.</span><span class="n">conv2</span> <span class="o">=</span> <span class="n">nn</span><span class="o">.</span><span class="n">Conv2d</span><span class="p">(</span><span class="mi">10</span><span class="p">,</span> <span class="mi">20</span><span class="p">,</span> <span class="n">kernel_size</span><span class="o">=</span><span class="mi">5</span><span class="p">)</span>
        <span class="bp">self</span><span class="o">.</span><span class="n">conv2_drop</span> <span class="o">=</span> <span class="n">nn</span><span class="o">.</span><span class="n">Dropout2d</span><span class="p">()</span>  <span class="c1">#Dropout</span>
        <span class="bp">self</span><span class="o">.</span><span class="n">fc1</span> <span class="o">=</span> <span class="n">nn</span><span class="o">.</span><span class="n">Linear</span><span class="p">(</span><span class="mi">320</span><span class="p">,</span> <span class="mi">50</span><span class="p">)</span>
        <span class="bp">self</span><span class="o">.</span><span class="n">fc2</span> <span class="o">=</span> <span class="n">nn</span><span class="o">.</span><span class="n">Linear</span><span class="p">(</span><span class="mi">50</span><span class="p">,</span> <span class="mi">10</span><span class="p">)</span>

    <span class="k">def</span> <span class="nf">forward</span><span class="p">(</span><span class="bp">self</span><span class="p">,</span> <span class="n">x</span><span class="p">):</span>
        <span class="c1">#Convolutional Layer/Pooling Layer/Activation</span>
        <span class="n">x</span> <span class="o">=</span> <span class="n">F</span><span class="o">.</span><span class="n">relu</span><span class="p">(</span><span class="n">F</span><span class="o">.</span><span class="n">max_pool2d</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">conv1</span><span class="p">(</span><span class="n">x</span><span class="p">),</span> <span class="mi">2</span><span class="p">))</span> 
        <span class="c1">#Convolutional Layer/Dropout/Pooling Layer/Activation</span>
        <span class="n">x</span> <span class="o">=</span> <span class="n">F</span><span class="o">.</span><span class="n">relu</span><span class="p">(</span><span class="n">F</span><span class="o">.</span><span class="n">max_pool2d</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">conv2_drop</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">conv2</span><span class="p">(</span><span class="n">x</span><span class="p">)),</span> <span class="mi">2</span><span class="p">))</span>
        <span class="n">x</span> <span class="o">=</span> <span class="n">x</span><span class="o">.</span><span class="n">view</span><span class="p">(</span><span class="o">-</span><span class="mi">1</span><span class="p">,</span> <span class="mi">320</span><span class="p">)</span>
        <span class="c1">#Fully Connected Layer/Activation</span>
        <span class="n">x</span> <span class="o">=</span> <span class="n">F</span><span class="o">.</span><span class="n">relu</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">fc1</span><span class="p">(</span><span class="n">x</span><span class="p">))</span>
        <span class="n">x</span> <span class="o">=</span> <span class="n">F</span><span class="o">.</span><span class="n">dropout</span><span class="p">(</span><span class="n">x</span><span class="p">,</span> <span class="n">training</span><span class="o">=</span><span class="bp">self</span><span class="o">.</span><span class="n">training</span><span class="p">)</span>
        <span class="c1">#Fully Connected Layer/Activation</span>
        <span class="n">x</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">fc2</span><span class="p">(</span><span class="n">x</span><span class="p">)</span>
        <span class="c1">#Softmax gets probabilities. </span>
        <span class="k">return</span> <span class="n">F</span><span class="o">.</span><span class="n">log_softmax</span><span class="p">(</span><span class="n">x</span><span class="p">,</span> <span class="n">dim</span><span class="o">=</span><span class="mi">1</span><span class="p">)</span>
</pre></div>

</div>
</div>
</div>

</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[0]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="k">def</span> <span class="nf">train</span><span class="p">(</span><span class="n">epoch</span><span class="p">):</span>
    <span class="n">model</span><span class="o">.</span><span class="n">train</span><span class="p">()</span>
    <span class="k">for</span> <span class="n">batch_idx</span><span class="p">,</span> <span class="p">(</span><span class="n">data</span><span class="p">,</span> <span class="n">target</span><span class="p">)</span> <span class="ow">in</span> <span class="nb">enumerate</span><span class="p">(</span><span class="n">train_loader</span><span class="p">):</span>
        <span class="k">if</span> <span class="n">args</span><span class="p">[</span><span class="s1">&#39;cuda&#39;</span><span class="p">]:</span>
            <span class="n">data</span><span class="p">,</span> <span class="n">target</span> <span class="o">=</span> <span class="n">data</span><span class="o">.</span><span class="n">cuda</span><span class="p">(),</span> <span class="n">target</span><span class="o">.</span><span class="n">cuda</span><span class="p">()</span>
        <span class="c1">#Variables in Pytorch are differenciable. </span>
        <span class="n">data</span><span class="p">,</span> <span class="n">target</span> <span class="o">=</span> <span class="n">Variable</span><span class="p">(</span><span class="n">data</span><span class="p">),</span> <span class="n">Variable</span><span class="p">(</span><span class="n">target</span><span class="p">)</span>
        <span class="c1">#This will zero out the gradients for this batch. </span>
        <span class="n">optimizer</span><span class="o">.</span><span class="n">zero_grad</span><span class="p">()</span>
        <span class="n">output</span> <span class="o">=</span> <span class="n">model</span><span class="p">(</span><span class="n">data</span><span class="p">)</span>
        <span class="c1"># Calculate the loss The negative log likelihood loss. It is useful to train a classification problem with C classes.</span>
        <span class="n">loss</span> <span class="o">=</span> <span class="n">F</span><span class="o">.</span><span class="n">nll_loss</span><span class="p">(</span><span class="n">output</span><span class="p">,</span> <span class="n">target</span><span class="p">)</span>
        <span class="c1">#dloss/dx for every Variable </span>
        <span class="n">loss</span><span class="o">.</span><span class="n">backward</span><span class="p">()</span>
        <span class="c1">#to do a one-step update on our parameter.</span>
        <span class="n">optimizer</span><span class="o">.</span><span class="n">step</span><span class="p">()</span>
        <span class="c1">#Print out the loss periodically. </span>
        <span class="k">if</span> <span class="n">batch_idx</span> <span class="o">%</span> <span class="n">args</span><span class="p">[</span><span class="s1">&#39;log_interval&#39;</span><span class="p">]</span> <span class="o">==</span> <span class="mi">0</span><span class="p">:</span>
            <span class="nb">print</span><span class="p">(</span><span class="s1">&#39;Train Epoch: </span><span class="si">{}</span><span class="s1"> [</span><span class="si">{}</span><span class="s1">/</span><span class="si">{}</span><span class="s1"> (</span><span class="si">{:.0f}</span><span class="s1">%)]</span><span class="se">\t</span><span class="s1">Loss: </span><span class="si">{:.6f}</span><span class="s1">&#39;</span><span class="o">.</span><span class="n">format</span><span class="p">(</span>
                <span class="n">epoch</span><span class="p">,</span> <span class="n">batch_idx</span> <span class="o">*</span> <span class="nb">len</span><span class="p">(</span><span class="n">data</span><span class="p">),</span> <span class="nb">len</span><span class="p">(</span><span class="n">train_loader</span><span class="o">.</span><span class="n">dataset</span><span class="p">),</span>
                <span class="mf">100.</span> <span class="o">*</span> <span class="n">batch_idx</span> <span class="o">/</span> <span class="nb">len</span><span class="p">(</span><span class="n">train_loader</span><span class="p">),</span> <span class="n">loss</span><span class="o">.</span><span class="n">data</span><span class="p">[</span><span class="mi">0</span><span class="p">]))</span>

<span class="k">def</span> <span class="nf">test</span><span class="p">():</span>
    <span class="n">model</span><span class="o">.</span><span class="n">eval</span><span class="p">()</span>
    <span class="n">test_loss</span> <span class="o">=</span> <span class="mi">0</span>
    <span class="n">correct</span> <span class="o">=</span> <span class="mi">0</span>
    <span class="k">for</span> <span class="n">data</span><span class="p">,</span> <span class="n">target</span> <span class="ow">in</span> <span class="n">test_loader</span><span class="p">:</span>
        <span class="k">if</span> <span class="n">args</span><span class="p">[</span><span class="s1">&#39;cuda&#39;</span><span class="p">]:</span>
            <span class="n">data</span><span class="p">,</span> <span class="n">target</span> <span class="o">=</span> <span class="n">data</span><span class="o">.</span><span class="n">cuda</span><span class="p">(),</span> <span class="n">target</span><span class="o">.</span><span class="n">cuda</span><span class="p">()</span>
        <span class="n">data</span><span class="p">,</span> <span class="n">target</span> <span class="o">=</span> <span class="n">Variable</span><span class="p">(</span><span class="n">data</span><span class="p">,</span> <span class="n">volatile</span><span class="o">=</span><span class="kc">True</span><span class="p">),</span> <span class="n">Variable</span><span class="p">(</span><span class="n">target</span><span class="p">)</span>
        <span class="n">output</span> <span class="o">=</span> <span class="n">model</span><span class="p">(</span><span class="n">data</span><span class="p">)</span>
        <span class="n">test_loss</span> <span class="o">+=</span> <span class="n">F</span><span class="o">.</span><span class="n">nll_loss</span><span class="p">(</span><span class="n">output</span><span class="p">,</span> <span class="n">target</span><span class="p">,</span> <span class="n">size_average</span><span class="o">=</span><span class="kc">False</span><span class="p">)</span><span class="o">.</span><span class="n">data</span><span class="p">[</span><span class="mi">0</span><span class="p">]</span> <span class="c1"># sum up batch loss</span>
        <span class="n">pred</span> <span class="o">=</span> <span class="n">output</span><span class="o">.</span><span class="n">data</span><span class="o">.</span><span class="n">max</span><span class="p">(</span><span class="mi">1</span><span class="p">,</span> <span class="n">keepdim</span><span class="o">=</span><span class="kc">True</span><span class="p">)[</span><span class="mi">1</span><span class="p">]</span> <span class="c1"># get the index of the max log-probability</span>
        <span class="n">correct</span> <span class="o">+=</span> <span class="n">pred</span><span class="o">.</span><span class="n">eq</span><span class="p">(</span><span class="n">target</span><span class="o">.</span><span class="n">data</span><span class="o">.</span><span class="n">view_as</span><span class="p">(</span><span class="n">pred</span><span class="p">))</span><span class="o">.</span><span class="n">long</span><span class="p">()</span><span class="o">.</span><span class="n">cpu</span><span class="p">()</span><span class="o">.</span><span class="n">sum</span><span class="p">()</span>

    <span class="n">test_loss</span> <span class="o">/=</span> <span class="nb">len</span><span class="p">(</span><span class="n">test_loader</span><span class="o">.</span><span class="n">dataset</span><span class="p">)</span>
    <span class="nb">print</span><span class="p">(</span><span class="s1">&#39;</span><span class="se">\n</span><span class="s1">Test set: Average loss: </span><span class="si">{:.4f}</span><span class="s1">, Accuracy: </span><span class="si">{}</span><span class="s1">/</span><span class="si">{}</span><span class="s1"> (</span><span class="si">{:.0f}</span><span class="s1">%)</span><span class="se">\n</span><span class="s1">&#39;</span><span class="o">.</span><span class="n">format</span><span class="p">(</span>
        <span class="n">test_loss</span><span class="p">,</span> <span class="n">correct</span><span class="p">,</span> <span class="nb">len</span><span class="p">(</span><span class="n">test_loader</span><span class="o">.</span><span class="n">dataset</span><span class="p">),</span>
        <span class="mf">100.</span> <span class="o">*</span> <span class="n">correct</span> <span class="o">/</span> <span class="nb">len</span><span class="p">(</span><span class="n">test_loader</span><span class="o">.</span><span class="n">dataset</span><span class="p">)))</span>
</pre></div>

</div>
</div>
</div>

</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[0]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="n">model</span> <span class="o">=</span> <span class="n">Net</span><span class="p">()</span>
<span class="k">if</span> <span class="n">args</span><span class="p">[</span><span class="s1">&#39;cuda&#39;</span><span class="p">]:</span>
    <span class="n">model</span><span class="o">.</span><span class="n">cuda</span><span class="p">()</span>

<span class="n">optimizer</span> <span class="o">=</span> <span class="n">optim</span><span class="o">.</span><span class="n">SGD</span><span class="p">(</span><span class="n">model</span><span class="o">.</span><span class="n">parameters</span><span class="p">(),</span> <span class="n">lr</span><span class="o">=</span><span class="n">args</span><span class="p">[</span><span class="s1">&#39;lr&#39;</span><span class="p">],</span> <span class="n">momentum</span><span class="o">=</span><span class="n">args</span><span class="p">[</span><span class="s1">&#39;momentum&#39;</span><span class="p">])</span>

<span class="k">for</span> <span class="n">epoch</span> <span class="ow">in</span> <span class="nb">range</span><span class="p">(</span><span class="mi">1</span><span class="p">,</span> <span class="n">args</span><span class="p">[</span><span class="s1">&#39;epochs&#39;</span><span class="p">]</span> <span class="o">+</span> <span class="mi">1</span><span class="p">):</span>
    <span class="n">train</span><span class="p">(</span><span class="n">epoch</span><span class="p">)</span>
    <span class="n">test</span><span class="p">()</span>
</pre></div>

</div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>Train Epoch: 1 [0/60000 (0%)]	Loss: 2.338192
Train Epoch: 1 [10000/60000 (17%)]	Loss: 2.305725
Train Epoch: 1 [20000/60000 (33%)]	Loss: 2.289212
Train Epoch: 1 [30000/60000 (50%)]	Loss: 2.283156
Train Epoch: 1 [40000/60000 (67%)]	Loss: 2.270567
Train Epoch: 1 [50000/60000 (83%)]	Loss: 2.261630

Test set: Average loss: 2.2199, Accuracy: 3655/10000 (37%)

Train Epoch: 2 [0/60000 (0%)]	Loss: 2.240778
Train Epoch: 2 [10000/60000 (17%)]	Loss: 2.209014
Train Epoch: 2 [20000/60000 (33%)]	Loss: 2.170792
Train Epoch: 2 [30000/60000 (50%)]	Loss: 2.140490
Train Epoch: 2 [40000/60000 (67%)]	Loss: 2.080513
Train Epoch: 2 [50000/60000 (83%)]	Loss: 1.990342

Test set: Average loss: 1.7368, Accuracy: 7205/10000 (72%)

Train Epoch: 3 [0/60000 (0%)]	Loss: 1.924992
Train Epoch: 3 [10000/60000 (17%)]	Loss: 1.759480
Train Epoch: 3 [20000/60000 (33%)]	Loss: 1.636611
Train Epoch: 3 [30000/60000 (50%)]	Loss: 1.517218
Train Epoch: 3 [40000/60000 (67%)]	Loss: 1.348585
Train Epoch: 3 [50000/60000 (83%)]	Loss: 1.313530

Test set: Average loss: 0.8124, Accuracy: 8438/10000 (84%)

Train Epoch: 4 [0/60000 (0%)]	Loss: 1.169621
Train Epoch: 4 [10000/60000 (17%)]	Loss: 1.145530
Train Epoch: 4 [20000/60000 (33%)]	Loss: 1.056403
Train Epoch: 4 [30000/60000 (50%)]	Loss: 0.992876
Train Epoch: 4 [40000/60000 (67%)]	Loss: 0.980686
Train Epoch: 4 [50000/60000 (83%)]	Loss: 0.950357

Test set: Average loss: 0.5138, Accuracy: 8800/10000 (88%)

Train Epoch: 5 [0/60000 (0%)]	Loss: 0.930668
Train Epoch: 5 [10000/60000 (17%)]	Loss: 0.879105
Train Epoch: 5 [20000/60000 (33%)]	Loss: 0.874244
Train Epoch: 5 [30000/60000 (50%)]	Loss: 0.787681
Train Epoch: 5 [40000/60000 (67%)]	Loss: 0.814346
Train Epoch: 5 [50000/60000 (83%)]	Loss: 0.779896

Test set: Average loss: 0.4082, Accuracy: 8966/10000 (90%)

Train Epoch: 6 [0/60000 (0%)]	Loss: 0.744148
Train Epoch: 6 [10000/60000 (17%)]	Loss: 0.730266
Train Epoch: 6 [20000/60000 (33%)]	Loss: 0.730913
Train Epoch: 6 [30000/60000 (50%)]	Loss: 0.697980
Train Epoch: 6 [40000/60000 (67%)]	Loss: 0.736012
Train Epoch: 6 [50000/60000 (83%)]	Loss: 0.711165

Test set: Average loss: 0.3525, Accuracy: 9069/10000 (91%)

Train Epoch: 7 [0/60000 (0%)]	Loss: 0.722657
Train Epoch: 7 [10000/60000 (17%)]	Loss: 0.652839
Train Epoch: 7 [20000/60000 (33%)]	Loss: 0.716362
Train Epoch: 7 [30000/60000 (50%)]	Loss: 0.678424
Train Epoch: 7 [40000/60000 (67%)]	Loss: 0.665473
Train Epoch: 7 [50000/60000 (83%)]	Loss: 0.614177

Test set: Average loss: 0.3153, Accuracy: 9121/10000 (91%)

Train Epoch: 8 [0/60000 (0%)]	Loss: 0.621331
Train Epoch: 8 [10000/60000 (17%)]	Loss: 0.550397
Train Epoch: 8 [20000/60000 (33%)]	Loss: 0.623889
Train Epoch: 8 [30000/60000 (50%)]	Loss: 0.609498
Train Epoch: 8 [40000/60000 (67%)]	Loss: 0.632714
Train Epoch: 8 [50000/60000 (83%)]	Loss: 0.567455

Test set: Average loss: 0.2897, Accuracy: 9188/10000 (92%)

Train Epoch: 9 [0/60000 (0%)]	Loss: 0.637325
Train Epoch: 9 [10000/60000 (17%)]	Loss: 0.607037
Train Epoch: 9 [20000/60000 (33%)]	Loss: 0.607436
Train Epoch: 9 [30000/60000 (50%)]	Loss: 0.605397
Train Epoch: 9 [40000/60000 (67%)]	Loss: 0.540220
Train Epoch: 9 [50000/60000 (83%)]	Loss: 0.567621

Test set: Average loss: 0.2713, Accuracy: 9224/10000 (92%)

Train Epoch: 10 [0/60000 (0%)]	Loss: 0.538887
Train Epoch: 10 [10000/60000 (17%)]	Loss: 0.529944
Train Epoch: 10 [20000/60000 (33%)]	Loss: 0.570023
Train Epoch: 10 [30000/60000 (50%)]	Loss: 0.558310
Train Epoch: 10 [40000/60000 (67%)]	Loss: 0.513574
Train Epoch: 10 [50000/60000 (83%)]	Loss: 0.528905

Test set: Average loss: 0.2524, Accuracy: 9284/10000 (93%)

</pre>
</div>
</div>

</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p><a href="https://colab.research.google.com/github/RPI-DATA/tutorials-intro/blob/master/website/04_pytorch_mnist.ipynb"><img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab"></a></p>

</div>
</div>
</div>
 

