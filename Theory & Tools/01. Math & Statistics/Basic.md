---

# Mathematical Foundations

---

[TOC]

Data science requires a certain level of mathematical foundation. However, if you are strictly focusing on practical applications and are short on time, you don't need to dive too deep—getting familiar with essential formulas is enough, and you can look up details as issues arise.

Below are math notes taken during past entrance exams for Master's and Ph.D. programs. The difficulty level is roughly around 3rd-year undergraduate level.

### Higher Mathematics (Calculus)

**1. Definition of Derivative:**

Concepts of derivatives and differentials:

$$f'({{x}_{0}})=\underset{\Delta x\to 0}{\mathop{\lim }}\,\frac{f({{x}_{0}}+\Delta x)-f({{x}_{0}})}{\Delta x}\quad (1)$$

or:

$$f'({{x}_{0}})=\underset{x\to {{x}_{0}}}{\mathop{\lim }}\,\frac{f(x)-f({{x}_{0}})}{x-{{x}_{0}}}\quad (2)$$

**2. Left and Right Derivatives; Geometric and Physical Meaning of Derivatives**

The left and right derivatives of function $f(x)$ at $x_0$ are defined respectively as:

Left derivative: $f'_{-}({{x}_{0}})=\underset{\Delta x\to {{0}^{-}}}{\mathop{\lim }}\,\frac{f({{x}_{0}}+\Delta x)-f({{x}_{0}})}{\Delta x}=\underset{x\to x_{0}^{-}}{\mathop{\lim }}\,\frac{f(x)-f({{x}_{0}})}{x-{{x}_{0}}}, (x={{x}_{0}}+\Delta x)$

Right derivative: $f'_{+}({{x}_{0}})=\underset{\Delta x\to {{0}^{+}}}{\mathop{\lim }}\,\frac{f({{x}_{0}}+\Delta x)-f({{x}_{0}})}{\Delta x}=\underset{x\to x_{0}^{+}}{\mathop{\lim }}\,\frac{f(x)-f({{x}_{0}})}{x-{{x}_{0}}}$

**3. Relationship Between Differentiability and Continuity**

**Theorem 1:** Function $f(x)$ is differentiable at $x_0 \Leftrightarrow f(x)$ has a derivative at $x_0$.

**Theorem 2:** If a function has a derivative at point $x_0$, then $y=f(x)$ is continuous at $x_0$; the converse is not necessarily true (continuity does not guarantee differentiability).

**Theorem 3:** $f'({{x}_{0}})$ exists $\Leftrightarrow f'_{-}({{x}_{0}}) = f'_{+}({{x}_{0}})$

**4. Tangent and Normal Lines of Plane Curves**

Tangent line equation: $y-{{y}_{0}}=f'({{x}_{0}})(x-{{x}_{0}})$

