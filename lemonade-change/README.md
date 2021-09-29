<h2>860. Lemonade Change</h2><h3>Easy</h3><hr><div><p><font papago-translate="cached" papago-id="16">At a lemonade stand, each lemonade costs </font><code>$5</code><font papago-translate="cached" papago-id="17">. Customers are standing in a queue to buy from you, and order one at a time (in the order specified by bills). Each customer will only buy one lemonade and pay with either a </font><code>$5</code><font papago-translate="cached" papago-id="18">, </font><code>$10</code><font papago-translate="cached" papago-id="19">, or </font><code>$20</code><font papago-translate="cached" papago-id="20"> bill. You must provide the correct change to each customer so that the net transaction is that the customer pays </font><code>$5</code><font papago-translate="cached" papago-id="21">.</font></p>

<p papago-id="22" papago-translate="translated">Note that you don't have any change in hand at first.</p>

<p><font papago-translate="cached" papago-id="23">Given an integer array </font><code>bills</code><font papago-translate="cached" papago-id="24"> where </font><code>bills[i]</code><font papago-translate="cached" papago-id="25"> is the bill the </font><code>i<sup>th</sup></code><font papago-translate="cached" papago-id="26"> customer pays, return </font><code>true</code> <font papago-translate="splited"><em papago-id="27" papago-translate="cached">if you can provide every customer with correct change, or</em></font> <code>false</code> </p>

<p>&nbsp;</p>
<p><strong papago-id="29" papago-translate="translated">Example 1:</strong></p>

<pre papago-id="30" papago-translate="cached"><strong papago-id="30">Input:</strong> bills = [5,5,5,10,20]
<strong papago-id="32">Output:</strong> true
<strong papago-id="34">Explanation:</strong> 
From the first 3 customers, we collect three $5 bills in order.
From the fourth customer, we collect a $10 bill and give back a $5.
From the fifth customer, we give a $10 bill and a $5 bill.
Since all customers got correct change, we output true.
</pre>

<p><strong papago-id="31" papago-translate="translated">Example 2:</strong></p>

<pre papago-id="32" papago-translate="cached"><strong papago-id="32">Input:</strong> bills = [5,5,10,10,20]
<strong papago-id="34">Output:</strong> false
<strong papago-id="36">Explanation:</strong> 
From the first two customers in order, we collect two $5 bills.
For the next two customers in order, we collect a $10 bill and give back a $5 bill.
For the last customer, we can not give change of $15 back because we only have two $10 bills.
Since not every customer received correct change, the answer is false.
</pre>

<p><strong>Example 3:</strong></p>

<pre><strong>Input:</strong> bills = [5,5,10]
<strong>Output:</strong> true
</pre>

<p><strong>Example 4:</strong></p>

<pre><strong>Input:</strong> bills = [10,10]
<strong>Output:</strong> false
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= bills.length &lt;= 10<sup>5</sup></code></li>
	<li><code>bills[i]</code><font papago-translate="translated" papago-id="12"> is either </font><code>5</code><font papago-translate="translated" papago-id="13">, </font><code>10</code><font papago-translate="translated" papago-id="14">, or </font><code>20</code><font papago-translate="translated" papago-id="15">.</font></li>
</ul>
</div>