Normal line equation: $y-{{y}_{0}}=-\frac{1}{f'({{x}_{0}})}(x-{{x}_{0}}), \quad f'({{x}_{0}})\ne 0$

**5. Operational Rules for Differentiation**

If functions $u=u(x)$ and $v=v(x)$ are differentiable at point $x$:

1. $(u\pm v)'={u}'\pm {v}', \quad d(u\pm v)=du\pm dv$
2. $(uv)'=u{v}'+v{u}', \quad d(uv)=udv+vdu$
3. $\left(\frac{u}{v}\right)'=\frac{v{u}'-u{v}'}{{{v}^{2}}} \quad (v\ne 0), \quad d\left(\frac{u}{v}\right)=\frac{vdu-udv}{{{v}^{2}}}$

**6. Table of Basic Derivatives and Differentials**

1. $y=c$ (constant) $\quad y'=0 \quad dy=0$
2. $y={{x}^{\alpha }}$ ($\alpha$ is a real number) $\quad y'=\alpha {{x}^{\alpha -1}} \quad dy=\alpha {{x}^{\alpha -1}}dx$
3. $y={{a}^{x}} \quad y'={{a}^{x}}\ln a \quad dy={{a}^{x}}\ln a \, dx$
*Special case:* $({{e}^{x}})'={{e}^{x}} \quad d({{e}^{x}})={{e}^{x}}dx$
4. $y={{\log }_{a}}x \quad y'=\frac{1}{x\ln a} \quad dy=\frac{1}{x\ln a}dx$
*Special case:* $y=\ln x \quad (\ln x)'=\frac{1}{x} \quad d(\ln x)=\frac{1}{x}dx$
5. $y=\sin x \quad y'=\cos x \quad d(\sin x)=\cos x \, dx$
6. $y=\cos x \quad y'=-\sin x \quad d(\cos x)=-\sin x \, dx$
7. $y=\tan x \quad y'=\frac{1}{{{\cos }^{2}}x}={{\sec }^{2}}x \quad d(\tan x)={{\sec }^{2}}x \, dx$
8. $y=\cot x \quad y'=-\frac{1}{{{\sin }^{2}}x}=-{{\csc }^{2}}x \quad d(\cot x)=-{{\csc }^{2}}x \, dx$
9. $y=\sec x \quad y'=\sec x\tan x \quad d(\sec x)=\sec x\tan x \, dx$
10. $y=\csc x \quad y'=-\csc x\cot x \quad d(\csc x)=-\csc x\cot x \, dx$
11. $y=\arcsin x \quad y'=\frac{1}{\sqrt{1-{{x}^{2}}}} \quad d(\arcsin x)=\frac{1}{\sqrt{1-{{x}^{2}}}}dx$
12. $y=\arccos x \quad y'=-\frac{1}{\sqrt{1-{{x}^{2}}}} \quad d(\arccos x)=-\frac{1}{\sqrt{1-{{x}^{2}}}}dx$
13. $y=\arctan x \quad y'=\frac{1}{1+{{x}^{2}}} \quad d(\arctan x)=\frac{1}{1+{{x}^{2}}}dx$
14. $y=\operatorname{arccot} x \quad y'=-\frac{1}{1+{{x}^{2}}} \quad d(\operatorname{arccot} x)=-\frac{1}{1+{{x}^{2}}}dx$
15. $y=\sinh x \quad y'=\cosh x \quad d(\sinh x)=\cosh x \, dx$
16. $y=\cosh x \quad y'=\sinh x \quad d(\cosh x)=\sinh x \, dx$

**7. Differentiation Rules for Composite Functions, Inverse Functions, Implicit Functions, and Parametric Equations**

1. **Inverse Function Rule:** Suppose $y=f(x)$ is monotonic and continuous in a neighborhood of point $x$, differentiable at $x$, and $f'(x)\ne 0$. Then its inverse function is differentiable at the corresponding point $y$, with $\frac{dy}{dx}=\frac{1}{\frac{dx}{dy}}$.
2. **Chain Rule for Composite Functions:** If $u=\varphi(x)$ is differentiable at $x$, and $y=f(u)$ is differentiable at $u=\varphi(x)$, then the composite function $y=f(\varphi(x))$ is differentiable at $x$, with $y'=f'(u)\cdot \varphi'(x)$.
3. **Implicit Differentiation $\frac{dy}{dx}$** generally uses three methods:
* Differentiate both sides with respect to $x$, keeping in mind that $y$ is a function of $x$ (so terms like $\frac{1}{y}, y^2, \ln y, e^y$ are composite functions of $x$) via the chain rule.
* Formula method: For $F(x,y)=0$, $\frac{dy}{dx}=-\frac{{{{F}'}}_{x}(x,y)}{{{{{F}'}}_{y}}(x,y)}$, where ${{{F}'}}_{x}$ and ${{{F}'}}_{y}$ are partial derivatives.
* Invariance of differential forms.



**8. Common Higher-Order Derivative Formulas**

1. $({{a}^{x}})^{(n)}={{a}^{x}}{{\ln }^{n}}a \quad (a>0); \quad ({{e}^{x}})^{(n)}={e}^x$
2. $(\sin kx)^{(n)}={{k}^{n}}\sin \left(kx+n\cdot \frac{\pi }{2}\right)$
3. $(\cos kx)^{(n)}={{k}^{n}}\cos \left(kx+n\cdot \frac{\pi }{2}\right)$
4. $({{x}^{m}})^{(n)}=m(m-1)\cdots (m-n+1){{x}^{m-n}}$
5. $(\ln x)^{(n)}={{(-1)}^{(n-1)}}\frac{(n-1)!}{{{x}^{n}}}$
6. **Leibniz's Formula:** If $u(x)$ and $v(x)$ are $n$-times differentiable:
$${{(uv)}^{(n)}}=\sum\limits_{i=0}^{n}{\binom{n}{i}{{u}^{(i)}}{{v}^{(n-i)}}}, \quad \text{where } u^{(0)}=u, v^{(0)}=v$$



**9. Mean Value Theorems & Taylor's Theorem**

**Theorem 1 (Fermat's Theorem):** If $f(x)$ satisfies:

1. $f(x)$ is defined in a neighborhood of $x_0$, where $f(x)\le f(x_0)$ or $f(x)\ge f(x_0)$;
2. $f(x)$ is differentiable at $x_0$;
then $f'(x_0)=0$.

**Theorem 2 (Rolle's Theorem):** If $f(x)$ satisfies:

1. Continuous on $[a,b]$;
2. Differentiable on $(a,b)$;
3. $f(a)=f(b)$;
then there exists at least one $\xi \in (a,b)$ such that $f'(\xi)=0$.

**Theorem 3 (Lagrange's Mean Value Theorem):** If $f(x)$ satisfies:

1. Continuous on $[a,b]$;
2. Differentiable on $(a,b)$;
then there exists at least one $\xi \in (a,b)$ such that $\frac{f(b)-f(a)}{b-a}=f'(\xi)$.

**Theorem 4 (Cauchy's Mean Value Theorem):** If $f(x), g(x)$ satisfy:

1. Continuous on $[a,b]$;
2. Differentiable on $(a,b)$ with $g'(x)\ne 0$;
then there exists at least one $\xi \in (a,b)$ such that $\frac{f(b)-f(a)}{g(b)-g(a)}=\frac{f'(\xi)}{g'(\xi)}$.

**10. L'Hôpital's Rule**

* **Rule I ($\frac{0}{0}$ type):** If $\lim_{x\to x_0} f(x)=0, \lim_{x\to x_0} g(x)=0$, $f$ and $g$ are differentiable in a neighborhood of $x_0$ (except possibly at $x_0$) with $g'(x)\ne 0$, and $\lim_{x\to x_0} \frac{f'(x)}{g'(x)}$ exists (or is $\infty$), then:

$$\lim_{x\to x_0}\frac{f(x)}{g(x)}=\lim_{x\to x_0}\frac{f'(x)}{g'(x)}$$


* **Rule I' ($\frac{0}{0}$ type for $x\to\infty$):** Similar condition for limits at infinity.
* **Rule II ($\frac{\infty}{\infty}$ type):** Similar setup where limits approach infinity.

**11. Taylor's Formula**

If $f(x)$ has $(n+1)$-th order derivatives in a neighborhood of $x_0$, then for any $x \neq x_0$ in that neighborhood, there exists some $\xi$ between $x_0$ and $x$ such that:


$$f(x)=f({{x}_{0}})+{f}'({{x}_{0}})(x-{{x}_{0}})+\frac{1}{2!}{f}''({{x}_{0}}){{(x-{{x}_{0}})}^{2}}+\cdots +\frac{{{f}^{(n)}}({{x}_{0}})}{n!}{{(x-{{x}_{0}})}^{n}}+{{R}_{n}}(x)$$


where ${{R}_{n}}(x)=\frac{{{f}^{(n+1)}}(\xi )}{(n+1)!}{{(x-{{x}_{0}})}^{n+1}}$ is the $n$-th order Lagrange remainder.

Setting $x_0=0$ yields **Maclaurin's Formula**:


$$f(x)=f(0)+{f}'(0)x+\frac{1}{2!}{f}''(0){{x}^{2}}+\cdots +\frac{{{f}^{(n)}}(0)}{n!}{{x}^{n}}+{{R}_{n}}(x)$$

**Five Common Maclaurin Expansions ($x_0=0$):**

1. ${{e}^{x}}=1+x+\frac{1}{2!}{{x}^{2}}+\cdots +\frac{1}{n!}{{x}^{n}}+o({{x}^{n}})$
2. $\sin x=x-\frac{1}{3!}{{x}^{3}}+\cdots +\frac{{{x}^{n}}}{n!}\sin \frac{n\pi }{2}+o({{x}^{n}})$
3. $\cos x=1-\frac{1}{2!}{{x}^{2}}+\cdots +\frac{{{x}^{n}}}{n!}\cos \frac{n\pi }{2}+o({{x}^{n}})$
4. $\ln (1+x)=x-\frac{1}{2}{{x}^{2}}+\frac{1}{3}{{x}^{3}}-\cdots +{{(-1)}^{n-1}}\frac{{{x}^{n}}}{n}+o({{x}^{n}})$
5. $({1+x})^{m}=1+mx+\frac{m(m-1)}{2!}{{x}^{2}}+\cdots +\frac{m(m-1)\cdots (m-n+1)}{n!}{{x}^{n}}+o({{x}^{n}})$

**12. Monotonicity and Extrema Testing**

* **Theorem 1:** If $f'(x)>0$ (or $f'(x)<0$) on $(a,b)$, then $f(x)$ is strictly increasing (or decreasing) on $(a,b)$.
* **Theorem 2 (Necessary Condition):** If $f(x)$ has a local extremum at $x_0$ and is differentiable there, then $f'(x_0)=0$.
* **Theorem 3 (First Sufficient Condition):**
* If $f'(x)$ changes from $+$ to $-$ across $x_0 \implies f(x_0)$ is a local maximum.
* If $f'(x)$ changes from $-$ to $+$ across $x_0 \implies f(x_0)$ is a local minimum.
* If $f'(x)$ does not change sign $\implies$ no extremum at $x_0$.


* **Theorem 4 (Second Sufficient Condition):** If $f'(x_0)=0$ and $f''(x_0)\ne 0$:
* $f''(x_0)<0 \implies$ local maximum.
* $f''(x_0)>0 \implies$ local minimum.



**13. Asymptotes**

1. **Horizontal Asymptote:** $y=b$ if $\lim_{x\to +\infty} f(x)=b$ or $\lim_{x\to -\infty} f(x)=b$.
2. **Vertical Asymptote:** $x=x_0$ if $\lim_{x\to x_0^-} f(x)=\infty$ or $\lim_{x\to x_0^+} f(x)=\infty$.
3. **Oblique (Slant) Asymptote:** $y=ax+b$ where $a=\lim_{x\to \infty} \frac{f(x)}{x}$ and $b=\lim_{x\to \infty} [f(x)-ax]$.

**14. Concavity and Inflection Points**

* **Theorem 1:** If $f''(x)>0$ on $I$, $f(x)$ is concave up; if $f''(x)<0$, $f(x)$ is concave down.
* **Theorem 2:** If $f''(x_0)=0$ (or doesn't exist) and $f''(x)$ changes sign across $x_0$, then $(x_0, f(x_0))$ is an inflection point.

**15. Arc Length Differential:** $dS=\sqrt{1+(y')^2}\,dx$

**16. Curvature:** $k=\frac{\left\vert{} y'' \right\vert{}}{{{(1+y{{'}^{2}})}^{\tfrac{3}{2}}}}$

**17. Radius of Curvature:** $\rho = \frac{1}{k}$

---

### Linear Algebra

#### Determinants

**1. Expansion Theorem for Determinants**

For matrix $A = (a_{ij})_{n \times n}$:


$$a_{i1}A_{j1} + a_{i2}A_{j2} + \cdots + a_{in}A_{jn} = \begin{cases}\vert{}A\vert{}, & i=j\\ 0, & i \neq j\end{cases}$$

This leads to the matrix relationship $AA^{*} = A^{*}A = \vert{}A\vert{}E$, where $A^*$ is the adjugate matrix.

**2. Key Determinant Properties:**

* $\vert{}AB\vert{} = \vert{}A\vert{}\vert{}B\vert{}$
* $\vert{}kA\vert{} = k^n\vert{}A\vert{}$
* $\vert{}A^T\vert{} = \vert{}A\vert{}$; $\vert{}A^{-1}\vert{} = \vert{}A\vert{}^{-1}$; $\vert{}A^*\vert{} = \vert{}A\vert{}^{n-1}$ for $n \ge 2$
* Vandermonde Determinant:

$$D_{n} = \begin{vmatrix} 1 & 1 & \ldots & 1 \\ x_{1} & x_{2} & \ldots & x_{n} \\ \ldots & \ldots & \ldots & \ldots \\ x_{1}^{n - 1} & x_{2}^{n - 1} & \ldots & x_{n}^{n - 1} \\ \end{vmatrix} = \prod_{1 \leq j < i \leq n}(x_{i} - x_{j})$$


* Determinant in terms of eigenvalues: $\vert{}A\vert{} = \prod_{i = 1}^{n}\lambda_{i}$

#### Matrices

**1. Operations on Transpose, Inverse, and Adjugate:**

* $(AB)^T = B^TA^T$
* $(AB)^{-1} = B^{-1}A^{-1}$
* $(AB)^* = B^*A^*$
* $(A^*)^* = \vert{}A\vert{}^{n-2}A \quad (n \ge 3)$

**2. Rank of Adjugate Matrix $r(A^*)$:**


$$r(A^*)=\begin{cases}n, & r(A)=n\\ 1, & r(A)=n-1\\ 0, & r(A)<n-1\end{cases}$$

**3. Invertibility Equivalence:**


$$A \text{ is invertible} \Leftrightarrow \vert{}A\vert{} \neq 0 \Leftrightarrow r(A) = n \Leftrightarrow Ax = 0 \text{ has only the trivial solution.}$$

**4. Block Matrix Inversion Formulas:**

* $\begin{pmatrix} A & O \\ O & B \end{pmatrix}^{-1} = \begin{pmatrix} A^{-1} & O \\ O & B^{-1} \end{pmatrix}$
* $\begin{pmatrix} A & C \\ O & B \end{pmatrix}^{-1} = \begin{pmatrix} A^{-1} & -A^{-1}CB^{-1} \\ O & B^{-1} \end{pmatrix}$

#### Vectors & Vector Spaces

**1. Linear Independence:**

* A set of vectors is linearly dependent $\Leftrightarrow$ at least one vector can be expressed as a linear combination of the rest.
* $n$ vectors of dimension $n$ are linearly independent $\Leftrightarrow \det([\alpha_1, \alpha_2, \dots, \alpha_n]) \neq 0$.

**2. Gram-Schmidt Orthogonalization Process:**
Given linearly independent vectors $\alpha_1, \dots, \alpha_s$, construct orthogonal vectors $\beta_1, \dots, \beta_s$:

* $\beta_1 = \alpha_1$
* $\beta_2 = \alpha_2 - \frac{(\alpha_2, \beta_1)}{(\beta_1, \beta_1)}\beta_1$
* $\beta_3 = \alpha_3 - \frac{(\alpha_3, \beta_1)}{(\beta_1, \beta_1)}\beta_1 - \frac{(\alpha_3, \beta_2)}{(\beta_2, \beta_2)}\beta_2$

#### Eigenvalues and Eigenvectors

**1. Properties:**

* If $\lambda$ is an eigenvalue of $A$, then $k\lambda$, $\lambda^m$, $\lambda^{-1}$, and $\frac{\vert{}A\vert{}}{\lambda}$ are eigenvalues for $kA, A^m, A^{-1},$ and $A^*$ respectively.
* Trace and Determinant connection: $\sum_{i=1}^n \lambda_i = \text{tr}(A)$, $\prod_{i=1}^n \lambda_i = \vert{}A\vert{}$.

**2. Matrix Diagonalization:**
An $n \times n$ matrix $A$ is diagonalizable $\Leftrightarrow$ $A$ has $n$ linearly independent eigenvectors $\Leftrightarrow$ for each eigenvalue of multiplicity $k_i$, $n - r(\lambda_i E - A) = k_i$.

#### Quadratic Forms

**1. Definition:** A quadratic form can be represented as $f(x) = x^T Ax$, where $A$ is a symmetric matrix ($A = A^T$).

**2. Positive Definite Matrix Equivalences:**

* $x^T Ax > 0$ for all $x \neq 0$
* All principal minors (leading determinants) are strictly positive
* All eigenvalues are strictly positive ($\lambda_i > 0$)
* There exists an invertible matrix $P$ such that $A = P^T P$

---

### Probability Theory and Mathematical Statistics

#### Random Events and Probability

**1. Basic Probability Rules:**

* Condition Probability: $P(B\vert{}A) = \frac{P(AB)}{P(A)}$
* Law of Total Probability: $P(A) = \sum_{i=1}^n P(A\vert{}B_i)P(B_i)$
* Bayes' Theorem: $P(B_j\vert{}A) = \frac{P(A\vert{}B_j)P(B_j)}{\sum_{i=1}^n P(A\vert{}B_i)P(B_i)}$

**2. Independence:**
Events $A$ and $B$ are independent $\Leftrightarrow P(AB) = P(A)P(B)$.

#### Random Variables and Probability Distributions

**1. Cumulative Distribution Function (CDF):**


$$F(x) = P(X \leq x)$$


Properties: $0 \le F(x) \le 1$, monotonically non-decreasing, right-continuous.

**2. Common Probability Distributions:**

* **Binomial Distribution:** $X \sim B(n,p) \implies P(X=k) = \binom{n}{k} p^k (1-p)^{n-k}$
* **Poisson Distribution:** $X \sim P(\lambda) \implies P(X=k) = \frac{\lambda^k}{k!} e^{-\lambda}$
* **Uniform Distribution:** $X \sim U(a,b) \implies f(x) = \frac{1}{b-a}$ for $x \in (a,b)$
* **Normal Distribution:** $X \sim N(\mu, \sigma^2) \implies f(x) = \frac{1}{\sqrt{2\pi}\sigma} e^{-\frac{(x-\mu)^2}{2\sigma^2}}$
* **Exponential Distribution:** $X \sim E(\lambda) \implies f(x) = \lambda e^{-\lambda x}$ for $x > 0$

#### Multi-dimensional Random Variables

**1. Independence of Two Variables:**
$X$ and $Y$ are independent $\Leftrightarrow F(x,y) = F_X(x)F_Y(y) \Leftrightarrow f(x,y) = f_X(x)f_Y(y)$ (for continuous variables).