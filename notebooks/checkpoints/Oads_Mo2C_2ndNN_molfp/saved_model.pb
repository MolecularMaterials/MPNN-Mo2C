??6
?#?"
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
l
BatchMatMulV2
x"T
y"T
output"T"
Ttype:
2		"
adj_xbool( "
adj_ybool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
,
Exp
x"T
y"T"
Ttype:

2
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	?
@
ReadVariableOp
resource
value"dtype"
dtypetype?
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
y

SegmentSum	
data"T
segment_ids"Tindices
output"T" 
Ttype:
2	"
Tindicestype:
2	
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
?
SplitV

value"T
size_splits"Tlen
	split_dim
output"T*	num_split"
	num_splitint(0"	
Ttype"
Tlentype0	:
2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
-
Tanh
x"T
y"T"
Ttype:

2
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718??2
?
atom_embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	? **
shared_nameatom_embedding/embeddings
?
-atom_embedding/embeddings/Read/ReadVariableOpReadVariableOpatom_embedding/embeddings*
_output_shapes
:	? *
dtype0
?
%bond_embedding/bond_embedding_weightsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?  *6
shared_name'%bond_embedding/bond_embedding_weights
?
9bond_embedding/bond_embedding_weights/Read/ReadVariableOpReadVariableOp%bond_embedding/bond_embedding_weights*#
_output_shapes
:?  *
dtype0
z
gru_step/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: `* 
shared_namegru_step/kernel
s
#gru_step/kernel/Read/ReadVariableOpReadVariableOpgru_step/kernel*
_output_shapes

: `*
dtype0
?
gru_step/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: `**
shared_namegru_step/recurrent_kernel
?
-gru_step/recurrent_kernel/Read/ReadVariableOpReadVariableOpgru_step/recurrent_kernel*
_output_shapes

: `*
dtype0
v
gru_step/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:`*
shared_namegru_step/bias
o
!gru_step/bias/Read/ReadVariableOpReadVariableOpgru_step/bias*
_output_shapes

:`*
dtype0
?
graph_fingerprint/UVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*$
shared_namegraph_fingerprint/U
|
'graph_fingerprint/U/Read/ReadVariableOpReadVariableOpgraph_fingerprint/U*
_output_shapes
:	@?*
dtype0

graph_fingerprint/bVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_namegraph_fingerprint/b
x
'graph_fingerprint/b/Read/ReadVariableOpReadVariableOpgraph_fingerprint/b*
_output_shapes	
:?*
dtype0
s
mfp1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*
shared_namemfp1/kernel
l
mfp1/kernel/Read/ReadVariableOpReadVariableOpmfp1/kernel*
_output_shapes
:	@?*
dtype0
k
	mfp1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_name	mfp1/bias
d
mfp1/bias/Read/ReadVariableOpReadVariableOp	mfp1/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_namebatch_normalization/gamma
?
-batch_normalization/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*)
shared_namebatch_normalization/beta
?
,batch_normalization/beta/Read/ReadVariableOpReadVariableOpbatch_normalization/beta*
_output_shapes	
:?*
dtype0
?
batch_normalization/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*0
shared_name!batch_normalization/moving_mean
?
3batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOpbatch_normalization/moving_mean*
_output_shapes	
:?*
dtype0
?
#batch_normalization/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization/moving_variance
?
7batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp#batch_normalization/moving_variance*
_output_shapes	
:?*
dtype0
s
mfp2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	? *
shared_namemfp2/kernel
l
mfp2/kernel/Read/ReadVariableOpReadVariableOpmfp2/kernel*
_output_shapes
:	? *
dtype0
j
	mfp2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	mfp2/bias
c
mfp2/bias/Read/ReadVariableOpReadVariableOp	mfp2/bias*
_output_shapes
: *
dtype0
?
batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_1/gamma
?
/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_1/gamma*
_output_shapes
: *
dtype0
?
batch_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_namebatch_normalization_1/beta
?
.batch_normalization_1/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_1/beta*
_output_shapes
: *
dtype0
?
!batch_normalization_1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!batch_normalization_1/moving_mean
?
5batch_normalization_1/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_1/moving_mean*
_output_shapes
: *
dtype0
?
%batch_normalization_1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%batch_normalization_1/moving_variance
?
9batch_normalization_1/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_1/moving_variance*
_output_shapes
: *
dtype0
s
mfp3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*
shared_namemfp3/kernel
l
mfp3/kernel/Read/ReadVariableOpReadVariableOpmfp3/kernel*
_output_shapes
:	 ?*
dtype0
k
	mfp3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_name	mfp3/bias
d
mfp3/bias/Read/ReadVariableOpReadVariableOp	mfp3/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_2/gamma
?
/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_2/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_namebatch_normalization_2/beta
?
.batch_normalization_2/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_2/beta*
_output_shapes	
:?*
dtype0
?
!batch_normalization_2/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*2
shared_name#!batch_normalization_2/moving_mean
?
5batch_normalization_2/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_2/moving_mean*
_output_shapes	
:?*
dtype0
?
%batch_normalization_2/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%batch_normalization_2/moving_variance
?
9batch_normalization_2/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_2/moving_variance*
_output_shapes	
:?*
dtype0
w
output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*
shared_nameoutput/kernel
p
!output/kernel/Read/ReadVariableOpReadVariableOpoutput/kernel*
_output_shapes
:	?*
dtype0
n
output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameoutput/bias
g
output/bias/Read/ReadVariableOpReadVariableOpoutput/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
 Adam/atom_embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	? *1
shared_name" Adam/atom_embedding/embeddings/m
?
4Adam/atom_embedding/embeddings/m/Read/ReadVariableOpReadVariableOp Adam/atom_embedding/embeddings/m*
_output_shapes
:	? *
dtype0
?
,Adam/bond_embedding/bond_embedding_weights/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?  *=
shared_name.,Adam/bond_embedding/bond_embedding_weights/m
?
@Adam/bond_embedding/bond_embedding_weights/m/Read/ReadVariableOpReadVariableOp,Adam/bond_embedding/bond_embedding_weights/m*#
_output_shapes
:?  *
dtype0
?
Adam/gru_step/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: `*'
shared_nameAdam/gru_step/kernel/m
?
*Adam/gru_step/kernel/m/Read/ReadVariableOpReadVariableOpAdam/gru_step/kernel/m*
_output_shapes

: `*
dtype0
?
 Adam/gru_step/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: `*1
shared_name" Adam/gru_step/recurrent_kernel/m
?
4Adam/gru_step/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp Adam/gru_step/recurrent_kernel/m*
_output_shapes

: `*
dtype0
?
Adam/gru_step/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:`*%
shared_nameAdam/gru_step/bias/m
}
(Adam/gru_step/bias/m/Read/ReadVariableOpReadVariableOpAdam/gru_step/bias/m*
_output_shapes

:`*
dtype0
?
Adam/graph_fingerprint/U/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*+
shared_nameAdam/graph_fingerprint/U/m
?
.Adam/graph_fingerprint/U/m/Read/ReadVariableOpReadVariableOpAdam/graph_fingerprint/U/m*
_output_shapes
:	@?*
dtype0
?
Adam/graph_fingerprint/b/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_nameAdam/graph_fingerprint/b/m
?
.Adam/graph_fingerprint/b/m/Read/ReadVariableOpReadVariableOpAdam/graph_fingerprint/b/m*
_output_shapes	
:?*
dtype0
?
Adam/mfp1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*#
shared_nameAdam/mfp1/kernel/m
z
&Adam/mfp1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/mfp1/kernel/m*
_output_shapes
:	@?*
dtype0
y
Adam/mfp1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*!
shared_nameAdam/mfp1/bias/m
r
$Adam/mfp1/bias/m/Read/ReadVariableOpReadVariableOpAdam/mfp1/bias/m*
_output_shapes	
:?*
dtype0
?
 Adam/batch_normalization/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/batch_normalization/gamma/m
?
4Adam/batch_normalization/gamma/m/Read/ReadVariableOpReadVariableOp Adam/batch_normalization/gamma/m*
_output_shapes	
:?*
dtype0
?
Adam/batch_normalization/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*0
shared_name!Adam/batch_normalization/beta/m
?
3Adam/batch_normalization/beta/m/Read/ReadVariableOpReadVariableOpAdam/batch_normalization/beta/m*
_output_shapes	
:?*
dtype0
?
Adam/mfp2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	? *#
shared_nameAdam/mfp2/kernel/m
z
&Adam/mfp2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/mfp2/kernel/m*
_output_shapes
:	? *
dtype0
x
Adam/mfp2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameAdam/mfp2/bias/m
q
$Adam/mfp2/bias/m/Read/ReadVariableOpReadVariableOpAdam/mfp2/bias/m*
_output_shapes
: *
dtype0
?
"Adam/batch_normalization_1/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/batch_normalization_1/gamma/m
?
6Adam/batch_normalization_1/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_1/gamma/m*
_output_shapes
: *
dtype0
?
!Adam/batch_normalization_1/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/batch_normalization_1/beta/m
?
5Adam/batch_normalization_1/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_1/beta/m*
_output_shapes
: *
dtype0
?
Adam/mfp3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*#
shared_nameAdam/mfp3/kernel/m
z
&Adam/mfp3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/mfp3/kernel/m*
_output_shapes
:	 ?*
dtype0
y
Adam/mfp3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*!
shared_nameAdam/mfp3/bias/m
r
$Adam/mfp3/bias/m/Read/ReadVariableOpReadVariableOpAdam/mfp3/bias/m*
_output_shapes	
:?*
dtype0
?
"Adam/batch_normalization_2/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/batch_normalization_2/gamma/m
?
6Adam/batch_normalization_2/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_2/gamma/m*
_output_shapes	
:?*
dtype0
?
!Adam/batch_normalization_2/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*2
shared_name#!Adam/batch_normalization_2/beta/m
?
5Adam/batch_normalization_2/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_2/beta/m*
_output_shapes	
:?*
dtype0
?
Adam/output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*%
shared_nameAdam/output/kernel/m
~
(Adam/output/kernel/m/Read/ReadVariableOpReadVariableOpAdam/output/kernel/m*
_output_shapes
:	?*
dtype0
|
Adam/output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/output/bias/m
u
&Adam/output/bias/m/Read/ReadVariableOpReadVariableOpAdam/output/bias/m*
_output_shapes
:*
dtype0
?
 Adam/atom_embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	? *1
shared_name" Adam/atom_embedding/embeddings/v
?
4Adam/atom_embedding/embeddings/v/Read/ReadVariableOpReadVariableOp Adam/atom_embedding/embeddings/v*
_output_shapes
:	? *
dtype0
?
,Adam/bond_embedding/bond_embedding_weights/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?  *=
shared_name.,Adam/bond_embedding/bond_embedding_weights/v
?
@Adam/bond_embedding/bond_embedding_weights/v/Read/ReadVariableOpReadVariableOp,Adam/bond_embedding/bond_embedding_weights/v*#
_output_shapes
:?  *
dtype0
?
Adam/gru_step/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: `*'
shared_nameAdam/gru_step/kernel/v
?
*Adam/gru_step/kernel/v/Read/ReadVariableOpReadVariableOpAdam/gru_step/kernel/v*
_output_shapes

: `*
dtype0
?
 Adam/gru_step/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: `*1
shared_name" Adam/gru_step/recurrent_kernel/v
?
4Adam/gru_step/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp Adam/gru_step/recurrent_kernel/v*
_output_shapes

: `*
dtype0
?
Adam/gru_step/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:`*%
shared_nameAdam/gru_step/bias/v
}
(Adam/gru_step/bias/v/Read/ReadVariableOpReadVariableOpAdam/gru_step/bias/v*
_output_shapes

:`*
dtype0
?
Adam/graph_fingerprint/U/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*+
shared_nameAdam/graph_fingerprint/U/v
?
.Adam/graph_fingerprint/U/v/Read/ReadVariableOpReadVariableOpAdam/graph_fingerprint/U/v*
_output_shapes
:	@?*
dtype0
?
Adam/graph_fingerprint/b/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_nameAdam/graph_fingerprint/b/v
?
.Adam/graph_fingerprint/b/v/Read/ReadVariableOpReadVariableOpAdam/graph_fingerprint/b/v*
_output_shapes	
:?*
dtype0
?
Adam/mfp1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*#
shared_nameAdam/mfp1/kernel/v
z
&Adam/mfp1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/mfp1/kernel/v*
_output_shapes
:	@?*
dtype0
y
Adam/mfp1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*!
shared_nameAdam/mfp1/bias/v
r
$Adam/mfp1/bias/v/Read/ReadVariableOpReadVariableOpAdam/mfp1/bias/v*
_output_shapes	
:?*
dtype0
?
 Adam/batch_normalization/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/batch_normalization/gamma/v
?
4Adam/batch_normalization/gamma/v/Read/ReadVariableOpReadVariableOp Adam/batch_normalization/gamma/v*
_output_shapes	
:?*
dtype0
?
Adam/batch_normalization/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*0
shared_name!Adam/batch_normalization/beta/v
?
3Adam/batch_normalization/beta/v/Read/ReadVariableOpReadVariableOpAdam/batch_normalization/beta/v*
_output_shapes	
:?*
dtype0
?
Adam/mfp2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	? *#
shared_nameAdam/mfp2/kernel/v
z
&Adam/mfp2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/mfp2/kernel/v*
_output_shapes
:	? *
dtype0
x
Adam/mfp2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameAdam/mfp2/bias/v
q
$Adam/mfp2/bias/v/Read/ReadVariableOpReadVariableOpAdam/mfp2/bias/v*
_output_shapes
: *
dtype0
?
"Adam/batch_normalization_1/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/batch_normalization_1/gamma/v
?
6Adam/batch_normalization_1/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_1/gamma/v*
_output_shapes
: *
dtype0
?
!Adam/batch_normalization_1/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/batch_normalization_1/beta/v
?
5Adam/batch_normalization_1/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_1/beta/v*
_output_shapes
: *
dtype0
?
Adam/mfp3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*#
shared_nameAdam/mfp3/kernel/v
z
&Adam/mfp3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/mfp3/kernel/v*
_output_shapes
:	 ?*
dtype0
y
Adam/mfp3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*!
shared_nameAdam/mfp3/bias/v
r
$Adam/mfp3/bias/v/Read/ReadVariableOpReadVariableOpAdam/mfp3/bias/v*
_output_shapes	
:?*
dtype0
?
"Adam/batch_normalization_2/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/batch_normalization_2/gamma/v
?
6Adam/batch_normalization_2/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_2/gamma/v*
_output_shapes	
:?*
dtype0
?
!Adam/batch_normalization_2/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*2
shared_name#!Adam/batch_normalization_2/beta/v
?
5Adam/batch_normalization_2/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_2/beta/v*
_output_shapes	
:?*
dtype0
?
Adam/output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*%
shared_nameAdam/output/kernel/v
~
(Adam/output/kernel/v/Read/ReadVariableOpReadVariableOpAdam/output/kernel/v*
_output_shapes
:	?*
dtype0
|
Adam/output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/output/bias/v
u
&Adam/output/bias/v/Read/ReadVariableOpReadVariableOpAdam/output/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?z
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?y
value?yB?y B?y
?
layer-0
layer-1
layer-2
layer_with_weights-0
layer-3
layer_with_weights-1
layer-4
layer-5
layer-6
layer_with_weights-2
layer-7
	layer-8

layer_with_weights-3

layer-9
layer_with_weights-4
layer-10
layer_with_weights-5
layer-11
layer_with_weights-6
layer-12
layer_with_weights-7
layer-13
layer_with_weights-8
layer-14
layer_with_weights-9
layer-15
layer_with_weights-10
layer-16
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
 
 
R
	variables
trainable_variables
regularization_losses
	keras_api
b

embeddings
	variables
trainable_variables
regularization_losses
 	keras_api
~
!bond_embedding_weights
!
embeddings
"	variables
#trainable_variables
$regularization_losses
%	keras_api
 
R
&	variables
'trainable_variables
(regularization_losses
)	keras_api
~

*kernel
+recurrent_kernel
,bias
-	variables
.trainable_variables
/regularization_losses
0	keras_api
 
`
1U
2b
3	variables
4trainable_variables
5regularization_losses
6	keras_api
h

7kernel
8bias
9	variables
:trainable_variables
;regularization_losses
<	keras_api
?
=axis
	>gamma
?beta
@moving_mean
Amoving_variance
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
h

Fkernel
Gbias
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
?
Laxis
	Mgamma
Nbeta
Omoving_mean
Pmoving_variance
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
h

Ukernel
Vbias
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
?
[axis
	\gamma
]beta
^moving_mean
_moving_variance
`	variables
atrainable_variables
bregularization_losses
c	keras_api
h

dkernel
ebias
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
?
jiter

kbeta_1

lbeta_2
	mdecay
nlearning_ratem?!m?*m?+m?,m?1m?2m?7m?8m?>m??m?Fm?Gm?Mm?Nm?Um?Vm?\m?]m?dm?em?v?!v?*v?+v?,v?1v?2v?7v?8v?>v??v?Fv?Gv?Mv?Nv?Uv?Vv?\v?]v?dv?ev?
?
0
!1
*2
+3
,4
15
26
77
88
>9
?10
@11
A12
F13
G14
M15
N16
O17
P18
U19
V20
\21
]22
^23
_24
d25
e26
?
0
!1
*2
+3
,4
15
26
77
88
>9
?10
F11
G12
M13
N14
U15
V16
\17
]18
d19
e20
 
?

olayers
pmetrics
qnon_trainable_variables
rlayer_metrics
	variables
trainable_variables
regularization_losses
slayer_regularization_losses
 
 
 
 
?

tlayers
ulayer_metrics
vmetrics
wnon_trainable_variables
	variables
trainable_variables
regularization_losses
xlayer_regularization_losses
ig
VARIABLE_VALUEatom_embedding/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0

0
 
?

ylayers
zlayer_metrics
{metrics
|non_trainable_variables
	variables
trainable_variables
regularization_losses
}layer_regularization_losses
?
VARIABLE_VALUE%bond_embedding/bond_embedding_weightsFlayer_with_weights-1/bond_embedding_weights/.ATTRIBUTES/VARIABLE_VALUE

!0

!0
 
?

~layers
layer_metrics
?metrics
?non_trainable_variables
"	variables
#trainable_variables
$regularization_losses
 ?layer_regularization_losses
 
 
 
?
?layers
?layer_metrics
?metrics
?non_trainable_variables
&	variables
'trainable_variables
(regularization_losses
 ?layer_regularization_losses
[Y
VARIABLE_VALUEgru_step/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUEgru_step/recurrent_kernel@layer_with_weights-2/recurrent_kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEgru_step/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

*0
+1
,2

*0
+1
,2
 
?
?layers
?layer_metrics
?metrics
?non_trainable_variables
-	variables
.trainable_variables
/regularization_losses
 ?layer_regularization_losses
ZX
VARIABLE_VALUEgraph_fingerprint/U1layer_with_weights-3/U/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEgraph_fingerprint/b1layer_with_weights-3/b/.ATTRIBUTES/VARIABLE_VALUE

10
21

10
21
 
?
?layers
?layer_metrics
?metrics
?non_trainable_variables
3	variables
4trainable_variables
5regularization_losses
 ?layer_regularization_losses
WU
VARIABLE_VALUEmfp1/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	mfp1/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

70
81

70
81
 
?
?layers
?layer_metrics
?metrics
?non_trainable_variables
9	variables
:trainable_variables
;regularization_losses
 ?layer_regularization_losses
 
db
VARIABLE_VALUEbatch_normalization/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEbatch_normalization/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEbatch_normalization/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE#batch_normalization/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

>0
?1
@2
A3

>0
?1
 
?
?layers
?layer_metrics
?metrics
?non_trainable_variables
B	variables
Ctrainable_variables
Dregularization_losses
 ?layer_regularization_losses
WU
VARIABLE_VALUEmfp2/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	mfp2/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

F0
G1

F0
G1
 
?
?layers
?layer_metrics
?metrics
?non_trainable_variables
H	variables
Itrainable_variables
Jregularization_losses
 ?layer_regularization_losses
 
fd
VARIABLE_VALUEbatch_normalization_1/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_1/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_1/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_1/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

M0
N1
O2
P3

M0
N1
 
?
?layers
?layer_metrics
?metrics
?non_trainable_variables
Q	variables
Rtrainable_variables
Sregularization_losses
 ?layer_regularization_losses
WU
VARIABLE_VALUEmfp3/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	mfp3/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE

U0
V1

U0
V1
 
?
?layers
?layer_metrics
?metrics
?non_trainable_variables
W	variables
Xtrainable_variables
Yregularization_losses
 ?layer_regularization_losses
 
fd
VARIABLE_VALUEbatch_normalization_2/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_2/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_2/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_2/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

\0
]1
^2
_3

\0
]1
 
?
?layers
?layer_metrics
?metrics
?non_trainable_variables
`	variables
atrainable_variables
bregularization_losses
 ?layer_regularization_losses
ZX
VARIABLE_VALUEoutput/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEoutput/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE

d0
e1

d0
e1
 
?
?layers
?layer_metrics
?metrics
?non_trainable_variables
f	variables
gtrainable_variables
hregularization_losses
 ?layer_regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
~
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16

?0
?1
*
@0
A1
O2
P3
^4
_5
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

@0
A1
 
 
 
 
 
 
 
 
 

O0
P1
 
 
 
 
 
 
 
 
 

^0
_1
 
 
 
 
 
 
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
??
VARIABLE_VALUE Adam/atom_embedding/embeddings/mVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/bond_embedding/bond_embedding_weights/mblayer_with_weights-1/bond_embedding_weights/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/gru_step/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/gru_step/recurrent_kernel/m\layer_with_weights-2/recurrent_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/gru_step/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/graph_fingerprint/U/mMlayer_with_weights-3/U/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/graph_fingerprint/b/mMlayer_with_weights-3/b/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/mfp1/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/mfp1/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/batch_normalization/gamma/mQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/batch_normalization/beta/mPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/mfp2/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/mfp2/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_1/gamma/mQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/batch_normalization_1/beta/mPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/mfp3/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/mfp3/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_2/gamma/mQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/batch_normalization_2/beta/mPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/output/kernel/mSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/output/bias/mQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/atom_embedding/embeddings/vVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/bond_embedding/bond_embedding_weights/vblayer_with_weights-1/bond_embedding_weights/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/gru_step/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/gru_step/recurrent_kernel/v\layer_with_weights-2/recurrent_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/gru_step/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/graph_fingerprint/U/vMlayer_with_weights-3/U/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/graph_fingerprint/b/vMlayer_with_weights-3/b/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/mfp1/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/mfp1/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/batch_normalization/gamma/vQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/batch_normalization/beta/vPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/mfp2/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/mfp2/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_1/gamma/vQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/batch_normalization_1/beta/vPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/mfp3/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/mfp3/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_2/gamma/vQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/batch_normalization_2/beta/vPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/output/kernel/vSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/output/bias/vQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
w
serving_default_atomPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
w
serving_default_bondPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????

serving_default_connectivityPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
"serving_default_node_graph_indicesPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_atomserving_default_bondserving_default_connectivity"serving_default_node_graph_indices%bond_embedding/bond_embedding_weightsatom_embedding/embeddingsgru_step/biasgru_step/kernelgru_step/recurrent_kernelgraph_fingerprint/Ugraph_fingerprint/bmfp1/kernel	mfp1/bias#batch_normalization/moving_variancebatch_normalization/gammabatch_normalization/moving_meanbatch_normalization/betamfp2/kernel	mfp2/bias%batch_normalization_1/moving_variancebatch_normalization_1/gamma!batch_normalization_1/moving_meanbatch_normalization_1/betamfp3/kernel	mfp3/bias%batch_normalization_2/moving_variancebatch_normalization_2/gamma!batch_normalization_2/moving_meanbatch_normalization_2/betaoutput/kerneloutput/bias**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*=
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_66074
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename-atom_embedding/embeddings/Read/ReadVariableOp9bond_embedding/bond_embedding_weights/Read/ReadVariableOp#gru_step/kernel/Read/ReadVariableOp-gru_step/recurrent_kernel/Read/ReadVariableOp!gru_step/bias/Read/ReadVariableOp'graph_fingerprint/U/Read/ReadVariableOp'graph_fingerprint/b/Read/ReadVariableOpmfp1/kernel/Read/ReadVariableOpmfp1/bias/Read/ReadVariableOp-batch_normalization/gamma/Read/ReadVariableOp,batch_normalization/beta/Read/ReadVariableOp3batch_normalization/moving_mean/Read/ReadVariableOp7batch_normalization/moving_variance/Read/ReadVariableOpmfp2/kernel/Read/ReadVariableOpmfp2/bias/Read/ReadVariableOp/batch_normalization_1/gamma/Read/ReadVariableOp.batch_normalization_1/beta/Read/ReadVariableOp5batch_normalization_1/moving_mean/Read/ReadVariableOp9batch_normalization_1/moving_variance/Read/ReadVariableOpmfp3/kernel/Read/ReadVariableOpmfp3/bias/Read/ReadVariableOp/batch_normalization_2/gamma/Read/ReadVariableOp.batch_normalization_2/beta/Read/ReadVariableOp5batch_normalization_2/moving_mean/Read/ReadVariableOp9batch_normalization_2/moving_variance/Read/ReadVariableOp!output/kernel/Read/ReadVariableOpoutput/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp4Adam/atom_embedding/embeddings/m/Read/ReadVariableOp@Adam/bond_embedding/bond_embedding_weights/m/Read/ReadVariableOp*Adam/gru_step/kernel/m/Read/ReadVariableOp4Adam/gru_step/recurrent_kernel/m/Read/ReadVariableOp(Adam/gru_step/bias/m/Read/ReadVariableOp.Adam/graph_fingerprint/U/m/Read/ReadVariableOp.Adam/graph_fingerprint/b/m/Read/ReadVariableOp&Adam/mfp1/kernel/m/Read/ReadVariableOp$Adam/mfp1/bias/m/Read/ReadVariableOp4Adam/batch_normalization/gamma/m/Read/ReadVariableOp3Adam/batch_normalization/beta/m/Read/ReadVariableOp&Adam/mfp2/kernel/m/Read/ReadVariableOp$Adam/mfp2/bias/m/Read/ReadVariableOp6Adam/batch_normalization_1/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_1/beta/m/Read/ReadVariableOp&Adam/mfp3/kernel/m/Read/ReadVariableOp$Adam/mfp3/bias/m/Read/ReadVariableOp6Adam/batch_normalization_2/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_2/beta/m/Read/ReadVariableOp(Adam/output/kernel/m/Read/ReadVariableOp&Adam/output/bias/m/Read/ReadVariableOp4Adam/atom_embedding/embeddings/v/Read/ReadVariableOp@Adam/bond_embedding/bond_embedding_weights/v/Read/ReadVariableOp*Adam/gru_step/kernel/v/Read/ReadVariableOp4Adam/gru_step/recurrent_kernel/v/Read/ReadVariableOp(Adam/gru_step/bias/v/Read/ReadVariableOp.Adam/graph_fingerprint/U/v/Read/ReadVariableOp.Adam/graph_fingerprint/b/v/Read/ReadVariableOp&Adam/mfp1/kernel/v/Read/ReadVariableOp$Adam/mfp1/bias/v/Read/ReadVariableOp4Adam/batch_normalization/gamma/v/Read/ReadVariableOp3Adam/batch_normalization/beta/v/Read/ReadVariableOp&Adam/mfp2/kernel/v/Read/ReadVariableOp$Adam/mfp2/bias/v/Read/ReadVariableOp6Adam/batch_normalization_1/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_1/beta/v/Read/ReadVariableOp&Adam/mfp3/kernel/v/Read/ReadVariableOp$Adam/mfp3/bias/v/Read/ReadVariableOp6Adam/batch_normalization_2/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_2/beta/v/Read/ReadVariableOp(Adam/output/kernel/v/Read/ReadVariableOp&Adam/output/bias/v/Read/ReadVariableOpConst*[
TinT
R2P	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *'
f"R 
__inference__traced_save_68811
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameatom_embedding/embeddings%bond_embedding/bond_embedding_weightsgru_step/kernelgru_step/recurrent_kernelgru_step/biasgraph_fingerprint/Ugraph_fingerprint/bmfp1/kernel	mfp1/biasbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_variancemfp2/kernel	mfp2/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_variancemfp3/kernel	mfp3/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_varianceoutput/kerneloutput/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1 Adam/atom_embedding/embeddings/m,Adam/bond_embedding/bond_embedding_weights/mAdam/gru_step/kernel/m Adam/gru_step/recurrent_kernel/mAdam/gru_step/bias/mAdam/graph_fingerprint/U/mAdam/graph_fingerprint/b/mAdam/mfp1/kernel/mAdam/mfp1/bias/m Adam/batch_normalization/gamma/mAdam/batch_normalization/beta/mAdam/mfp2/kernel/mAdam/mfp2/bias/m"Adam/batch_normalization_1/gamma/m!Adam/batch_normalization_1/beta/mAdam/mfp3/kernel/mAdam/mfp3/bias/m"Adam/batch_normalization_2/gamma/m!Adam/batch_normalization_2/beta/mAdam/output/kernel/mAdam/output/bias/m Adam/atom_embedding/embeddings/v,Adam/bond_embedding/bond_embedding_weights/vAdam/gru_step/kernel/v Adam/gru_step/recurrent_kernel/vAdam/gru_step/bias/vAdam/graph_fingerprint/U/vAdam/graph_fingerprint/b/vAdam/mfp1/kernel/vAdam/mfp1/bias/v Adam/batch_normalization/gamma/vAdam/batch_normalization/beta/vAdam/mfp2/kernel/vAdam/mfp2/bias/v"Adam/batch_normalization_1/gamma/v!Adam/batch_normalization_1/beta/vAdam/mfp3/kernel/vAdam/mfp3/bias/v"Adam/batch_normalization_2/gamma/v!Adam/batch_normalization_2/beta/vAdam/output/kernel/vAdam/output/bias/v*Z
TinS
Q2O*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__traced_restore_69055??/
?
?
1__inference_graph_fingerprint_layer_call_fn_67908
inputs_0
inputs_1
unknown:	@?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_graph_fingerprint_layer_call_and_return_conditional_losses_653832
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:????????? :?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:????????? 
"
_user_specified_name
inputs/0:MI
#
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?
C
'__inference_squeeze_layer_call_fn_67727

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_squeeze_layer_call_and_return_conditional_losses_646992
PartitionedCallh
IdentityIdentityPartitionedCall:output:0*
T0*#
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
+__inference_graph_model_layer_call_fn_66198
inputs_0
inputs_1
inputs_2
inputs_3
unknown:?  
	unknown_0:	? 
	unknown_1:`
	unknown_2: `
	unknown_3: `
	unknown_4:	@?
	unknown_5:	?
	unknown_6:	@?
	unknown_7:	?
	unknown_8:	?
	unknown_9:	?

unknown_10:	?

unknown_11:	?

unknown_12:	? 

unknown_13: 

unknown_14: 

unknown_15: 

unknown_16: 

unknown_17: 

unknown_18:	 ?

unknown_19:	?

unknown_20:	?

unknown_21:	?

unknown_22:	?

unknown_23:	?

unknown_24:	?

unknown_25:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2inputs_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*7
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_graph_model_layer_call_and_return_conditional_losses_656532
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/3
?
?
C__inference_gru_step_layer_call_and_return_conditional_losses_64798

inputs
inputs_1)
readvariableop_resource:`0
matmul_readvariableop_resource: `2
 matmul_1_readvariableop_resource: `
identity??MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?ReadVariableOpx
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:`*
dtype02
ReadVariableOpj
unstackUnpackReadVariableOp:value:0*
T0* 
_output_shapes
:`:`*	
num2	
unstack?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: `*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2
MatMuls
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*'
_output_shapes
:?????????`2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
split?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: `*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulinputs_1MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2

MatMul_1y
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*'
_output_shapes
:?????????`2
	BiasAdd_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"        ????2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split_1/split_dim?
split_1SplitVBiasAdd_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2	
split_1g
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:????????? 2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:????????? 2	
Sigmoidk
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:????????? 2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:????????? 2
	Sigmoid_1d
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:????????? 2
mulb
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:????????? 2
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:????????? 2
Tanh^
mul_1MulSigmoid:y:0inputs_1*
T0*'
_output_shapes
:????????? 2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
sub/x`
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:????????? 2
subZ
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:????????? 2
mul_2_
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:????????? 2
add_3?
IdentityIdentity	add_3:z:0^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:????????? :????????? : : : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

?
?__inference_mfp1_layer_call_and_return_conditional_losses_65026

inputs1
matmul_readvariableop_resource:	@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_64381

inputs/
!batchnorm_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: 1
#batchnorm_readvariableop_1_resource: 1
#batchnorm_readvariableop_2_resource: 
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:????????? 2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:????????? 2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? : : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?*
?
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_68532

inputs6
'assignmovingavg_readvariableop_resource:	?8
)assignmovingavg_1_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?0
!batchnorm_readvariableop_resource:	?
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
F__inference_graph_model_layer_call_and_return_conditional_losses_66004
node_graph_indices
atom
bond
connectivity+
bond_embedding_65896:?  '
atom_embedding_65899:	?  
gru_step_65903:` 
gru_step_65905: ` 
gru_step_65907: `*
graph_fingerprint_65951:	@?&
graph_fingerprint_65953:	?

mfp1_65956:	@?

mfp1_65958:	?(
batch_normalization_65961:	?(
batch_normalization_65963:	?(
batch_normalization_65965:	?(
batch_normalization_65967:	?

mfp2_65970:	? 

mfp2_65972: )
batch_normalization_1_65975: )
batch_normalization_1_65977: )
batch_normalization_1_65979: )
batch_normalization_1_65981: 

mfp3_65984:	 ?

mfp3_65986:	?*
batch_normalization_2_65989:	?*
batch_normalization_2_65991:	?*
batch_normalization_2_65993:	?*
batch_normalization_2_65995:	?
output_65998:	?
output_66000:
identity??&atom_embedding/StatefulPartitionedCall?+batch_normalization/StatefulPartitionedCall?-batch_normalization_1/StatefulPartitionedCall?-batch_normalization_2/StatefulPartitionedCall?&bond_embedding/StatefulPartitionedCall?)graph_fingerprint/StatefulPartitionedCall? gru_step/StatefulPartitionedCall?"gru_step/StatefulPartitionedCall_1?"gru_step/StatefulPartitionedCall_2?"gru_step/StatefulPartitionedCall_3?"gru_step/StatefulPartitionedCall_4?"gru_step/StatefulPartitionedCall_5?"gru_step/StatefulPartitionedCall_6?"gru_step/StatefulPartitionedCall_7?"gru_step/StatefulPartitionedCall_8?%message_layer/StatefulPartitionedCall?'message_layer/StatefulPartitionedCall_1?'message_layer/StatefulPartitionedCall_2?'message_layer/StatefulPartitionedCall_3?'message_layer/StatefulPartitionedCall_4?'message_layer/StatefulPartitionedCall_5?'message_layer/StatefulPartitionedCall_6?'message_layer/StatefulPartitionedCall_7?'message_layer/StatefulPartitionedCall_8?mfp1/StatefulPartitionedCall?mfp2/StatefulPartitionedCall?mfp3/StatefulPartitionedCall?output/StatefulPartitionedCall?
squeeze/PartitionedCallPartitionedCallbond*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_squeeze_layer_call_and_return_conditional_losses_646992
squeeze/PartitionedCall?
squeeze/PartitionedCall_1PartitionedCallatom*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_squeeze_layer_call_and_return_conditional_losses_646992
squeeze/PartitionedCall_1?
&bond_embedding/StatefulPartitionedCallStatefulPartitionedCall squeeze/PartitionedCall:output:0bond_embedding_65896*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????  *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_bond_embedding_layer_call_and_return_conditional_losses_647112(
&bond_embedding/StatefulPartitionedCall?
&atom_embedding/StatefulPartitionedCallStatefulPartitionedCall"squeeze/PartitionedCall_1:output:0atom_embedding_65899*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_atom_embedding_layer_call_and_return_conditional_losses_647242(
&atom_embedding/StatefulPartitionedCall?
%message_layer/StatefulPartitionedCallStatefulPartitionedCall/atom_embedding/StatefulPartitionedCall:output:0/bond_embedding/StatefulPartitionedCall:output:0connectivity*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_message_layer_layer_call_and_return_conditional_losses_654512'
%message_layer/StatefulPartitionedCall?
 gru_step/StatefulPartitionedCallStatefulPartitionedCall.message_layer/StatefulPartitionedCall:output:0/atom_embedding/StatefulPartitionedCall:output:0gru_step_65903gru_step_65905gru_step_65907*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_gru_step_layer_call_and_return_conditional_losses_647982"
 gru_step/StatefulPartitionedCall?
'message_layer/StatefulPartitionedCall_1StatefulPartitionedCall)gru_step/StatefulPartitionedCall:output:0/bond_embedding/StatefulPartitionedCall:output:0connectivity&^message_layer/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_message_layer_layer_call_and_return_conditional_losses_654512)
'message_layer/StatefulPartitionedCall_1?
"gru_step/StatefulPartitionedCall_1StatefulPartitionedCall0message_layer/StatefulPartitionedCall_1:output:0)gru_step/StatefulPartitionedCall:output:0gru_step_65903gru_step_65905gru_step_65907*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_gru_step_layer_call_and_return_conditional_losses_647982$
"gru_step/StatefulPartitionedCall_1?
'message_layer/StatefulPartitionedCall_2StatefulPartitionedCall+gru_step/StatefulPartitionedCall_1:output:0/bond_embedding/StatefulPartitionedCall:output:0connectivity(^message_layer/StatefulPartitionedCall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_message_layer_layer_call_and_return_conditional_losses_654512)
'message_layer/StatefulPartitionedCall_2?
"gru_step/StatefulPartitionedCall_2StatefulPartitionedCall0message_layer/StatefulPartitionedCall_2:output:0+gru_step/StatefulPartitionedCall_1:output:0gru_step_65903gru_step_65905gru_step_65907*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_gru_step_layer_call_and_return_conditional_losses_647982$
"gru_step/StatefulPartitionedCall_2?
'message_layer/StatefulPartitionedCall_3StatefulPartitionedCall+gru_step/StatefulPartitionedCall_2:output:0/bond_embedding/StatefulPartitionedCall:output:0connectivity(^message_layer/StatefulPartitionedCall_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_message_layer_layer_call_and_return_conditional_losses_654512)
'message_layer/StatefulPartitionedCall_3?
"gru_step/StatefulPartitionedCall_3StatefulPartitionedCall0message_layer/StatefulPartitionedCall_3:output:0+gru_step/StatefulPartitionedCall_2:output:0gru_step_65903gru_step_65905gru_step_65907*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_gru_step_layer_call_and_return_conditional_losses_647982$
"gru_step/StatefulPartitionedCall_3?
'message_layer/StatefulPartitionedCall_4StatefulPartitionedCall+gru_step/StatefulPartitionedCall_3:output:0/bond_embedding/StatefulPartitionedCall:output:0connectivity(^message_layer/StatefulPartitionedCall_3*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_message_layer_layer_call_and_return_conditional_losses_654512)
'message_layer/StatefulPartitionedCall_4?
"gru_step/StatefulPartitionedCall_4StatefulPartitionedCall0message_layer/StatefulPartitionedCall_4:output:0+gru_step/StatefulPartitionedCall_3:output:0gru_step_65903gru_step_65905gru_step_65907*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_gru_step_layer_call_and_return_conditional_losses_647982$
"gru_step/StatefulPartitionedCall_4?
'message_layer/StatefulPartitionedCall_5StatefulPartitionedCall+gru_step/StatefulPartitionedCall_4:output:0/bond_embedding/StatefulPartitionedCall:output:0connectivity(^message_layer/StatefulPartitionedCall_4*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_message_layer_layer_call_and_return_conditional_losses_654512)
'message_layer/StatefulPartitionedCall_5?
"gru_step/StatefulPartitionedCall_5StatefulPartitionedCall0message_layer/StatefulPartitionedCall_5:output:0+gru_step/StatefulPartitionedCall_4:output:0gru_step_65903gru_step_65905gru_step_65907*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_gru_step_layer_call_and_return_conditional_losses_647982$
"gru_step/StatefulPartitionedCall_5?
'message_layer/StatefulPartitionedCall_6StatefulPartitionedCall+gru_step/StatefulPartitionedCall_5:output:0/bond_embedding/StatefulPartitionedCall:output:0connectivity(^message_layer/StatefulPartitionedCall_5*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_message_layer_layer_call_and_return_conditional_losses_654512)
'message_layer/StatefulPartitionedCall_6?
"gru_step/StatefulPartitionedCall_6StatefulPartitionedCall0message_layer/StatefulPartitionedCall_6:output:0+gru_step/StatefulPartitionedCall_5:output:0gru_step_65903gru_step_65905gru_step_65907*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_gru_step_layer_call_and_return_conditional_losses_647982$
"gru_step/StatefulPartitionedCall_6?
'message_layer/StatefulPartitionedCall_7StatefulPartitionedCall+gru_step/StatefulPartitionedCall_6:output:0/bond_embedding/StatefulPartitionedCall:output:0connectivity(^message_layer/StatefulPartitionedCall_6*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_message_layer_layer_call_and_return_conditional_losses_654512)
'message_layer/StatefulPartitionedCall_7?
"gru_step/StatefulPartitionedCall_7StatefulPartitionedCall0message_layer/StatefulPartitionedCall_7:output:0+gru_step/StatefulPartitionedCall_6:output:0gru_step_65903gru_step_65905gru_step_65907*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_gru_step_layer_call_and_return_conditional_losses_647982$
"gru_step/StatefulPartitionedCall_7?
'message_layer/StatefulPartitionedCall_8StatefulPartitionedCall+gru_step/StatefulPartitionedCall_7:output:0/bond_embedding/StatefulPartitionedCall:output:0connectivity(^message_layer/StatefulPartitionedCall_7*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_message_layer_layer_call_and_return_conditional_losses_654512)
'message_layer/StatefulPartitionedCall_8?
"gru_step/StatefulPartitionedCall_8StatefulPartitionedCall0message_layer/StatefulPartitionedCall_8:output:0+gru_step/StatefulPartitionedCall_7:output:0gru_step_65903gru_step_65905gru_step_65907*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_gru_step_layer_call_and_return_conditional_losses_647982$
"gru_step/StatefulPartitionedCall_8?
squeeze/PartitionedCall_2PartitionedCallnode_graph_indices*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_squeeze_layer_call_and_return_conditional_losses_646992
squeeze/PartitionedCall_2?
)graph_fingerprint/StatefulPartitionedCallStatefulPartitionedCall+gru_step/StatefulPartitionedCall_8:output:0"squeeze/PartitionedCall_2:output:0graph_fingerprint_65951graph_fingerprint_65953*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_graph_fingerprint_layer_call_and_return_conditional_losses_653832+
)graph_fingerprint/StatefulPartitionedCall?
mfp1/StatefulPartitionedCallStatefulPartitionedCall2graph_fingerprint/StatefulPartitionedCall:output:0
mfp1_65956
mfp1_65958*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_mfp1_layer_call_and_return_conditional_losses_650262
mfp1/StatefulPartitionedCall?
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall%mfp1/StatefulPartitionedCall:output:0batch_normalization_65961batch_normalization_65963batch_normalization_65965batch_normalization_65967*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_642792-
+batch_normalization/StatefulPartitionedCall?
mfp2/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0
mfp2_65970
mfp2_65972*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_mfp2_layer_call_and_return_conditional_losses_650522
mfp2/StatefulPartitionedCall?
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall%mfp2/StatefulPartitionedCall:output:0batch_normalization_1_65975batch_normalization_1_65977batch_normalization_1_65979batch_normalization_1_65981*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_644412/
-batch_normalization_1/StatefulPartitionedCall?
mfp3/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0
mfp3_65984
mfp3_65986*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_mfp3_layer_call_and_return_conditional_losses_650782
mfp3/StatefulPartitionedCall?
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall%mfp3/StatefulPartitionedCall:output:0batch_normalization_2_65989batch_normalization_2_65991batch_normalization_2_65993batch_normalization_2_65995*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_646032/
-batch_normalization_2/StatefulPartitionedCall?
output/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0output_65998output_66000*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_output_layer_call_and_return_conditional_losses_651032 
output/StatefulPartitionedCall?	
IdentityIdentity'output/StatefulPartitionedCall:output:0'^atom_embedding/StatefulPartitionedCall,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall'^bond_embedding/StatefulPartitionedCall*^graph_fingerprint/StatefulPartitionedCall!^gru_step/StatefulPartitionedCall#^gru_step/StatefulPartitionedCall_1#^gru_step/StatefulPartitionedCall_2#^gru_step/StatefulPartitionedCall_3#^gru_step/StatefulPartitionedCall_4#^gru_step/StatefulPartitionedCall_5#^gru_step/StatefulPartitionedCall_6#^gru_step/StatefulPartitionedCall_7#^gru_step/StatefulPartitionedCall_8&^message_layer/StatefulPartitionedCall(^message_layer/StatefulPartitionedCall_1(^message_layer/StatefulPartitionedCall_2(^message_layer/StatefulPartitionedCall_3(^message_layer/StatefulPartitionedCall_4(^message_layer/StatefulPartitionedCall_5(^message_layer/StatefulPartitionedCall_6(^message_layer/StatefulPartitionedCall_7(^message_layer/StatefulPartitionedCall_8^mfp1/StatefulPartitionedCall^mfp2/StatefulPartitionedCall^mfp3/StatefulPartitionedCall^output/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : 2P
&atom_embedding/StatefulPartitionedCall&atom_embedding/StatefulPartitionedCall2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2P
&bond_embedding/StatefulPartitionedCall&bond_embedding/StatefulPartitionedCall2V
)graph_fingerprint/StatefulPartitionedCall)graph_fingerprint/StatefulPartitionedCall2D
 gru_step/StatefulPartitionedCall gru_step/StatefulPartitionedCall2H
"gru_step/StatefulPartitionedCall_1"gru_step/StatefulPartitionedCall_12H
"gru_step/StatefulPartitionedCall_2"gru_step/StatefulPartitionedCall_22H
"gru_step/StatefulPartitionedCall_3"gru_step/StatefulPartitionedCall_32H
"gru_step/StatefulPartitionedCall_4"gru_step/StatefulPartitionedCall_42H
"gru_step/StatefulPartitionedCall_5"gru_step/StatefulPartitionedCall_52H
"gru_step/StatefulPartitionedCall_6"gru_step/StatefulPartitionedCall_62H
"gru_step/StatefulPartitionedCall_7"gru_step/StatefulPartitionedCall_72H
"gru_step/StatefulPartitionedCall_8"gru_step/StatefulPartitionedCall_82N
%message_layer/StatefulPartitionedCall%message_layer/StatefulPartitionedCall2R
'message_layer/StatefulPartitionedCall_1'message_layer/StatefulPartitionedCall_12R
'message_layer/StatefulPartitionedCall_2'message_layer/StatefulPartitionedCall_22R
'message_layer/StatefulPartitionedCall_3'message_layer/StatefulPartitionedCall_32R
'message_layer/StatefulPartitionedCall_4'message_layer/StatefulPartitionedCall_42R
'message_layer/StatefulPartitionedCall_5'message_layer/StatefulPartitionedCall_52R
'message_layer/StatefulPartitionedCall_6'message_layer/StatefulPartitionedCall_62R
'message_layer/StatefulPartitionedCall_7'message_layer/StatefulPartitionedCall_72R
'message_layer/StatefulPartitionedCall_8'message_layer/StatefulPartitionedCall_82<
mfp1/StatefulPartitionedCallmfp1/StatefulPartitionedCall2<
mfp2/StatefulPartitionedCallmfp2/StatefulPartitionedCall2<
mfp3/StatefulPartitionedCallmfp3/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:[ W
'
_output_shapes
:?????????
,
_user_specified_namenode_graph_indices:MI
'
_output_shapes
:?????????

_user_specified_nameatom:MI
'
_output_shapes
:?????????

_user_specified_namebond:UQ
'
_output_shapes
:?????????
&
_user_specified_nameconnectivity
?
?
C__inference_gru_step_layer_call_and_return_conditional_losses_67888
inputs_0
inputs_1)
readvariableop_resource:`0
matmul_readvariableop_resource: `2
 matmul_1_readvariableop_resource: `
identity??MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?ReadVariableOpx
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:`*
dtype02
ReadVariableOpj
unstackUnpackReadVariableOp:value:0*
T0* 
_output_shapes
:`:`*	
num2	
unstack?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: `*
dtype02
MatMul/ReadVariableOpu
MatMulMatMulinputs_0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2
MatMuls
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*'
_output_shapes
:?????????`2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
split?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: `*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulinputs_1MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2

MatMul_1y
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*'
_output_shapes
:?????????`2
	BiasAdd_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"        ????2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split_1/split_dim?
split_1SplitVBiasAdd_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2	
split_1g
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:????????? 2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:????????? 2	
Sigmoidk
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:????????? 2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:????????? 2
	Sigmoid_1d
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:????????? 2
mulb
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:????????? 2
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:????????? 2
Tanh^
mul_1MulSigmoid:y:0inputs_1*
T0*'
_output_shapes
:????????? 2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
sub/x`
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:????????? 2
subZ
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:????????? 2
mul_2_
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:????????? 2
add_3?
IdentityIdentity	add_3:z:0^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:????????? :????????? : : : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:Q M
'
_output_shapes
:????????? 
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:????????? 
"
_user_specified_name
inputs/1
?

?
?__inference_mfp3_layer_call_and_return_conditional_losses_65078

inputs1
matmul_readvariableop_resource:	 ?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
^
B__inference_squeeze_layer_call_and_return_conditional_losses_67732

inputs
identityj
SqueezeSqueezeinputs*
T0*#
_output_shapes
:?????????*
squeeze_dims
2	
Squeeze`
IdentityIdentitySqueeze:output:0*
T0*#
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?)
?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_64441

inputs5
'assignmovingavg_readvariableop_resource: 7
)assignmovingavg_1_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: /
!batchnorm_readvariableop_resource: 
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

: *
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

: 2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:????????? 2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

: *
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
: *
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
: 2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
: 2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
: *
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
: 2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
: 2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:????????? 2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:????????? 2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
5__inference_batch_normalization_1_layer_call_fn_68378

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_644412
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
(__inference_gru_step_layer_call_fn_67850
inputs_0
inputs_1
unknown:`
	unknown_0: `
	unknown_1: `
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_gru_step_layer_call_and_return_conditional_losses_647982
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:????????? :????????? : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:????????? 
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:????????? 
"
_user_specified_name
inputs/1
?
?
H__inference_message_layer_layer_call_and_return_conditional_losses_67838
inputs_0
inputs_1
inputs_2
identity?{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSliceinputs_2strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice`
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2/axis?
GatherV2GatherV2inputs_0strided_slice:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:????????? 2

GatherV2b
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim?

ExpandDims
ExpandDimsGatherV2:output:0ExpandDims/dim:output:0*
T0*+
_output_shapes
:????????? 2

ExpandDimsv
MatMulBatchMatMulV2inputs_1ExpandDims:output:0*
T0*+
_output_shapes
:????????? 2
MatMulM
ShapeShapeMatMul:output:0*
T0*
_output_shapes
:2
Shape?
SqueezeSqueezeMatMul:output:0*
T0*'
_output_shapes
:????????? *
squeeze_dims

?????????2	
Squeezec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Const}
dropout/MulMulSqueeze:output:0dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout/Mul^
dropout/ShapeShapeSqueeze:output:0*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*

seed*
seed2???2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout/Mul_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceinputs_2strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_1?

SegmentSum
SegmentSumdropout/Mul_1:z:0strided_slice_1:output:0*
T0*
Tindices0*'
_output_shapes
:????????? 2

SegmentSumg
IdentityIdentitySegmentSum:output:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:????????? :?????????  :?????????:Q M
'
_output_shapes
:????????? 
"
_user_specified_name
inputs/0:UQ
+
_output_shapes
:?????????  
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/2
?	
?
I__inference_atom_embedding_layer_call_and_return_conditional_losses_64724

inputs)
embedding_lookup_64718:	? 
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_64718inputs",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*)
_class
loc:@embedding_lookup/64718*'
_output_shapes
:????????? *
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@embedding_lookup/64718*'
_output_shapes
:????????? 2
embedding_lookup/Identity?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? 2
embedding_lookup/Identity_1?
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:?????????: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
I__inference_atom_embedding_layer_call_and_return_conditional_losses_67748

inputs)
embedding_lookup_67742:	? 
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_67742inputs",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*)
_class
loc:@embedding_lookup/67742*'
_output_shapes
:????????? *
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@embedding_lookup/67742*'
_output_shapes
:????????? 2
embedding_lookup/Identity?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? 2
embedding_lookup/Identity_1?
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:?????????: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
F__inference_graph_model_layer_call_and_return_conditional_losses_65110

inputs
inputs_1
inputs_2
inputs_3+
bond_embedding_64712:?  '
atom_embedding_64725:	?  
gru_step_64799:` 
gru_step_64801: ` 
gru_step_64803: `*
graph_fingerprint_65010:	@?&
graph_fingerprint_65012:	?

mfp1_65027:	@?

mfp1_65029:	?(
batch_normalization_65032:	?(
batch_normalization_65034:	?(
batch_normalization_65036:	?(
batch_normalization_65038:	?

mfp2_65053:	? 

mfp2_65055: )
batch_normalization_1_65058: )
batch_normalization_1_65060: )
batch_normalization_1_65062: )
batch_normalization_1_65064: 

mfp3_65079:	 ?

mfp3_65081:	?*
batch_normalization_2_65084:	?*
batch_normalization_2_65086:	?*
batch_normalization_2_65088:	?*
batch_normalization_2_65090:	?
output_65104:	?
output_65106:
identity??&atom_embedding/StatefulPartitionedCall?+batch_normalization/StatefulPartitionedCall?-batch_normalization_1/StatefulPartitionedCall?-batch_normalization_2/StatefulPartitionedCall?&bond_embedding/StatefulPartitionedCall?)graph_fingerprint/StatefulPartitionedCall? gru_step/StatefulPartitionedCall?"gru_step/StatefulPartitionedCall_1?"gru_step/StatefulPartitionedCall_2?"gru_step/StatefulPartitionedCall_3?"gru_step/StatefulPartitionedCall_4?"gru_step/StatefulPartitionedCall_5?"gru_step/StatefulPartitionedCall_6?"gru_step/StatefulPartitionedCall_7?"gru_step/StatefulPartitionedCall_8?%message_layer/StatefulPartitionedCall?'message_layer/StatefulPartitionedCall_1?'message_layer/StatefulPartitionedCall_2?'message_layer/StatefulPartitionedCall_3?'message_layer/StatefulPartitionedCall_4?'message_layer/StatefulPartitionedCall_5?'message_layer/StatefulPartitionedCall_6?'message_layer/StatefulPartitionedCall_7?'message_layer/StatefulPartitionedCall_8?mfp1/StatefulPartitionedCall?mfp2/StatefulPartitionedCall?mfp3/StatefulPartitionedCall?output/StatefulPartitionedCall?
squeeze/PartitionedCallPartitionedCallinputs_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_squeeze_layer_call_and_return_conditional_losses_646992
squeeze/PartitionedCall?
squeeze/PartitionedCall_1PartitionedCallinputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_squeeze_layer_call_and_return_conditional_losses_646992
squeeze/PartitionedCall_1?
&bond_embedding/StatefulPartitionedCallStatefulPartitionedCall squeeze/PartitionedCall:output:0bond_embedding_64712*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????  *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_bond_embedding_layer_call_and_return_conditional_losses_647112(
&bond_embedding/StatefulPartitionedCall?
&atom_embedding/StatefulPartitionedCallStatefulPartitionedCall"squeeze/PartitionedCall_1:output:0atom_embedding_64725*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_atom_embedding_layer_call_and_return_conditional_losses_647242(
&atom_embedding/StatefulPartitionedCall?
%message_layer/StatefulPartitionedCallStatefulPartitionedCall/atom_embedding/StatefulPartitionedCall:output:0/bond_embedding/StatefulPartitionedCall:output:0inputs_3*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_message_layer_layer_call_and_return_conditional_losses_647582'
%message_layer/StatefulPartitionedCall?
 gru_step/StatefulPartitionedCallStatefulPartitionedCall.message_layer/StatefulPartitionedCall:output:0/atom_embedding/StatefulPartitionedCall:output:0gru_step_64799gru_step_64801gru_step_64803*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_gru_step_layer_call_and_return_conditional_losses_647982"
 gru_step/StatefulPartitionedCall?
'message_layer/StatefulPartitionedCall_1StatefulPartitionedCall)gru_step/StatefulPartitionedCall:output:0/bond_embedding/StatefulPartitionedCall:output:0inputs_3&^message_layer/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_message_layer_layer_call_and_return_conditional_losses_647582)
'message_layer/StatefulPartitionedCall_1?
"gru_step/StatefulPartitionedCall_1StatefulPartitionedCall0message_layer/StatefulPartitionedCall_1:output:0)gru_step/StatefulPartitionedCall:output:0gru_step_64799gru_step_64801gru_step_64803*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_gru_step_layer_call_and_return_conditional_losses_647982$
"gru_step/StatefulPartitionedCall_1?
'message_layer/StatefulPartitionedCall_2StatefulPartitionedCall+gru_step/StatefulPartitionedCall_1:output:0/bond_embedding/StatefulPartitionedCall:output:0inputs_3(^message_layer/StatefulPartitionedCall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_message_layer_layer_call_and_return_conditional_losses_647582)
'message_layer/StatefulPartitionedCall_2?
"gru_step/StatefulPartitionedCall_2StatefulPartitionedCall0message_layer/StatefulPartitionedCall_2:output:0+gru_step/StatefulPartitionedCall_1:output:0gru_step_64799gru_step_64801gru_step_64803*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_gru_step_layer_call_and_return_conditional_losses_647982$
"gru_step/StatefulPartitionedCall_2?
'message_layer/StatefulPartitionedCall_3StatefulPartitionedCall+gru_step/StatefulPartitionedCall_2:output:0/bond_embedding/StatefulPartitionedCall:output:0inputs_3(^message_layer/StatefulPartitionedCall_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_message_layer_layer_call_and_return_conditional_losses_647582)
'message_layer/StatefulPartitionedCall_3?
"gru_step/StatefulPartitionedCall_3StatefulPartitionedCall0message_layer/StatefulPartitionedCall_3:output:0+gru_step/StatefulPartitionedCall_2:output:0gru_step_64799gru_step_64801gru_step_64803*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_gru_step_layer_call_and_return_conditional_losses_647982$
"gru_step/StatefulPartitionedCall_3?
'message_layer/StatefulPartitionedCall_4StatefulPartitionedCall+gru_step/StatefulPartitionedCall_3:output:0/bond_embedding/StatefulPartitionedCall:output:0inputs_3(^message_layer/StatefulPartitionedCall_3*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_message_layer_layer_call_and_return_conditional_losses_647582)
'message_layer/StatefulPartitionedCall_4?
"gru_step/StatefulPartitionedCall_4StatefulPartitionedCall0message_layer/StatefulPartitionedCall_4:output:0+gru_step/StatefulPartitionedCall_3:output:0gru_step_64799gru_step_64801gru_step_64803*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_gru_step_layer_call_and_return_conditional_losses_647982$
"gru_step/StatefulPartitionedCall_4?
'message_layer/StatefulPartitionedCall_5StatefulPartitionedCall+gru_step/StatefulPartitionedCall_4:output:0/bond_embedding/StatefulPartitionedCall:output:0inputs_3(^message_layer/StatefulPartitionedCall_4*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_message_layer_layer_call_and_return_conditional_losses_647582)
'message_layer/StatefulPartitionedCall_5?
"gru_step/StatefulPartitionedCall_5StatefulPartitionedCall0message_layer/StatefulPartitionedCall_5:output:0+gru_step/StatefulPartitionedCall_4:output:0gru_step_64799gru_step_64801gru_step_64803*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_gru_step_layer_call_and_return_conditional_losses_647982$
"gru_step/StatefulPartitionedCall_5?
'message_layer/StatefulPartitionedCall_6StatefulPartitionedCall+gru_step/StatefulPartitionedCall_5:output:0/bond_embedding/StatefulPartitionedCall:output:0inputs_3(^message_layer/StatefulPartitionedCall_5*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_message_layer_layer_call_and_return_conditional_losses_647582)
'message_layer/StatefulPartitionedCall_6?
"gru_step/StatefulPartitionedCall_6StatefulPartitionedCall0message_layer/StatefulPartitionedCall_6:output:0+gru_step/StatefulPartitionedCall_5:output:0gru_step_64799gru_step_64801gru_step_64803*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_gru_step_layer_call_and_return_conditional_losses_647982$
"gru_step/StatefulPartitionedCall_6?
'message_layer/StatefulPartitionedCall_7StatefulPartitionedCall+gru_step/StatefulPartitionedCall_6:output:0/bond_embedding/StatefulPartitionedCall:output:0inputs_3(^message_layer/StatefulPartitionedCall_6*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_message_layer_layer_call_and_return_conditional_losses_647582)
'message_layer/StatefulPartitionedCall_7?
"gru_step/StatefulPartitionedCall_7StatefulPartitionedCall0message_layer/StatefulPartitionedCall_7:output:0+gru_step/StatefulPartitionedCall_6:output:0gru_step_64799gru_step_64801gru_step_64803*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_gru_step_layer_call_and_return_conditional_losses_647982$
"gru_step/StatefulPartitionedCall_7?
'message_layer/StatefulPartitionedCall_8StatefulPartitionedCall+gru_step/StatefulPartitionedCall_7:output:0/bond_embedding/StatefulPartitionedCall:output:0inputs_3(^message_layer/StatefulPartitionedCall_7*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_message_layer_layer_call_and_return_conditional_losses_647582)
'message_layer/StatefulPartitionedCall_8?
"gru_step/StatefulPartitionedCall_8StatefulPartitionedCall0message_layer/StatefulPartitionedCall_8:output:0+gru_step/StatefulPartitionedCall_7:output:0gru_step_64799gru_step_64801gru_step_64803*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_gru_step_layer_call_and_return_conditional_losses_647982$
"gru_step/StatefulPartitionedCall_8?
squeeze/PartitionedCall_2PartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_squeeze_layer_call_and_return_conditional_losses_646992
squeeze/PartitionedCall_2?
)graph_fingerprint/StatefulPartitionedCallStatefulPartitionedCall+gru_step/StatefulPartitionedCall_8:output:0"squeeze/PartitionedCall_2:output:0graph_fingerprint_65010graph_fingerprint_65012*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_graph_fingerprint_layer_call_and_return_conditional_losses_650092+
)graph_fingerprint/StatefulPartitionedCall?
mfp1/StatefulPartitionedCallStatefulPartitionedCall2graph_fingerprint/StatefulPartitionedCall:output:0
mfp1_65027
mfp1_65029*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_mfp1_layer_call_and_return_conditional_losses_650262
mfp1/StatefulPartitionedCall?
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall%mfp1/StatefulPartitionedCall:output:0batch_normalization_65032batch_normalization_65034batch_normalization_65036batch_normalization_65038*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_642192-
+batch_normalization/StatefulPartitionedCall?
mfp2/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0
mfp2_65053
mfp2_65055*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_mfp2_layer_call_and_return_conditional_losses_650522
mfp2/StatefulPartitionedCall?
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall%mfp2/StatefulPartitionedCall:output:0batch_normalization_1_65058batch_normalization_1_65060batch_normalization_1_65062batch_normalization_1_65064*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_643812/
-batch_normalization_1/StatefulPartitionedCall?
mfp3/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0
mfp3_65079
mfp3_65081*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_mfp3_layer_call_and_return_conditional_losses_650782
mfp3/StatefulPartitionedCall?
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall%mfp3/StatefulPartitionedCall:output:0batch_normalization_2_65084batch_normalization_2_65086batch_normalization_2_65088batch_normalization_2_65090*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_645432/
-batch_normalization_2/StatefulPartitionedCall?
output/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0output_65104output_65106*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_output_layer_call_and_return_conditional_losses_651032 
output/StatefulPartitionedCall?	
IdentityIdentity'output/StatefulPartitionedCall:output:0'^atom_embedding/StatefulPartitionedCall,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall'^bond_embedding/StatefulPartitionedCall*^graph_fingerprint/StatefulPartitionedCall!^gru_step/StatefulPartitionedCall#^gru_step/StatefulPartitionedCall_1#^gru_step/StatefulPartitionedCall_2#^gru_step/StatefulPartitionedCall_3#^gru_step/StatefulPartitionedCall_4#^gru_step/StatefulPartitionedCall_5#^gru_step/StatefulPartitionedCall_6#^gru_step/StatefulPartitionedCall_7#^gru_step/StatefulPartitionedCall_8&^message_layer/StatefulPartitionedCall(^message_layer/StatefulPartitionedCall_1(^message_layer/StatefulPartitionedCall_2(^message_layer/StatefulPartitionedCall_3(^message_layer/StatefulPartitionedCall_4(^message_layer/StatefulPartitionedCall_5(^message_layer/StatefulPartitionedCall_6(^message_layer/StatefulPartitionedCall_7(^message_layer/StatefulPartitionedCall_8^mfp1/StatefulPartitionedCall^mfp2/StatefulPartitionedCall^mfp3/StatefulPartitionedCall^output/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : 2P
&atom_embedding/StatefulPartitionedCall&atom_embedding/StatefulPartitionedCall2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2P
&bond_embedding/StatefulPartitionedCall&bond_embedding/StatefulPartitionedCall2V
)graph_fingerprint/StatefulPartitionedCall)graph_fingerprint/StatefulPartitionedCall2D
 gru_step/StatefulPartitionedCall gru_step/StatefulPartitionedCall2H
"gru_step/StatefulPartitionedCall_1"gru_step/StatefulPartitionedCall_12H
"gru_step/StatefulPartitionedCall_2"gru_step/StatefulPartitionedCall_22H
"gru_step/StatefulPartitionedCall_3"gru_step/StatefulPartitionedCall_32H
"gru_step/StatefulPartitionedCall_4"gru_step/StatefulPartitionedCall_42H
"gru_step/StatefulPartitionedCall_5"gru_step/StatefulPartitionedCall_52H
"gru_step/StatefulPartitionedCall_6"gru_step/StatefulPartitionedCall_62H
"gru_step/StatefulPartitionedCall_7"gru_step/StatefulPartitionedCall_72H
"gru_step/StatefulPartitionedCall_8"gru_step/StatefulPartitionedCall_82N
%message_layer/StatefulPartitionedCall%message_layer/StatefulPartitionedCall2R
'message_layer/StatefulPartitionedCall_1'message_layer/StatefulPartitionedCall_12R
'message_layer/StatefulPartitionedCall_2'message_layer/StatefulPartitionedCall_22R
'message_layer/StatefulPartitionedCall_3'message_layer/StatefulPartitionedCall_32R
'message_layer/StatefulPartitionedCall_4'message_layer/StatefulPartitionedCall_42R
'message_layer/StatefulPartitionedCall_5'message_layer/StatefulPartitionedCall_52R
'message_layer/StatefulPartitionedCall_6'message_layer/StatefulPartitionedCall_62R
'message_layer/StatefulPartitionedCall_7'message_layer/StatefulPartitionedCall_72R
'message_layer/StatefulPartitionedCall_8'message_layer/StatefulPartitionedCall_82<
mfp1/StatefulPartitionedCallmfp1/StatefulPartitionedCall2<
mfp2/StatefulPartitionedCallmfp2/StatefulPartitionedCall2<
mfp3/StatefulPartitionedCallmfp3/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
L__inference_graph_fingerprint_layer_call_and_return_conditional_losses_65383

inputs
inputs_14
!xw_plus_b_readvariableop_resource:	@?2
#xw_plus_b_readvariableop_1_resource:	?
identity??xw_plus_b/ReadVariableOp?xw_plus_b/ReadVariableOp_1?xw_plus_b_1/ReadVariableOp?xw_plus_b_1/ReadVariableOp_1?xw_plus_b_2/ReadVariableOp?xw_plus_b_2/ReadVariableOp_1X
ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
ConstL
MaxMaxinputs_1Const:output:0*
T0*
_output_shapes
: 2
MaxP
add/yConst*
_output_shapes
: *
dtype0*
value	B :2
add/yR
addAddV2Max:output:0add/y:output:0*
T0*
_output_shapes
: 2
add\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/y]
	zeros/mulMuladd:z:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1t
zeros/packedPackadd:z:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yc
zeros_1/mulMuladd:z:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1z
zeros_1/packedPackadd:z:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1`
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2/axis?
GatherV2GatherV2zeros_1:output:0inputs_1GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:????????? 2

GatherV2^
mulMulinputsGatherV2:output:0*
T0*'
_output_shapes
:????????? 2
mulp
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indicesh
SumSummul:z:0Sum/reduction_indices:output:0*
T0*#
_output_shapes
:?????????2
SumM
ExpExpSum:output:0*
T0*#
_output_shapes
:?????????2
Expw

SegmentSum
SegmentSumExp:y:0inputs_1*
T0*
Tindices0*#
_output_shapes
:?????????2

SegmentSumd
GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_1/axis?

GatherV2_1GatherV2SegmentSum:output:0inputs_1GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*#
_output_shapes
:?????????2

GatherV2_1i
truedivRealDivExp:y:0GatherV2_1:output:0*
T0*#
_output_shapes
:?????????2	
truedivo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
Reshape/shapet
ReshapeReshapetruediv:z:0Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2	
Reshapea
mul_1MulReshape:output:0inputs*
T0*'
_output_shapes
:????????? 2
mul_1?
SegmentSum_1
SegmentSum	mul_1:z:0inputs_1*
T0*
Tindices0*'
_output_shapes
:????????? 2
SegmentSum_1\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2zeros_1:output:0SegmentSum_1:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????@2
concat?
xw_plus_b/ReadVariableOpReadVariableOp!xw_plus_b_readvariableop_resource*
_output_shapes
:	@?*
dtype02
xw_plus_b/ReadVariableOp?
xw_plus_b/ReadVariableOp_1ReadVariableOp#xw_plus_b_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
xw_plus_b/ReadVariableOp_1?
xw_plus_b/MatMulMatMulconcat:output:0 xw_plus_b/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
xw_plus_b/MatMul?
	xw_plus_bBiasAddxw_plus_b/MatMul:product:0"xw_plus_b/ReadVariableOp_1:value:0*
T0*(
_output_shapes
:??????????2
	xw_plus_b{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSlicexw_plus_b:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2
strided_sliceg
SigmoidSigmoidstrided_slice:output:0*
T0*'
_output_shapes
:????????? 2	
Sigmoid
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSlicexw_plus_b:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2
strided_slice_1m
	Sigmoid_1Sigmoidstrided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
	Sigmoid_1
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_2/stack?
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2
strided_slice_2/stack_1?
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2?
strided_slice_2StridedSlicexw_plus_b:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2
strided_slice_2m
	Sigmoid_2Sigmoidstrided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
	Sigmoid_2
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2
strided_slice_3/stack?
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1?
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2?
strided_slice_3StridedSlicexw_plus_b:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2
strided_slice_3f
mul_2MulSigmoid_1:y:0zeros:output:0*
T0*'
_output_shapes
:????????? 2
mul_2`
TanhTanhstrided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
Tanh^
mul_3MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:????????? 2
mul_3_
add_1AddV2	mul_2:z:0	mul_3:z:0*
T0*'
_output_shapes
:????????? 2
add_1U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:????????? 2
Tanh_1b
mul_4MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
mul_4d
GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_2/axis?

GatherV2_2GatherV2	mul_4:z:0inputs_1GatherV2_2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:????????? 2

GatherV2_2d
mul_5MulinputsGatherV2_2:output:0*
T0*'
_output_shapes
:????????? 2
mul_5t
Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum_1/reduction_indicesp
Sum_1Sum	mul_5:z:0 Sum_1/reduction_indices:output:0*
T0*#
_output_shapes
:?????????2
Sum_1S
Exp_1ExpSum_1:output:0*
T0*#
_output_shapes
:?????????2
Exp_1}
SegmentSum_2
SegmentSum	Exp_1:y:0inputs_1*
T0*
Tindices0*#
_output_shapes
:?????????2
SegmentSum_2d
GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_3/axis?

GatherV2_3GatherV2SegmentSum_2:output:0inputs_1GatherV2_3/axis:output:0*
Taxis0*
Tindices0*
Tparams0*#
_output_shapes
:?????????2

GatherV2_3o
	truediv_1RealDiv	Exp_1:y:0GatherV2_3:output:0*
T0*#
_output_shapes
:?????????2
	truediv_1s
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
Reshape_1/shape|
	Reshape_1Reshapetruediv_1:z:0Reshape_1/shape:output:0*
T0*'
_output_shapes
:?????????2
	Reshape_1c
mul_6MulReshape_1:output:0inputs*
T0*'
_output_shapes
:????????? 2
mul_6?
SegmentSum_3
SegmentSum	mul_6:z:0inputs_1*
T0*
Tindices0*'
_output_shapes
:????????? 2
SegmentSum_3`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_1/axis?
concat_1ConcatV2	mul_4:z:0SegmentSum_3:output:0concat_1/axis:output:0*
N*
T0*'
_output_shapes
:?????????@2

concat_1?
xw_plus_b_1/ReadVariableOpReadVariableOp!xw_plus_b_readvariableop_resource*
_output_shapes
:	@?*
dtype02
xw_plus_b_1/ReadVariableOp?
xw_plus_b_1/ReadVariableOp_1ReadVariableOp#xw_plus_b_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
xw_plus_b_1/ReadVariableOp_1?
xw_plus_b_1/MatMulMatMulconcat_1:output:0"xw_plus_b_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
xw_plus_b_1/MatMul?
xw_plus_b_1BiasAddxw_plus_b_1/MatMul:product:0$xw_plus_b_1/ReadVariableOp_1:value:0*
T0*(
_output_shapes
:??????????2
xw_plus_b_1
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_4/stack?
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_4/stack_1?
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_4/stack_2?
strided_slice_4StridedSlicexw_plus_b_1:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2
strided_slice_4m
	Sigmoid_3Sigmoidstrided_slice_4:output:0*
T0*'
_output_shapes
:????????? 2
	Sigmoid_3
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_5/stack?
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_5/stack_1?
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_5/stack_2?
strided_slice_5StridedSlicexw_plus_b_1:output:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2
strided_slice_5m
	Sigmoid_4Sigmoidstrided_slice_5:output:0*
T0*'
_output_shapes
:????????? 2
	Sigmoid_4
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_6/stack?
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2
strided_slice_6/stack_1?
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_6/stack_2?
strided_slice_6StridedSlicexw_plus_b_1:output:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2
strided_slice_6m
	Sigmoid_5Sigmoidstrided_slice_6:output:0*
T0*'
_output_shapes
:????????? 2
	Sigmoid_5
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2
strided_slice_7/stack?
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_7/stack_1?
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_7/stack_2?
strided_slice_7StridedSlicexw_plus_b_1:output:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2
strided_slice_7a
mul_7MulSigmoid_4:y:0	add_1:z:0*
T0*'
_output_shapes
:????????? 2
mul_7d
Tanh_2Tanhstrided_slice_7:output:0*
T0*'
_output_shapes
:????????? 2
Tanh_2b
mul_8MulSigmoid_3:y:0
Tanh_2:y:0*
T0*'
_output_shapes
:????????? 2
mul_8_
add_2AddV2	mul_7:z:0	mul_8:z:0*
T0*'
_output_shapes
:????????? 2
add_2U
Tanh_3Tanh	add_2:z:0*
T0*'
_output_shapes
:????????? 2
Tanh_3b
mul_9MulSigmoid_5:y:0
Tanh_3:y:0*
T0*'
_output_shapes
:????????? 2
mul_9d
GatherV2_4/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_4/axis?

GatherV2_4GatherV2	mul_9:z:0inputs_1GatherV2_4/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:????????? 2

GatherV2_4f
mul_10MulinputsGatherV2_4:output:0*
T0*'
_output_shapes
:????????? 2
mul_10t
Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum_2/reduction_indicesq
Sum_2Sum
mul_10:z:0 Sum_2/reduction_indices:output:0*
T0*#
_output_shapes
:?????????2
Sum_2S
Exp_2ExpSum_2:output:0*
T0*#
_output_shapes
:?????????2
Exp_2}
SegmentSum_4
SegmentSum	Exp_2:y:0inputs_1*
T0*
Tindices0*#
_output_shapes
:?????????2
SegmentSum_4d
GatherV2_5/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_5/axis?

GatherV2_5GatherV2SegmentSum_4:output:0inputs_1GatherV2_5/axis:output:0*
Taxis0*
Tindices0*
Tparams0*#
_output_shapes
:?????????2

GatherV2_5o
	truediv_2RealDiv	Exp_2:y:0GatherV2_5:output:0*
T0*#
_output_shapes
:?????????2
	truediv_2s
Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
Reshape_2/shape|
	Reshape_2Reshapetruediv_2:z:0Reshape_2/shape:output:0*
T0*'
_output_shapes
:?????????2
	Reshape_2e
mul_11MulReshape_2:output:0inputs*
T0*'
_output_shapes
:????????? 2
mul_11?
SegmentSum_5
SegmentSum
mul_11:z:0inputs_1*
T0*
Tindices0*'
_output_shapes
:????????? 2
SegmentSum_5`
concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_2/axis?
concat_2ConcatV2	mul_9:z:0SegmentSum_5:output:0concat_2/axis:output:0*
N*
T0*'
_output_shapes
:?????????@2

concat_2?
xw_plus_b_2/ReadVariableOpReadVariableOp!xw_plus_b_readvariableop_resource*
_output_shapes
:	@?*
dtype02
xw_plus_b_2/ReadVariableOp?
xw_plus_b_2/ReadVariableOp_1ReadVariableOp#xw_plus_b_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
xw_plus_b_2/ReadVariableOp_1?
xw_plus_b_2/MatMulMatMulconcat_2:output:0"xw_plus_b_2/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
xw_plus_b_2/MatMul?
xw_plus_b_2BiasAddxw_plus_b_2/MatMul:product:0$xw_plus_b_2/ReadVariableOp_1:value:0*
T0*(
_output_shapes
:??????????2
xw_plus_b_2
strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_8/stack?
strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_8/stack_1?
strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_8/stack_2?
strided_slice_8StridedSlicexw_plus_b_2:output:0strided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2
strided_slice_8m
	Sigmoid_6Sigmoidstrided_slice_8:output:0*
T0*'
_output_shapes
:????????? 2
	Sigmoid_6
strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_9/stack?
strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_9/stack_1?
strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_9/stack_2?
strided_slice_9StridedSlicexw_plus_b_2:output:0strided_slice_9/stack:output:0 strided_slice_9/stack_1:output:0 strided_slice_9/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2
strided_slice_9m
	Sigmoid_7Sigmoidstrided_slice_9:output:0*
T0*'
_output_shapes
:????????? 2
	Sigmoid_7?
strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_10/stack?
strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2
strided_slice_10/stack_1?
strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_10/stack_2?
strided_slice_10StridedSlicexw_plus_b_2:output:0strided_slice_10/stack:output:0!strided_slice_10/stack_1:output:0!strided_slice_10/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2
strided_slice_10n
	Sigmoid_8Sigmoidstrided_slice_10:output:0*
T0*'
_output_shapes
:????????? 2
	Sigmoid_8?
strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2
strided_slice_11/stack?
strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_11/stack_1?
strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_11/stack_2?
strided_slice_11StridedSlicexw_plus_b_2:output:0strided_slice_11/stack:output:0!strided_slice_11/stack_1:output:0!strided_slice_11/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2
strided_slice_11c
mul_12MulSigmoid_7:y:0	add_2:z:0*
T0*'
_output_shapes
:????????? 2
mul_12e
Tanh_4Tanhstrided_slice_11:output:0*
T0*'
_output_shapes
:????????? 2
Tanh_4d
mul_13MulSigmoid_6:y:0
Tanh_4:y:0*
T0*'
_output_shapes
:????????? 2
mul_13a
add_3AddV2
mul_12:z:0
mul_13:z:0*
T0*'
_output_shapes
:????????? 2
add_3U
Tanh_5Tanh	add_3:z:0*
T0*'
_output_shapes
:????????? 2
Tanh_5d
mul_14MulSigmoid_8:y:0
Tanh_5:y:0*
T0*'
_output_shapes
:????????? 2
mul_14?
IdentityIdentityconcat_2:output:0^xw_plus_b/ReadVariableOp^xw_plus_b/ReadVariableOp_1^xw_plus_b_1/ReadVariableOp^xw_plus_b_1/ReadVariableOp_1^xw_plus_b_2/ReadVariableOp^xw_plus_b_2/ReadVariableOp_1*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:????????? :?????????: : 24
xw_plus_b/ReadVariableOpxw_plus_b/ReadVariableOp28
xw_plus_b/ReadVariableOp_1xw_plus_b/ReadVariableOp_128
xw_plus_b_1/ReadVariableOpxw_plus_b_1/ReadVariableOp2<
xw_plus_b_1/ReadVariableOp_1xw_plus_b_1/ReadVariableOp_128
xw_plus_b_2/ReadVariableOpxw_plus_b_2/ReadVariableOp2<
xw_plus_b_2/ReadVariableOp_1xw_plus_b_2/ReadVariableOp_1:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
L__inference_graph_fingerprint_layer_call_and_return_conditional_losses_68070
inputs_0
inputs_14
!xw_plus_b_readvariableop_resource:	@?2
#xw_plus_b_readvariableop_1_resource:	?
identity??xw_plus_b/ReadVariableOp?xw_plus_b/ReadVariableOp_1?xw_plus_b_1/ReadVariableOp?xw_plus_b_1/ReadVariableOp_1?xw_plus_b_2/ReadVariableOp?xw_plus_b_2/ReadVariableOp_1X
ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
ConstL
MaxMaxinputs_1Const:output:0*
T0*
_output_shapes
: 2
MaxP
add/yConst*
_output_shapes
: *
dtype0*
value	B :2
add/yR
addAddV2Max:output:0add/y:output:0*
T0*
_output_shapes
: 2
add\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/y]
	zeros/mulMuladd:z:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1t
zeros/packedPackadd:z:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yc
zeros_1/mulMuladd:z:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1z
zeros_1/packedPackadd:z:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1`
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2/axis?
GatherV2GatherV2zeros_1:output:0inputs_1GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:????????? 2

GatherV2`
mulMulinputs_0GatherV2:output:0*
T0*'
_output_shapes
:????????? 2
mulp
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indicesh
SumSummul:z:0Sum/reduction_indices:output:0*
T0*#
_output_shapes
:?????????2
SumM
ExpExpSum:output:0*
T0*#
_output_shapes
:?????????2
Expw

SegmentSum
SegmentSumExp:y:0inputs_1*
T0*
Tindices0*#
_output_shapes
:?????????2

SegmentSumd
GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_1/axis?

GatherV2_1GatherV2SegmentSum:output:0inputs_1GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*#
_output_shapes
:?????????2

GatherV2_1i
truedivRealDivExp:y:0GatherV2_1:output:0*
T0*#
_output_shapes
:?????????2	
truedivo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
Reshape/shapet
ReshapeReshapetruediv:z:0Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2	
Reshapec
mul_1MulReshape:output:0inputs_0*
T0*'
_output_shapes
:????????? 2
mul_1?
SegmentSum_1
SegmentSum	mul_1:z:0inputs_1*
T0*
Tindices0*'
_output_shapes
:????????? 2
SegmentSum_1\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2zeros_1:output:0SegmentSum_1:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????@2
concat?
xw_plus_b/ReadVariableOpReadVariableOp!xw_plus_b_readvariableop_resource*
_output_shapes
:	@?*
dtype02
xw_plus_b/ReadVariableOp?
xw_plus_b/ReadVariableOp_1ReadVariableOp#xw_plus_b_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
xw_plus_b/ReadVariableOp_1?
xw_plus_b/MatMulMatMulconcat:output:0 xw_plus_b/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
xw_plus_b/MatMul?
	xw_plus_bBiasAddxw_plus_b/MatMul:product:0"xw_plus_b/ReadVariableOp_1:value:0*
T0*(
_output_shapes
:??????????2
	xw_plus_b{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSlicexw_plus_b:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2
strided_sliceg
SigmoidSigmoidstrided_slice:output:0*
T0*'
_output_shapes
:????????? 2	
Sigmoid
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSlicexw_plus_b:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2
strided_slice_1m
	Sigmoid_1Sigmoidstrided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
	Sigmoid_1
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_2/stack?
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2
strided_slice_2/stack_1?
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2?
strided_slice_2StridedSlicexw_plus_b:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2
strided_slice_2m
	Sigmoid_2Sigmoidstrided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
	Sigmoid_2
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2
strided_slice_3/stack?
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1?
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2?
strided_slice_3StridedSlicexw_plus_b:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2
strided_slice_3f
mul_2MulSigmoid_1:y:0zeros:output:0*
T0*'
_output_shapes
:????????? 2
mul_2`
TanhTanhstrided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
Tanh^
mul_3MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:????????? 2
mul_3_
add_1AddV2	mul_2:z:0	mul_3:z:0*
T0*'
_output_shapes
:????????? 2
add_1U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:????????? 2
Tanh_1b
mul_4MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
mul_4d
GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_2/axis?

GatherV2_2GatherV2	mul_4:z:0inputs_1GatherV2_2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:????????? 2

GatherV2_2f
mul_5Mulinputs_0GatherV2_2:output:0*
T0*'
_output_shapes
:????????? 2
mul_5t
Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum_1/reduction_indicesp
Sum_1Sum	mul_5:z:0 Sum_1/reduction_indices:output:0*
T0*#
_output_shapes
:?????????2
Sum_1S
Exp_1ExpSum_1:output:0*
T0*#
_output_shapes
:?????????2
Exp_1}
SegmentSum_2
SegmentSum	Exp_1:y:0inputs_1*
T0*
Tindices0*#
_output_shapes
:?????????2
SegmentSum_2d
GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_3/axis?

GatherV2_3GatherV2SegmentSum_2:output:0inputs_1GatherV2_3/axis:output:0*
Taxis0*
Tindices0*
Tparams0*#
_output_shapes
:?????????2

GatherV2_3o
	truediv_1RealDiv	Exp_1:y:0GatherV2_3:output:0*
T0*#
_output_shapes
:?????????2
	truediv_1s
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
Reshape_1/shape|
	Reshape_1Reshapetruediv_1:z:0Reshape_1/shape:output:0*
T0*'
_output_shapes
:?????????2
	Reshape_1e
mul_6MulReshape_1:output:0inputs_0*
T0*'
_output_shapes
:????????? 2
mul_6?
SegmentSum_3
SegmentSum	mul_6:z:0inputs_1*
T0*
Tindices0*'
_output_shapes
:????????? 2
SegmentSum_3`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_1/axis?
concat_1ConcatV2	mul_4:z:0SegmentSum_3:output:0concat_1/axis:output:0*
N*
T0*'
_output_shapes
:?????????@2

concat_1?
xw_plus_b_1/ReadVariableOpReadVariableOp!xw_plus_b_readvariableop_resource*
_output_shapes
:	@?*
dtype02
xw_plus_b_1/ReadVariableOp?
xw_plus_b_1/ReadVariableOp_1ReadVariableOp#xw_plus_b_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
xw_plus_b_1/ReadVariableOp_1?
xw_plus_b_1/MatMulMatMulconcat_1:output:0"xw_plus_b_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
xw_plus_b_1/MatMul?
xw_plus_b_1BiasAddxw_plus_b_1/MatMul:product:0$xw_plus_b_1/ReadVariableOp_1:value:0*
T0*(
_output_shapes
:??????????2
xw_plus_b_1
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_4/stack?
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_4/stack_1?
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_4/stack_2?
strided_slice_4StridedSlicexw_plus_b_1:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2
strided_slice_4m
	Sigmoid_3Sigmoidstrided_slice_4:output:0*
T0*'
_output_shapes
:????????? 2
	Sigmoid_3
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_5/stack?
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_5/stack_1?
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_5/stack_2?
strided_slice_5StridedSlicexw_plus_b_1:output:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2
strided_slice_5m
	Sigmoid_4Sigmoidstrided_slice_5:output:0*
T0*'
_output_shapes
:????????? 2
	Sigmoid_4
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_6/stack?
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2
strided_slice_6/stack_1?
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_6/stack_2?
strided_slice_6StridedSlicexw_plus_b_1:output:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2
strided_slice_6m
	Sigmoid_5Sigmoidstrided_slice_6:output:0*
T0*'
_output_shapes
:????????? 2
	Sigmoid_5
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2
strided_slice_7/stack?
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_7/stack_1?
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_7/stack_2?
strided_slice_7StridedSlicexw_plus_b_1:output:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2
strided_slice_7a
mul_7MulSigmoid_4:y:0	add_1:z:0*
T0*'
_output_shapes
:????????? 2
mul_7d
Tanh_2Tanhstrided_slice_7:output:0*
T0*'
_output_shapes
:????????? 2
Tanh_2b
mul_8MulSigmoid_3:y:0
Tanh_2:y:0*
T0*'
_output_shapes
:????????? 2
mul_8_
add_2AddV2	mul_7:z:0	mul_8:z:0*
T0*'
_output_shapes
:????????? 2
add_2U
Tanh_3Tanh	add_2:z:0*
T0*'
_output_shapes
:????????? 2
Tanh_3b
mul_9MulSigmoid_5:y:0
Tanh_3:y:0*
T0*'
_output_shapes
:????????? 2
mul_9d
GatherV2_4/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_4/axis?

GatherV2_4GatherV2	mul_9:z:0inputs_1GatherV2_4/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:????????? 2

GatherV2_4h
mul_10Mulinputs_0GatherV2_4:output:0*
T0*'
_output_shapes
:????????? 2
mul_10t
Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum_2/reduction_indicesq
Sum_2Sum
mul_10:z:0 Sum_2/reduction_indices:output:0*
T0*#
_output_shapes
:?????????2
Sum_2S
Exp_2ExpSum_2:output:0*
T0*#
_output_shapes
:?????????2
Exp_2}
SegmentSum_4
SegmentSum	Exp_2:y:0inputs_1*
T0*
Tindices0*#
_output_shapes
:?????????2
SegmentSum_4d
GatherV2_5/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_5/axis?

GatherV2_5GatherV2SegmentSum_4:output:0inputs_1GatherV2_5/axis:output:0*
Taxis0*
Tindices0*
Tparams0*#
_output_shapes
:?????????2

GatherV2_5o
	truediv_2RealDiv	Exp_2:y:0GatherV2_5:output:0*
T0*#
_output_shapes
:?????????2
	truediv_2s
Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
Reshape_2/shape|
	Reshape_2Reshapetruediv_2:z:0Reshape_2/shape:output:0*
T0*'
_output_shapes
:?????????2
	Reshape_2g
mul_11MulReshape_2:output:0inputs_0*
T0*'
_output_shapes
:????????? 2
mul_11?
SegmentSum_5
SegmentSum
mul_11:z:0inputs_1*
T0*
Tindices0*'
_output_shapes
:????????? 2
SegmentSum_5`
concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_2/axis?
concat_2ConcatV2	mul_9:z:0SegmentSum_5:output:0concat_2/axis:output:0*
N*
T0*'
_output_shapes
:?????????@2

concat_2?
xw_plus_b_2/ReadVariableOpReadVariableOp!xw_plus_b_readvariableop_resource*
_output_shapes
:	@?*
dtype02
xw_plus_b_2/ReadVariableOp?
xw_plus_b_2/ReadVariableOp_1ReadVariableOp#xw_plus_b_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
xw_plus_b_2/ReadVariableOp_1?
xw_plus_b_2/MatMulMatMulconcat_2:output:0"xw_plus_b_2/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
xw_plus_b_2/MatMul?
xw_plus_b_2BiasAddxw_plus_b_2/MatMul:product:0$xw_plus_b_2/ReadVariableOp_1:value:0*
T0*(
_output_shapes
:??????????2
xw_plus_b_2
strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_8/stack?
strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_8/stack_1?
strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_8/stack_2?
strided_slice_8StridedSlicexw_plus_b_2:output:0strided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2
strided_slice_8m
	Sigmoid_6Sigmoidstrided_slice_8:output:0*
T0*'
_output_shapes
:????????? 2
	Sigmoid_6
strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_9/stack?
strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_9/stack_1?
strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_9/stack_2?
strided_slice_9StridedSlicexw_plus_b_2:output:0strided_slice_9/stack:output:0 strided_slice_9/stack_1:output:0 strided_slice_9/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2
strided_slice_9m
	Sigmoid_7Sigmoidstrided_slice_9:output:0*
T0*'
_output_shapes
:????????? 2
	Sigmoid_7?
strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_10/stack?
strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2
strided_slice_10/stack_1?
strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_10/stack_2?
strided_slice_10StridedSlicexw_plus_b_2:output:0strided_slice_10/stack:output:0!strided_slice_10/stack_1:output:0!strided_slice_10/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2
strided_slice_10n
	Sigmoid_8Sigmoidstrided_slice_10:output:0*
T0*'
_output_shapes
:????????? 2
	Sigmoid_8?
strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2
strided_slice_11/stack?
strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_11/stack_1?
strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_11/stack_2?
strided_slice_11StridedSlicexw_plus_b_2:output:0strided_slice_11/stack:output:0!strided_slice_11/stack_1:output:0!strided_slice_11/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2
strided_slice_11c
mul_12MulSigmoid_7:y:0	add_2:z:0*
T0*'
_output_shapes
:????????? 2
mul_12e
Tanh_4Tanhstrided_slice_11:output:0*
T0*'
_output_shapes
:????????? 2
Tanh_4d
mul_13MulSigmoid_6:y:0
Tanh_4:y:0*
T0*'
_output_shapes
:????????? 2
mul_13a
add_3AddV2
mul_12:z:0
mul_13:z:0*
T0*'
_output_shapes
:????????? 2
add_3U
Tanh_5Tanh	add_3:z:0*
T0*'
_output_shapes
:????????? 2
Tanh_5d
mul_14MulSigmoid_8:y:0
Tanh_5:y:0*
T0*'
_output_shapes
:????????? 2
mul_14?
IdentityIdentityconcat_2:output:0^xw_plus_b/ReadVariableOp^xw_plus_b/ReadVariableOp_1^xw_plus_b_1/ReadVariableOp^xw_plus_b_1/ReadVariableOp_1^xw_plus_b_2/ReadVariableOp^xw_plus_b_2/ReadVariableOp_1*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:????????? :?????????: : 24
xw_plus_b/ReadVariableOpxw_plus_b/ReadVariableOp28
xw_plus_b/ReadVariableOp_1xw_plus_b/ReadVariableOp_128
xw_plus_b_1/ReadVariableOpxw_plus_b_1/ReadVariableOp2<
xw_plus_b_1/ReadVariableOp_1xw_plus_b_1/ReadVariableOp_128
xw_plus_b_2/ReadVariableOpxw_plus_b_2/ReadVariableOp2<
xw_plus_b_2/ReadVariableOp_1xw_plus_b_2/ReadVariableOp_1:Q M
'
_output_shapes
:????????? 
"
_user_specified_name
inputs/0:MI
#
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?

?
?__inference_mfp1_layer_call_and_return_conditional_losses_68252

inputs1
matmul_readvariableop_resource:	@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
-__inference_message_layer_layer_call_fn_67771
inputs_0
inputs_1
inputs_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_message_layer_layer_call_and_return_conditional_losses_647582
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:????????? :?????????  :?????????22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:????????? 
"
_user_specified_name
inputs/0:UQ
+
_output_shapes
:?????????  
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/2
?
?
5__inference_batch_normalization_2_layer_call_fn_68465

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_645432
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
3__inference_batch_normalization_layer_call_fn_68278

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_642792
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
I__inference_bond_embedding_layer_call_and_return_conditional_losses_64711

inputs-
embedding_lookup_64705:?  
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_64705inputs",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*)
_class
loc:@embedding_lookup/64705*+
_output_shapes
:?????????  *
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@embedding_lookup/64705*+
_output_shapes
:?????????  2
embedding_lookup/Identity?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????  2
embedding_lookup/Identity_1?
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*+
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:?????????: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_68498

inputs0
!batchnorm_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?2
#batchnorm_readvariableop_1_resource:	?2
#batchnorm_readvariableop_2_resource:	?
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
F__inference_graph_model_layer_call_and_return_conditional_losses_65653

inputs
inputs_1
inputs_2
inputs_3+
bond_embedding_65545:?  '
atom_embedding_65548:	?  
gru_step_65552:` 
gru_step_65554: ` 
gru_step_65556: `*
graph_fingerprint_65600:	@?&
graph_fingerprint_65602:	?

mfp1_65605:	@?

mfp1_65607:	?(
batch_normalization_65610:	?(
batch_normalization_65612:	?(
batch_normalization_65614:	?(
batch_normalization_65616:	?

mfp2_65619:	? 

mfp2_65621: )
batch_normalization_1_65624: )
batch_normalization_1_65626: )
batch_normalization_1_65628: )
batch_normalization_1_65630: 

mfp3_65633:	 ?

mfp3_65635:	?*
batch_normalization_2_65638:	?*
batch_normalization_2_65640:	?*
batch_normalization_2_65642:	?*
batch_normalization_2_65644:	?
output_65647:	?
output_65649:
identity??&atom_embedding/StatefulPartitionedCall?+batch_normalization/StatefulPartitionedCall?-batch_normalization_1/StatefulPartitionedCall?-batch_normalization_2/StatefulPartitionedCall?&bond_embedding/StatefulPartitionedCall?)graph_fingerprint/StatefulPartitionedCall? gru_step/StatefulPartitionedCall?"gru_step/StatefulPartitionedCall_1?"gru_step/StatefulPartitionedCall_2?"gru_step/StatefulPartitionedCall_3?"gru_step/StatefulPartitionedCall_4?"gru_step/StatefulPartitionedCall_5?"gru_step/StatefulPartitionedCall_6?"gru_step/StatefulPartitionedCall_7?"gru_step/StatefulPartitionedCall_8?%message_layer/StatefulPartitionedCall?'message_layer/StatefulPartitionedCall_1?'message_layer/StatefulPartitionedCall_2?'message_layer/StatefulPartitionedCall_3?'message_layer/StatefulPartitionedCall_4?'message_layer/StatefulPartitionedCall_5?'message_layer/StatefulPartitionedCall_6?'message_layer/StatefulPartitionedCall_7?'message_layer/StatefulPartitionedCall_8?mfp1/StatefulPartitionedCall?mfp2/StatefulPartitionedCall?mfp3/StatefulPartitionedCall?output/StatefulPartitionedCall?
squeeze/PartitionedCallPartitionedCallinputs_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_squeeze_layer_call_and_return_conditional_losses_646992
squeeze/PartitionedCall?
squeeze/PartitionedCall_1PartitionedCallinputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_squeeze_layer_call_and_return_conditional_losses_646992
squeeze/PartitionedCall_1?
&bond_embedding/StatefulPartitionedCallStatefulPartitionedCall squeeze/PartitionedCall:output:0bond_embedding_65545*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????  *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_bond_embedding_layer_call_and_return_conditional_losses_647112(
&bond_embedding/StatefulPartitionedCall?
&atom_embedding/StatefulPartitionedCallStatefulPartitionedCall"squeeze/PartitionedCall_1:output:0atom_embedding_65548*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_atom_embedding_layer_call_and_return_conditional_losses_647242(
&atom_embedding/StatefulPartitionedCall?
%message_layer/StatefulPartitionedCallStatefulPartitionedCall/atom_embedding/StatefulPartitionedCall:output:0/bond_embedding/StatefulPartitionedCall:output:0inputs_3*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_message_layer_layer_call_and_return_conditional_losses_654512'
%message_layer/StatefulPartitionedCall?
 gru_step/StatefulPartitionedCallStatefulPartitionedCall.message_layer/StatefulPartitionedCall:output:0/atom_embedding/StatefulPartitionedCall:output:0gru_step_65552gru_step_65554gru_step_65556*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_gru_step_layer_call_and_return_conditional_losses_647982"
 gru_step/StatefulPartitionedCall?
'message_layer/StatefulPartitionedCall_1StatefulPartitionedCall)gru_step/StatefulPartitionedCall:output:0/bond_embedding/StatefulPartitionedCall:output:0inputs_3&^message_layer/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_message_layer_layer_call_and_return_conditional_losses_654512)
'message_layer/StatefulPartitionedCall_1?
"gru_step/StatefulPartitionedCall_1StatefulPartitionedCall0message_layer/StatefulPartitionedCall_1:output:0)gru_step/StatefulPartitionedCall:output:0gru_step_65552gru_step_65554gru_step_65556*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_gru_step_layer_call_and_return_conditional_losses_647982$
"gru_step/StatefulPartitionedCall_1?
'message_layer/StatefulPartitionedCall_2StatefulPartitionedCall+gru_step/StatefulPartitionedCall_1:output:0/bond_embedding/StatefulPartitionedCall:output:0inputs_3(^message_layer/StatefulPartitionedCall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_message_layer_layer_call_and_return_conditional_losses_654512)
'message_layer/StatefulPartitionedCall_2?
"gru_step/StatefulPartitionedCall_2StatefulPartitionedCall0message_layer/StatefulPartitionedCall_2:output:0+gru_step/StatefulPartitionedCall_1:output:0gru_step_65552gru_step_65554gru_step_65556*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_gru_step_layer_call_and_return_conditional_losses_647982$
"gru_step/StatefulPartitionedCall_2?
'message_layer/StatefulPartitionedCall_3StatefulPartitionedCall+gru_step/StatefulPartitionedCall_2:output:0/bond_embedding/StatefulPartitionedCall:output:0inputs_3(^message_layer/StatefulPartitionedCall_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_message_layer_layer_call_and_return_conditional_losses_654512)
'message_layer/StatefulPartitionedCall_3?
"gru_step/StatefulPartitionedCall_3StatefulPartitionedCall0message_layer/StatefulPartitionedCall_3:output:0+gru_step/StatefulPartitionedCall_2:output:0gru_step_65552gru_step_65554gru_step_65556*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_gru_step_layer_call_and_return_conditional_losses_647982$
"gru_step/StatefulPartitionedCall_3?
'message_layer/StatefulPartitionedCall_4StatefulPartitionedCall+gru_step/StatefulPartitionedCall_3:output:0/bond_embedding/StatefulPartitionedCall:output:0inputs_3(^message_layer/StatefulPartitionedCall_3*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_message_layer_layer_call_and_return_conditional_losses_654512)
'message_layer/StatefulPartitionedCall_4?
"gru_step/StatefulPartitionedCall_4StatefulPartitionedCall0message_layer/StatefulPartitionedCall_4:output:0+gru_step/StatefulPartitionedCall_3:output:0gru_step_65552gru_step_65554gru_step_65556*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_gru_step_layer_call_and_return_conditional_losses_647982$
"gru_step/StatefulPartitionedCall_4?
'message_layer/StatefulPartitionedCall_5StatefulPartitionedCall+gru_step/StatefulPartitionedCall_4:output:0/bond_embedding/StatefulPartitionedCall:output:0inputs_3(^message_layer/StatefulPartitionedCall_4*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_message_layer_layer_call_and_return_conditional_losses_654512)
'message_layer/StatefulPartitionedCall_5?
"gru_step/StatefulPartitionedCall_5StatefulPartitionedCall0message_layer/StatefulPartitionedCall_5:output:0+gru_step/StatefulPartitionedCall_4:output:0gru_step_65552gru_step_65554gru_step_65556*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_gru_step_layer_call_and_return_conditional_losses_647982$
"gru_step/StatefulPartitionedCall_5?
'message_layer/StatefulPartitionedCall_6StatefulPartitionedCall+gru_step/StatefulPartitionedCall_5:output:0/bond_embedding/StatefulPartitionedCall:output:0inputs_3(^message_layer/StatefulPartitionedCall_5*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_message_layer_layer_call_and_return_conditional_losses_654512)
'message_layer/StatefulPartitionedCall_6?
"gru_step/StatefulPartitionedCall_6StatefulPartitionedCall0message_layer/StatefulPartitionedCall_6:output:0+gru_step/StatefulPartitionedCall_5:output:0gru_step_65552gru_step_65554gru_step_65556*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_gru_step_layer_call_and_return_conditional_losses_647982$
"gru_step/StatefulPartitionedCall_6?
'message_layer/StatefulPartitionedCall_7StatefulPartitionedCall+gru_step/StatefulPartitionedCall_6:output:0/bond_embedding/StatefulPartitionedCall:output:0inputs_3(^message_layer/StatefulPartitionedCall_6*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_message_layer_layer_call_and_return_conditional_losses_654512)
'message_layer/StatefulPartitionedCall_7?
"gru_step/StatefulPartitionedCall_7StatefulPartitionedCall0message_layer/StatefulPartitionedCall_7:output:0+gru_step/StatefulPartitionedCall_6:output:0gru_step_65552gru_step_65554gru_step_65556*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_gru_step_layer_call_and_return_conditional_losses_647982$
"gru_step/StatefulPartitionedCall_7?
'message_layer/StatefulPartitionedCall_8StatefulPartitionedCall+gru_step/StatefulPartitionedCall_7:output:0/bond_embedding/StatefulPartitionedCall:output:0inputs_3(^message_layer/StatefulPartitionedCall_7*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_message_layer_layer_call_and_return_conditional_losses_654512)
'message_layer/StatefulPartitionedCall_8?
"gru_step/StatefulPartitionedCall_8StatefulPartitionedCall0message_layer/StatefulPartitionedCall_8:output:0+gru_step/StatefulPartitionedCall_7:output:0gru_step_65552gru_step_65554gru_step_65556*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_gru_step_layer_call_and_return_conditional_losses_647982$
"gru_step/StatefulPartitionedCall_8?
squeeze/PartitionedCall_2PartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_squeeze_layer_call_and_return_conditional_losses_646992
squeeze/PartitionedCall_2?
)graph_fingerprint/StatefulPartitionedCallStatefulPartitionedCall+gru_step/StatefulPartitionedCall_8:output:0"squeeze/PartitionedCall_2:output:0graph_fingerprint_65600graph_fingerprint_65602*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_graph_fingerprint_layer_call_and_return_conditional_losses_653832+
)graph_fingerprint/StatefulPartitionedCall?
mfp1/StatefulPartitionedCallStatefulPartitionedCall2graph_fingerprint/StatefulPartitionedCall:output:0
mfp1_65605
mfp1_65607*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_mfp1_layer_call_and_return_conditional_losses_650262
mfp1/StatefulPartitionedCall?
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall%mfp1/StatefulPartitionedCall:output:0batch_normalization_65610batch_normalization_65612batch_normalization_65614batch_normalization_65616*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_642792-
+batch_normalization/StatefulPartitionedCall?
mfp2/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0
mfp2_65619
mfp2_65621*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_mfp2_layer_call_and_return_conditional_losses_650522
mfp2/StatefulPartitionedCall?
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall%mfp2/StatefulPartitionedCall:output:0batch_normalization_1_65624batch_normalization_1_65626batch_normalization_1_65628batch_normalization_1_65630*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_644412/
-batch_normalization_1/StatefulPartitionedCall?
mfp3/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0
mfp3_65633
mfp3_65635*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_mfp3_layer_call_and_return_conditional_losses_650782
mfp3/StatefulPartitionedCall?
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall%mfp3/StatefulPartitionedCall:output:0batch_normalization_2_65638batch_normalization_2_65640batch_normalization_2_65642batch_normalization_2_65644*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_646032/
-batch_normalization_2/StatefulPartitionedCall?
output/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0output_65647output_65649*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_output_layer_call_and_return_conditional_losses_651032 
output/StatefulPartitionedCall?	
IdentityIdentity'output/StatefulPartitionedCall:output:0'^atom_embedding/StatefulPartitionedCall,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall'^bond_embedding/StatefulPartitionedCall*^graph_fingerprint/StatefulPartitionedCall!^gru_step/StatefulPartitionedCall#^gru_step/StatefulPartitionedCall_1#^gru_step/StatefulPartitionedCall_2#^gru_step/StatefulPartitionedCall_3#^gru_step/StatefulPartitionedCall_4#^gru_step/StatefulPartitionedCall_5#^gru_step/StatefulPartitionedCall_6#^gru_step/StatefulPartitionedCall_7#^gru_step/StatefulPartitionedCall_8&^message_layer/StatefulPartitionedCall(^message_layer/StatefulPartitionedCall_1(^message_layer/StatefulPartitionedCall_2(^message_layer/StatefulPartitionedCall_3(^message_layer/StatefulPartitionedCall_4(^message_layer/StatefulPartitionedCall_5(^message_layer/StatefulPartitionedCall_6(^message_layer/StatefulPartitionedCall_7(^message_layer/StatefulPartitionedCall_8^mfp1/StatefulPartitionedCall^mfp2/StatefulPartitionedCall^mfp3/StatefulPartitionedCall^output/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : 2P
&atom_embedding/StatefulPartitionedCall&atom_embedding/StatefulPartitionedCall2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2P
&bond_embedding/StatefulPartitionedCall&bond_embedding/StatefulPartitionedCall2V
)graph_fingerprint/StatefulPartitionedCall)graph_fingerprint/StatefulPartitionedCall2D
 gru_step/StatefulPartitionedCall gru_step/StatefulPartitionedCall2H
"gru_step/StatefulPartitionedCall_1"gru_step/StatefulPartitionedCall_12H
"gru_step/StatefulPartitionedCall_2"gru_step/StatefulPartitionedCall_22H
"gru_step/StatefulPartitionedCall_3"gru_step/StatefulPartitionedCall_32H
"gru_step/StatefulPartitionedCall_4"gru_step/StatefulPartitionedCall_42H
"gru_step/StatefulPartitionedCall_5"gru_step/StatefulPartitionedCall_52H
"gru_step/StatefulPartitionedCall_6"gru_step/StatefulPartitionedCall_62H
"gru_step/StatefulPartitionedCall_7"gru_step/StatefulPartitionedCall_72H
"gru_step/StatefulPartitionedCall_8"gru_step/StatefulPartitionedCall_82N
%message_layer/StatefulPartitionedCall%message_layer/StatefulPartitionedCall2R
'message_layer/StatefulPartitionedCall_1'message_layer/StatefulPartitionedCall_12R
'message_layer/StatefulPartitionedCall_2'message_layer/StatefulPartitionedCall_22R
'message_layer/StatefulPartitionedCall_3'message_layer/StatefulPartitionedCall_32R
'message_layer/StatefulPartitionedCall_4'message_layer/StatefulPartitionedCall_42R
'message_layer/StatefulPartitionedCall_5'message_layer/StatefulPartitionedCall_52R
'message_layer/StatefulPartitionedCall_6'message_layer/StatefulPartitionedCall_62R
'message_layer/StatefulPartitionedCall_7'message_layer/StatefulPartitionedCall_72R
'message_layer/StatefulPartitionedCall_8'message_layer/StatefulPartitionedCall_82<
mfp1/StatefulPartitionedCallmfp1/StatefulPartitionedCall2<
mfp2/StatefulPartitionedCallmfp2/StatefulPartitionedCall2<
mfp3/StatefulPartitionedCallmfp3/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?2
!__inference__traced_restore_69055
file_prefix=
*assignvariableop_atom_embedding_embeddings:	? O
8assignvariableop_1_bond_embedding_bond_embedding_weights:?  4
"assignvariableop_2_gru_step_kernel: `>
,assignvariableop_3_gru_step_recurrent_kernel: `2
 assignvariableop_4_gru_step_bias:`9
&assignvariableop_5_graph_fingerprint_u:	@?5
&assignvariableop_6_graph_fingerprint_b:	?1
assignvariableop_7_mfp1_kernel:	@?+
assignvariableop_8_mfp1_bias:	?;
,assignvariableop_9_batch_normalization_gamma:	?;
,assignvariableop_10_batch_normalization_beta:	?B
3assignvariableop_11_batch_normalization_moving_mean:	?F
7assignvariableop_12_batch_normalization_moving_variance:	?2
assignvariableop_13_mfp2_kernel:	? +
assignvariableop_14_mfp2_bias: =
/assignvariableop_15_batch_normalization_1_gamma: <
.assignvariableop_16_batch_normalization_1_beta: C
5assignvariableop_17_batch_normalization_1_moving_mean: G
9assignvariableop_18_batch_normalization_1_moving_variance: 2
assignvariableop_19_mfp3_kernel:	 ?,
assignvariableop_20_mfp3_bias:	?>
/assignvariableop_21_batch_normalization_2_gamma:	?=
.assignvariableop_22_batch_normalization_2_beta:	?D
5assignvariableop_23_batch_normalization_2_moving_mean:	?H
9assignvariableop_24_batch_normalization_2_moving_variance:	?4
!assignvariableop_25_output_kernel:	?-
assignvariableop_26_output_bias:'
assignvariableop_27_adam_iter:	 )
assignvariableop_28_adam_beta_1: )
assignvariableop_29_adam_beta_2: (
assignvariableop_30_adam_decay: 0
&assignvariableop_31_adam_learning_rate: #
assignvariableop_32_total: #
assignvariableop_33_count: %
assignvariableop_34_total_1: %
assignvariableop_35_count_1: G
4assignvariableop_36_adam_atom_embedding_embeddings_m:	? W
@assignvariableop_37_adam_bond_embedding_bond_embedding_weights_m:?  <
*assignvariableop_38_adam_gru_step_kernel_m: `F
4assignvariableop_39_adam_gru_step_recurrent_kernel_m: `:
(assignvariableop_40_adam_gru_step_bias_m:`A
.assignvariableop_41_adam_graph_fingerprint_u_m:	@?=
.assignvariableop_42_adam_graph_fingerprint_b_m:	?9
&assignvariableop_43_adam_mfp1_kernel_m:	@?3
$assignvariableop_44_adam_mfp1_bias_m:	?C
4assignvariableop_45_adam_batch_normalization_gamma_m:	?B
3assignvariableop_46_adam_batch_normalization_beta_m:	?9
&assignvariableop_47_adam_mfp2_kernel_m:	? 2
$assignvariableop_48_adam_mfp2_bias_m: D
6assignvariableop_49_adam_batch_normalization_1_gamma_m: C
5assignvariableop_50_adam_batch_normalization_1_beta_m: 9
&assignvariableop_51_adam_mfp3_kernel_m:	 ?3
$assignvariableop_52_adam_mfp3_bias_m:	?E
6assignvariableop_53_adam_batch_normalization_2_gamma_m:	?D
5assignvariableop_54_adam_batch_normalization_2_beta_m:	?;
(assignvariableop_55_adam_output_kernel_m:	?4
&assignvariableop_56_adam_output_bias_m:G
4assignvariableop_57_adam_atom_embedding_embeddings_v:	? W
@assignvariableop_58_adam_bond_embedding_bond_embedding_weights_v:?  <
*assignvariableop_59_adam_gru_step_kernel_v: `F
4assignvariableop_60_adam_gru_step_recurrent_kernel_v: `:
(assignvariableop_61_adam_gru_step_bias_v:`A
.assignvariableop_62_adam_graph_fingerprint_u_v:	@?=
.assignvariableop_63_adam_graph_fingerprint_b_v:	?9
&assignvariableop_64_adam_mfp1_kernel_v:	@?3
$assignvariableop_65_adam_mfp1_bias_v:	?C
4assignvariableop_66_adam_batch_normalization_gamma_v:	?B
3assignvariableop_67_adam_batch_normalization_beta_v:	?9
&assignvariableop_68_adam_mfp2_kernel_v:	? 2
$assignvariableop_69_adam_mfp2_bias_v: D
6assignvariableop_70_adam_batch_normalization_1_gamma_v: C
5assignvariableop_71_adam_batch_normalization_1_beta_v: 9
&assignvariableop_72_adam_mfp3_kernel_v:	 ?3
$assignvariableop_73_adam_mfp3_bias_v:	?E
6assignvariableop_74_adam_batch_normalization_2_gamma_v:	?D
5assignvariableop_75_adam_batch_normalization_2_beta_v:	?;
(assignvariableop_76_adam_output_kernel_v:	?4
&assignvariableop_77_adam_output_bias_v:
identity_79??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_67?AssignVariableOp_68?AssignVariableOp_69?AssignVariableOp_7?AssignVariableOp_70?AssignVariableOp_71?AssignVariableOp_72?AssignVariableOp_73?AssignVariableOp_74?AssignVariableOp_75?AssignVariableOp_76?AssignVariableOp_77?AssignVariableOp_8?AssignVariableOp_9?,
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:O*
dtype0*?+
value?+B?+OB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/bond_embedding_weights/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-2/recurrent_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB1layer_with_weights-3/U/.ATTRIBUTES/VARIABLE_VALUEB1layer_with_weights-3/b/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBblayer_with_weights-1/bond_embedding_weights/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-2/recurrent_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMlayer_with_weights-3/U/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMlayer_with_weights-3/b/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBblayer_with_weights-1/bond_embedding_weights/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-2/recurrent_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMlayer_with_weights-3/U/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMlayer_with_weights-3/b/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:O*
dtype0*?
value?B?OB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*]
dtypesS
Q2O	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp*assignvariableop_atom_embedding_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp8assignvariableop_1_bond_embedding_bond_embedding_weightsIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_gru_step_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp,assignvariableop_3_gru_step_recurrent_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp assignvariableop_4_gru_step_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp&assignvariableop_5_graph_fingerprint_uIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp&assignvariableop_6_graph_fingerprint_bIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_mfp1_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_mfp1_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp,assignvariableop_9_batch_normalization_gammaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp,assignvariableop_10_batch_normalization_betaIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp3assignvariableop_11_batch_normalization_moving_meanIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp7assignvariableop_12_batch_normalization_moving_varianceIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_mfp2_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_mfp2_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_batch_normalization_1_gammaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp.assignvariableop_16_batch_normalization_1_betaIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp5assignvariableop_17_batch_normalization_1_moving_meanIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp9assignvariableop_18_batch_normalization_1_moving_varianceIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOpassignvariableop_19_mfp3_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOpassignvariableop_20_mfp3_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp/assignvariableop_21_batch_normalization_2_gammaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp.assignvariableop_22_batch_normalization_2_betaIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp5assignvariableop_23_batch_normalization_2_moving_meanIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp9assignvariableop_24_batch_normalization_2_moving_varianceIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp!assignvariableop_25_output_kernelIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOpassignvariableop_26_output_biasIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOpassignvariableop_27_adam_iterIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOpassignvariableop_28_adam_beta_1Identity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOpassignvariableop_29_adam_beta_2Identity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOpassignvariableop_30_adam_decayIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp&assignvariableop_31_adam_learning_rateIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOpassignvariableop_32_totalIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOpassignvariableop_33_countIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOpassignvariableop_34_total_1Identity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOpassignvariableop_35_count_1Identity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp4assignvariableop_36_adam_atom_embedding_embeddings_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp@assignvariableop_37_adam_bond_embedding_bond_embedding_weights_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp*assignvariableop_38_adam_gru_step_kernel_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp4assignvariableop_39_adam_gru_step_recurrent_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp(assignvariableop_40_adam_gru_step_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp.assignvariableop_41_adam_graph_fingerprint_u_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp.assignvariableop_42_adam_graph_fingerprint_b_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp&assignvariableop_43_adam_mfp1_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp$assignvariableop_44_adam_mfp1_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp4assignvariableop_45_adam_batch_normalization_gamma_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp3assignvariableop_46_adam_batch_normalization_beta_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp&assignvariableop_47_adam_mfp2_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOp$assignvariableop_48_adam_mfp2_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOp6assignvariableop_49_adam_batch_normalization_1_gamma_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOp5assignvariableop_50_adam_batch_normalization_1_beta_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOp&assignvariableop_51_adam_mfp3_kernel_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOp$assignvariableop_52_adam_mfp3_bias_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOp6assignvariableop_53_adam_batch_normalization_2_gamma_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOp5assignvariableop_54_adam_batch_normalization_2_beta_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55?
AssignVariableOp_55AssignVariableOp(assignvariableop_55_adam_output_kernel_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56?
AssignVariableOp_56AssignVariableOp&assignvariableop_56_adam_output_bias_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57?
AssignVariableOp_57AssignVariableOp4assignvariableop_57_adam_atom_embedding_embeddings_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58?
AssignVariableOp_58AssignVariableOp@assignvariableop_58_adam_bond_embedding_bond_embedding_weights_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59?
AssignVariableOp_59AssignVariableOp*assignvariableop_59_adam_gru_step_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60?
AssignVariableOp_60AssignVariableOp4assignvariableop_60_adam_gru_step_recurrent_kernel_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61?
AssignVariableOp_61AssignVariableOp(assignvariableop_61_adam_gru_step_bias_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62?
AssignVariableOp_62AssignVariableOp.assignvariableop_62_adam_graph_fingerprint_u_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63?
AssignVariableOp_63AssignVariableOp.assignvariableop_63_adam_graph_fingerprint_b_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64?
AssignVariableOp_64AssignVariableOp&assignvariableop_64_adam_mfp1_kernel_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65?
AssignVariableOp_65AssignVariableOp$assignvariableop_65_adam_mfp1_bias_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66?
AssignVariableOp_66AssignVariableOp4assignvariableop_66_adam_batch_normalization_gamma_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67?
AssignVariableOp_67AssignVariableOp3assignvariableop_67_adam_batch_normalization_beta_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68?
AssignVariableOp_68AssignVariableOp&assignvariableop_68_adam_mfp2_kernel_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69?
AssignVariableOp_69AssignVariableOp$assignvariableop_69_adam_mfp2_bias_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70?
AssignVariableOp_70AssignVariableOp6assignvariableop_70_adam_batch_normalization_1_gamma_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71?
AssignVariableOp_71AssignVariableOp5assignvariableop_71_adam_batch_normalization_1_beta_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72?
AssignVariableOp_72AssignVariableOp&assignvariableop_72_adam_mfp3_kernel_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73?
AssignVariableOp_73AssignVariableOp$assignvariableop_73_adam_mfp3_bias_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_73n
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:2
Identity_74?
AssignVariableOp_74AssignVariableOp6assignvariableop_74_adam_batch_normalization_2_gamma_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_74n
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:2
Identity_75?
AssignVariableOp_75AssignVariableOp5assignvariableop_75_adam_batch_normalization_2_beta_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_75n
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:2
Identity_76?
AssignVariableOp_76AssignVariableOp(assignvariableop_76_adam_output_kernel_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_76n
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:2
Identity_77?
AssignVariableOp_77AssignVariableOp&assignvariableop_77_adam_output_bias_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_779
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_78Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_78?
Identity_79IdentityIdentity_78:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_79"#
identity_79Identity_79:output:0*?
_input_shapes?
?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?*
?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_68332

inputs6
'assignmovingavg_readvariableop_resource:	?8
)assignmovingavg_1_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?0
!batchnorm_readvariableop_resource:	?
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
.__inference_bond_embedding_layer_call_fn_67755

inputs
unknown:?  
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????  *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_bond_embedding_layer_call_and_return_conditional_losses_647112
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
5__inference_batch_normalization_1_layer_call_fn_68365

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_643812
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_68398

inputs/
!batchnorm_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: 1
#batchnorm_readvariableop_1_resource: 1
#batchnorm_readvariableop_2_resource: 
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:????????? 2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:????????? 2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? : : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
H__inference_message_layer_layer_call_and_return_conditional_losses_67808
inputs_0
inputs_1
inputs_2
identity?{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSliceinputs_2strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice`
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2/axis?
GatherV2GatherV2inputs_0strided_slice:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:????????? 2

GatherV2b
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim?

ExpandDims
ExpandDimsGatherV2:output:0ExpandDims/dim:output:0*
T0*+
_output_shapes
:????????? 2

ExpandDimsv
MatMulBatchMatMulV2inputs_1ExpandDims:output:0*
T0*+
_output_shapes
:????????? 2
MatMulM
ShapeShapeMatMul:output:0*
T0*
_output_shapes
:2
Shape?
SqueezeSqueezeMatMul:output:0*
T0*'
_output_shapes
:????????? *
squeeze_dims

?????????2	
Squeezec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Const}
dropout/MulMulSqueeze:output:0dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout/Mul^
dropout/ShapeShapeSqueeze:output:0*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*

seed*
seed2???2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout/Mul_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceinputs_2strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_1?

SegmentSum
SegmentSumSqueeze:output:0strided_slice_1:output:0*
T0*
Tindices0*'
_output_shapes
:????????? 2

SegmentSumg
IdentityIdentitySegmentSum:output:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:????????? :?????????  :?????????:Q M
'
_output_shapes
:????????? 
"
_user_specified_name
inputs/0:UQ
+
_output_shapes
:?????????  
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/2
?)
?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_68432

inputs5
'assignmovingavg_readvariableop_resource: 7
)assignmovingavg_1_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: /
!batchnorm_readvariableop_resource: 
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

: *
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

: 2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:????????? 2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

: *
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
: *
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
: 2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
: 2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
: *
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
: 2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
: 2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:????????? 2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:????????? 2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
$__inference_mfp1_layer_call_fn_68241

inputs
unknown:	@?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_mfp1_layer_call_and_return_conditional_losses_650262
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
H__inference_message_layer_layer_call_and_return_conditional_losses_65451

inputs
inputs_1
inputs_2
identity?{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSliceinputs_2strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice`
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2/axis?
GatherV2GatherV2inputsstrided_slice:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:????????? 2

GatherV2b
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim?

ExpandDims
ExpandDimsGatherV2:output:0ExpandDims/dim:output:0*
T0*+
_output_shapes
:????????? 2

ExpandDimsv
MatMulBatchMatMulV2inputs_1ExpandDims:output:0*
T0*+
_output_shapes
:????????? 2
MatMulM
ShapeShapeMatMul:output:0*
T0*
_output_shapes
:2
Shape?
SqueezeSqueezeMatMul:output:0*
T0*'
_output_shapes
:????????? *
squeeze_dims

?????????2	
Squeezec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Const}
dropout/MulMulSqueeze:output:0dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout/Mul^
dropout/ShapeShapeSqueeze:output:0*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*

seed*
seed2???2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout/Mul_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceinputs_2strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_1?

SegmentSum
SegmentSumdropout/Mul_1:z:0strided_slice_1:output:0*
T0*
Tindices0*'
_output_shapes
:????????? 2

SegmentSumg
IdentityIdentitySegmentSum:output:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:????????? :?????????  :?????????:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs:SO
+
_output_shapes
:?????????  
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
H__inference_message_layer_layer_call_and_return_conditional_losses_64758

inputs
inputs_1
inputs_2
identity?{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSliceinputs_2strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice`
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2/axis?
GatherV2GatherV2inputsstrided_slice:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:????????? 2

GatherV2b
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim?

ExpandDims
ExpandDimsGatherV2:output:0ExpandDims/dim:output:0*
T0*+
_output_shapes
:????????? 2

ExpandDimsv
MatMulBatchMatMulV2inputs_1ExpandDims:output:0*
T0*+
_output_shapes
:????????? 2
MatMulM
ShapeShapeMatMul:output:0*
T0*
_output_shapes
:2
Shape?
SqueezeSqueezeMatMul:output:0*
T0*'
_output_shapes
:????????? *
squeeze_dims

?????????2	
Squeezec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Const}
dropout/MulMulSqueeze:output:0dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout/Mul^
dropout/ShapeShapeSqueeze:output:0*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*

seed*
seed2???2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout/Mul_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceinputs_2strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_1?

SegmentSum
SegmentSumSqueeze:output:0strided_slice_1:output:0*
T0*
Tindices0*'
_output_shapes
:????????? 2

SegmentSumg
IdentityIdentitySegmentSum:output:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:????????? :?????????  :?????????:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs:SO
+
_output_shapes
:?????????  
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
$__inference_mfp3_layer_call_fn_68441

inputs
unknown:	 ?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_mfp3_layer_call_and_return_conditional_losses_650782
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
&__inference_output_layer_call_fn_68541

inputs
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_output_layer_call_and_return_conditional_losses_651032
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
.__inference_atom_embedding_layer_call_fn_67739

inputs
unknown:	? 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_atom_embedding_layer_call_and_return_conditional_losses_647242
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
L__inference_graph_fingerprint_layer_call_and_return_conditional_losses_68232
inputs_0
inputs_14
!xw_plus_b_readvariableop_resource:	@?2
#xw_plus_b_readvariableop_1_resource:	?
identity??xw_plus_b/ReadVariableOp?xw_plus_b/ReadVariableOp_1?xw_plus_b_1/ReadVariableOp?xw_plus_b_1/ReadVariableOp_1?xw_plus_b_2/ReadVariableOp?xw_plus_b_2/ReadVariableOp_1X
ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
ConstL
MaxMaxinputs_1Const:output:0*
T0*
_output_shapes
: 2
MaxP
add/yConst*
_output_shapes
: *
dtype0*
value	B :2
add/yR
addAddV2Max:output:0add/y:output:0*
T0*
_output_shapes
: 2
add\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/y]
	zeros/mulMuladd:z:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1t
zeros/packedPackadd:z:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yc
zeros_1/mulMuladd:z:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1z
zeros_1/packedPackadd:z:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1`
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2/axis?
GatherV2GatherV2zeros_1:output:0inputs_1GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:????????? 2

GatherV2`
mulMulinputs_0GatherV2:output:0*
T0*'
_output_shapes
:????????? 2
mulp
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indicesh
SumSummul:z:0Sum/reduction_indices:output:0*
T0*#
_output_shapes
:?????????2
SumM
ExpExpSum:output:0*
T0*#
_output_shapes
:?????????2
Expw

SegmentSum
SegmentSumExp:y:0inputs_1*
T0*
Tindices0*#
_output_shapes
:?????????2

SegmentSumd
GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_1/axis?

GatherV2_1GatherV2SegmentSum:output:0inputs_1GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*#
_output_shapes
:?????????2

GatherV2_1i
truedivRealDivExp:y:0GatherV2_1:output:0*
T0*#
_output_shapes
:?????????2	
truedivo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
Reshape/shapet
ReshapeReshapetruediv:z:0Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2	
Reshapec
mul_1MulReshape:output:0inputs_0*
T0*'
_output_shapes
:????????? 2
mul_1?
SegmentSum_1
SegmentSum	mul_1:z:0inputs_1*
T0*
Tindices0*'
_output_shapes
:????????? 2
SegmentSum_1\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2zeros_1:output:0SegmentSum_1:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????@2
concat?
xw_plus_b/ReadVariableOpReadVariableOp!xw_plus_b_readvariableop_resource*
_output_shapes
:	@?*
dtype02
xw_plus_b/ReadVariableOp?
xw_plus_b/ReadVariableOp_1ReadVariableOp#xw_plus_b_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
xw_plus_b/ReadVariableOp_1?
xw_plus_b/MatMulMatMulconcat:output:0 xw_plus_b/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
xw_plus_b/MatMul?
	xw_plus_bBiasAddxw_plus_b/MatMul:product:0"xw_plus_b/ReadVariableOp_1:value:0*
T0*(
_output_shapes
:??????????2
	xw_plus_b{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSlicexw_plus_b:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2
strided_sliceg
SigmoidSigmoidstrided_slice:output:0*
T0*'
_output_shapes
:????????? 2	
Sigmoid
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSlicexw_plus_b:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2
strided_slice_1m
	Sigmoid_1Sigmoidstrided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
	Sigmoid_1
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_2/stack?
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2
strided_slice_2/stack_1?
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2?
strided_slice_2StridedSlicexw_plus_b:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2
strided_slice_2m
	Sigmoid_2Sigmoidstrided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
	Sigmoid_2
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2
strided_slice_3/stack?
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1?
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2?
strided_slice_3StridedSlicexw_plus_b:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2
strided_slice_3f
mul_2MulSigmoid_1:y:0zeros:output:0*
T0*'
_output_shapes
:????????? 2
mul_2`
TanhTanhstrided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
Tanh^
mul_3MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:????????? 2
mul_3_
add_1AddV2	mul_2:z:0	mul_3:z:0*
T0*'
_output_shapes
:????????? 2
add_1U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:????????? 2
Tanh_1b
mul_4MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
mul_4d
GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_2/axis?

GatherV2_2GatherV2	mul_4:z:0inputs_1GatherV2_2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:????????? 2

GatherV2_2f
mul_5Mulinputs_0GatherV2_2:output:0*
T0*'
_output_shapes
:????????? 2
mul_5t
Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum_1/reduction_indicesp
Sum_1Sum	mul_5:z:0 Sum_1/reduction_indices:output:0*
T0*#
_output_shapes
:?????????2
Sum_1S
Exp_1ExpSum_1:output:0*
T0*#
_output_shapes
:?????????2
Exp_1}
SegmentSum_2
SegmentSum	Exp_1:y:0inputs_1*
T0*
Tindices0*#
_output_shapes
:?????????2
SegmentSum_2d
GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_3/axis?

GatherV2_3GatherV2SegmentSum_2:output:0inputs_1GatherV2_3/axis:output:0*
Taxis0*
Tindices0*
Tparams0*#
_output_shapes
:?????????2

GatherV2_3o
	truediv_1RealDiv	Exp_1:y:0GatherV2_3:output:0*
T0*#
_output_shapes
:?????????2
	truediv_1s
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
Reshape_1/shape|
	Reshape_1Reshapetruediv_1:z:0Reshape_1/shape:output:0*
T0*'
_output_shapes
:?????????2
	Reshape_1e
mul_6MulReshape_1:output:0inputs_0*
T0*'
_output_shapes
:????????? 2
mul_6?
SegmentSum_3
SegmentSum	mul_6:z:0inputs_1*
T0*
Tindices0*'
_output_shapes
:????????? 2
SegmentSum_3`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_1/axis?
concat_1ConcatV2	mul_4:z:0SegmentSum_3:output:0concat_1/axis:output:0*
N*
T0*'
_output_shapes
:?????????@2

concat_1?
xw_plus_b_1/ReadVariableOpReadVariableOp!xw_plus_b_readvariableop_resource*
_output_shapes
:	@?*
dtype02
xw_plus_b_1/ReadVariableOp?
xw_plus_b_1/ReadVariableOp_1ReadVariableOp#xw_plus_b_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
xw_plus_b_1/ReadVariableOp_1?
xw_plus_b_1/MatMulMatMulconcat_1:output:0"xw_plus_b_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
xw_plus_b_1/MatMul?
xw_plus_b_1BiasAddxw_plus_b_1/MatMul:product:0$xw_plus_b_1/ReadVariableOp_1:value:0*
T0*(
_output_shapes
:??????????2
xw_plus_b_1
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_4/stack?
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_4/stack_1?
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_4/stack_2?
strided_slice_4StridedSlicexw_plus_b_1:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2
strided_slice_4m
	Sigmoid_3Sigmoidstrided_slice_4:output:0*
T0*'
_output_shapes
:????????? 2
	Sigmoid_3
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_5/stack?
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_5/stack_1?
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_5/stack_2?
strided_slice_5StridedSlicexw_plus_b_1:output:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2
strided_slice_5m
	Sigmoid_4Sigmoidstrided_slice_5:output:0*
T0*'
_output_shapes
:????????? 2
	Sigmoid_4
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_6/stack?
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2
strided_slice_6/stack_1?
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_6/stack_2?
strided_slice_6StridedSlicexw_plus_b_1:output:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2
strided_slice_6m
	Sigmoid_5Sigmoidstrided_slice_6:output:0*
T0*'
_output_shapes
:????????? 2
	Sigmoid_5
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2
strided_slice_7/stack?
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_7/stack_1?
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_7/stack_2?
strided_slice_7StridedSlicexw_plus_b_1:output:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2
strided_slice_7a
mul_7MulSigmoid_4:y:0	add_1:z:0*
T0*'
_output_shapes
:????????? 2
mul_7d
Tanh_2Tanhstrided_slice_7:output:0*
T0*'
_output_shapes
:????????? 2
Tanh_2b
mul_8MulSigmoid_3:y:0
Tanh_2:y:0*
T0*'
_output_shapes
:????????? 2
mul_8_
add_2AddV2	mul_7:z:0	mul_8:z:0*
T0*'
_output_shapes
:????????? 2
add_2U
Tanh_3Tanh	add_2:z:0*
T0*'
_output_shapes
:????????? 2
Tanh_3b
mul_9MulSigmoid_5:y:0
Tanh_3:y:0*
T0*'
_output_shapes
:????????? 2
mul_9d
GatherV2_4/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_4/axis?

GatherV2_4GatherV2	mul_9:z:0inputs_1GatherV2_4/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:????????? 2

GatherV2_4h
mul_10Mulinputs_0GatherV2_4:output:0*
T0*'
_output_shapes
:????????? 2
mul_10t
Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum_2/reduction_indicesq
Sum_2Sum
mul_10:z:0 Sum_2/reduction_indices:output:0*
T0*#
_output_shapes
:?????????2
Sum_2S
Exp_2ExpSum_2:output:0*
T0*#
_output_shapes
:?????????2
Exp_2}
SegmentSum_4
SegmentSum	Exp_2:y:0inputs_1*
T0*
Tindices0*#
_output_shapes
:?????????2
SegmentSum_4d
GatherV2_5/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_5/axis?

GatherV2_5GatherV2SegmentSum_4:output:0inputs_1GatherV2_5/axis:output:0*
Taxis0*
Tindices0*
Tparams0*#
_output_shapes
:?????????2

GatherV2_5o
	truediv_2RealDiv	Exp_2:y:0GatherV2_5:output:0*
T0*#
_output_shapes
:?????????2
	truediv_2s
Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
Reshape_2/shape|
	Reshape_2Reshapetruediv_2:z:0Reshape_2/shape:output:0*
T0*'
_output_shapes
:?????????2
	Reshape_2g
mul_11MulReshape_2:output:0inputs_0*
T0*'
_output_shapes
:????????? 2
mul_11?
SegmentSum_5
SegmentSum
mul_11:z:0inputs_1*
T0*
Tindices0*'
_output_shapes
:????????? 2
SegmentSum_5`
concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_2/axis?
concat_2ConcatV2	mul_9:z:0SegmentSum_5:output:0concat_2/axis:output:0*
N*
T0*'
_output_shapes
:?????????@2

concat_2?
xw_plus_b_2/ReadVariableOpReadVariableOp!xw_plus_b_readvariableop_resource*
_output_shapes
:	@?*
dtype02
xw_plus_b_2/ReadVariableOp?
xw_plus_b_2/ReadVariableOp_1ReadVariableOp#xw_plus_b_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
xw_plus_b_2/ReadVariableOp_1?
xw_plus_b_2/MatMulMatMulconcat_2:output:0"xw_plus_b_2/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
xw_plus_b_2/MatMul?
xw_plus_b_2BiasAddxw_plus_b_2/MatMul:product:0$xw_plus_b_2/ReadVariableOp_1:value:0*
T0*(
_output_shapes
:??????????2
xw_plus_b_2
strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_8/stack?
strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_8/stack_1?
strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_8/stack_2?
strided_slice_8StridedSlicexw_plus_b_2:output:0strided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2
strided_slice_8m
	Sigmoid_6Sigmoidstrided_slice_8:output:0*
T0*'
_output_shapes
:????????? 2
	Sigmoid_6
strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_9/stack?
strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_9/stack_1?
strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_9/stack_2?
strided_slice_9StridedSlicexw_plus_b_2:output:0strided_slice_9/stack:output:0 strided_slice_9/stack_1:output:0 strided_slice_9/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2
strided_slice_9m
	Sigmoid_7Sigmoidstrided_slice_9:output:0*
T0*'
_output_shapes
:????????? 2
	Sigmoid_7?
strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_10/stack?
strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2
strided_slice_10/stack_1?
strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_10/stack_2?
strided_slice_10StridedSlicexw_plus_b_2:output:0strided_slice_10/stack:output:0!strided_slice_10/stack_1:output:0!strided_slice_10/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2
strided_slice_10n
	Sigmoid_8Sigmoidstrided_slice_10:output:0*
T0*'
_output_shapes
:????????? 2
	Sigmoid_8?
strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2
strided_slice_11/stack?
strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_11/stack_1?
strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_11/stack_2?
strided_slice_11StridedSlicexw_plus_b_2:output:0strided_slice_11/stack:output:0!strided_slice_11/stack_1:output:0!strided_slice_11/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2
strided_slice_11c
mul_12MulSigmoid_7:y:0	add_2:z:0*
T0*'
_output_shapes
:????????? 2
mul_12e
Tanh_4Tanhstrided_slice_11:output:0*
T0*'
_output_shapes
:????????? 2
Tanh_4d
mul_13MulSigmoid_6:y:0
Tanh_4:y:0*
T0*'
_output_shapes
:????????? 2
mul_13a
add_3AddV2
mul_12:z:0
mul_13:z:0*
T0*'
_output_shapes
:????????? 2
add_3U
Tanh_5Tanh	add_3:z:0*
T0*'
_output_shapes
:????????? 2
Tanh_5d
mul_14MulSigmoid_8:y:0
Tanh_5:y:0*
T0*'
_output_shapes
:????????? 2
mul_14?
IdentityIdentityconcat_2:output:0^xw_plus_b/ReadVariableOp^xw_plus_b/ReadVariableOp_1^xw_plus_b_1/ReadVariableOp^xw_plus_b_1/ReadVariableOp_1^xw_plus_b_2/ReadVariableOp^xw_plus_b_2/ReadVariableOp_1*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:????????? :?????????: : 24
xw_plus_b/ReadVariableOpxw_plus_b/ReadVariableOp28
xw_plus_b/ReadVariableOp_1xw_plus_b/ReadVariableOp_128
xw_plus_b_1/ReadVariableOpxw_plus_b_1/ReadVariableOp2<
xw_plus_b_1/ReadVariableOp_1xw_plus_b_1/ReadVariableOp_128
xw_plus_b_2/ReadVariableOpxw_plus_b_2/ReadVariableOp2<
xw_plus_b_2/ReadVariableOp_1xw_plus_b_2/ReadVariableOp_1:Q M
'
_output_shapes
:????????? 
"
_user_specified_name
inputs/0:MI
#
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?
?
+__inference_graph_model_layer_call_fn_65167
node_graph_indices
atom
bond
connectivity
unknown:?  
	unknown_0:	? 
	unknown_1:`
	unknown_2: `
	unknown_3: `
	unknown_4:	@?
	unknown_5:	?
	unknown_6:	@?
	unknown_7:	?
	unknown_8:	?
	unknown_9:	?

unknown_10:	?

unknown_11:	?

unknown_12:	? 

unknown_13: 

unknown_14: 

unknown_15: 

unknown_16: 

unknown_17: 

unknown_18:	 ?

unknown_19:	?

unknown_20:	?

unknown_21:	?

unknown_22:	?

unknown_23:	?

unknown_24:	?

unknown_25:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallnode_graph_indicesatombondconnectivityunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*=
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_graph_model_layer_call_and_return_conditional_losses_651102
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
'
_output_shapes
:?????????
,
_user_specified_namenode_graph_indices:MI
'
_output_shapes
:?????????

_user_specified_nameatom:MI
'
_output_shapes
:?????????

_user_specified_namebond:UQ
'
_output_shapes
:?????????
&
_user_specified_nameconnectivity
?*
?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_64279

inputs6
'assignmovingavg_readvariableop_resource:	?8
)assignmovingavg_1_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?0
!batchnorm_readvariableop_resource:	?
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
+__inference_graph_model_layer_call_fn_65772
node_graph_indices
atom
bond
connectivity
unknown:?  
	unknown_0:	? 
	unknown_1:`
	unknown_2: `
	unknown_3: `
	unknown_4:	@?
	unknown_5:	?
	unknown_6:	@?
	unknown_7:	?
	unknown_8:	?
	unknown_9:	?

unknown_10:	?

unknown_11:	?

unknown_12:	? 

unknown_13: 

unknown_14: 

unknown_15: 

unknown_16: 

unknown_17: 

unknown_18:	 ?

unknown_19:	?

unknown_20:	?

unknown_21:	?

unknown_22:	?

unknown_23:	?

unknown_24:	?

unknown_25:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallnode_graph_indicesatombondconnectivityunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*7
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_graph_model_layer_call_and_return_conditional_losses_656532
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
'
_output_shapes
:?????????
,
_user_specified_namenode_graph_indices:MI
'
_output_shapes
:?????????

_user_specified_nameatom:MI
'
_output_shapes
:?????????

_user_specified_namebond:UQ
'
_output_shapes
:?????????
&
_user_specified_nameconnectivity
?
?
1__inference_graph_fingerprint_layer_call_fn_67898
inputs_0
inputs_1
unknown:	@?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_graph_fingerprint_layer_call_and_return_conditional_losses_650092
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:????????? :?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:????????? 
"
_user_specified_name
inputs/0:MI
#
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?*
?
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_64603

inputs6
'assignmovingavg_readvariableop_resource:	?8
)assignmovingavg_1_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?0
!batchnorm_readvariableop_resource:	?
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
A__inference_output_layer_call_and_return_conditional_losses_65103

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
-__inference_message_layer_layer_call_fn_67778
inputs_0
inputs_1
inputs_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_message_layer_layer_call_and_return_conditional_losses_654512
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:????????? :?????????  :?????????22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:????????? 
"
_user_specified_name
inputs/0:UQ
+
_output_shapes
:?????????  
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/2
?
?
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_64543

inputs0
!batchnorm_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?2
#batchnorm_readvariableop_1_resource:	?2
#batchnorm_readvariableop_2_resource:	?
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
I__inference_bond_embedding_layer_call_and_return_conditional_losses_67764

inputs-
embedding_lookup_67758:?  
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_67758inputs",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*)
_class
loc:@embedding_lookup/67758*+
_output_shapes
:?????????  *
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@embedding_lookup/67758*+
_output_shapes
:?????????  2
embedding_lookup/Identity?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????  2
embedding_lookup/Identity_1?
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*+
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:?????????: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
A__inference_output_layer_call_and_return_conditional_losses_68551

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
5__inference_batch_normalization_2_layer_call_fn_68478

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_646032
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_68298

inputs0
!batchnorm_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?2
#batchnorm_readvariableop_1_resource:	?2
#batchnorm_readvariableop_2_resource:	?
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_64219

inputs0
!batchnorm_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?2
#batchnorm_readvariableop_1_resource:	?2
#batchnorm_readvariableop_2_resource:	?
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
?__inference_mfp2_layer_call_and_return_conditional_losses_68352

inputs1
matmul_readvariableop_resource:	? -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	? *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?!
F__inference_graph_model_layer_call_and_return_conditional_losses_67722
inputs_0
inputs_1
inputs_2
inputs_3<
%bond_embedding_embedding_lookup_66947:?  8
%atom_embedding_embedding_lookup_66952:	? 2
 gru_step_readvariableop_resource:`9
'gru_step_matmul_readvariableop_resource: `;
)gru_step_matmul_1_readvariableop_resource: `F
3graph_fingerprint_xw_plus_b_readvariableop_resource:	@?D
5graph_fingerprint_xw_plus_b_readvariableop_1_resource:	?6
#mfp1_matmul_readvariableop_resource:	@?3
$mfp1_biasadd_readvariableop_resource:	?J
;batch_normalization_assignmovingavg_readvariableop_resource:	?L
=batch_normalization_assignmovingavg_1_readvariableop_resource:	?H
9batch_normalization_batchnorm_mul_readvariableop_resource:	?D
5batch_normalization_batchnorm_readvariableop_resource:	?6
#mfp2_matmul_readvariableop_resource:	? 2
$mfp2_biasadd_readvariableop_resource: K
=batch_normalization_1_assignmovingavg_readvariableop_resource: M
?batch_normalization_1_assignmovingavg_1_readvariableop_resource: I
;batch_normalization_1_batchnorm_mul_readvariableop_resource: E
7batch_normalization_1_batchnorm_readvariableop_resource: 6
#mfp3_matmul_readvariableop_resource:	 ?3
$mfp3_biasadd_readvariableop_resource:	?L
=batch_normalization_2_assignmovingavg_readvariableop_resource:	?N
?batch_normalization_2_assignmovingavg_1_readvariableop_resource:	?J
;batch_normalization_2_batchnorm_mul_readvariableop_resource:	?F
7batch_normalization_2_batchnorm_readvariableop_resource:	?8
%output_matmul_readvariableop_resource:	?4
&output_biasadd_readvariableop_resource:
identity??atom_embedding/embedding_lookup?#batch_normalization/AssignMovingAvg?2batch_normalization/AssignMovingAvg/ReadVariableOp?%batch_normalization/AssignMovingAvg_1?4batch_normalization/AssignMovingAvg_1/ReadVariableOp?,batch_normalization/batchnorm/ReadVariableOp?0batch_normalization/batchnorm/mul/ReadVariableOp?%batch_normalization_1/AssignMovingAvg?4batch_normalization_1/AssignMovingAvg/ReadVariableOp?'batch_normalization_1/AssignMovingAvg_1?6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp?.batch_normalization_1/batchnorm/ReadVariableOp?2batch_normalization_1/batchnorm/mul/ReadVariableOp?%batch_normalization_2/AssignMovingAvg?4batch_normalization_2/AssignMovingAvg/ReadVariableOp?'batch_normalization_2/AssignMovingAvg_1?6batch_normalization_2/AssignMovingAvg_1/ReadVariableOp?.batch_normalization_2/batchnorm/ReadVariableOp?2batch_normalization_2/batchnorm/mul/ReadVariableOp?bond_embedding/embedding_lookup?*graph_fingerprint/xw_plus_b/ReadVariableOp?,graph_fingerprint/xw_plus_b/ReadVariableOp_1?,graph_fingerprint/xw_plus_b_1/ReadVariableOp?.graph_fingerprint/xw_plus_b_1/ReadVariableOp_1?,graph_fingerprint/xw_plus_b_2/ReadVariableOp?.graph_fingerprint/xw_plus_b_2/ReadVariableOp_1?gru_step/MatMul/ReadVariableOp? gru_step/MatMul_1/ReadVariableOp?!gru_step/MatMul_10/ReadVariableOp?!gru_step/MatMul_11/ReadVariableOp?!gru_step/MatMul_12/ReadVariableOp?!gru_step/MatMul_13/ReadVariableOp?!gru_step/MatMul_14/ReadVariableOp?!gru_step/MatMul_15/ReadVariableOp?!gru_step/MatMul_16/ReadVariableOp?!gru_step/MatMul_17/ReadVariableOp? gru_step/MatMul_2/ReadVariableOp? gru_step/MatMul_3/ReadVariableOp? gru_step/MatMul_4/ReadVariableOp? gru_step/MatMul_5/ReadVariableOp? gru_step/MatMul_6/ReadVariableOp? gru_step/MatMul_7/ReadVariableOp? gru_step/MatMul_8/ReadVariableOp? gru_step/MatMul_9/ReadVariableOp?gru_step/ReadVariableOp?gru_step/ReadVariableOp_1?gru_step/ReadVariableOp_2?gru_step/ReadVariableOp_3?gru_step/ReadVariableOp_4?gru_step/ReadVariableOp_5?gru_step/ReadVariableOp_6?gru_step/ReadVariableOp_7?gru_step/ReadVariableOp_8?mfp1/BiasAdd/ReadVariableOp?mfp1/MatMul/ReadVariableOp?mfp2/BiasAdd/ReadVariableOp?mfp2/MatMul/ReadVariableOp?mfp3/BiasAdd/ReadVariableOp?mfp3/MatMul/ReadVariableOp?output/BiasAdd/ReadVariableOp?output/MatMul/ReadVariableOp|
squeeze/SqueezeSqueezeinputs_2*
T0*#
_output_shapes
:?????????*
squeeze_dims
2
squeeze/Squeeze?
squeeze/Squeeze_1Squeezeinputs_1*
T0*#
_output_shapes
:?????????*
squeeze_dims
2
squeeze/Squeeze_1?
bond_embedding/embedding_lookupResourceGather%bond_embedding_embedding_lookup_66947squeeze/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*8
_class.
,*loc:@bond_embedding/embedding_lookup/66947*+
_output_shapes
:?????????  *
dtype02!
bond_embedding/embedding_lookup?
(bond_embedding/embedding_lookup/IdentityIdentity(bond_embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*8
_class.
,*loc:@bond_embedding/embedding_lookup/66947*+
_output_shapes
:?????????  2*
(bond_embedding/embedding_lookup/Identity?
*bond_embedding/embedding_lookup/Identity_1Identity1bond_embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????  2,
*bond_embedding/embedding_lookup/Identity_1?
atom_embedding/embedding_lookupResourceGather%atom_embedding_embedding_lookup_66952squeeze/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*8
_class.
,*loc:@atom_embedding/embedding_lookup/66952*'
_output_shapes
:????????? *
dtype02!
atom_embedding/embedding_lookup?
(atom_embedding/embedding_lookup/IdentityIdentity(atom_embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*8
_class.
,*loc:@atom_embedding/embedding_lookup/66952*'
_output_shapes
:????????? 2*
(atom_embedding/embedding_lookup/Identity?
*atom_embedding/embedding_lookup/Identity_1Identity1atom_embedding/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? 2,
*atom_embedding/embedding_lookup/Identity_1?
!message_layer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2#
!message_layer/strided_slice/stack?
#message_layer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#message_layer/strided_slice/stack_1?
#message_layer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#message_layer/strided_slice/stack_2?
message_layer/strided_sliceStridedSliceinputs_3*message_layer/strided_slice/stack:output:0,message_layer/strided_slice/stack_1:output:0,message_layer/strided_slice/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
message_layer/strided_slice|
message_layer/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
message_layer/GatherV2/axis?
message_layer/GatherV2GatherV23atom_embedding/embedding_lookup/Identity_1:output:0$message_layer/strided_slice:output:0$message_layer/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:????????? 2
message_layer/GatherV2~
message_layer/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
message_layer/ExpandDims/dim?
message_layer/ExpandDims
ExpandDimsmessage_layer/GatherV2:output:0%message_layer/ExpandDims/dim:output:0*
T0*+
_output_shapes
:????????? 2
message_layer/ExpandDims?
message_layer/MatMulBatchMatMulV23bond_embedding/embedding_lookup/Identity_1:output:0!message_layer/ExpandDims:output:0*
T0*+
_output_shapes
:????????? 2
message_layer/MatMulw
message_layer/ShapeShapemessage_layer/MatMul:output:0*
T0*
_output_shapes
:2
message_layer/Shape?
message_layer/SqueezeSqueezemessage_layer/MatMul:output:0*
T0*'
_output_shapes
:????????? *
squeeze_dims

?????????2
message_layer/Squeeze
message_layer/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
message_layer/dropout/Const?
message_layer/dropout/MulMulmessage_layer/Squeeze:output:0$message_layer/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
message_layer/dropout/Mul?
message_layer/dropout/ShapeShapemessage_layer/Squeeze:output:0*
T0*
_output_shapes
:2
message_layer/dropout/Shape?
2message_layer/dropout/random_uniform/RandomUniformRandomUniform$message_layer/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*

seed*
seed2??X24
2message_layer/dropout/random_uniform/RandomUniform?
$message_layer/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2&
$message_layer/dropout/GreaterEqual/y?
"message_layer/dropout/GreaterEqualGreaterEqual;message_layer/dropout/random_uniform/RandomUniform:output:0-message_layer/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2$
"message_layer/dropout/GreaterEqual?
message_layer/dropout/CastCast&message_layer/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
message_layer/dropout/Cast?
message_layer/dropout/Mul_1Mulmessage_layer/dropout/Mul:z:0message_layer/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
message_layer/dropout/Mul_1?
#message_layer/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2%
#message_layer/strided_slice_1/stack?
%message_layer/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2'
%message_layer/strided_slice_1/stack_1?
%message_layer/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%message_layer/strided_slice_1/stack_2?
message_layer/strided_slice_1StridedSliceinputs_3,message_layer/strided_slice_1/stack:output:0.message_layer/strided_slice_1/stack_1:output:0.message_layer/strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
message_layer/strided_slice_1?
message_layer/SegmentSum
SegmentSummessage_layer/dropout/Mul_1:z:0&message_layer/strided_slice_1:output:0*
T0*
Tindices0*'
_output_shapes
:????????? 2
message_layer/SegmentSum?
gru_step/ReadVariableOpReadVariableOp gru_step_readvariableop_resource*
_output_shapes

:`*
dtype02
gru_step/ReadVariableOp?
gru_step/unstackUnpackgru_step/ReadVariableOp:value:0*
T0* 
_output_shapes
:`:`*	
num2
gru_step/unstack?
gru_step/MatMul/ReadVariableOpReadVariableOp'gru_step_matmul_readvariableop_resource*
_output_shapes

: `*
dtype02 
gru_step/MatMul/ReadVariableOp?
gru_step/MatMulMatMul!message_layer/SegmentSum:output:0&gru_step/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2
gru_step/MatMul?
gru_step/BiasAddBiasAddgru_step/MatMul:product:0gru_step/unstack:output:0*
T0*'
_output_shapes
:?????????`2
gru_step/BiasAdd
gru_step/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_step/split/split_dim?
gru_step/splitSplit!gru_step/split/split_dim:output:0gru_step/BiasAdd:output:0*
T0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
gru_step/split?
 gru_step/MatMul_1/ReadVariableOpReadVariableOp)gru_step_matmul_1_readvariableop_resource*
_output_shapes

: `*
dtype02"
 gru_step/MatMul_1/ReadVariableOp?
gru_step/MatMul_1MatMul3atom_embedding/embedding_lookup/Identity_1:output:0(gru_step/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2
gru_step/MatMul_1?
gru_step/BiasAdd_1BiasAddgru_step/MatMul_1:product:0gru_step/unstack:output:1*
T0*'
_output_shapes
:?????????`2
gru_step/BiasAdd_1u
gru_step/ConstConst*
_output_shapes
:*
dtype0*!
valueB"        ????2
gru_step/Const?
gru_step/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_step/split_1/split_dim?
gru_step/split_1SplitVgru_step/BiasAdd_1:output:0gru_step/Const:output:0#gru_step/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
gru_step/split_1?
gru_step/addAddV2gru_step/split:output:0gru_step/split_1:output:0*
T0*'
_output_shapes
:????????? 2
gru_step/adds
gru_step/SigmoidSigmoidgru_step/add:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Sigmoid?
gru_step/add_1AddV2gru_step/split:output:1gru_step/split_1:output:1*
T0*'
_output_shapes
:????????? 2
gru_step/add_1y
gru_step/Sigmoid_1Sigmoidgru_step/add_1:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Sigmoid_1?
gru_step/mulMulgru_step/Sigmoid_1:y:0gru_step/split_1:output:2*
T0*'
_output_shapes
:????????? 2
gru_step/mul?
gru_step/add_2AddV2gru_step/split:output:2gru_step/mul:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/add_2l
gru_step/TanhTanhgru_step/add_2:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Tanh?
gru_step/mul_1Mulgru_step/Sigmoid:y:03atom_embedding/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:????????? 2
gru_step/mul_1e
gru_step/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_step/sub/x?
gru_step/subSubgru_step/sub/x:output:0gru_step/Sigmoid:y:0*
T0*'
_output_shapes
:????????? 2
gru_step/sub~
gru_step/mul_2Mulgru_step/sub:z:0gru_step/Tanh:y:0*
T0*'
_output_shapes
:????????? 2
gru_step/mul_2?
gru_step/add_3AddV2gru_step/mul_1:z:0gru_step/mul_2:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/add_3?
#message_layer/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2%
#message_layer/strided_slice_2/stack?
%message_layer/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2'
%message_layer/strided_slice_2/stack_1?
%message_layer/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%message_layer/strided_slice_2/stack_2?
message_layer/strided_slice_2StridedSliceinputs_3,message_layer/strided_slice_2/stack:output:0.message_layer/strided_slice_2/stack_1:output:0.message_layer/strided_slice_2/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
message_layer/strided_slice_2?
message_layer/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
message_layer/GatherV2_1/axis?
message_layer/GatherV2_1GatherV2gru_step/add_3:z:0&message_layer/strided_slice_2:output:0&message_layer/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:????????? 2
message_layer/GatherV2_1?
message_layer/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :2 
message_layer/ExpandDims_1/dim?
message_layer/ExpandDims_1
ExpandDims!message_layer/GatherV2_1:output:0'message_layer/ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:????????? 2
message_layer/ExpandDims_1?
message_layer/MatMul_1BatchMatMulV23bond_embedding/embedding_lookup/Identity_1:output:0#message_layer/ExpandDims_1:output:0*
T0*+
_output_shapes
:????????? 2
message_layer/MatMul_1}
message_layer/Shape_1Shapemessage_layer/MatMul_1:output:0*
T0*
_output_shapes
:2
message_layer/Shape_1?
message_layer/Squeeze_1Squeezemessage_layer/MatMul_1:output:0*
T0*'
_output_shapes
:????????? *
squeeze_dims

?????????2
message_layer/Squeeze_1?
message_layer/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
message_layer/dropout_1/Const?
message_layer/dropout_1/MulMul message_layer/Squeeze_1:output:0&message_layer/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
message_layer/dropout_1/Mul?
message_layer/dropout_1/ShapeShape message_layer/Squeeze_1:output:0*
T0*
_output_shapes
:2
message_layer/dropout_1/Shape?
4message_layer/dropout_1/random_uniform/RandomUniformRandomUniform&message_layer/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*

seed*
seed2???26
4message_layer/dropout_1/random_uniform/RandomUniform?
&message_layer/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2(
&message_layer/dropout_1/GreaterEqual/y?
$message_layer/dropout_1/GreaterEqualGreaterEqual=message_layer/dropout_1/random_uniform/RandomUniform:output:0/message_layer/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2&
$message_layer/dropout_1/GreaterEqual?
message_layer/dropout_1/CastCast(message_layer/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
message_layer/dropout_1/Cast?
message_layer/dropout_1/Mul_1Mulmessage_layer/dropout_1/Mul:z:0 message_layer/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2
message_layer/dropout_1/Mul_1?
#message_layer/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2%
#message_layer/strided_slice_3/stack?
%message_layer/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2'
%message_layer/strided_slice_3/stack_1?
%message_layer/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%message_layer/strided_slice_3/stack_2?
message_layer/strided_slice_3StridedSliceinputs_3,message_layer/strided_slice_3/stack:output:0.message_layer/strided_slice_3/stack_1:output:0.message_layer/strided_slice_3/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
message_layer/strided_slice_3?
message_layer/SegmentSum_1
SegmentSum!message_layer/dropout_1/Mul_1:z:0&message_layer/strided_slice_3:output:0*
T0*
Tindices0*'
_output_shapes
:????????? 2
message_layer/SegmentSum_1?
gru_step/ReadVariableOp_1ReadVariableOp gru_step_readvariableop_resource*
_output_shapes

:`*
dtype02
gru_step/ReadVariableOp_1?
gru_step/unstack_1Unpack!gru_step/ReadVariableOp_1:value:0*
T0* 
_output_shapes
:`:`*	
num2
gru_step/unstack_1?
 gru_step/MatMul_2/ReadVariableOpReadVariableOp'gru_step_matmul_readvariableop_resource*
_output_shapes

: `*
dtype02"
 gru_step/MatMul_2/ReadVariableOp?
gru_step/MatMul_2MatMul#message_layer/SegmentSum_1:output:0(gru_step/MatMul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2
gru_step/MatMul_2?
gru_step/BiasAdd_2BiasAddgru_step/MatMul_2:product:0gru_step/unstack_1:output:0*
T0*'
_output_shapes
:?????????`2
gru_step/BiasAdd_2?
gru_step/split_2/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_step/split_2/split_dim?
gru_step/split_2Split#gru_step/split_2/split_dim:output:0gru_step/BiasAdd_2:output:0*
T0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
gru_step/split_2?
 gru_step/MatMul_3/ReadVariableOpReadVariableOp)gru_step_matmul_1_readvariableop_resource*
_output_shapes

: `*
dtype02"
 gru_step/MatMul_3/ReadVariableOp?
gru_step/MatMul_3MatMulgru_step/add_3:z:0(gru_step/MatMul_3/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2
gru_step/MatMul_3?
gru_step/BiasAdd_3BiasAddgru_step/MatMul_3:product:0gru_step/unstack_1:output:1*
T0*'
_output_shapes
:?????????`2
gru_step/BiasAdd_3y
gru_step/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"        ????2
gru_step/Const_1?
gru_step/split_3/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_step/split_3/split_dim?
gru_step/split_3SplitVgru_step/BiasAdd_3:output:0gru_step/Const_1:output:0#gru_step/split_3/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
gru_step/split_3?
gru_step/add_4AddV2gru_step/split_2:output:0gru_step/split_3:output:0*
T0*'
_output_shapes
:????????? 2
gru_step/add_4y
gru_step/Sigmoid_2Sigmoidgru_step/add_4:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Sigmoid_2?
gru_step/add_5AddV2gru_step/split_2:output:1gru_step/split_3:output:1*
T0*'
_output_shapes
:????????? 2
gru_step/add_5y
gru_step/Sigmoid_3Sigmoidgru_step/add_5:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Sigmoid_3?
gru_step/mul_3Mulgru_step/Sigmoid_3:y:0gru_step/split_3:output:2*
T0*'
_output_shapes
:????????? 2
gru_step/mul_3?
gru_step/add_6AddV2gru_step/split_2:output:2gru_step/mul_3:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/add_6p
gru_step/Tanh_1Tanhgru_step/add_6:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Tanh_1?
gru_step/mul_4Mulgru_step/Sigmoid_2:y:0gru_step/add_3:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/mul_4i
gru_step/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_step/sub_1/x?
gru_step/sub_1Subgru_step/sub_1/x:output:0gru_step/Sigmoid_2:y:0*
T0*'
_output_shapes
:????????? 2
gru_step/sub_1?
gru_step/mul_5Mulgru_step/sub_1:z:0gru_step/Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
gru_step/mul_5?
gru_step/add_7AddV2gru_step/mul_4:z:0gru_step/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/add_7?
#message_layer/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"       2%
#message_layer/strided_slice_4/stack?
%message_layer/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2'
%message_layer/strided_slice_4/stack_1?
%message_layer/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%message_layer/strided_slice_4/stack_2?
message_layer/strided_slice_4StridedSliceinputs_3,message_layer/strided_slice_4/stack:output:0.message_layer/strided_slice_4/stack_1:output:0.message_layer/strided_slice_4/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
message_layer/strided_slice_4?
message_layer/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
message_layer/GatherV2_2/axis?
message_layer/GatherV2_2GatherV2gru_step/add_7:z:0&message_layer/strided_slice_4:output:0&message_layer/GatherV2_2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:????????? 2
message_layer/GatherV2_2?
message_layer/ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :2 
message_layer/ExpandDims_2/dim?
message_layer/ExpandDims_2
ExpandDims!message_layer/GatherV2_2:output:0'message_layer/ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:????????? 2
message_layer/ExpandDims_2?
message_layer/MatMul_2BatchMatMulV23bond_embedding/embedding_lookup/Identity_1:output:0#message_layer/ExpandDims_2:output:0*
T0*+
_output_shapes
:????????? 2
message_layer/MatMul_2}
message_layer/Shape_2Shapemessage_layer/MatMul_2:output:0*
T0*
_output_shapes
:2
message_layer/Shape_2?
message_layer/Squeeze_2Squeezemessage_layer/MatMul_2:output:0*
T0*'
_output_shapes
:????????? *
squeeze_dims

?????????2
message_layer/Squeeze_2?
message_layer/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
message_layer/dropout_2/Const?
message_layer/dropout_2/MulMul message_layer/Squeeze_2:output:0&message_layer/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2
message_layer/dropout_2/Mul?
message_layer/dropout_2/ShapeShape message_layer/Squeeze_2:output:0*
T0*
_output_shapes
:2
message_layer/dropout_2/Shape?
4message_layer/dropout_2/random_uniform/RandomUniformRandomUniform&message_layer/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*

seed*
seed2???26
4message_layer/dropout_2/random_uniform/RandomUniform?
&message_layer/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2(
&message_layer/dropout_2/GreaterEqual/y?
$message_layer/dropout_2/GreaterEqualGreaterEqual=message_layer/dropout_2/random_uniform/RandomUniform:output:0/message_layer/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2&
$message_layer/dropout_2/GreaterEqual?
message_layer/dropout_2/CastCast(message_layer/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
message_layer/dropout_2/Cast?
message_layer/dropout_2/Mul_1Mulmessage_layer/dropout_2/Mul:z:0 message_layer/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2
message_layer/dropout_2/Mul_1?
#message_layer/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        2%
#message_layer/strided_slice_5/stack?
%message_layer/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2'
%message_layer/strided_slice_5/stack_1?
%message_layer/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%message_layer/strided_slice_5/stack_2?
message_layer/strided_slice_5StridedSliceinputs_3,message_layer/strided_slice_5/stack:output:0.message_layer/strided_slice_5/stack_1:output:0.message_layer/strided_slice_5/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
message_layer/strided_slice_5?
message_layer/SegmentSum_2
SegmentSum!message_layer/dropout_2/Mul_1:z:0&message_layer/strided_slice_5:output:0*
T0*
Tindices0*'
_output_shapes
:????????? 2
message_layer/SegmentSum_2?
gru_step/ReadVariableOp_2ReadVariableOp gru_step_readvariableop_resource*
_output_shapes

:`*
dtype02
gru_step/ReadVariableOp_2?
gru_step/unstack_2Unpack!gru_step/ReadVariableOp_2:value:0*
T0* 
_output_shapes
:`:`*	
num2
gru_step/unstack_2?
 gru_step/MatMul_4/ReadVariableOpReadVariableOp'gru_step_matmul_readvariableop_resource*
_output_shapes

: `*
dtype02"
 gru_step/MatMul_4/ReadVariableOp?
gru_step/MatMul_4MatMul#message_layer/SegmentSum_2:output:0(gru_step/MatMul_4/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2
gru_step/MatMul_4?
gru_step/BiasAdd_4BiasAddgru_step/MatMul_4:product:0gru_step/unstack_2:output:0*
T0*'
_output_shapes
:?????????`2
gru_step/BiasAdd_4?
gru_step/split_4/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_step/split_4/split_dim?
gru_step/split_4Split#gru_step/split_4/split_dim:output:0gru_step/BiasAdd_4:output:0*
T0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
gru_step/split_4?
 gru_step/MatMul_5/ReadVariableOpReadVariableOp)gru_step_matmul_1_readvariableop_resource*
_output_shapes

: `*
dtype02"
 gru_step/MatMul_5/ReadVariableOp?
gru_step/MatMul_5MatMulgru_step/add_7:z:0(gru_step/MatMul_5/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2
gru_step/MatMul_5?
gru_step/BiasAdd_5BiasAddgru_step/MatMul_5:product:0gru_step/unstack_2:output:1*
T0*'
_output_shapes
:?????????`2
gru_step/BiasAdd_5y
gru_step/Const_2Const*
_output_shapes
:*
dtype0*!
valueB"        ????2
gru_step/Const_2?
gru_step/split_5/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_step/split_5/split_dim?
gru_step/split_5SplitVgru_step/BiasAdd_5:output:0gru_step/Const_2:output:0#gru_step/split_5/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
gru_step/split_5?
gru_step/add_8AddV2gru_step/split_4:output:0gru_step/split_5:output:0*
T0*'
_output_shapes
:????????? 2
gru_step/add_8y
gru_step/Sigmoid_4Sigmoidgru_step/add_8:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Sigmoid_4?
gru_step/add_9AddV2gru_step/split_4:output:1gru_step/split_5:output:1*
T0*'
_output_shapes
:????????? 2
gru_step/add_9y
gru_step/Sigmoid_5Sigmoidgru_step/add_9:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Sigmoid_5?
gru_step/mul_6Mulgru_step/Sigmoid_5:y:0gru_step/split_5:output:2*
T0*'
_output_shapes
:????????? 2
gru_step/mul_6?
gru_step/add_10AddV2gru_step/split_4:output:2gru_step/mul_6:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/add_10q
gru_step/Tanh_2Tanhgru_step/add_10:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Tanh_2?
gru_step/mul_7Mulgru_step/Sigmoid_4:y:0gru_step/add_7:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/mul_7i
gru_step/sub_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_step/sub_2/x?
gru_step/sub_2Subgru_step/sub_2/x:output:0gru_step/Sigmoid_4:y:0*
T0*'
_output_shapes
:????????? 2
gru_step/sub_2?
gru_step/mul_8Mulgru_step/sub_2:z:0gru_step/Tanh_2:y:0*
T0*'
_output_shapes
:????????? 2
gru_step/mul_8?
gru_step/add_11AddV2gru_step/mul_7:z:0gru_step/mul_8:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/add_11?
#message_layer/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"       2%
#message_layer/strided_slice_6/stack?
%message_layer/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2'
%message_layer/strided_slice_6/stack_1?
%message_layer/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%message_layer/strided_slice_6/stack_2?
message_layer/strided_slice_6StridedSliceinputs_3,message_layer/strided_slice_6/stack:output:0.message_layer/strided_slice_6/stack_1:output:0.message_layer/strided_slice_6/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
message_layer/strided_slice_6?
message_layer/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
message_layer/GatherV2_3/axis?
message_layer/GatherV2_3GatherV2gru_step/add_11:z:0&message_layer/strided_slice_6:output:0&message_layer/GatherV2_3/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:????????? 2
message_layer/GatherV2_3?
message_layer/ExpandDims_3/dimConst*
_output_shapes
: *
dtype0*
value	B :2 
message_layer/ExpandDims_3/dim?
message_layer/ExpandDims_3
ExpandDims!message_layer/GatherV2_3:output:0'message_layer/ExpandDims_3/dim:output:0*
T0*+
_output_shapes
:????????? 2
message_layer/ExpandDims_3?
message_layer/MatMul_3BatchMatMulV23bond_embedding/embedding_lookup/Identity_1:output:0#message_layer/ExpandDims_3:output:0*
T0*+
_output_shapes
:????????? 2
message_layer/MatMul_3}
message_layer/Shape_3Shapemessage_layer/MatMul_3:output:0*
T0*
_output_shapes
:2
message_layer/Shape_3?
message_layer/Squeeze_3Squeezemessage_layer/MatMul_3:output:0*
T0*'
_output_shapes
:????????? *
squeeze_dims

?????????2
message_layer/Squeeze_3?
message_layer/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
message_layer/dropout_3/Const?
message_layer/dropout_3/MulMul message_layer/Squeeze_3:output:0&message_layer/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2
message_layer/dropout_3/Mul?
message_layer/dropout_3/ShapeShape message_layer/Squeeze_3:output:0*
T0*
_output_shapes
:2
message_layer/dropout_3/Shape?
4message_layer/dropout_3/random_uniform/RandomUniformRandomUniform&message_layer/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*

seed*
seed2???26
4message_layer/dropout_3/random_uniform/RandomUniform?
&message_layer/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2(
&message_layer/dropout_3/GreaterEqual/y?
$message_layer/dropout_3/GreaterEqualGreaterEqual=message_layer/dropout_3/random_uniform/RandomUniform:output:0/message_layer/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2&
$message_layer/dropout_3/GreaterEqual?
message_layer/dropout_3/CastCast(message_layer/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
message_layer/dropout_3/Cast?
message_layer/dropout_3/Mul_1Mulmessage_layer/dropout_3/Mul:z:0 message_layer/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2
message_layer/dropout_3/Mul_1?
#message_layer/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"        2%
#message_layer/strided_slice_7/stack?
%message_layer/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2'
%message_layer/strided_slice_7/stack_1?
%message_layer/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%message_layer/strided_slice_7/stack_2?
message_layer/strided_slice_7StridedSliceinputs_3,message_layer/strided_slice_7/stack:output:0.message_layer/strided_slice_7/stack_1:output:0.message_layer/strided_slice_7/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
message_layer/strided_slice_7?
message_layer/SegmentSum_3
SegmentSum!message_layer/dropout_3/Mul_1:z:0&message_layer/strided_slice_7:output:0*
T0*
Tindices0*'
_output_shapes
:????????? 2
message_layer/SegmentSum_3?
gru_step/ReadVariableOp_3ReadVariableOp gru_step_readvariableop_resource*
_output_shapes

:`*
dtype02
gru_step/ReadVariableOp_3?
gru_step/unstack_3Unpack!gru_step/ReadVariableOp_3:value:0*
T0* 
_output_shapes
:`:`*	
num2
gru_step/unstack_3?
 gru_step/MatMul_6/ReadVariableOpReadVariableOp'gru_step_matmul_readvariableop_resource*
_output_shapes

: `*
dtype02"
 gru_step/MatMul_6/ReadVariableOp?
gru_step/MatMul_6MatMul#message_layer/SegmentSum_3:output:0(gru_step/MatMul_6/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2
gru_step/MatMul_6?
gru_step/BiasAdd_6BiasAddgru_step/MatMul_6:product:0gru_step/unstack_3:output:0*
T0*'
_output_shapes
:?????????`2
gru_step/BiasAdd_6?
gru_step/split_6/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_step/split_6/split_dim?
gru_step/split_6Split#gru_step/split_6/split_dim:output:0gru_step/BiasAdd_6:output:0*
T0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
gru_step/split_6?
 gru_step/MatMul_7/ReadVariableOpReadVariableOp)gru_step_matmul_1_readvariableop_resource*
_output_shapes

: `*
dtype02"
 gru_step/MatMul_7/ReadVariableOp?
gru_step/MatMul_7MatMulgru_step/add_11:z:0(gru_step/MatMul_7/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2
gru_step/MatMul_7?
gru_step/BiasAdd_7BiasAddgru_step/MatMul_7:product:0gru_step/unstack_3:output:1*
T0*'
_output_shapes
:?????????`2
gru_step/BiasAdd_7y
gru_step/Const_3Const*
_output_shapes
:*
dtype0*!
valueB"        ????2
gru_step/Const_3?
gru_step/split_7/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_step/split_7/split_dim?
gru_step/split_7SplitVgru_step/BiasAdd_7:output:0gru_step/Const_3:output:0#gru_step/split_7/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
gru_step/split_7?
gru_step/add_12AddV2gru_step/split_6:output:0gru_step/split_7:output:0*
T0*'
_output_shapes
:????????? 2
gru_step/add_12z
gru_step/Sigmoid_6Sigmoidgru_step/add_12:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Sigmoid_6?
gru_step/add_13AddV2gru_step/split_6:output:1gru_step/split_7:output:1*
T0*'
_output_shapes
:????????? 2
gru_step/add_13z
gru_step/Sigmoid_7Sigmoidgru_step/add_13:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Sigmoid_7?
gru_step/mul_9Mulgru_step/Sigmoid_7:y:0gru_step/split_7:output:2*
T0*'
_output_shapes
:????????? 2
gru_step/mul_9?
gru_step/add_14AddV2gru_step/split_6:output:2gru_step/mul_9:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/add_14q
gru_step/Tanh_3Tanhgru_step/add_14:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Tanh_3?
gru_step/mul_10Mulgru_step/Sigmoid_6:y:0gru_step/add_11:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/mul_10i
gru_step/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_step/sub_3/x?
gru_step/sub_3Subgru_step/sub_3/x:output:0gru_step/Sigmoid_6:y:0*
T0*'
_output_shapes
:????????? 2
gru_step/sub_3?
gru_step/mul_11Mulgru_step/sub_3:z:0gru_step/Tanh_3:y:0*
T0*'
_output_shapes
:????????? 2
gru_step/mul_11?
gru_step/add_15AddV2gru_step/mul_10:z:0gru_step/mul_11:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/add_15?
#message_layer/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB"       2%
#message_layer/strided_slice_8/stack?
%message_layer/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2'
%message_layer/strided_slice_8/stack_1?
%message_layer/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%message_layer/strided_slice_8/stack_2?
message_layer/strided_slice_8StridedSliceinputs_3,message_layer/strided_slice_8/stack:output:0.message_layer/strided_slice_8/stack_1:output:0.message_layer/strided_slice_8/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
message_layer/strided_slice_8?
message_layer/GatherV2_4/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
message_layer/GatherV2_4/axis?
message_layer/GatherV2_4GatherV2gru_step/add_15:z:0&message_layer/strided_slice_8:output:0&message_layer/GatherV2_4/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:????????? 2
message_layer/GatherV2_4?
message_layer/ExpandDims_4/dimConst*
_output_shapes
: *
dtype0*
value	B :2 
message_layer/ExpandDims_4/dim?
message_layer/ExpandDims_4
ExpandDims!message_layer/GatherV2_4:output:0'message_layer/ExpandDims_4/dim:output:0*
T0*+
_output_shapes
:????????? 2
message_layer/ExpandDims_4?
message_layer/MatMul_4BatchMatMulV23bond_embedding/embedding_lookup/Identity_1:output:0#message_layer/ExpandDims_4:output:0*
T0*+
_output_shapes
:????????? 2
message_layer/MatMul_4}
message_layer/Shape_4Shapemessage_layer/MatMul_4:output:0*
T0*
_output_shapes
:2
message_layer/Shape_4?
message_layer/Squeeze_4Squeezemessage_layer/MatMul_4:output:0*
T0*'
_output_shapes
:????????? *
squeeze_dims

?????????2
message_layer/Squeeze_4?
message_layer/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
message_layer/dropout_4/Const?
message_layer/dropout_4/MulMul message_layer/Squeeze_4:output:0&message_layer/dropout_4/Const:output:0*
T0*'
_output_shapes
:????????? 2
message_layer/dropout_4/Mul?
message_layer/dropout_4/ShapeShape message_layer/Squeeze_4:output:0*
T0*
_output_shapes
:2
message_layer/dropout_4/Shape?
4message_layer/dropout_4/random_uniform/RandomUniformRandomUniform&message_layer/dropout_4/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*

seed*
seed2???26
4message_layer/dropout_4/random_uniform/RandomUniform?
&message_layer/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2(
&message_layer/dropout_4/GreaterEqual/y?
$message_layer/dropout_4/GreaterEqualGreaterEqual=message_layer/dropout_4/random_uniform/RandomUniform:output:0/message_layer/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2&
$message_layer/dropout_4/GreaterEqual?
message_layer/dropout_4/CastCast(message_layer/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
message_layer/dropout_4/Cast?
message_layer/dropout_4/Mul_1Mulmessage_layer/dropout_4/Mul:z:0 message_layer/dropout_4/Cast:y:0*
T0*'
_output_shapes
:????????? 2
message_layer/dropout_4/Mul_1?
#message_layer/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB"        2%
#message_layer/strided_slice_9/stack?
%message_layer/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2'
%message_layer/strided_slice_9/stack_1?
%message_layer/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%message_layer/strided_slice_9/stack_2?
message_layer/strided_slice_9StridedSliceinputs_3,message_layer/strided_slice_9/stack:output:0.message_layer/strided_slice_9/stack_1:output:0.message_layer/strided_slice_9/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
message_layer/strided_slice_9?
message_layer/SegmentSum_4
SegmentSum!message_layer/dropout_4/Mul_1:z:0&message_layer/strided_slice_9:output:0*
T0*
Tindices0*'
_output_shapes
:????????? 2
message_layer/SegmentSum_4?
gru_step/ReadVariableOp_4ReadVariableOp gru_step_readvariableop_resource*
_output_shapes

:`*
dtype02
gru_step/ReadVariableOp_4?
gru_step/unstack_4Unpack!gru_step/ReadVariableOp_4:value:0*
T0* 
_output_shapes
:`:`*	
num2
gru_step/unstack_4?
 gru_step/MatMul_8/ReadVariableOpReadVariableOp'gru_step_matmul_readvariableop_resource*
_output_shapes

: `*
dtype02"
 gru_step/MatMul_8/ReadVariableOp?
gru_step/MatMul_8MatMul#message_layer/SegmentSum_4:output:0(gru_step/MatMul_8/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2
gru_step/MatMul_8?
gru_step/BiasAdd_8BiasAddgru_step/MatMul_8:product:0gru_step/unstack_4:output:0*
T0*'
_output_shapes
:?????????`2
gru_step/BiasAdd_8?
gru_step/split_8/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_step/split_8/split_dim?
gru_step/split_8Split#gru_step/split_8/split_dim:output:0gru_step/BiasAdd_8:output:0*
T0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
gru_step/split_8?
 gru_step/MatMul_9/ReadVariableOpReadVariableOp)gru_step_matmul_1_readvariableop_resource*
_output_shapes

: `*
dtype02"
 gru_step/MatMul_9/ReadVariableOp?
gru_step/MatMul_9MatMulgru_step/add_15:z:0(gru_step/MatMul_9/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2
gru_step/MatMul_9?
gru_step/BiasAdd_9BiasAddgru_step/MatMul_9:product:0gru_step/unstack_4:output:1*
T0*'
_output_shapes
:?????????`2
gru_step/BiasAdd_9y
gru_step/Const_4Const*
_output_shapes
:*
dtype0*!
valueB"        ????2
gru_step/Const_4?
gru_step/split_9/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_step/split_9/split_dim?
gru_step/split_9SplitVgru_step/BiasAdd_9:output:0gru_step/Const_4:output:0#gru_step/split_9/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
gru_step/split_9?
gru_step/add_16AddV2gru_step/split_8:output:0gru_step/split_9:output:0*
T0*'
_output_shapes
:????????? 2
gru_step/add_16z
gru_step/Sigmoid_8Sigmoidgru_step/add_16:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Sigmoid_8?
gru_step/add_17AddV2gru_step/split_8:output:1gru_step/split_9:output:1*
T0*'
_output_shapes
:????????? 2
gru_step/add_17z
gru_step/Sigmoid_9Sigmoidgru_step/add_17:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Sigmoid_9?
gru_step/mul_12Mulgru_step/Sigmoid_9:y:0gru_step/split_9:output:2*
T0*'
_output_shapes
:????????? 2
gru_step/mul_12?
gru_step/add_18AddV2gru_step/split_8:output:2gru_step/mul_12:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/add_18q
gru_step/Tanh_4Tanhgru_step/add_18:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Tanh_4?
gru_step/mul_13Mulgru_step/Sigmoid_8:y:0gru_step/add_15:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/mul_13i
gru_step/sub_4/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_step/sub_4/x?
gru_step/sub_4Subgru_step/sub_4/x:output:0gru_step/Sigmoid_8:y:0*
T0*'
_output_shapes
:????????? 2
gru_step/sub_4?
gru_step/mul_14Mulgru_step/sub_4:z:0gru_step/Tanh_4:y:0*
T0*'
_output_shapes
:????????? 2
gru_step/mul_14?
gru_step/add_19AddV2gru_step/mul_13:z:0gru_step/mul_14:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/add_19?
$message_layer/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"       2&
$message_layer/strided_slice_10/stack?
&message_layer/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&message_layer/strided_slice_10/stack_1?
&message_layer/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&message_layer/strided_slice_10/stack_2?
message_layer/strided_slice_10StridedSliceinputs_3-message_layer/strided_slice_10/stack:output:0/message_layer/strided_slice_10/stack_1:output:0/message_layer/strided_slice_10/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2 
message_layer/strided_slice_10?
message_layer/GatherV2_5/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
message_layer/GatherV2_5/axis?
message_layer/GatherV2_5GatherV2gru_step/add_19:z:0'message_layer/strided_slice_10:output:0&message_layer/GatherV2_5/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:????????? 2
message_layer/GatherV2_5?
message_layer/ExpandDims_5/dimConst*
_output_shapes
: *
dtype0*
value	B :2 
message_layer/ExpandDims_5/dim?
message_layer/ExpandDims_5
ExpandDims!message_layer/GatherV2_5:output:0'message_layer/ExpandDims_5/dim:output:0*
T0*+
_output_shapes
:????????? 2
message_layer/ExpandDims_5?
message_layer/MatMul_5BatchMatMulV23bond_embedding/embedding_lookup/Identity_1:output:0#message_layer/ExpandDims_5:output:0*
T0*+
_output_shapes
:????????? 2
message_layer/MatMul_5}
message_layer/Shape_5Shapemessage_layer/MatMul_5:output:0*
T0*
_output_shapes
:2
message_layer/Shape_5?
message_layer/Squeeze_5Squeezemessage_layer/MatMul_5:output:0*
T0*'
_output_shapes
:????????? *
squeeze_dims

?????????2
message_layer/Squeeze_5?
message_layer/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
message_layer/dropout_5/Const?
message_layer/dropout_5/MulMul message_layer/Squeeze_5:output:0&message_layer/dropout_5/Const:output:0*
T0*'
_output_shapes
:????????? 2
message_layer/dropout_5/Mul?
message_layer/dropout_5/ShapeShape message_layer/Squeeze_5:output:0*
T0*
_output_shapes
:2
message_layer/dropout_5/Shape?
4message_layer/dropout_5/random_uniform/RandomUniformRandomUniform&message_layer/dropout_5/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*

seed*
seed2??s26
4message_layer/dropout_5/random_uniform/RandomUniform?
&message_layer/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2(
&message_layer/dropout_5/GreaterEqual/y?
$message_layer/dropout_5/GreaterEqualGreaterEqual=message_layer/dropout_5/random_uniform/RandomUniform:output:0/message_layer/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2&
$message_layer/dropout_5/GreaterEqual?
message_layer/dropout_5/CastCast(message_layer/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
message_layer/dropout_5/Cast?
message_layer/dropout_5/Mul_1Mulmessage_layer/dropout_5/Mul:z:0 message_layer/dropout_5/Cast:y:0*
T0*'
_output_shapes
:????????? 2
message_layer/dropout_5/Mul_1?
$message_layer/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$message_layer/strided_slice_11/stack?
&message_layer/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&message_layer/strided_slice_11/stack_1?
&message_layer/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&message_layer/strided_slice_11/stack_2?
message_layer/strided_slice_11StridedSliceinputs_3-message_layer/strided_slice_11/stack:output:0/message_layer/strided_slice_11/stack_1:output:0/message_layer/strided_slice_11/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2 
message_layer/strided_slice_11?
message_layer/SegmentSum_5
SegmentSum!message_layer/dropout_5/Mul_1:z:0'message_layer/strided_slice_11:output:0*
T0*
Tindices0*'
_output_shapes
:????????? 2
message_layer/SegmentSum_5?
gru_step/ReadVariableOp_5ReadVariableOp gru_step_readvariableop_resource*
_output_shapes

:`*
dtype02
gru_step/ReadVariableOp_5?
gru_step/unstack_5Unpack!gru_step/ReadVariableOp_5:value:0*
T0* 
_output_shapes
:`:`*	
num2
gru_step/unstack_5?
!gru_step/MatMul_10/ReadVariableOpReadVariableOp'gru_step_matmul_readvariableop_resource*
_output_shapes

: `*
dtype02#
!gru_step/MatMul_10/ReadVariableOp?
gru_step/MatMul_10MatMul#message_layer/SegmentSum_5:output:0)gru_step/MatMul_10/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2
gru_step/MatMul_10?
gru_step/BiasAdd_10BiasAddgru_step/MatMul_10:product:0gru_step/unstack_5:output:0*
T0*'
_output_shapes
:?????????`2
gru_step/BiasAdd_10?
gru_step/split_10/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_step/split_10/split_dim?
gru_step/split_10Split$gru_step/split_10/split_dim:output:0gru_step/BiasAdd_10:output:0*
T0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
gru_step/split_10?
!gru_step/MatMul_11/ReadVariableOpReadVariableOp)gru_step_matmul_1_readvariableop_resource*
_output_shapes

: `*
dtype02#
!gru_step/MatMul_11/ReadVariableOp?
gru_step/MatMul_11MatMulgru_step/add_19:z:0)gru_step/MatMul_11/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2
gru_step/MatMul_11?
gru_step/BiasAdd_11BiasAddgru_step/MatMul_11:product:0gru_step/unstack_5:output:1*
T0*'
_output_shapes
:?????????`2
gru_step/BiasAdd_11y
gru_step/Const_5Const*
_output_shapes
:*
dtype0*!
valueB"        ????2
gru_step/Const_5?
gru_step/split_11/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_step/split_11/split_dim?
gru_step/split_11SplitVgru_step/BiasAdd_11:output:0gru_step/Const_5:output:0$gru_step/split_11/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
gru_step/split_11?
gru_step/add_20AddV2gru_step/split_10:output:0gru_step/split_11:output:0*
T0*'
_output_shapes
:????????? 2
gru_step/add_20|
gru_step/Sigmoid_10Sigmoidgru_step/add_20:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Sigmoid_10?
gru_step/add_21AddV2gru_step/split_10:output:1gru_step/split_11:output:1*
T0*'
_output_shapes
:????????? 2
gru_step/add_21|
gru_step/Sigmoid_11Sigmoidgru_step/add_21:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Sigmoid_11?
gru_step/mul_15Mulgru_step/Sigmoid_11:y:0gru_step/split_11:output:2*
T0*'
_output_shapes
:????????? 2
gru_step/mul_15?
gru_step/add_22AddV2gru_step/split_10:output:2gru_step/mul_15:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/add_22q
gru_step/Tanh_5Tanhgru_step/add_22:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Tanh_5?
gru_step/mul_16Mulgru_step/Sigmoid_10:y:0gru_step/add_19:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/mul_16i
gru_step/sub_5/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_step/sub_5/x?
gru_step/sub_5Subgru_step/sub_5/x:output:0gru_step/Sigmoid_10:y:0*
T0*'
_output_shapes
:????????? 2
gru_step/sub_5?
gru_step/mul_17Mulgru_step/sub_5:z:0gru_step/Tanh_5:y:0*
T0*'
_output_shapes
:????????? 2
gru_step/mul_17?
gru_step/add_23AddV2gru_step/mul_16:z:0gru_step/mul_17:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/add_23?
$message_layer/strided_slice_12/stackConst*
_output_shapes
:*
dtype0*
valueB"       2&
$message_layer/strided_slice_12/stack?
&message_layer/strided_slice_12/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&message_layer/strided_slice_12/stack_1?
&message_layer/strided_slice_12/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&message_layer/strided_slice_12/stack_2?
message_layer/strided_slice_12StridedSliceinputs_3-message_layer/strided_slice_12/stack:output:0/message_layer/strided_slice_12/stack_1:output:0/message_layer/strided_slice_12/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2 
message_layer/strided_slice_12?
message_layer/GatherV2_6/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
message_layer/GatherV2_6/axis?
message_layer/GatherV2_6GatherV2gru_step/add_23:z:0'message_layer/strided_slice_12:output:0&message_layer/GatherV2_6/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:????????? 2
message_layer/GatherV2_6?
message_layer/ExpandDims_6/dimConst*
_output_shapes
: *
dtype0*
value	B :2 
message_layer/ExpandDims_6/dim?
message_layer/ExpandDims_6
ExpandDims!message_layer/GatherV2_6:output:0'message_layer/ExpandDims_6/dim:output:0*
T0*+
_output_shapes
:????????? 2
message_layer/ExpandDims_6?
message_layer/MatMul_6BatchMatMulV23bond_embedding/embedding_lookup/Identity_1:output:0#message_layer/ExpandDims_6:output:0*
T0*+
_output_shapes
:????????? 2
message_layer/MatMul_6}
message_layer/Shape_6Shapemessage_layer/MatMul_6:output:0*
T0*
_output_shapes
:2
message_layer/Shape_6?
message_layer/Squeeze_6Squeezemessage_layer/MatMul_6:output:0*
T0*'
_output_shapes
:????????? *
squeeze_dims

?????????2
message_layer/Squeeze_6?
message_layer/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
message_layer/dropout_6/Const?
message_layer/dropout_6/MulMul message_layer/Squeeze_6:output:0&message_layer/dropout_6/Const:output:0*
T0*'
_output_shapes
:????????? 2
message_layer/dropout_6/Mul?
message_layer/dropout_6/ShapeShape message_layer/Squeeze_6:output:0*
T0*
_output_shapes
:2
message_layer/dropout_6/Shape?
4message_layer/dropout_6/random_uniform/RandomUniformRandomUniform&message_layer/dropout_6/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*

seed*
seed2???26
4message_layer/dropout_6/random_uniform/RandomUniform?
&message_layer/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2(
&message_layer/dropout_6/GreaterEqual/y?
$message_layer/dropout_6/GreaterEqualGreaterEqual=message_layer/dropout_6/random_uniform/RandomUniform:output:0/message_layer/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2&
$message_layer/dropout_6/GreaterEqual?
message_layer/dropout_6/CastCast(message_layer/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
message_layer/dropout_6/Cast?
message_layer/dropout_6/Mul_1Mulmessage_layer/dropout_6/Mul:z:0 message_layer/dropout_6/Cast:y:0*
T0*'
_output_shapes
:????????? 2
message_layer/dropout_6/Mul_1?
$message_layer/strided_slice_13/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$message_layer/strided_slice_13/stack?
&message_layer/strided_slice_13/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&message_layer/strided_slice_13/stack_1?
&message_layer/strided_slice_13/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&message_layer/strided_slice_13/stack_2?
message_layer/strided_slice_13StridedSliceinputs_3-message_layer/strided_slice_13/stack:output:0/message_layer/strided_slice_13/stack_1:output:0/message_layer/strided_slice_13/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2 
message_layer/strided_slice_13?
message_layer/SegmentSum_6
SegmentSum!message_layer/dropout_6/Mul_1:z:0'message_layer/strided_slice_13:output:0*
T0*
Tindices0*'
_output_shapes
:????????? 2
message_layer/SegmentSum_6?
gru_step/ReadVariableOp_6ReadVariableOp gru_step_readvariableop_resource*
_output_shapes

:`*
dtype02
gru_step/ReadVariableOp_6?
gru_step/unstack_6Unpack!gru_step/ReadVariableOp_6:value:0*
T0* 
_output_shapes
:`:`*	
num2
gru_step/unstack_6?
!gru_step/MatMul_12/ReadVariableOpReadVariableOp'gru_step_matmul_readvariableop_resource*
_output_shapes

: `*
dtype02#
!gru_step/MatMul_12/ReadVariableOp?
gru_step/MatMul_12MatMul#message_layer/SegmentSum_6:output:0)gru_step/MatMul_12/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2
gru_step/MatMul_12?
gru_step/BiasAdd_12BiasAddgru_step/MatMul_12:product:0gru_step/unstack_6:output:0*
T0*'
_output_shapes
:?????????`2
gru_step/BiasAdd_12?
gru_step/split_12/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_step/split_12/split_dim?
gru_step/split_12Split$gru_step/split_12/split_dim:output:0gru_step/BiasAdd_12:output:0*
T0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
gru_step/split_12?
!gru_step/MatMul_13/ReadVariableOpReadVariableOp)gru_step_matmul_1_readvariableop_resource*
_output_shapes

: `*
dtype02#
!gru_step/MatMul_13/ReadVariableOp?
gru_step/MatMul_13MatMulgru_step/add_23:z:0)gru_step/MatMul_13/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2
gru_step/MatMul_13?
gru_step/BiasAdd_13BiasAddgru_step/MatMul_13:product:0gru_step/unstack_6:output:1*
T0*'
_output_shapes
:?????????`2
gru_step/BiasAdd_13y
gru_step/Const_6Const*
_output_shapes
:*
dtype0*!
valueB"        ????2
gru_step/Const_6?
gru_step/split_13/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_step/split_13/split_dim?
gru_step/split_13SplitVgru_step/BiasAdd_13:output:0gru_step/Const_6:output:0$gru_step/split_13/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
gru_step/split_13?
gru_step/add_24AddV2gru_step/split_12:output:0gru_step/split_13:output:0*
T0*'
_output_shapes
:????????? 2
gru_step/add_24|
gru_step/Sigmoid_12Sigmoidgru_step/add_24:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Sigmoid_12?
gru_step/add_25AddV2gru_step/split_12:output:1gru_step/split_13:output:1*
T0*'
_output_shapes
:????????? 2
gru_step/add_25|
gru_step/Sigmoid_13Sigmoidgru_step/add_25:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Sigmoid_13?
gru_step/mul_18Mulgru_step/Sigmoid_13:y:0gru_step/split_13:output:2*
T0*'
_output_shapes
:????????? 2
gru_step/mul_18?
gru_step/add_26AddV2gru_step/split_12:output:2gru_step/mul_18:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/add_26q
gru_step/Tanh_6Tanhgru_step/add_26:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Tanh_6?
gru_step/mul_19Mulgru_step/Sigmoid_12:y:0gru_step/add_23:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/mul_19i
gru_step/sub_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_step/sub_6/x?
gru_step/sub_6Subgru_step/sub_6/x:output:0gru_step/Sigmoid_12:y:0*
T0*'
_output_shapes
:????????? 2
gru_step/sub_6?
gru_step/mul_20Mulgru_step/sub_6:z:0gru_step/Tanh_6:y:0*
T0*'
_output_shapes
:????????? 2
gru_step/mul_20?
gru_step/add_27AddV2gru_step/mul_19:z:0gru_step/mul_20:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/add_27?
$message_layer/strided_slice_14/stackConst*
_output_shapes
:*
dtype0*
valueB"       2&
$message_layer/strided_slice_14/stack?
&message_layer/strided_slice_14/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&message_layer/strided_slice_14/stack_1?
&message_layer/strided_slice_14/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&message_layer/strided_slice_14/stack_2?
message_layer/strided_slice_14StridedSliceinputs_3-message_layer/strided_slice_14/stack:output:0/message_layer/strided_slice_14/stack_1:output:0/message_layer/strided_slice_14/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2 
message_layer/strided_slice_14?
message_layer/GatherV2_7/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
message_layer/GatherV2_7/axis?
message_layer/GatherV2_7GatherV2gru_step/add_27:z:0'message_layer/strided_slice_14:output:0&message_layer/GatherV2_7/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:????????? 2
message_layer/GatherV2_7?
message_layer/ExpandDims_7/dimConst*
_output_shapes
: *
dtype0*
value	B :2 
message_layer/ExpandDims_7/dim?
message_layer/ExpandDims_7
ExpandDims!message_layer/GatherV2_7:output:0'message_layer/ExpandDims_7/dim:output:0*
T0*+
_output_shapes
:????????? 2
message_layer/ExpandDims_7?
message_layer/MatMul_7BatchMatMulV23bond_embedding/embedding_lookup/Identity_1:output:0#message_layer/ExpandDims_7:output:0*
T0*+
_output_shapes
:????????? 2
message_layer/MatMul_7}
message_layer/Shape_7Shapemessage_layer/MatMul_7:output:0*
T0*
_output_shapes
:2
message_layer/Shape_7?
message_layer/Squeeze_7Squeezemessage_layer/MatMul_7:output:0*
T0*'
_output_shapes
:????????? *
squeeze_dims

?????????2
message_layer/Squeeze_7?
message_layer/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
message_layer/dropout_7/Const?
message_layer/dropout_7/MulMul message_layer/Squeeze_7:output:0&message_layer/dropout_7/Const:output:0*
T0*'
_output_shapes
:????????? 2
message_layer/dropout_7/Mul?
message_layer/dropout_7/ShapeShape message_layer/Squeeze_7:output:0*
T0*
_output_shapes
:2
message_layer/dropout_7/Shape?
4message_layer/dropout_7/random_uniform/RandomUniformRandomUniform&message_layer/dropout_7/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*

seed*
seed2?ݫ26
4message_layer/dropout_7/random_uniform/RandomUniform?
&message_layer/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2(
&message_layer/dropout_7/GreaterEqual/y?
$message_layer/dropout_7/GreaterEqualGreaterEqual=message_layer/dropout_7/random_uniform/RandomUniform:output:0/message_layer/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2&
$message_layer/dropout_7/GreaterEqual?
message_layer/dropout_7/CastCast(message_layer/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
message_layer/dropout_7/Cast?
message_layer/dropout_7/Mul_1Mulmessage_layer/dropout_7/Mul:z:0 message_layer/dropout_7/Cast:y:0*
T0*'
_output_shapes
:????????? 2
message_layer/dropout_7/Mul_1?
$message_layer/strided_slice_15/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$message_layer/strided_slice_15/stack?
&message_layer/strided_slice_15/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&message_layer/strided_slice_15/stack_1?
&message_layer/strided_slice_15/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&message_layer/strided_slice_15/stack_2?
message_layer/strided_slice_15StridedSliceinputs_3-message_layer/strided_slice_15/stack:output:0/message_layer/strided_slice_15/stack_1:output:0/message_layer/strided_slice_15/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2 
message_layer/strided_slice_15?
message_layer/SegmentSum_7
SegmentSum!message_layer/dropout_7/Mul_1:z:0'message_layer/strided_slice_15:output:0*
T0*
Tindices0*'
_output_shapes
:????????? 2
message_layer/SegmentSum_7?
gru_step/ReadVariableOp_7ReadVariableOp gru_step_readvariableop_resource*
_output_shapes

:`*
dtype02
gru_step/ReadVariableOp_7?
gru_step/unstack_7Unpack!gru_step/ReadVariableOp_7:value:0*
T0* 
_output_shapes
:`:`*	
num2
gru_step/unstack_7?
!gru_step/MatMul_14/ReadVariableOpReadVariableOp'gru_step_matmul_readvariableop_resource*
_output_shapes

: `*
dtype02#
!gru_step/MatMul_14/ReadVariableOp?
gru_step/MatMul_14MatMul#message_layer/SegmentSum_7:output:0)gru_step/MatMul_14/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2
gru_step/MatMul_14?
gru_step/BiasAdd_14BiasAddgru_step/MatMul_14:product:0gru_step/unstack_7:output:0*
T0*'
_output_shapes
:?????????`2
gru_step/BiasAdd_14?
gru_step/split_14/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_step/split_14/split_dim?
gru_step/split_14Split$gru_step/split_14/split_dim:output:0gru_step/BiasAdd_14:output:0*
T0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
gru_step/split_14?
!gru_step/MatMul_15/ReadVariableOpReadVariableOp)gru_step_matmul_1_readvariableop_resource*
_output_shapes

: `*
dtype02#
!gru_step/MatMul_15/ReadVariableOp?
gru_step/MatMul_15MatMulgru_step/add_27:z:0)gru_step/MatMul_15/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2
gru_step/MatMul_15?
gru_step/BiasAdd_15BiasAddgru_step/MatMul_15:product:0gru_step/unstack_7:output:1*
T0*'
_output_shapes
:?????????`2
gru_step/BiasAdd_15y
gru_step/Const_7Const*
_output_shapes
:*
dtype0*!
valueB"        ????2
gru_step/Const_7?
gru_step/split_15/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_step/split_15/split_dim?
gru_step/split_15SplitVgru_step/BiasAdd_15:output:0gru_step/Const_7:output:0$gru_step/split_15/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
gru_step/split_15?
gru_step/add_28AddV2gru_step/split_14:output:0gru_step/split_15:output:0*
T0*'
_output_shapes
:????????? 2
gru_step/add_28|
gru_step/Sigmoid_14Sigmoidgru_step/add_28:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Sigmoid_14?
gru_step/add_29AddV2gru_step/split_14:output:1gru_step/split_15:output:1*
T0*'
_output_shapes
:????????? 2
gru_step/add_29|
gru_step/Sigmoid_15Sigmoidgru_step/add_29:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Sigmoid_15?
gru_step/mul_21Mulgru_step/Sigmoid_15:y:0gru_step/split_15:output:2*
T0*'
_output_shapes
:????????? 2
gru_step/mul_21?
gru_step/add_30AddV2gru_step/split_14:output:2gru_step/mul_21:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/add_30q
gru_step/Tanh_7Tanhgru_step/add_30:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Tanh_7?
gru_step/mul_22Mulgru_step/Sigmoid_14:y:0gru_step/add_27:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/mul_22i
gru_step/sub_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_step/sub_7/x?
gru_step/sub_7Subgru_step/sub_7/x:output:0gru_step/Sigmoid_14:y:0*
T0*'
_output_shapes
:????????? 2
gru_step/sub_7?
gru_step/mul_23Mulgru_step/sub_7:z:0gru_step/Tanh_7:y:0*
T0*'
_output_shapes
:????????? 2
gru_step/mul_23?
gru_step/add_31AddV2gru_step/mul_22:z:0gru_step/mul_23:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/add_31?
$message_layer/strided_slice_16/stackConst*
_output_shapes
:*
dtype0*
valueB"       2&
$message_layer/strided_slice_16/stack?
&message_layer/strided_slice_16/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&message_layer/strided_slice_16/stack_1?
&message_layer/strided_slice_16/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&message_layer/strided_slice_16/stack_2?
message_layer/strided_slice_16StridedSliceinputs_3-message_layer/strided_slice_16/stack:output:0/message_layer/strided_slice_16/stack_1:output:0/message_layer/strided_slice_16/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2 
message_layer/strided_slice_16?
message_layer/GatherV2_8/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
message_layer/GatherV2_8/axis?
message_layer/GatherV2_8GatherV2gru_step/add_31:z:0'message_layer/strided_slice_16:output:0&message_layer/GatherV2_8/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:????????? 2
message_layer/GatherV2_8?
message_layer/ExpandDims_8/dimConst*
_output_shapes
: *
dtype0*
value	B :2 
message_layer/ExpandDims_8/dim?
message_layer/ExpandDims_8
ExpandDims!message_layer/GatherV2_8:output:0'message_layer/ExpandDims_8/dim:output:0*
T0*+
_output_shapes
:????????? 2
message_layer/ExpandDims_8?
message_layer/MatMul_8BatchMatMulV23bond_embedding/embedding_lookup/Identity_1:output:0#message_layer/ExpandDims_8:output:0*
T0*+
_output_shapes
:????????? 2
message_layer/MatMul_8}
message_layer/Shape_8Shapemessage_layer/MatMul_8:output:0*
T0*
_output_shapes
:2
message_layer/Shape_8?
message_layer/Squeeze_8Squeezemessage_layer/MatMul_8:output:0*
T0*'
_output_shapes
:????????? *
squeeze_dims

?????????2
message_layer/Squeeze_8?
message_layer/dropout_8/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
message_layer/dropout_8/Const?
message_layer/dropout_8/MulMul message_layer/Squeeze_8:output:0&message_layer/dropout_8/Const:output:0*
T0*'
_output_shapes
:????????? 2
message_layer/dropout_8/Mul?
message_layer/dropout_8/ShapeShape message_layer/Squeeze_8:output:0*
T0*
_output_shapes
:2
message_layer/dropout_8/Shape?
4message_layer/dropout_8/random_uniform/RandomUniformRandomUniform&message_layer/dropout_8/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*

seed*
seed2??m26
4message_layer/dropout_8/random_uniform/RandomUniform?
&message_layer/dropout_8/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2(
&message_layer/dropout_8/GreaterEqual/y?
$message_layer/dropout_8/GreaterEqualGreaterEqual=message_layer/dropout_8/random_uniform/RandomUniform:output:0/message_layer/dropout_8/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2&
$message_layer/dropout_8/GreaterEqual?
message_layer/dropout_8/CastCast(message_layer/dropout_8/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
message_layer/dropout_8/Cast?
message_layer/dropout_8/Mul_1Mulmessage_layer/dropout_8/Mul:z:0 message_layer/dropout_8/Cast:y:0*
T0*'
_output_shapes
:????????? 2
message_layer/dropout_8/Mul_1?
$message_layer/strided_slice_17/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$message_layer/strided_slice_17/stack?
&message_layer/strided_slice_17/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&message_layer/strided_slice_17/stack_1?
&message_layer/strided_slice_17/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&message_layer/strided_slice_17/stack_2?
message_layer/strided_slice_17StridedSliceinputs_3-message_layer/strided_slice_17/stack:output:0/message_layer/strided_slice_17/stack_1:output:0/message_layer/strided_slice_17/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2 
message_layer/strided_slice_17?
message_layer/SegmentSum_8
SegmentSum!message_layer/dropout_8/Mul_1:z:0'message_layer/strided_slice_17:output:0*
T0*
Tindices0*'
_output_shapes
:????????? 2
message_layer/SegmentSum_8?
gru_step/ReadVariableOp_8ReadVariableOp gru_step_readvariableop_resource*
_output_shapes

:`*
dtype02
gru_step/ReadVariableOp_8?
gru_step/unstack_8Unpack!gru_step/ReadVariableOp_8:value:0*
T0* 
_output_shapes
:`:`*	
num2
gru_step/unstack_8?
!gru_step/MatMul_16/ReadVariableOpReadVariableOp'gru_step_matmul_readvariableop_resource*
_output_shapes

: `*
dtype02#
!gru_step/MatMul_16/ReadVariableOp?
gru_step/MatMul_16MatMul#message_layer/SegmentSum_8:output:0)gru_step/MatMul_16/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2
gru_step/MatMul_16?
gru_step/BiasAdd_16BiasAddgru_step/MatMul_16:product:0gru_step/unstack_8:output:0*
T0*'
_output_shapes
:?????????`2
gru_step/BiasAdd_16?
gru_step/split_16/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_step/split_16/split_dim?
gru_step/split_16Split$gru_step/split_16/split_dim:output:0gru_step/BiasAdd_16:output:0*
T0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
gru_step/split_16?
!gru_step/MatMul_17/ReadVariableOpReadVariableOp)gru_step_matmul_1_readvariableop_resource*
_output_shapes

: `*
dtype02#
!gru_step/MatMul_17/ReadVariableOp?
gru_step/MatMul_17MatMulgru_step/add_31:z:0)gru_step/MatMul_17/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2
gru_step/MatMul_17?
gru_step/BiasAdd_17BiasAddgru_step/MatMul_17:product:0gru_step/unstack_8:output:1*
T0*'
_output_shapes
:?????????`2
gru_step/BiasAdd_17y
gru_step/Const_8Const*
_output_shapes
:*
dtype0*!
valueB"        ????2
gru_step/Const_8?
gru_step/split_17/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_step/split_17/split_dim?
gru_step/split_17SplitVgru_step/BiasAdd_17:output:0gru_step/Const_8:output:0$gru_step/split_17/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
gru_step/split_17?
gru_step/add_32AddV2gru_step/split_16:output:0gru_step/split_17:output:0*
T0*'
_output_shapes
:????????? 2
gru_step/add_32|
gru_step/Sigmoid_16Sigmoidgru_step/add_32:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Sigmoid_16?
gru_step/add_33AddV2gru_step/split_16:output:1gru_step/split_17:output:1*
T0*'
_output_shapes
:????????? 2
gru_step/add_33|
gru_step/Sigmoid_17Sigmoidgru_step/add_33:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Sigmoid_17?
gru_step/mul_24Mulgru_step/Sigmoid_17:y:0gru_step/split_17:output:2*
T0*'
_output_shapes
:????????? 2
gru_step/mul_24?
gru_step/add_34AddV2gru_step/split_16:output:2gru_step/mul_24:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/add_34q
gru_step/Tanh_8Tanhgru_step/add_34:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Tanh_8?
gru_step/mul_25Mulgru_step/Sigmoid_16:y:0gru_step/add_31:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/mul_25i
gru_step/sub_8/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_step/sub_8/x?
gru_step/sub_8Subgru_step/sub_8/x:output:0gru_step/Sigmoid_16:y:0*
T0*'
_output_shapes
:????????? 2
gru_step/sub_8?
gru_step/mul_26Mulgru_step/sub_8:z:0gru_step/Tanh_8:y:0*
T0*'
_output_shapes
:????????? 2
gru_step/mul_26?
gru_step/add_35AddV2gru_step/mul_25:z:0gru_step/mul_26:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/add_35?
squeeze/Squeeze_2Squeezeinputs_0*
T0*#
_output_shapes
:?????????*
squeeze_dims
2
squeeze/Squeeze_2|
graph_fingerprint/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
graph_fingerprint/Const?
graph_fingerprint/MaxMaxsqueeze/Squeeze_2:output:0 graph_fingerprint/Const:output:0*
T0*
_output_shapes
: 2
graph_fingerprint/Maxt
graph_fingerprint/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
graph_fingerprint/add/y?
graph_fingerprint/addAddV2graph_fingerprint/Max:output:0 graph_fingerprint/add/y:output:0*
T0*
_output_shapes
: 2
graph_fingerprint/add?
graph_fingerprint/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
graph_fingerprint/zeros/mul/y?
graph_fingerprint/zeros/mulMulgraph_fingerprint/add:z:0&graph_fingerprint/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
graph_fingerprint/zeros/mul?
graph_fingerprint/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2 
graph_fingerprint/zeros/Less/y?
graph_fingerprint/zeros/LessLessgraph_fingerprint/zeros/mul:z:0'graph_fingerprint/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
graph_fingerprint/zeros/Less?
 graph_fingerprint/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2"
 graph_fingerprint/zeros/packed/1?
graph_fingerprint/zeros/packedPackgraph_fingerprint/add:z:0)graph_fingerprint/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2 
graph_fingerprint/zeros/packed?
graph_fingerprint/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
graph_fingerprint/zeros/Const?
graph_fingerprint/zerosFill'graph_fingerprint/zeros/packed:output:0&graph_fingerprint/zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/zeros?
graph_fingerprint/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2!
graph_fingerprint/zeros_1/mul/y?
graph_fingerprint/zeros_1/mulMulgraph_fingerprint/add:z:0(graph_fingerprint/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
graph_fingerprint/zeros_1/mul?
 graph_fingerprint/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2"
 graph_fingerprint/zeros_1/Less/y?
graph_fingerprint/zeros_1/LessLess!graph_fingerprint/zeros_1/mul:z:0)graph_fingerprint/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2 
graph_fingerprint/zeros_1/Less?
"graph_fingerprint/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2$
"graph_fingerprint/zeros_1/packed/1?
 graph_fingerprint/zeros_1/packedPackgraph_fingerprint/add:z:0+graph_fingerprint/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2"
 graph_fingerprint/zeros_1/packed?
graph_fingerprint/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
graph_fingerprint/zeros_1/Const?
graph_fingerprint/zeros_1Fill)graph_fingerprint/zeros_1/packed:output:0(graph_fingerprint/zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/zeros_1?
graph_fingerprint/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
graph_fingerprint/GatherV2/axis?
graph_fingerprint/GatherV2GatherV2"graph_fingerprint/zeros_1:output:0squeeze/Squeeze_2:output:0(graph_fingerprint/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:????????? 2
graph_fingerprint/GatherV2?
graph_fingerprint/mulMulgru_step/add_35:z:0#graph_fingerprint/GatherV2:output:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/mul?
'graph_fingerprint/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2)
'graph_fingerprint/Sum/reduction_indices?
graph_fingerprint/SumSumgraph_fingerprint/mul:z:00graph_fingerprint/Sum/reduction_indices:output:0*
T0*#
_output_shapes
:?????????2
graph_fingerprint/Sum?
graph_fingerprint/ExpExpgraph_fingerprint/Sum:output:0*
T0*#
_output_shapes
:?????????2
graph_fingerprint/Exp?
graph_fingerprint/SegmentSum
SegmentSumgraph_fingerprint/Exp:y:0squeeze/Squeeze_2:output:0*
T0*
Tindices0*#
_output_shapes
:?????????2
graph_fingerprint/SegmentSum?
!graph_fingerprint/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!graph_fingerprint/GatherV2_1/axis?
graph_fingerprint/GatherV2_1GatherV2%graph_fingerprint/SegmentSum:output:0squeeze/Squeeze_2:output:0*graph_fingerprint/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*#
_output_shapes
:?????????2
graph_fingerprint/GatherV2_1?
graph_fingerprint/truedivRealDivgraph_fingerprint/Exp:y:0%graph_fingerprint/GatherV2_1:output:0*
T0*#
_output_shapes
:?????????2
graph_fingerprint/truediv?
graph_fingerprint/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2!
graph_fingerprint/Reshape/shape?
graph_fingerprint/ReshapeReshapegraph_fingerprint/truediv:z:0(graph_fingerprint/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
graph_fingerprint/Reshape?
graph_fingerprint/mul_1Mul"graph_fingerprint/Reshape:output:0gru_step/add_35:z:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/mul_1?
graph_fingerprint/SegmentSum_1
SegmentSumgraph_fingerprint/mul_1:z:0squeeze/Squeeze_2:output:0*
T0*
Tindices0*'
_output_shapes
:????????? 2 
graph_fingerprint/SegmentSum_1?
graph_fingerprint/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
graph_fingerprint/concat/axis?
graph_fingerprint/concatConcatV2"graph_fingerprint/zeros_1:output:0'graph_fingerprint/SegmentSum_1:output:0&graph_fingerprint/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????@2
graph_fingerprint/concat?
*graph_fingerprint/xw_plus_b/ReadVariableOpReadVariableOp3graph_fingerprint_xw_plus_b_readvariableop_resource*
_output_shapes
:	@?*
dtype02,
*graph_fingerprint/xw_plus_b/ReadVariableOp?
,graph_fingerprint/xw_plus_b/ReadVariableOp_1ReadVariableOp5graph_fingerprint_xw_plus_b_readvariableop_1_resource*
_output_shapes	
:?*
dtype02.
,graph_fingerprint/xw_plus_b/ReadVariableOp_1?
"graph_fingerprint/xw_plus_b/MatMulMatMul!graph_fingerprint/concat:output:02graph_fingerprint/xw_plus_b/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2$
"graph_fingerprint/xw_plus_b/MatMul?
graph_fingerprint/xw_plus_bBiasAdd,graph_fingerprint/xw_plus_b/MatMul:product:04graph_fingerprint/xw_plus_b/ReadVariableOp_1:value:0*
T0*(
_output_shapes
:??????????2
graph_fingerprint/xw_plus_b?
%graph_fingerprint/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%graph_fingerprint/strided_slice/stack?
'graph_fingerprint/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'graph_fingerprint/strided_slice/stack_1?
'graph_fingerprint/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'graph_fingerprint/strided_slice/stack_2?
graph_fingerprint/strided_sliceStridedSlice$graph_fingerprint/xw_plus_b:output:0.graph_fingerprint/strided_slice/stack:output:00graph_fingerprint/strided_slice/stack_1:output:00graph_fingerprint/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2!
graph_fingerprint/strided_slice?
graph_fingerprint/SigmoidSigmoid(graph_fingerprint/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/Sigmoid?
'graph_fingerprint/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'graph_fingerprint/strided_slice_1/stack?
)graph_fingerprint/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2+
)graph_fingerprint/strided_slice_1/stack_1?
)graph_fingerprint/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)graph_fingerprint/strided_slice_1/stack_2?
!graph_fingerprint/strided_slice_1StridedSlice$graph_fingerprint/xw_plus_b:output:00graph_fingerprint/strided_slice_1/stack:output:02graph_fingerprint/strided_slice_1/stack_1:output:02graph_fingerprint/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2#
!graph_fingerprint/strided_slice_1?
graph_fingerprint/Sigmoid_1Sigmoid*graph_fingerprint/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/Sigmoid_1?
'graph_fingerprint/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2)
'graph_fingerprint/strided_slice_2/stack?
)graph_fingerprint/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2+
)graph_fingerprint/strided_slice_2/stack_1?
)graph_fingerprint/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)graph_fingerprint/strided_slice_2/stack_2?
!graph_fingerprint/strided_slice_2StridedSlice$graph_fingerprint/xw_plus_b:output:00graph_fingerprint/strided_slice_2/stack:output:02graph_fingerprint/strided_slice_2/stack_1:output:02graph_fingerprint/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2#
!graph_fingerprint/strided_slice_2?
graph_fingerprint/Sigmoid_2Sigmoid*graph_fingerprint/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/Sigmoid_2?
'graph_fingerprint/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2)
'graph_fingerprint/strided_slice_3/stack?
)graph_fingerprint/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)graph_fingerprint/strided_slice_3/stack_1?
)graph_fingerprint/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)graph_fingerprint/strided_slice_3/stack_2?
!graph_fingerprint/strided_slice_3StridedSlice$graph_fingerprint/xw_plus_b:output:00graph_fingerprint/strided_slice_3/stack:output:02graph_fingerprint/strided_slice_3/stack_1:output:02graph_fingerprint/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2#
!graph_fingerprint/strided_slice_3?
graph_fingerprint/mul_2Mulgraph_fingerprint/Sigmoid_1:y:0 graph_fingerprint/zeros:output:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/mul_2?
graph_fingerprint/TanhTanh*graph_fingerprint/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/Tanh?
graph_fingerprint/mul_3Mulgraph_fingerprint/Sigmoid:y:0graph_fingerprint/Tanh:y:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/mul_3?
graph_fingerprint/add_1AddV2graph_fingerprint/mul_2:z:0graph_fingerprint/mul_3:z:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/add_1?
graph_fingerprint/Tanh_1Tanhgraph_fingerprint/add_1:z:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/Tanh_1?
graph_fingerprint/mul_4Mulgraph_fingerprint/Sigmoid_2:y:0graph_fingerprint/Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/mul_4?
!graph_fingerprint/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!graph_fingerprint/GatherV2_2/axis?
graph_fingerprint/GatherV2_2GatherV2graph_fingerprint/mul_4:z:0squeeze/Squeeze_2:output:0*graph_fingerprint/GatherV2_2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:????????? 2
graph_fingerprint/GatherV2_2?
graph_fingerprint/mul_5Mulgru_step/add_35:z:0%graph_fingerprint/GatherV2_2:output:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/mul_5?
)graph_fingerprint/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2+
)graph_fingerprint/Sum_1/reduction_indices?
graph_fingerprint/Sum_1Sumgraph_fingerprint/mul_5:z:02graph_fingerprint/Sum_1/reduction_indices:output:0*
T0*#
_output_shapes
:?????????2
graph_fingerprint/Sum_1?
graph_fingerprint/Exp_1Exp graph_fingerprint/Sum_1:output:0*
T0*#
_output_shapes
:?????????2
graph_fingerprint/Exp_1?
graph_fingerprint/SegmentSum_2
SegmentSumgraph_fingerprint/Exp_1:y:0squeeze/Squeeze_2:output:0*
T0*
Tindices0*#
_output_shapes
:?????????2 
graph_fingerprint/SegmentSum_2?
!graph_fingerprint/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!graph_fingerprint/GatherV2_3/axis?
graph_fingerprint/GatherV2_3GatherV2'graph_fingerprint/SegmentSum_2:output:0squeeze/Squeeze_2:output:0*graph_fingerprint/GatherV2_3/axis:output:0*
Taxis0*
Tindices0*
Tparams0*#
_output_shapes
:?????????2
graph_fingerprint/GatherV2_3?
graph_fingerprint/truediv_1RealDivgraph_fingerprint/Exp_1:y:0%graph_fingerprint/GatherV2_3:output:0*
T0*#
_output_shapes
:?????????2
graph_fingerprint/truediv_1?
!graph_fingerprint/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2#
!graph_fingerprint/Reshape_1/shape?
graph_fingerprint/Reshape_1Reshapegraph_fingerprint/truediv_1:z:0*graph_fingerprint/Reshape_1/shape:output:0*
T0*'
_output_shapes
:?????????2
graph_fingerprint/Reshape_1?
graph_fingerprint/mul_6Mul$graph_fingerprint/Reshape_1:output:0gru_step/add_35:z:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/mul_6?
graph_fingerprint/SegmentSum_3
SegmentSumgraph_fingerprint/mul_6:z:0squeeze/Squeeze_2:output:0*
T0*
Tindices0*'
_output_shapes
:????????? 2 
graph_fingerprint/SegmentSum_3?
graph_fingerprint/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2!
graph_fingerprint/concat_1/axis?
graph_fingerprint/concat_1ConcatV2graph_fingerprint/mul_4:z:0'graph_fingerprint/SegmentSum_3:output:0(graph_fingerprint/concat_1/axis:output:0*
N*
T0*'
_output_shapes
:?????????@2
graph_fingerprint/concat_1?
,graph_fingerprint/xw_plus_b_1/ReadVariableOpReadVariableOp3graph_fingerprint_xw_plus_b_readvariableop_resource*
_output_shapes
:	@?*
dtype02.
,graph_fingerprint/xw_plus_b_1/ReadVariableOp?
.graph_fingerprint/xw_plus_b_1/ReadVariableOp_1ReadVariableOp5graph_fingerprint_xw_plus_b_readvariableop_1_resource*
_output_shapes	
:?*
dtype020
.graph_fingerprint/xw_plus_b_1/ReadVariableOp_1?
$graph_fingerprint/xw_plus_b_1/MatMulMatMul#graph_fingerprint/concat_1:output:04graph_fingerprint/xw_plus_b_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2&
$graph_fingerprint/xw_plus_b_1/MatMul?
graph_fingerprint/xw_plus_b_1BiasAdd.graph_fingerprint/xw_plus_b_1/MatMul:product:06graph_fingerprint/xw_plus_b_1/ReadVariableOp_1:value:0*
T0*(
_output_shapes
:??????????2
graph_fingerprint/xw_plus_b_1?
'graph_fingerprint/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'graph_fingerprint/strided_slice_4/stack?
)graph_fingerprint/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)graph_fingerprint/strided_slice_4/stack_1?
)graph_fingerprint/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)graph_fingerprint/strided_slice_4/stack_2?
!graph_fingerprint/strided_slice_4StridedSlice&graph_fingerprint/xw_plus_b_1:output:00graph_fingerprint/strided_slice_4/stack:output:02graph_fingerprint/strided_slice_4/stack_1:output:02graph_fingerprint/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2#
!graph_fingerprint/strided_slice_4?
graph_fingerprint/Sigmoid_3Sigmoid*graph_fingerprint/strided_slice_4:output:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/Sigmoid_3?
'graph_fingerprint/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'graph_fingerprint/strided_slice_5/stack?
)graph_fingerprint/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2+
)graph_fingerprint/strided_slice_5/stack_1?
)graph_fingerprint/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)graph_fingerprint/strided_slice_5/stack_2?
!graph_fingerprint/strided_slice_5StridedSlice&graph_fingerprint/xw_plus_b_1:output:00graph_fingerprint/strided_slice_5/stack:output:02graph_fingerprint/strided_slice_5/stack_1:output:02graph_fingerprint/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2#
!graph_fingerprint/strided_slice_5?
graph_fingerprint/Sigmoid_4Sigmoid*graph_fingerprint/strided_slice_5:output:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/Sigmoid_4?
'graph_fingerprint/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2)
'graph_fingerprint/strided_slice_6/stack?
)graph_fingerprint/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2+
)graph_fingerprint/strided_slice_6/stack_1?
)graph_fingerprint/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)graph_fingerprint/strided_slice_6/stack_2?
!graph_fingerprint/strided_slice_6StridedSlice&graph_fingerprint/xw_plus_b_1:output:00graph_fingerprint/strided_slice_6/stack:output:02graph_fingerprint/strided_slice_6/stack_1:output:02graph_fingerprint/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2#
!graph_fingerprint/strided_slice_6?
graph_fingerprint/Sigmoid_5Sigmoid*graph_fingerprint/strided_slice_6:output:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/Sigmoid_5?
'graph_fingerprint/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2)
'graph_fingerprint/strided_slice_7/stack?
)graph_fingerprint/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)graph_fingerprint/strided_slice_7/stack_1?
)graph_fingerprint/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)graph_fingerprint/strided_slice_7/stack_2?
!graph_fingerprint/strided_slice_7StridedSlice&graph_fingerprint/xw_plus_b_1:output:00graph_fingerprint/strided_slice_7/stack:output:02graph_fingerprint/strided_slice_7/stack_1:output:02graph_fingerprint/strided_slice_7/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2#
!graph_fingerprint/strided_slice_7?
graph_fingerprint/mul_7Mulgraph_fingerprint/Sigmoid_4:y:0graph_fingerprint/add_1:z:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/mul_7?
graph_fingerprint/Tanh_2Tanh*graph_fingerprint/strided_slice_7:output:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/Tanh_2?
graph_fingerprint/mul_8Mulgraph_fingerprint/Sigmoid_3:y:0graph_fingerprint/Tanh_2:y:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/mul_8?
graph_fingerprint/add_2AddV2graph_fingerprint/mul_7:z:0graph_fingerprint/mul_8:z:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/add_2?
graph_fingerprint/Tanh_3Tanhgraph_fingerprint/add_2:z:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/Tanh_3?
graph_fingerprint/mul_9Mulgraph_fingerprint/Sigmoid_5:y:0graph_fingerprint/Tanh_3:y:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/mul_9?
!graph_fingerprint/GatherV2_4/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!graph_fingerprint/GatherV2_4/axis?
graph_fingerprint/GatherV2_4GatherV2graph_fingerprint/mul_9:z:0squeeze/Squeeze_2:output:0*graph_fingerprint/GatherV2_4/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:????????? 2
graph_fingerprint/GatherV2_4?
graph_fingerprint/mul_10Mulgru_step/add_35:z:0%graph_fingerprint/GatherV2_4:output:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/mul_10?
)graph_fingerprint/Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2+
)graph_fingerprint/Sum_2/reduction_indices?
graph_fingerprint/Sum_2Sumgraph_fingerprint/mul_10:z:02graph_fingerprint/Sum_2/reduction_indices:output:0*
T0*#
_output_shapes
:?????????2
graph_fingerprint/Sum_2?
graph_fingerprint/Exp_2Exp graph_fingerprint/Sum_2:output:0*
T0*#
_output_shapes
:?????????2
graph_fingerprint/Exp_2?
graph_fingerprint/SegmentSum_4
SegmentSumgraph_fingerprint/Exp_2:y:0squeeze/Squeeze_2:output:0*
T0*
Tindices0*#
_output_shapes
:?????????2 
graph_fingerprint/SegmentSum_4?
!graph_fingerprint/GatherV2_5/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!graph_fingerprint/GatherV2_5/axis?
graph_fingerprint/GatherV2_5GatherV2'graph_fingerprint/SegmentSum_4:output:0squeeze/Squeeze_2:output:0*graph_fingerprint/GatherV2_5/axis:output:0*
Taxis0*
Tindices0*
Tparams0*#
_output_shapes
:?????????2
graph_fingerprint/GatherV2_5?
graph_fingerprint/truediv_2RealDivgraph_fingerprint/Exp_2:y:0%graph_fingerprint/GatherV2_5:output:0*
T0*#
_output_shapes
:?????????2
graph_fingerprint/truediv_2?
!graph_fingerprint/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2#
!graph_fingerprint/Reshape_2/shape?
graph_fingerprint/Reshape_2Reshapegraph_fingerprint/truediv_2:z:0*graph_fingerprint/Reshape_2/shape:output:0*
T0*'
_output_shapes
:?????????2
graph_fingerprint/Reshape_2?
graph_fingerprint/mul_11Mul$graph_fingerprint/Reshape_2:output:0gru_step/add_35:z:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/mul_11?
graph_fingerprint/SegmentSum_5
SegmentSumgraph_fingerprint/mul_11:z:0squeeze/Squeeze_2:output:0*
T0*
Tindices0*'
_output_shapes
:????????? 2 
graph_fingerprint/SegmentSum_5?
graph_fingerprint/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2!
graph_fingerprint/concat_2/axis?
graph_fingerprint/concat_2ConcatV2graph_fingerprint/mul_9:z:0'graph_fingerprint/SegmentSum_5:output:0(graph_fingerprint/concat_2/axis:output:0*
N*
T0*'
_output_shapes
:?????????@2
graph_fingerprint/concat_2?
,graph_fingerprint/xw_plus_b_2/ReadVariableOpReadVariableOp3graph_fingerprint_xw_plus_b_readvariableop_resource*
_output_shapes
:	@?*
dtype02.
,graph_fingerprint/xw_plus_b_2/ReadVariableOp?
.graph_fingerprint/xw_plus_b_2/ReadVariableOp_1ReadVariableOp5graph_fingerprint_xw_plus_b_readvariableop_1_resource*
_output_shapes	
:?*
dtype020
.graph_fingerprint/xw_plus_b_2/ReadVariableOp_1?
$graph_fingerprint/xw_plus_b_2/MatMulMatMul#graph_fingerprint/concat_2:output:04graph_fingerprint/xw_plus_b_2/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2&
$graph_fingerprint/xw_plus_b_2/MatMul?
graph_fingerprint/xw_plus_b_2BiasAdd.graph_fingerprint/xw_plus_b_2/MatMul:product:06graph_fingerprint/xw_plus_b_2/ReadVariableOp_1:value:0*
T0*(
_output_shapes
:??????????2
graph_fingerprint/xw_plus_b_2?
'graph_fingerprint/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'graph_fingerprint/strided_slice_8/stack?
)graph_fingerprint/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)graph_fingerprint/strided_slice_8/stack_1?
)graph_fingerprint/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)graph_fingerprint/strided_slice_8/stack_2?
!graph_fingerprint/strided_slice_8StridedSlice&graph_fingerprint/xw_plus_b_2:output:00graph_fingerprint/strided_slice_8/stack:output:02graph_fingerprint/strided_slice_8/stack_1:output:02graph_fingerprint/strided_slice_8/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2#
!graph_fingerprint/strided_slice_8?
graph_fingerprint/Sigmoid_6Sigmoid*graph_fingerprint/strided_slice_8:output:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/Sigmoid_6?
'graph_fingerprint/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'graph_fingerprint/strided_slice_9/stack?
)graph_fingerprint/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2+
)graph_fingerprint/strided_slice_9/stack_1?
)graph_fingerprint/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)graph_fingerprint/strided_slice_9/stack_2?
!graph_fingerprint/strided_slice_9StridedSlice&graph_fingerprint/xw_plus_b_2:output:00graph_fingerprint/strided_slice_9/stack:output:02graph_fingerprint/strided_slice_9/stack_1:output:02graph_fingerprint/strided_slice_9/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2#
!graph_fingerprint/strided_slice_9?
graph_fingerprint/Sigmoid_7Sigmoid*graph_fingerprint/strided_slice_9:output:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/Sigmoid_7?
(graph_fingerprint/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(graph_fingerprint/strided_slice_10/stack?
*graph_fingerprint/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*graph_fingerprint/strided_slice_10/stack_1?
*graph_fingerprint/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*graph_fingerprint/strided_slice_10/stack_2?
"graph_fingerprint/strided_slice_10StridedSlice&graph_fingerprint/xw_plus_b_2:output:01graph_fingerprint/strided_slice_10/stack:output:03graph_fingerprint/strided_slice_10/stack_1:output:03graph_fingerprint/strided_slice_10/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2$
"graph_fingerprint/strided_slice_10?
graph_fingerprint/Sigmoid_8Sigmoid+graph_fingerprint/strided_slice_10:output:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/Sigmoid_8?
(graph_fingerprint/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(graph_fingerprint/strided_slice_11/stack?
*graph_fingerprint/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*graph_fingerprint/strided_slice_11/stack_1?
*graph_fingerprint/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*graph_fingerprint/strided_slice_11/stack_2?
"graph_fingerprint/strided_slice_11StridedSlice&graph_fingerprint/xw_plus_b_2:output:01graph_fingerprint/strided_slice_11/stack:output:03graph_fingerprint/strided_slice_11/stack_1:output:03graph_fingerprint/strided_slice_11/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2$
"graph_fingerprint/strided_slice_11?
graph_fingerprint/mul_12Mulgraph_fingerprint/Sigmoid_7:y:0graph_fingerprint/add_2:z:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/mul_12?
graph_fingerprint/Tanh_4Tanh+graph_fingerprint/strided_slice_11:output:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/Tanh_4?
graph_fingerprint/mul_13Mulgraph_fingerprint/Sigmoid_6:y:0graph_fingerprint/Tanh_4:y:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/mul_13?
graph_fingerprint/add_3AddV2graph_fingerprint/mul_12:z:0graph_fingerprint/mul_13:z:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/add_3?
graph_fingerprint/Tanh_5Tanhgraph_fingerprint/add_3:z:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/Tanh_5?
graph_fingerprint/mul_14Mulgraph_fingerprint/Sigmoid_8:y:0graph_fingerprint/Tanh_5:y:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/mul_14?
mfp1/MatMul/ReadVariableOpReadVariableOp#mfp1_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02
mfp1/MatMul/ReadVariableOp?
mfp1/MatMulMatMul#graph_fingerprint/concat_2:output:0"mfp1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
mfp1/MatMul?
mfp1/BiasAdd/ReadVariableOpReadVariableOp$mfp1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
mfp1/BiasAdd/ReadVariableOp?
mfp1/BiasAddBiasAddmfp1/MatMul:product:0#mfp1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
mfp1/BiasAddh
	mfp1/ReluRelumfp1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
	mfp1/Relu?
2batch_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 24
2batch_normalization/moments/mean/reduction_indices?
 batch_normalization/moments/meanMeanmfp1/Relu:activations:0;batch_normalization/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2"
 batch_normalization/moments/mean?
(batch_normalization/moments/StopGradientStopGradient)batch_normalization/moments/mean:output:0*
T0*
_output_shapes
:	?2*
(batch_normalization/moments/StopGradient?
-batch_normalization/moments/SquaredDifferenceSquaredDifferencemfp1/Relu:activations:01batch_normalization/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2/
-batch_normalization/moments/SquaredDifference?
6batch_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 28
6batch_normalization/moments/variance/reduction_indices?
$batch_normalization/moments/varianceMean1batch_normalization/moments/SquaredDifference:z:0?batch_normalization/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2&
$batch_normalization/moments/variance?
#batch_normalization/moments/SqueezeSqueeze)batch_normalization/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2%
#batch_normalization/moments/Squeeze?
%batch_normalization/moments/Squeeze_1Squeeze-batch_normalization/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2'
%batch_normalization/moments/Squeeze_1?
)batch_normalization/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2+
)batch_normalization/AssignMovingAvg/decay?
2batch_normalization/AssignMovingAvg/ReadVariableOpReadVariableOp;batch_normalization_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype024
2batch_normalization/AssignMovingAvg/ReadVariableOp?
'batch_normalization/AssignMovingAvg/subSub:batch_normalization/AssignMovingAvg/ReadVariableOp:value:0,batch_normalization/moments/Squeeze:output:0*
T0*
_output_shapes	
:?2)
'batch_normalization/AssignMovingAvg/sub?
'batch_normalization/AssignMovingAvg/mulMul+batch_normalization/AssignMovingAvg/sub:z:02batch_normalization/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2)
'batch_normalization/AssignMovingAvg/mul?
#batch_normalization/AssignMovingAvgAssignSubVariableOp;batch_normalization_assignmovingavg_readvariableop_resource+batch_normalization/AssignMovingAvg/mul:z:03^batch_normalization/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02%
#batch_normalization/AssignMovingAvg?
+batch_normalization/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2-
+batch_normalization/AssignMovingAvg_1/decay?
4batch_normalization/AssignMovingAvg_1/ReadVariableOpReadVariableOp=batch_normalization_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype026
4batch_normalization/AssignMovingAvg_1/ReadVariableOp?
)batch_normalization/AssignMovingAvg_1/subSub<batch_normalization/AssignMovingAvg_1/ReadVariableOp:value:0.batch_normalization/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2+
)batch_normalization/AssignMovingAvg_1/sub?
)batch_normalization/AssignMovingAvg_1/mulMul-batch_normalization/AssignMovingAvg_1/sub:z:04batch_normalization/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2+
)batch_normalization/AssignMovingAvg_1/mul?
%batch_normalization/AssignMovingAvg_1AssignSubVariableOp=batch_normalization_assignmovingavg_1_readvariableop_resource-batch_normalization/AssignMovingAvg_1/mul:z:05^batch_normalization/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization/AssignMovingAvg_1?
#batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2%
#batch_normalization/batchnorm/add/y?
!batch_normalization/batchnorm/addAddV2.batch_normalization/moments/Squeeze_1:output:0,batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2#
!batch_normalization/batchnorm/add?
#batch_normalization/batchnorm/RsqrtRsqrt%batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization/batchnorm/Rsqrt?
0batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9batch_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype022
0batch_normalization/batchnorm/mul/ReadVariableOp?
!batch_normalization/batchnorm/mulMul'batch_normalization/batchnorm/Rsqrt:y:08batch_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2#
!batch_normalization/batchnorm/mul?
#batch_normalization/batchnorm/mul_1Mulmfp1/Relu:activations:0%batch_normalization/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2%
#batch_normalization/batchnorm/mul_1?
#batch_normalization/batchnorm/mul_2Mul,batch_normalization/moments/Squeeze:output:0%batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization/batchnorm/mul_2?
,batch_normalization/batchnorm/ReadVariableOpReadVariableOp5batch_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,batch_normalization/batchnorm/ReadVariableOp?
!batch_normalization/batchnorm/subSub4batch_normalization/batchnorm/ReadVariableOp:value:0'batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2#
!batch_normalization/batchnorm/sub?
#batch_normalization/batchnorm/add_1AddV2'batch_normalization/batchnorm/mul_1:z:0%batch_normalization/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2%
#batch_normalization/batchnorm/add_1?
mfp2/MatMul/ReadVariableOpReadVariableOp#mfp2_matmul_readvariableop_resource*
_output_shapes
:	? *
dtype02
mfp2/MatMul/ReadVariableOp?
mfp2/MatMulMatMul'batch_normalization/batchnorm/add_1:z:0"mfp2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
mfp2/MatMul?
mfp2/BiasAdd/ReadVariableOpReadVariableOp$mfp2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
mfp2/BiasAdd/ReadVariableOp?
mfp2/BiasAddBiasAddmfp2/MatMul:product:0#mfp2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
mfp2/BiasAddg
	mfp2/ReluRelumfp2/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
	mfp2/Relu?
4batch_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 26
4batch_normalization_1/moments/mean/reduction_indices?
"batch_normalization_1/moments/meanMeanmfp2/Relu:activations:0=batch_normalization_1/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

: *
	keep_dims(2$
"batch_normalization_1/moments/mean?
*batch_normalization_1/moments/StopGradientStopGradient+batch_normalization_1/moments/mean:output:0*
T0*
_output_shapes

: 2,
*batch_normalization_1/moments/StopGradient?
/batch_normalization_1/moments/SquaredDifferenceSquaredDifferencemfp2/Relu:activations:03batch_normalization_1/moments/StopGradient:output:0*
T0*'
_output_shapes
:????????? 21
/batch_normalization_1/moments/SquaredDifference?
8batch_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2:
8batch_normalization_1/moments/variance/reduction_indices?
&batch_normalization_1/moments/varianceMean3batch_normalization_1/moments/SquaredDifference:z:0Abatch_normalization_1/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

: *
	keep_dims(2(
&batch_normalization_1/moments/variance?
%batch_normalization_1/moments/SqueezeSqueeze+batch_normalization_1/moments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2'
%batch_normalization_1/moments/Squeeze?
'batch_normalization_1/moments/Squeeze_1Squeeze/batch_normalization_1/moments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2)
'batch_normalization_1/moments/Squeeze_1?
+batch_normalization_1/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2-
+batch_normalization_1/AssignMovingAvg/decay?
4batch_normalization_1/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_1_assignmovingavg_readvariableop_resource*
_output_shapes
: *
dtype026
4batch_normalization_1/AssignMovingAvg/ReadVariableOp?
)batch_normalization_1/AssignMovingAvg/subSub<batch_normalization_1/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_1/moments/Squeeze:output:0*
T0*
_output_shapes
: 2+
)batch_normalization_1/AssignMovingAvg/sub?
)batch_normalization_1/AssignMovingAvg/mulMul-batch_normalization_1/AssignMovingAvg/sub:z:04batch_normalization_1/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
: 2+
)batch_normalization_1/AssignMovingAvg/mul?
%batch_normalization_1/AssignMovingAvgAssignSubVariableOp=batch_normalization_1_assignmovingavg_readvariableop_resource-batch_normalization_1/AssignMovingAvg/mul:z:05^batch_normalization_1/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_1/AssignMovingAvg?
-batch_normalization_1/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2/
-batch_normalization_1/AssignMovingAvg_1/decay?
6batch_normalization_1/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_1_assignmovingavg_1_readvariableop_resource*
_output_shapes
: *
dtype028
6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp?
+batch_normalization_1/AssignMovingAvg_1/subSub>batch_normalization_1/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_1/moments/Squeeze_1:output:0*
T0*
_output_shapes
: 2-
+batch_normalization_1/AssignMovingAvg_1/sub?
+batch_normalization_1/AssignMovingAvg_1/mulMul/batch_normalization_1/AssignMovingAvg_1/sub:z:06batch_normalization_1/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
: 2-
+batch_normalization_1/AssignMovingAvg_1/mul?
'batch_normalization_1/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_1_assignmovingavg_1_readvariableop_resource/batch_normalization_1/AssignMovingAvg_1/mul:z:07^batch_normalization_1/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_1/AssignMovingAvg_1?
%batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_1/batchnorm/add/y?
#batch_normalization_1/batchnorm/addAddV20batch_normalization_1/moments/Squeeze_1:output:0.batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes
: 2%
#batch_normalization_1/batchnorm/add?
%batch_normalization_1/batchnorm/RsqrtRsqrt'batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes
: 2'
%batch_normalization_1/batchnorm/Rsqrt?
2batch_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype024
2batch_normalization_1/batchnorm/mul/ReadVariableOp?
#batch_normalization_1/batchnorm/mulMul)batch_normalization_1/batchnorm/Rsqrt:y:0:batch_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2%
#batch_normalization_1/batchnorm/mul?
%batch_normalization_1/batchnorm/mul_1Mulmfp2/Relu:activations:0'batch_normalization_1/batchnorm/mul:z:0*
T0*'
_output_shapes
:????????? 2'
%batch_normalization_1/batchnorm/mul_1?
%batch_normalization_1/batchnorm/mul_2Mul.batch_normalization_1/moments/Squeeze:output:0'batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes
: 2'
%batch_normalization_1/batchnorm/mul_2?
.batch_normalization_1/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype020
.batch_normalization_1/batchnorm/ReadVariableOp?
#batch_normalization_1/batchnorm/subSub6batch_normalization_1/batchnorm/ReadVariableOp:value:0)batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2%
#batch_normalization_1/batchnorm/sub?
%batch_normalization_1/batchnorm/add_1AddV2)batch_normalization_1/batchnorm/mul_1:z:0'batch_normalization_1/batchnorm/sub:z:0*
T0*'
_output_shapes
:????????? 2'
%batch_normalization_1/batchnorm/add_1?
mfp3/MatMul/ReadVariableOpReadVariableOp#mfp3_matmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
mfp3/MatMul/ReadVariableOp?
mfp3/MatMulMatMul)batch_normalization_1/batchnorm/add_1:z:0"mfp3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
mfp3/MatMul?
mfp3/BiasAdd/ReadVariableOpReadVariableOp$mfp3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
mfp3/BiasAdd/ReadVariableOp?
mfp3/BiasAddBiasAddmfp3/MatMul:product:0#mfp3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
mfp3/BiasAddh
	mfp3/ReluRelumfp3/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
	mfp3/Relu?
4batch_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 26
4batch_normalization_2/moments/mean/reduction_indices?
"batch_normalization_2/moments/meanMeanmfp3/Relu:activations:0=batch_normalization_2/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2$
"batch_normalization_2/moments/mean?
*batch_normalization_2/moments/StopGradientStopGradient+batch_normalization_2/moments/mean:output:0*
T0*
_output_shapes
:	?2,
*batch_normalization_2/moments/StopGradient?
/batch_normalization_2/moments/SquaredDifferenceSquaredDifferencemfp3/Relu:activations:03batch_normalization_2/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????21
/batch_normalization_2/moments/SquaredDifference?
8batch_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2:
8batch_normalization_2/moments/variance/reduction_indices?
&batch_normalization_2/moments/varianceMean3batch_normalization_2/moments/SquaredDifference:z:0Abatch_normalization_2/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2(
&batch_normalization_2/moments/variance?
%batch_normalization_2/moments/SqueezeSqueeze+batch_normalization_2/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2'
%batch_normalization_2/moments/Squeeze?
'batch_normalization_2/moments/Squeeze_1Squeeze/batch_normalization_2/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2)
'batch_normalization_2/moments/Squeeze_1?
+batch_normalization_2/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2-
+batch_normalization_2/AssignMovingAvg/decay?
4batch_normalization_2/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_2_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype026
4batch_normalization_2/AssignMovingAvg/ReadVariableOp?
)batch_normalization_2/AssignMovingAvg/subSub<batch_normalization_2/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_2/moments/Squeeze:output:0*
T0*
_output_shapes	
:?2+
)batch_normalization_2/AssignMovingAvg/sub?
)batch_normalization_2/AssignMovingAvg/mulMul-batch_normalization_2/AssignMovingAvg/sub:z:04batch_normalization_2/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2+
)batch_normalization_2/AssignMovingAvg/mul?
%batch_normalization_2/AssignMovingAvgAssignSubVariableOp=batch_normalization_2_assignmovingavg_readvariableop_resource-batch_normalization_2/AssignMovingAvg/mul:z:05^batch_normalization_2/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_2/AssignMovingAvg?
-batch_normalization_2/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *???=2/
-batch_normalization_2/AssignMovingAvg_1/decay?
6batch_normalization_2/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_2_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype028
6batch_normalization_2/AssignMovingAvg_1/ReadVariableOp?
+batch_normalization_2/AssignMovingAvg_1/subSub>batch_normalization_2/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_2/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2-
+batch_normalization_2/AssignMovingAvg_1/sub?
+batch_normalization_2/AssignMovingAvg_1/mulMul/batch_normalization_2/AssignMovingAvg_1/sub:z:06batch_normalization_2/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2-
+batch_normalization_2/AssignMovingAvg_1/mul?
'batch_normalization_2/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_2_assignmovingavg_1_readvariableop_resource/batch_normalization_2/AssignMovingAvg_1/mul:z:07^batch_normalization_2/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_2/AssignMovingAvg_1?
%batch_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_2/batchnorm/add/y?
#batch_normalization_2/batchnorm/addAddV20batch_normalization_2/moments/Squeeze_1:output:0.batch_normalization_2/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2%
#batch_normalization_2/batchnorm/add?
%batch_normalization_2/batchnorm/RsqrtRsqrt'batch_normalization_2/batchnorm/add:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_2/batchnorm/Rsqrt?
2batch_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype024
2batch_normalization_2/batchnorm/mul/ReadVariableOp?
#batch_normalization_2/batchnorm/mulMul)batch_normalization_2/batchnorm/Rsqrt:y:0:batch_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2%
#batch_normalization_2/batchnorm/mul?
%batch_normalization_2/batchnorm/mul_1Mulmfp3/Relu:activations:0'batch_normalization_2/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_2/batchnorm/mul_1?
%batch_normalization_2/batchnorm/mul_2Mul.batch_normalization_2/moments/Squeeze:output:0'batch_normalization_2/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_2/batchnorm/mul_2?
.batch_normalization_2/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_2_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype020
.batch_normalization_2/batchnorm/ReadVariableOp?
#batch_normalization_2/batchnorm/subSub6batch_normalization_2/batchnorm/ReadVariableOp:value:0)batch_normalization_2/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization_2/batchnorm/sub?
%batch_normalization_2/batchnorm/add_1AddV2)batch_normalization_2/batchnorm/mul_1:z:0'batch_normalization_2/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_2/batchnorm/add_1?
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
output/MatMul/ReadVariableOp?
output/MatMulMatMul)batch_normalization_2/batchnorm/add_1:z:0$output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
output/MatMul?
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
output/BiasAdd/ReadVariableOp?
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
output/BiasAdd?
IdentityIdentityoutput/BiasAdd:output:0 ^atom_embedding/embedding_lookup$^batch_normalization/AssignMovingAvg3^batch_normalization/AssignMovingAvg/ReadVariableOp&^batch_normalization/AssignMovingAvg_15^batch_normalization/AssignMovingAvg_1/ReadVariableOp-^batch_normalization/batchnorm/ReadVariableOp1^batch_normalization/batchnorm/mul/ReadVariableOp&^batch_normalization_1/AssignMovingAvg5^batch_normalization_1/AssignMovingAvg/ReadVariableOp(^batch_normalization_1/AssignMovingAvg_17^batch_normalization_1/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_1/batchnorm/ReadVariableOp3^batch_normalization_1/batchnorm/mul/ReadVariableOp&^batch_normalization_2/AssignMovingAvg5^batch_normalization_2/AssignMovingAvg/ReadVariableOp(^batch_normalization_2/AssignMovingAvg_17^batch_normalization_2/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_2/batchnorm/ReadVariableOp3^batch_normalization_2/batchnorm/mul/ReadVariableOp ^bond_embedding/embedding_lookup+^graph_fingerprint/xw_plus_b/ReadVariableOp-^graph_fingerprint/xw_plus_b/ReadVariableOp_1-^graph_fingerprint/xw_plus_b_1/ReadVariableOp/^graph_fingerprint/xw_plus_b_1/ReadVariableOp_1-^graph_fingerprint/xw_plus_b_2/ReadVariableOp/^graph_fingerprint/xw_plus_b_2/ReadVariableOp_1^gru_step/MatMul/ReadVariableOp!^gru_step/MatMul_1/ReadVariableOp"^gru_step/MatMul_10/ReadVariableOp"^gru_step/MatMul_11/ReadVariableOp"^gru_step/MatMul_12/ReadVariableOp"^gru_step/MatMul_13/ReadVariableOp"^gru_step/MatMul_14/ReadVariableOp"^gru_step/MatMul_15/ReadVariableOp"^gru_step/MatMul_16/ReadVariableOp"^gru_step/MatMul_17/ReadVariableOp!^gru_step/MatMul_2/ReadVariableOp!^gru_step/MatMul_3/ReadVariableOp!^gru_step/MatMul_4/ReadVariableOp!^gru_step/MatMul_5/ReadVariableOp!^gru_step/MatMul_6/ReadVariableOp!^gru_step/MatMul_7/ReadVariableOp!^gru_step/MatMul_8/ReadVariableOp!^gru_step/MatMul_9/ReadVariableOp^gru_step/ReadVariableOp^gru_step/ReadVariableOp_1^gru_step/ReadVariableOp_2^gru_step/ReadVariableOp_3^gru_step/ReadVariableOp_4^gru_step/ReadVariableOp_5^gru_step/ReadVariableOp_6^gru_step/ReadVariableOp_7^gru_step/ReadVariableOp_8^mfp1/BiasAdd/ReadVariableOp^mfp1/MatMul/ReadVariableOp^mfp2/BiasAdd/ReadVariableOp^mfp2/MatMul/ReadVariableOp^mfp3/BiasAdd/ReadVariableOp^mfp3/MatMul/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : 2B
atom_embedding/embedding_lookupatom_embedding/embedding_lookup2J
#batch_normalization/AssignMovingAvg#batch_normalization/AssignMovingAvg2h
2batch_normalization/AssignMovingAvg/ReadVariableOp2batch_normalization/AssignMovingAvg/ReadVariableOp2N
%batch_normalization/AssignMovingAvg_1%batch_normalization/AssignMovingAvg_12l
4batch_normalization/AssignMovingAvg_1/ReadVariableOp4batch_normalization/AssignMovingAvg_1/ReadVariableOp2\
,batch_normalization/batchnorm/ReadVariableOp,batch_normalization/batchnorm/ReadVariableOp2d
0batch_normalization/batchnorm/mul/ReadVariableOp0batch_normalization/batchnorm/mul/ReadVariableOp2N
%batch_normalization_1/AssignMovingAvg%batch_normalization_1/AssignMovingAvg2l
4batch_normalization_1/AssignMovingAvg/ReadVariableOp4batch_normalization_1/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_1/AssignMovingAvg_1'batch_normalization_1/AssignMovingAvg_12p
6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_1/batchnorm/ReadVariableOp.batch_normalization_1/batchnorm/ReadVariableOp2h
2batch_normalization_1/batchnorm/mul/ReadVariableOp2batch_normalization_1/batchnorm/mul/ReadVariableOp2N
%batch_normalization_2/AssignMovingAvg%batch_normalization_2/AssignMovingAvg2l
4batch_normalization_2/AssignMovingAvg/ReadVariableOp4batch_normalization_2/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_2/AssignMovingAvg_1'batch_normalization_2/AssignMovingAvg_12p
6batch_normalization_2/AssignMovingAvg_1/ReadVariableOp6batch_normalization_2/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_2/batchnorm/ReadVariableOp.batch_normalization_2/batchnorm/ReadVariableOp2h
2batch_normalization_2/batchnorm/mul/ReadVariableOp2batch_normalization_2/batchnorm/mul/ReadVariableOp2B
bond_embedding/embedding_lookupbond_embedding/embedding_lookup2X
*graph_fingerprint/xw_plus_b/ReadVariableOp*graph_fingerprint/xw_plus_b/ReadVariableOp2\
,graph_fingerprint/xw_plus_b/ReadVariableOp_1,graph_fingerprint/xw_plus_b/ReadVariableOp_12\
,graph_fingerprint/xw_plus_b_1/ReadVariableOp,graph_fingerprint/xw_plus_b_1/ReadVariableOp2`
.graph_fingerprint/xw_plus_b_1/ReadVariableOp_1.graph_fingerprint/xw_plus_b_1/ReadVariableOp_12\
,graph_fingerprint/xw_plus_b_2/ReadVariableOp,graph_fingerprint/xw_plus_b_2/ReadVariableOp2`
.graph_fingerprint/xw_plus_b_2/ReadVariableOp_1.graph_fingerprint/xw_plus_b_2/ReadVariableOp_12@
gru_step/MatMul/ReadVariableOpgru_step/MatMul/ReadVariableOp2D
 gru_step/MatMul_1/ReadVariableOp gru_step/MatMul_1/ReadVariableOp2F
!gru_step/MatMul_10/ReadVariableOp!gru_step/MatMul_10/ReadVariableOp2F
!gru_step/MatMul_11/ReadVariableOp!gru_step/MatMul_11/ReadVariableOp2F
!gru_step/MatMul_12/ReadVariableOp!gru_step/MatMul_12/ReadVariableOp2F
!gru_step/MatMul_13/ReadVariableOp!gru_step/MatMul_13/ReadVariableOp2F
!gru_step/MatMul_14/ReadVariableOp!gru_step/MatMul_14/ReadVariableOp2F
!gru_step/MatMul_15/ReadVariableOp!gru_step/MatMul_15/ReadVariableOp2F
!gru_step/MatMul_16/ReadVariableOp!gru_step/MatMul_16/ReadVariableOp2F
!gru_step/MatMul_17/ReadVariableOp!gru_step/MatMul_17/ReadVariableOp2D
 gru_step/MatMul_2/ReadVariableOp gru_step/MatMul_2/ReadVariableOp2D
 gru_step/MatMul_3/ReadVariableOp gru_step/MatMul_3/ReadVariableOp2D
 gru_step/MatMul_4/ReadVariableOp gru_step/MatMul_4/ReadVariableOp2D
 gru_step/MatMul_5/ReadVariableOp gru_step/MatMul_5/ReadVariableOp2D
 gru_step/MatMul_6/ReadVariableOp gru_step/MatMul_6/ReadVariableOp2D
 gru_step/MatMul_7/ReadVariableOp gru_step/MatMul_7/ReadVariableOp2D
 gru_step/MatMul_8/ReadVariableOp gru_step/MatMul_8/ReadVariableOp2D
 gru_step/MatMul_9/ReadVariableOp gru_step/MatMul_9/ReadVariableOp22
gru_step/ReadVariableOpgru_step/ReadVariableOp26
gru_step/ReadVariableOp_1gru_step/ReadVariableOp_126
gru_step/ReadVariableOp_2gru_step/ReadVariableOp_226
gru_step/ReadVariableOp_3gru_step/ReadVariableOp_326
gru_step/ReadVariableOp_4gru_step/ReadVariableOp_426
gru_step/ReadVariableOp_5gru_step/ReadVariableOp_526
gru_step/ReadVariableOp_6gru_step/ReadVariableOp_626
gru_step/ReadVariableOp_7gru_step/ReadVariableOp_726
gru_step/ReadVariableOp_8gru_step/ReadVariableOp_82:
mfp1/BiasAdd/ReadVariableOpmfp1/BiasAdd/ReadVariableOp28
mfp1/MatMul/ReadVariableOpmfp1/MatMul/ReadVariableOp2:
mfp2/BiasAdd/ReadVariableOpmfp2/BiasAdd/ReadVariableOp28
mfp2/MatMul/ReadVariableOpmfp2/MatMul/ReadVariableOp2:
mfp3/BiasAdd/ReadVariableOpmfp3/BiasAdd/ReadVariableOp28
mfp3/MatMul/ReadVariableOpmfp3/MatMul/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/3
??
?
F__inference_graph_model_layer_call_and_return_conditional_losses_66939
inputs_0
inputs_1
inputs_2
inputs_3<
%bond_embedding_embedding_lookup_66206:?  8
%atom_embedding_embedding_lookup_66211:	? 2
 gru_step_readvariableop_resource:`9
'gru_step_matmul_readvariableop_resource: `;
)gru_step_matmul_1_readvariableop_resource: `F
3graph_fingerprint_xw_plus_b_readvariableop_resource:	@?D
5graph_fingerprint_xw_plus_b_readvariableop_1_resource:	?6
#mfp1_matmul_readvariableop_resource:	@?3
$mfp1_biasadd_readvariableop_resource:	?D
5batch_normalization_batchnorm_readvariableop_resource:	?H
9batch_normalization_batchnorm_mul_readvariableop_resource:	?F
7batch_normalization_batchnorm_readvariableop_1_resource:	?F
7batch_normalization_batchnorm_readvariableop_2_resource:	?6
#mfp2_matmul_readvariableop_resource:	? 2
$mfp2_biasadd_readvariableop_resource: E
7batch_normalization_1_batchnorm_readvariableop_resource: I
;batch_normalization_1_batchnorm_mul_readvariableop_resource: G
9batch_normalization_1_batchnorm_readvariableop_1_resource: G
9batch_normalization_1_batchnorm_readvariableop_2_resource: 6
#mfp3_matmul_readvariableop_resource:	 ?3
$mfp3_biasadd_readvariableop_resource:	?F
7batch_normalization_2_batchnorm_readvariableop_resource:	?J
;batch_normalization_2_batchnorm_mul_readvariableop_resource:	?H
9batch_normalization_2_batchnorm_readvariableop_1_resource:	?H
9batch_normalization_2_batchnorm_readvariableop_2_resource:	?8
%output_matmul_readvariableop_resource:	?4
&output_biasadd_readvariableop_resource:
identity??atom_embedding/embedding_lookup?,batch_normalization/batchnorm/ReadVariableOp?.batch_normalization/batchnorm/ReadVariableOp_1?.batch_normalization/batchnorm/ReadVariableOp_2?0batch_normalization/batchnorm/mul/ReadVariableOp?.batch_normalization_1/batchnorm/ReadVariableOp?0batch_normalization_1/batchnorm/ReadVariableOp_1?0batch_normalization_1/batchnorm/ReadVariableOp_2?2batch_normalization_1/batchnorm/mul/ReadVariableOp?.batch_normalization_2/batchnorm/ReadVariableOp?0batch_normalization_2/batchnorm/ReadVariableOp_1?0batch_normalization_2/batchnorm/ReadVariableOp_2?2batch_normalization_2/batchnorm/mul/ReadVariableOp?bond_embedding/embedding_lookup?*graph_fingerprint/xw_plus_b/ReadVariableOp?,graph_fingerprint/xw_plus_b/ReadVariableOp_1?,graph_fingerprint/xw_plus_b_1/ReadVariableOp?.graph_fingerprint/xw_plus_b_1/ReadVariableOp_1?,graph_fingerprint/xw_plus_b_2/ReadVariableOp?.graph_fingerprint/xw_plus_b_2/ReadVariableOp_1?gru_step/MatMul/ReadVariableOp? gru_step/MatMul_1/ReadVariableOp?!gru_step/MatMul_10/ReadVariableOp?!gru_step/MatMul_11/ReadVariableOp?!gru_step/MatMul_12/ReadVariableOp?!gru_step/MatMul_13/ReadVariableOp?!gru_step/MatMul_14/ReadVariableOp?!gru_step/MatMul_15/ReadVariableOp?!gru_step/MatMul_16/ReadVariableOp?!gru_step/MatMul_17/ReadVariableOp? gru_step/MatMul_2/ReadVariableOp? gru_step/MatMul_3/ReadVariableOp? gru_step/MatMul_4/ReadVariableOp? gru_step/MatMul_5/ReadVariableOp? gru_step/MatMul_6/ReadVariableOp? gru_step/MatMul_7/ReadVariableOp? gru_step/MatMul_8/ReadVariableOp? gru_step/MatMul_9/ReadVariableOp?gru_step/ReadVariableOp?gru_step/ReadVariableOp_1?gru_step/ReadVariableOp_2?gru_step/ReadVariableOp_3?gru_step/ReadVariableOp_4?gru_step/ReadVariableOp_5?gru_step/ReadVariableOp_6?gru_step/ReadVariableOp_7?gru_step/ReadVariableOp_8?mfp1/BiasAdd/ReadVariableOp?mfp1/MatMul/ReadVariableOp?mfp2/BiasAdd/ReadVariableOp?mfp2/MatMul/ReadVariableOp?mfp3/BiasAdd/ReadVariableOp?mfp3/MatMul/ReadVariableOp?output/BiasAdd/ReadVariableOp?output/MatMul/ReadVariableOp|
squeeze/SqueezeSqueezeinputs_2*
T0*#
_output_shapes
:?????????*
squeeze_dims
2
squeeze/Squeeze?
squeeze/Squeeze_1Squeezeinputs_1*
T0*#
_output_shapes
:?????????*
squeeze_dims
2
squeeze/Squeeze_1?
bond_embedding/embedding_lookupResourceGather%bond_embedding_embedding_lookup_66206squeeze/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*8
_class.
,*loc:@bond_embedding/embedding_lookup/66206*+
_output_shapes
:?????????  *
dtype02!
bond_embedding/embedding_lookup?
(bond_embedding/embedding_lookup/IdentityIdentity(bond_embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*8
_class.
,*loc:@bond_embedding/embedding_lookup/66206*+
_output_shapes
:?????????  2*
(bond_embedding/embedding_lookup/Identity?
*bond_embedding/embedding_lookup/Identity_1Identity1bond_embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????  2,
*bond_embedding/embedding_lookup/Identity_1?
atom_embedding/embedding_lookupResourceGather%atom_embedding_embedding_lookup_66211squeeze/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*8
_class.
,*loc:@atom_embedding/embedding_lookup/66211*'
_output_shapes
:????????? *
dtype02!
atom_embedding/embedding_lookup?
(atom_embedding/embedding_lookup/IdentityIdentity(atom_embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*8
_class.
,*loc:@atom_embedding/embedding_lookup/66211*'
_output_shapes
:????????? 2*
(atom_embedding/embedding_lookup/Identity?
*atom_embedding/embedding_lookup/Identity_1Identity1atom_embedding/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? 2,
*atom_embedding/embedding_lookup/Identity_1?
!message_layer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2#
!message_layer/strided_slice/stack?
#message_layer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#message_layer/strided_slice/stack_1?
#message_layer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#message_layer/strided_slice/stack_2?
message_layer/strided_sliceStridedSliceinputs_3*message_layer/strided_slice/stack:output:0,message_layer/strided_slice/stack_1:output:0,message_layer/strided_slice/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
message_layer/strided_slice|
message_layer/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
message_layer/GatherV2/axis?
message_layer/GatherV2GatherV23atom_embedding/embedding_lookup/Identity_1:output:0$message_layer/strided_slice:output:0$message_layer/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:????????? 2
message_layer/GatherV2~
message_layer/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
message_layer/ExpandDims/dim?
message_layer/ExpandDims
ExpandDimsmessage_layer/GatherV2:output:0%message_layer/ExpandDims/dim:output:0*
T0*+
_output_shapes
:????????? 2
message_layer/ExpandDims?
message_layer/MatMulBatchMatMulV23bond_embedding/embedding_lookup/Identity_1:output:0!message_layer/ExpandDims:output:0*
T0*+
_output_shapes
:????????? 2
message_layer/MatMulw
message_layer/ShapeShapemessage_layer/MatMul:output:0*
T0*
_output_shapes
:2
message_layer/Shape?
message_layer/SqueezeSqueezemessage_layer/MatMul:output:0*
T0*'
_output_shapes
:????????? *
squeeze_dims

?????????2
message_layer/Squeeze
message_layer/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
message_layer/dropout/Const?
message_layer/dropout/MulMulmessage_layer/Squeeze:output:0$message_layer/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
message_layer/dropout/Mul?
message_layer/dropout/ShapeShapemessage_layer/Squeeze:output:0*
T0*
_output_shapes
:2
message_layer/dropout/Shape?
2message_layer/dropout/random_uniform/RandomUniformRandomUniform$message_layer/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*

seed*
seed2??24
2message_layer/dropout/random_uniform/RandomUniform?
$message_layer/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2&
$message_layer/dropout/GreaterEqual/y?
"message_layer/dropout/GreaterEqualGreaterEqual;message_layer/dropout/random_uniform/RandomUniform:output:0-message_layer/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2$
"message_layer/dropout/GreaterEqual?
message_layer/dropout/CastCast&message_layer/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
message_layer/dropout/Cast?
message_layer/dropout/Mul_1Mulmessage_layer/dropout/Mul:z:0message_layer/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
message_layer/dropout/Mul_1?
#message_layer/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2%
#message_layer/strided_slice_1/stack?
%message_layer/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2'
%message_layer/strided_slice_1/stack_1?
%message_layer/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%message_layer/strided_slice_1/stack_2?
message_layer/strided_slice_1StridedSliceinputs_3,message_layer/strided_slice_1/stack:output:0.message_layer/strided_slice_1/stack_1:output:0.message_layer/strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
message_layer/strided_slice_1?
message_layer/SegmentSum
SegmentSummessage_layer/Squeeze:output:0&message_layer/strided_slice_1:output:0*
T0*
Tindices0*'
_output_shapes
:????????? 2
message_layer/SegmentSum?
gru_step/ReadVariableOpReadVariableOp gru_step_readvariableop_resource*
_output_shapes

:`*
dtype02
gru_step/ReadVariableOp?
gru_step/unstackUnpackgru_step/ReadVariableOp:value:0*
T0* 
_output_shapes
:`:`*	
num2
gru_step/unstack?
gru_step/MatMul/ReadVariableOpReadVariableOp'gru_step_matmul_readvariableop_resource*
_output_shapes

: `*
dtype02 
gru_step/MatMul/ReadVariableOp?
gru_step/MatMulMatMul!message_layer/SegmentSum:output:0&gru_step/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2
gru_step/MatMul?
gru_step/BiasAddBiasAddgru_step/MatMul:product:0gru_step/unstack:output:0*
T0*'
_output_shapes
:?????????`2
gru_step/BiasAdd
gru_step/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_step/split/split_dim?
gru_step/splitSplit!gru_step/split/split_dim:output:0gru_step/BiasAdd:output:0*
T0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
gru_step/split?
 gru_step/MatMul_1/ReadVariableOpReadVariableOp)gru_step_matmul_1_readvariableop_resource*
_output_shapes

: `*
dtype02"
 gru_step/MatMul_1/ReadVariableOp?
gru_step/MatMul_1MatMul3atom_embedding/embedding_lookup/Identity_1:output:0(gru_step/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2
gru_step/MatMul_1?
gru_step/BiasAdd_1BiasAddgru_step/MatMul_1:product:0gru_step/unstack:output:1*
T0*'
_output_shapes
:?????????`2
gru_step/BiasAdd_1u
gru_step/ConstConst*
_output_shapes
:*
dtype0*!
valueB"        ????2
gru_step/Const?
gru_step/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_step/split_1/split_dim?
gru_step/split_1SplitVgru_step/BiasAdd_1:output:0gru_step/Const:output:0#gru_step/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
gru_step/split_1?
gru_step/addAddV2gru_step/split:output:0gru_step/split_1:output:0*
T0*'
_output_shapes
:????????? 2
gru_step/adds
gru_step/SigmoidSigmoidgru_step/add:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Sigmoid?
gru_step/add_1AddV2gru_step/split:output:1gru_step/split_1:output:1*
T0*'
_output_shapes
:????????? 2
gru_step/add_1y
gru_step/Sigmoid_1Sigmoidgru_step/add_1:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Sigmoid_1?
gru_step/mulMulgru_step/Sigmoid_1:y:0gru_step/split_1:output:2*
T0*'
_output_shapes
:????????? 2
gru_step/mul?
gru_step/add_2AddV2gru_step/split:output:2gru_step/mul:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/add_2l
gru_step/TanhTanhgru_step/add_2:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Tanh?
gru_step/mul_1Mulgru_step/Sigmoid:y:03atom_embedding/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:????????? 2
gru_step/mul_1e
gru_step/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_step/sub/x?
gru_step/subSubgru_step/sub/x:output:0gru_step/Sigmoid:y:0*
T0*'
_output_shapes
:????????? 2
gru_step/sub~
gru_step/mul_2Mulgru_step/sub:z:0gru_step/Tanh:y:0*
T0*'
_output_shapes
:????????? 2
gru_step/mul_2?
gru_step/add_3AddV2gru_step/mul_1:z:0gru_step/mul_2:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/add_3?
#message_layer/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2%
#message_layer/strided_slice_2/stack?
%message_layer/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2'
%message_layer/strided_slice_2/stack_1?
%message_layer/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%message_layer/strided_slice_2/stack_2?
message_layer/strided_slice_2StridedSliceinputs_3,message_layer/strided_slice_2/stack:output:0.message_layer/strided_slice_2/stack_1:output:0.message_layer/strided_slice_2/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
message_layer/strided_slice_2?
message_layer/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
message_layer/GatherV2_1/axis?
message_layer/GatherV2_1GatherV2gru_step/add_3:z:0&message_layer/strided_slice_2:output:0&message_layer/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:????????? 2
message_layer/GatherV2_1?
message_layer/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :2 
message_layer/ExpandDims_1/dim?
message_layer/ExpandDims_1
ExpandDims!message_layer/GatherV2_1:output:0'message_layer/ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:????????? 2
message_layer/ExpandDims_1?
message_layer/MatMul_1BatchMatMulV23bond_embedding/embedding_lookup/Identity_1:output:0#message_layer/ExpandDims_1:output:0*
T0*+
_output_shapes
:????????? 2
message_layer/MatMul_1}
message_layer/Shape_1Shapemessage_layer/MatMul_1:output:0*
T0*
_output_shapes
:2
message_layer/Shape_1?
message_layer/Squeeze_1Squeezemessage_layer/MatMul_1:output:0*
T0*'
_output_shapes
:????????? *
squeeze_dims

?????????2
message_layer/Squeeze_1?
message_layer/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
message_layer/dropout_1/Const?
message_layer/dropout_1/MulMul message_layer/Squeeze_1:output:0&message_layer/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
message_layer/dropout_1/Mul?
message_layer/dropout_1/ShapeShape message_layer/Squeeze_1:output:0*
T0*
_output_shapes
:2
message_layer/dropout_1/Shape?
4message_layer/dropout_1/random_uniform/RandomUniformRandomUniform&message_layer/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*

seed*
seed2??n26
4message_layer/dropout_1/random_uniform/RandomUniform?
&message_layer/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2(
&message_layer/dropout_1/GreaterEqual/y?
$message_layer/dropout_1/GreaterEqualGreaterEqual=message_layer/dropout_1/random_uniform/RandomUniform:output:0/message_layer/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2&
$message_layer/dropout_1/GreaterEqual?
message_layer/dropout_1/CastCast(message_layer/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
message_layer/dropout_1/Cast?
message_layer/dropout_1/Mul_1Mulmessage_layer/dropout_1/Mul:z:0 message_layer/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2
message_layer/dropout_1/Mul_1?
#message_layer/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2%
#message_layer/strided_slice_3/stack?
%message_layer/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2'
%message_layer/strided_slice_3/stack_1?
%message_layer/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%message_layer/strided_slice_3/stack_2?
message_layer/strided_slice_3StridedSliceinputs_3,message_layer/strided_slice_3/stack:output:0.message_layer/strided_slice_3/stack_1:output:0.message_layer/strided_slice_3/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
message_layer/strided_slice_3?
message_layer/SegmentSum_1
SegmentSum message_layer/Squeeze_1:output:0&message_layer/strided_slice_3:output:0*
T0*
Tindices0*'
_output_shapes
:????????? 2
message_layer/SegmentSum_1?
gru_step/ReadVariableOp_1ReadVariableOp gru_step_readvariableop_resource*
_output_shapes

:`*
dtype02
gru_step/ReadVariableOp_1?
gru_step/unstack_1Unpack!gru_step/ReadVariableOp_1:value:0*
T0* 
_output_shapes
:`:`*	
num2
gru_step/unstack_1?
 gru_step/MatMul_2/ReadVariableOpReadVariableOp'gru_step_matmul_readvariableop_resource*
_output_shapes

: `*
dtype02"
 gru_step/MatMul_2/ReadVariableOp?
gru_step/MatMul_2MatMul#message_layer/SegmentSum_1:output:0(gru_step/MatMul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2
gru_step/MatMul_2?
gru_step/BiasAdd_2BiasAddgru_step/MatMul_2:product:0gru_step/unstack_1:output:0*
T0*'
_output_shapes
:?????????`2
gru_step/BiasAdd_2?
gru_step/split_2/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_step/split_2/split_dim?
gru_step/split_2Split#gru_step/split_2/split_dim:output:0gru_step/BiasAdd_2:output:0*
T0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
gru_step/split_2?
 gru_step/MatMul_3/ReadVariableOpReadVariableOp)gru_step_matmul_1_readvariableop_resource*
_output_shapes

: `*
dtype02"
 gru_step/MatMul_3/ReadVariableOp?
gru_step/MatMul_3MatMulgru_step/add_3:z:0(gru_step/MatMul_3/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2
gru_step/MatMul_3?
gru_step/BiasAdd_3BiasAddgru_step/MatMul_3:product:0gru_step/unstack_1:output:1*
T0*'
_output_shapes
:?????????`2
gru_step/BiasAdd_3y
gru_step/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"        ????2
gru_step/Const_1?
gru_step/split_3/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_step/split_3/split_dim?
gru_step/split_3SplitVgru_step/BiasAdd_3:output:0gru_step/Const_1:output:0#gru_step/split_3/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
gru_step/split_3?
gru_step/add_4AddV2gru_step/split_2:output:0gru_step/split_3:output:0*
T0*'
_output_shapes
:????????? 2
gru_step/add_4y
gru_step/Sigmoid_2Sigmoidgru_step/add_4:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Sigmoid_2?
gru_step/add_5AddV2gru_step/split_2:output:1gru_step/split_3:output:1*
T0*'
_output_shapes
:????????? 2
gru_step/add_5y
gru_step/Sigmoid_3Sigmoidgru_step/add_5:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Sigmoid_3?
gru_step/mul_3Mulgru_step/Sigmoid_3:y:0gru_step/split_3:output:2*
T0*'
_output_shapes
:????????? 2
gru_step/mul_3?
gru_step/add_6AddV2gru_step/split_2:output:2gru_step/mul_3:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/add_6p
gru_step/Tanh_1Tanhgru_step/add_6:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Tanh_1?
gru_step/mul_4Mulgru_step/Sigmoid_2:y:0gru_step/add_3:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/mul_4i
gru_step/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_step/sub_1/x?
gru_step/sub_1Subgru_step/sub_1/x:output:0gru_step/Sigmoid_2:y:0*
T0*'
_output_shapes
:????????? 2
gru_step/sub_1?
gru_step/mul_5Mulgru_step/sub_1:z:0gru_step/Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
gru_step/mul_5?
gru_step/add_7AddV2gru_step/mul_4:z:0gru_step/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/add_7?
#message_layer/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"       2%
#message_layer/strided_slice_4/stack?
%message_layer/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2'
%message_layer/strided_slice_4/stack_1?
%message_layer/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%message_layer/strided_slice_4/stack_2?
message_layer/strided_slice_4StridedSliceinputs_3,message_layer/strided_slice_4/stack:output:0.message_layer/strided_slice_4/stack_1:output:0.message_layer/strided_slice_4/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
message_layer/strided_slice_4?
message_layer/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
message_layer/GatherV2_2/axis?
message_layer/GatherV2_2GatherV2gru_step/add_7:z:0&message_layer/strided_slice_4:output:0&message_layer/GatherV2_2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:????????? 2
message_layer/GatherV2_2?
message_layer/ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :2 
message_layer/ExpandDims_2/dim?
message_layer/ExpandDims_2
ExpandDims!message_layer/GatherV2_2:output:0'message_layer/ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:????????? 2
message_layer/ExpandDims_2?
message_layer/MatMul_2BatchMatMulV23bond_embedding/embedding_lookup/Identity_1:output:0#message_layer/ExpandDims_2:output:0*
T0*+
_output_shapes
:????????? 2
message_layer/MatMul_2}
message_layer/Shape_2Shapemessage_layer/MatMul_2:output:0*
T0*
_output_shapes
:2
message_layer/Shape_2?
message_layer/Squeeze_2Squeezemessage_layer/MatMul_2:output:0*
T0*'
_output_shapes
:????????? *
squeeze_dims

?????????2
message_layer/Squeeze_2?
message_layer/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
message_layer/dropout_2/Const?
message_layer/dropout_2/MulMul message_layer/Squeeze_2:output:0&message_layer/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2
message_layer/dropout_2/Mul?
message_layer/dropout_2/ShapeShape message_layer/Squeeze_2:output:0*
T0*
_output_shapes
:2
message_layer/dropout_2/Shape?
4message_layer/dropout_2/random_uniform/RandomUniformRandomUniform&message_layer/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*

seed*
seed2???26
4message_layer/dropout_2/random_uniform/RandomUniform?
&message_layer/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2(
&message_layer/dropout_2/GreaterEqual/y?
$message_layer/dropout_2/GreaterEqualGreaterEqual=message_layer/dropout_2/random_uniform/RandomUniform:output:0/message_layer/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2&
$message_layer/dropout_2/GreaterEqual?
message_layer/dropout_2/CastCast(message_layer/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
message_layer/dropout_2/Cast?
message_layer/dropout_2/Mul_1Mulmessage_layer/dropout_2/Mul:z:0 message_layer/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2
message_layer/dropout_2/Mul_1?
#message_layer/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        2%
#message_layer/strided_slice_5/stack?
%message_layer/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2'
%message_layer/strided_slice_5/stack_1?
%message_layer/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%message_layer/strided_slice_5/stack_2?
message_layer/strided_slice_5StridedSliceinputs_3,message_layer/strided_slice_5/stack:output:0.message_layer/strided_slice_5/stack_1:output:0.message_layer/strided_slice_5/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
message_layer/strided_slice_5?
message_layer/SegmentSum_2
SegmentSum message_layer/Squeeze_2:output:0&message_layer/strided_slice_5:output:0*
T0*
Tindices0*'
_output_shapes
:????????? 2
message_layer/SegmentSum_2?
gru_step/ReadVariableOp_2ReadVariableOp gru_step_readvariableop_resource*
_output_shapes

:`*
dtype02
gru_step/ReadVariableOp_2?
gru_step/unstack_2Unpack!gru_step/ReadVariableOp_2:value:0*
T0* 
_output_shapes
:`:`*	
num2
gru_step/unstack_2?
 gru_step/MatMul_4/ReadVariableOpReadVariableOp'gru_step_matmul_readvariableop_resource*
_output_shapes

: `*
dtype02"
 gru_step/MatMul_4/ReadVariableOp?
gru_step/MatMul_4MatMul#message_layer/SegmentSum_2:output:0(gru_step/MatMul_4/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2
gru_step/MatMul_4?
gru_step/BiasAdd_4BiasAddgru_step/MatMul_4:product:0gru_step/unstack_2:output:0*
T0*'
_output_shapes
:?????????`2
gru_step/BiasAdd_4?
gru_step/split_4/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_step/split_4/split_dim?
gru_step/split_4Split#gru_step/split_4/split_dim:output:0gru_step/BiasAdd_4:output:0*
T0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
gru_step/split_4?
 gru_step/MatMul_5/ReadVariableOpReadVariableOp)gru_step_matmul_1_readvariableop_resource*
_output_shapes

: `*
dtype02"
 gru_step/MatMul_5/ReadVariableOp?
gru_step/MatMul_5MatMulgru_step/add_7:z:0(gru_step/MatMul_5/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2
gru_step/MatMul_5?
gru_step/BiasAdd_5BiasAddgru_step/MatMul_5:product:0gru_step/unstack_2:output:1*
T0*'
_output_shapes
:?????????`2
gru_step/BiasAdd_5y
gru_step/Const_2Const*
_output_shapes
:*
dtype0*!
valueB"        ????2
gru_step/Const_2?
gru_step/split_5/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_step/split_5/split_dim?
gru_step/split_5SplitVgru_step/BiasAdd_5:output:0gru_step/Const_2:output:0#gru_step/split_5/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
gru_step/split_5?
gru_step/add_8AddV2gru_step/split_4:output:0gru_step/split_5:output:0*
T0*'
_output_shapes
:????????? 2
gru_step/add_8y
gru_step/Sigmoid_4Sigmoidgru_step/add_8:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Sigmoid_4?
gru_step/add_9AddV2gru_step/split_4:output:1gru_step/split_5:output:1*
T0*'
_output_shapes
:????????? 2
gru_step/add_9y
gru_step/Sigmoid_5Sigmoidgru_step/add_9:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Sigmoid_5?
gru_step/mul_6Mulgru_step/Sigmoid_5:y:0gru_step/split_5:output:2*
T0*'
_output_shapes
:????????? 2
gru_step/mul_6?
gru_step/add_10AddV2gru_step/split_4:output:2gru_step/mul_6:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/add_10q
gru_step/Tanh_2Tanhgru_step/add_10:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Tanh_2?
gru_step/mul_7Mulgru_step/Sigmoid_4:y:0gru_step/add_7:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/mul_7i
gru_step/sub_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_step/sub_2/x?
gru_step/sub_2Subgru_step/sub_2/x:output:0gru_step/Sigmoid_4:y:0*
T0*'
_output_shapes
:????????? 2
gru_step/sub_2?
gru_step/mul_8Mulgru_step/sub_2:z:0gru_step/Tanh_2:y:0*
T0*'
_output_shapes
:????????? 2
gru_step/mul_8?
gru_step/add_11AddV2gru_step/mul_7:z:0gru_step/mul_8:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/add_11?
#message_layer/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"       2%
#message_layer/strided_slice_6/stack?
%message_layer/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2'
%message_layer/strided_slice_6/stack_1?
%message_layer/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%message_layer/strided_slice_6/stack_2?
message_layer/strided_slice_6StridedSliceinputs_3,message_layer/strided_slice_6/stack:output:0.message_layer/strided_slice_6/stack_1:output:0.message_layer/strided_slice_6/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
message_layer/strided_slice_6?
message_layer/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
message_layer/GatherV2_3/axis?
message_layer/GatherV2_3GatherV2gru_step/add_11:z:0&message_layer/strided_slice_6:output:0&message_layer/GatherV2_3/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:????????? 2
message_layer/GatherV2_3?
message_layer/ExpandDims_3/dimConst*
_output_shapes
: *
dtype0*
value	B :2 
message_layer/ExpandDims_3/dim?
message_layer/ExpandDims_3
ExpandDims!message_layer/GatherV2_3:output:0'message_layer/ExpandDims_3/dim:output:0*
T0*+
_output_shapes
:????????? 2
message_layer/ExpandDims_3?
message_layer/MatMul_3BatchMatMulV23bond_embedding/embedding_lookup/Identity_1:output:0#message_layer/ExpandDims_3:output:0*
T0*+
_output_shapes
:????????? 2
message_layer/MatMul_3}
message_layer/Shape_3Shapemessage_layer/MatMul_3:output:0*
T0*
_output_shapes
:2
message_layer/Shape_3?
message_layer/Squeeze_3Squeezemessage_layer/MatMul_3:output:0*
T0*'
_output_shapes
:????????? *
squeeze_dims

?????????2
message_layer/Squeeze_3?
message_layer/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
message_layer/dropout_3/Const?
message_layer/dropout_3/MulMul message_layer/Squeeze_3:output:0&message_layer/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2
message_layer/dropout_3/Mul?
message_layer/dropout_3/ShapeShape message_layer/Squeeze_3:output:0*
T0*
_output_shapes
:2
message_layer/dropout_3/Shape?
4message_layer/dropout_3/random_uniform/RandomUniformRandomUniform&message_layer/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*

seed*
seed2???26
4message_layer/dropout_3/random_uniform/RandomUniform?
&message_layer/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2(
&message_layer/dropout_3/GreaterEqual/y?
$message_layer/dropout_3/GreaterEqualGreaterEqual=message_layer/dropout_3/random_uniform/RandomUniform:output:0/message_layer/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2&
$message_layer/dropout_3/GreaterEqual?
message_layer/dropout_3/CastCast(message_layer/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
message_layer/dropout_3/Cast?
message_layer/dropout_3/Mul_1Mulmessage_layer/dropout_3/Mul:z:0 message_layer/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2
message_layer/dropout_3/Mul_1?
#message_layer/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"        2%
#message_layer/strided_slice_7/stack?
%message_layer/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2'
%message_layer/strided_slice_7/stack_1?
%message_layer/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%message_layer/strided_slice_7/stack_2?
message_layer/strided_slice_7StridedSliceinputs_3,message_layer/strided_slice_7/stack:output:0.message_layer/strided_slice_7/stack_1:output:0.message_layer/strided_slice_7/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
message_layer/strided_slice_7?
message_layer/SegmentSum_3
SegmentSum message_layer/Squeeze_3:output:0&message_layer/strided_slice_7:output:0*
T0*
Tindices0*'
_output_shapes
:????????? 2
message_layer/SegmentSum_3?
gru_step/ReadVariableOp_3ReadVariableOp gru_step_readvariableop_resource*
_output_shapes

:`*
dtype02
gru_step/ReadVariableOp_3?
gru_step/unstack_3Unpack!gru_step/ReadVariableOp_3:value:0*
T0* 
_output_shapes
:`:`*	
num2
gru_step/unstack_3?
 gru_step/MatMul_6/ReadVariableOpReadVariableOp'gru_step_matmul_readvariableop_resource*
_output_shapes

: `*
dtype02"
 gru_step/MatMul_6/ReadVariableOp?
gru_step/MatMul_6MatMul#message_layer/SegmentSum_3:output:0(gru_step/MatMul_6/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2
gru_step/MatMul_6?
gru_step/BiasAdd_6BiasAddgru_step/MatMul_6:product:0gru_step/unstack_3:output:0*
T0*'
_output_shapes
:?????????`2
gru_step/BiasAdd_6?
gru_step/split_6/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_step/split_6/split_dim?
gru_step/split_6Split#gru_step/split_6/split_dim:output:0gru_step/BiasAdd_6:output:0*
T0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
gru_step/split_6?
 gru_step/MatMul_7/ReadVariableOpReadVariableOp)gru_step_matmul_1_readvariableop_resource*
_output_shapes

: `*
dtype02"
 gru_step/MatMul_7/ReadVariableOp?
gru_step/MatMul_7MatMulgru_step/add_11:z:0(gru_step/MatMul_7/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2
gru_step/MatMul_7?
gru_step/BiasAdd_7BiasAddgru_step/MatMul_7:product:0gru_step/unstack_3:output:1*
T0*'
_output_shapes
:?????????`2
gru_step/BiasAdd_7y
gru_step/Const_3Const*
_output_shapes
:*
dtype0*!
valueB"        ????2
gru_step/Const_3?
gru_step/split_7/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_step/split_7/split_dim?
gru_step/split_7SplitVgru_step/BiasAdd_7:output:0gru_step/Const_3:output:0#gru_step/split_7/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
gru_step/split_7?
gru_step/add_12AddV2gru_step/split_6:output:0gru_step/split_7:output:0*
T0*'
_output_shapes
:????????? 2
gru_step/add_12z
gru_step/Sigmoid_6Sigmoidgru_step/add_12:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Sigmoid_6?
gru_step/add_13AddV2gru_step/split_6:output:1gru_step/split_7:output:1*
T0*'
_output_shapes
:????????? 2
gru_step/add_13z
gru_step/Sigmoid_7Sigmoidgru_step/add_13:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Sigmoid_7?
gru_step/mul_9Mulgru_step/Sigmoid_7:y:0gru_step/split_7:output:2*
T0*'
_output_shapes
:????????? 2
gru_step/mul_9?
gru_step/add_14AddV2gru_step/split_6:output:2gru_step/mul_9:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/add_14q
gru_step/Tanh_3Tanhgru_step/add_14:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Tanh_3?
gru_step/mul_10Mulgru_step/Sigmoid_6:y:0gru_step/add_11:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/mul_10i
gru_step/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_step/sub_3/x?
gru_step/sub_3Subgru_step/sub_3/x:output:0gru_step/Sigmoid_6:y:0*
T0*'
_output_shapes
:????????? 2
gru_step/sub_3?
gru_step/mul_11Mulgru_step/sub_3:z:0gru_step/Tanh_3:y:0*
T0*'
_output_shapes
:????????? 2
gru_step/mul_11?
gru_step/add_15AddV2gru_step/mul_10:z:0gru_step/mul_11:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/add_15?
#message_layer/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB"       2%
#message_layer/strided_slice_8/stack?
%message_layer/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2'
%message_layer/strided_slice_8/stack_1?
%message_layer/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%message_layer/strided_slice_8/stack_2?
message_layer/strided_slice_8StridedSliceinputs_3,message_layer/strided_slice_8/stack:output:0.message_layer/strided_slice_8/stack_1:output:0.message_layer/strided_slice_8/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
message_layer/strided_slice_8?
message_layer/GatherV2_4/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
message_layer/GatherV2_4/axis?
message_layer/GatherV2_4GatherV2gru_step/add_15:z:0&message_layer/strided_slice_8:output:0&message_layer/GatherV2_4/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:????????? 2
message_layer/GatherV2_4?
message_layer/ExpandDims_4/dimConst*
_output_shapes
: *
dtype0*
value	B :2 
message_layer/ExpandDims_4/dim?
message_layer/ExpandDims_4
ExpandDims!message_layer/GatherV2_4:output:0'message_layer/ExpandDims_4/dim:output:0*
T0*+
_output_shapes
:????????? 2
message_layer/ExpandDims_4?
message_layer/MatMul_4BatchMatMulV23bond_embedding/embedding_lookup/Identity_1:output:0#message_layer/ExpandDims_4:output:0*
T0*+
_output_shapes
:????????? 2
message_layer/MatMul_4}
message_layer/Shape_4Shapemessage_layer/MatMul_4:output:0*
T0*
_output_shapes
:2
message_layer/Shape_4?
message_layer/Squeeze_4Squeezemessage_layer/MatMul_4:output:0*
T0*'
_output_shapes
:????????? *
squeeze_dims

?????????2
message_layer/Squeeze_4?
message_layer/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
message_layer/dropout_4/Const?
message_layer/dropout_4/MulMul message_layer/Squeeze_4:output:0&message_layer/dropout_4/Const:output:0*
T0*'
_output_shapes
:????????? 2
message_layer/dropout_4/Mul?
message_layer/dropout_4/ShapeShape message_layer/Squeeze_4:output:0*
T0*
_output_shapes
:2
message_layer/dropout_4/Shape?
4message_layer/dropout_4/random_uniform/RandomUniformRandomUniform&message_layer/dropout_4/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*

seed*
seed2???26
4message_layer/dropout_4/random_uniform/RandomUniform?
&message_layer/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2(
&message_layer/dropout_4/GreaterEqual/y?
$message_layer/dropout_4/GreaterEqualGreaterEqual=message_layer/dropout_4/random_uniform/RandomUniform:output:0/message_layer/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2&
$message_layer/dropout_4/GreaterEqual?
message_layer/dropout_4/CastCast(message_layer/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
message_layer/dropout_4/Cast?
message_layer/dropout_4/Mul_1Mulmessage_layer/dropout_4/Mul:z:0 message_layer/dropout_4/Cast:y:0*
T0*'
_output_shapes
:????????? 2
message_layer/dropout_4/Mul_1?
#message_layer/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB"        2%
#message_layer/strided_slice_9/stack?
%message_layer/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2'
%message_layer/strided_slice_9/stack_1?
%message_layer/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%message_layer/strided_slice_9/stack_2?
message_layer/strided_slice_9StridedSliceinputs_3,message_layer/strided_slice_9/stack:output:0.message_layer/strided_slice_9/stack_1:output:0.message_layer/strided_slice_9/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
message_layer/strided_slice_9?
message_layer/SegmentSum_4
SegmentSum message_layer/Squeeze_4:output:0&message_layer/strided_slice_9:output:0*
T0*
Tindices0*'
_output_shapes
:????????? 2
message_layer/SegmentSum_4?
gru_step/ReadVariableOp_4ReadVariableOp gru_step_readvariableop_resource*
_output_shapes

:`*
dtype02
gru_step/ReadVariableOp_4?
gru_step/unstack_4Unpack!gru_step/ReadVariableOp_4:value:0*
T0* 
_output_shapes
:`:`*	
num2
gru_step/unstack_4?
 gru_step/MatMul_8/ReadVariableOpReadVariableOp'gru_step_matmul_readvariableop_resource*
_output_shapes

: `*
dtype02"
 gru_step/MatMul_8/ReadVariableOp?
gru_step/MatMul_8MatMul#message_layer/SegmentSum_4:output:0(gru_step/MatMul_8/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2
gru_step/MatMul_8?
gru_step/BiasAdd_8BiasAddgru_step/MatMul_8:product:0gru_step/unstack_4:output:0*
T0*'
_output_shapes
:?????????`2
gru_step/BiasAdd_8?
gru_step/split_8/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_step/split_8/split_dim?
gru_step/split_8Split#gru_step/split_8/split_dim:output:0gru_step/BiasAdd_8:output:0*
T0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
gru_step/split_8?
 gru_step/MatMul_9/ReadVariableOpReadVariableOp)gru_step_matmul_1_readvariableop_resource*
_output_shapes

: `*
dtype02"
 gru_step/MatMul_9/ReadVariableOp?
gru_step/MatMul_9MatMulgru_step/add_15:z:0(gru_step/MatMul_9/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2
gru_step/MatMul_9?
gru_step/BiasAdd_9BiasAddgru_step/MatMul_9:product:0gru_step/unstack_4:output:1*
T0*'
_output_shapes
:?????????`2
gru_step/BiasAdd_9y
gru_step/Const_4Const*
_output_shapes
:*
dtype0*!
valueB"        ????2
gru_step/Const_4?
gru_step/split_9/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_step/split_9/split_dim?
gru_step/split_9SplitVgru_step/BiasAdd_9:output:0gru_step/Const_4:output:0#gru_step/split_9/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
gru_step/split_9?
gru_step/add_16AddV2gru_step/split_8:output:0gru_step/split_9:output:0*
T0*'
_output_shapes
:????????? 2
gru_step/add_16z
gru_step/Sigmoid_8Sigmoidgru_step/add_16:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Sigmoid_8?
gru_step/add_17AddV2gru_step/split_8:output:1gru_step/split_9:output:1*
T0*'
_output_shapes
:????????? 2
gru_step/add_17z
gru_step/Sigmoid_9Sigmoidgru_step/add_17:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Sigmoid_9?
gru_step/mul_12Mulgru_step/Sigmoid_9:y:0gru_step/split_9:output:2*
T0*'
_output_shapes
:????????? 2
gru_step/mul_12?
gru_step/add_18AddV2gru_step/split_8:output:2gru_step/mul_12:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/add_18q
gru_step/Tanh_4Tanhgru_step/add_18:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Tanh_4?
gru_step/mul_13Mulgru_step/Sigmoid_8:y:0gru_step/add_15:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/mul_13i
gru_step/sub_4/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_step/sub_4/x?
gru_step/sub_4Subgru_step/sub_4/x:output:0gru_step/Sigmoid_8:y:0*
T0*'
_output_shapes
:????????? 2
gru_step/sub_4?
gru_step/mul_14Mulgru_step/sub_4:z:0gru_step/Tanh_4:y:0*
T0*'
_output_shapes
:????????? 2
gru_step/mul_14?
gru_step/add_19AddV2gru_step/mul_13:z:0gru_step/mul_14:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/add_19?
$message_layer/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"       2&
$message_layer/strided_slice_10/stack?
&message_layer/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&message_layer/strided_slice_10/stack_1?
&message_layer/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&message_layer/strided_slice_10/stack_2?
message_layer/strided_slice_10StridedSliceinputs_3-message_layer/strided_slice_10/stack:output:0/message_layer/strided_slice_10/stack_1:output:0/message_layer/strided_slice_10/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2 
message_layer/strided_slice_10?
message_layer/GatherV2_5/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
message_layer/GatherV2_5/axis?
message_layer/GatherV2_5GatherV2gru_step/add_19:z:0'message_layer/strided_slice_10:output:0&message_layer/GatherV2_5/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:????????? 2
message_layer/GatherV2_5?
message_layer/ExpandDims_5/dimConst*
_output_shapes
: *
dtype0*
value	B :2 
message_layer/ExpandDims_5/dim?
message_layer/ExpandDims_5
ExpandDims!message_layer/GatherV2_5:output:0'message_layer/ExpandDims_5/dim:output:0*
T0*+
_output_shapes
:????????? 2
message_layer/ExpandDims_5?
message_layer/MatMul_5BatchMatMulV23bond_embedding/embedding_lookup/Identity_1:output:0#message_layer/ExpandDims_5:output:0*
T0*+
_output_shapes
:????????? 2
message_layer/MatMul_5}
message_layer/Shape_5Shapemessage_layer/MatMul_5:output:0*
T0*
_output_shapes
:2
message_layer/Shape_5?
message_layer/Squeeze_5Squeezemessage_layer/MatMul_5:output:0*
T0*'
_output_shapes
:????????? *
squeeze_dims

?????????2
message_layer/Squeeze_5?
message_layer/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
message_layer/dropout_5/Const?
message_layer/dropout_5/MulMul message_layer/Squeeze_5:output:0&message_layer/dropout_5/Const:output:0*
T0*'
_output_shapes
:????????? 2
message_layer/dropout_5/Mul?
message_layer/dropout_5/ShapeShape message_layer/Squeeze_5:output:0*
T0*
_output_shapes
:2
message_layer/dropout_5/Shape?
4message_layer/dropout_5/random_uniform/RandomUniformRandomUniform&message_layer/dropout_5/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*

seed*
seed2??26
4message_layer/dropout_5/random_uniform/RandomUniform?
&message_layer/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2(
&message_layer/dropout_5/GreaterEqual/y?
$message_layer/dropout_5/GreaterEqualGreaterEqual=message_layer/dropout_5/random_uniform/RandomUniform:output:0/message_layer/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2&
$message_layer/dropout_5/GreaterEqual?
message_layer/dropout_5/CastCast(message_layer/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
message_layer/dropout_5/Cast?
message_layer/dropout_5/Mul_1Mulmessage_layer/dropout_5/Mul:z:0 message_layer/dropout_5/Cast:y:0*
T0*'
_output_shapes
:????????? 2
message_layer/dropout_5/Mul_1?
$message_layer/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$message_layer/strided_slice_11/stack?
&message_layer/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&message_layer/strided_slice_11/stack_1?
&message_layer/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&message_layer/strided_slice_11/stack_2?
message_layer/strided_slice_11StridedSliceinputs_3-message_layer/strided_slice_11/stack:output:0/message_layer/strided_slice_11/stack_1:output:0/message_layer/strided_slice_11/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2 
message_layer/strided_slice_11?
message_layer/SegmentSum_5
SegmentSum message_layer/Squeeze_5:output:0'message_layer/strided_slice_11:output:0*
T0*
Tindices0*'
_output_shapes
:????????? 2
message_layer/SegmentSum_5?
gru_step/ReadVariableOp_5ReadVariableOp gru_step_readvariableop_resource*
_output_shapes

:`*
dtype02
gru_step/ReadVariableOp_5?
gru_step/unstack_5Unpack!gru_step/ReadVariableOp_5:value:0*
T0* 
_output_shapes
:`:`*	
num2
gru_step/unstack_5?
!gru_step/MatMul_10/ReadVariableOpReadVariableOp'gru_step_matmul_readvariableop_resource*
_output_shapes

: `*
dtype02#
!gru_step/MatMul_10/ReadVariableOp?
gru_step/MatMul_10MatMul#message_layer/SegmentSum_5:output:0)gru_step/MatMul_10/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2
gru_step/MatMul_10?
gru_step/BiasAdd_10BiasAddgru_step/MatMul_10:product:0gru_step/unstack_5:output:0*
T0*'
_output_shapes
:?????????`2
gru_step/BiasAdd_10?
gru_step/split_10/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_step/split_10/split_dim?
gru_step/split_10Split$gru_step/split_10/split_dim:output:0gru_step/BiasAdd_10:output:0*
T0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
gru_step/split_10?
!gru_step/MatMul_11/ReadVariableOpReadVariableOp)gru_step_matmul_1_readvariableop_resource*
_output_shapes

: `*
dtype02#
!gru_step/MatMul_11/ReadVariableOp?
gru_step/MatMul_11MatMulgru_step/add_19:z:0)gru_step/MatMul_11/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2
gru_step/MatMul_11?
gru_step/BiasAdd_11BiasAddgru_step/MatMul_11:product:0gru_step/unstack_5:output:1*
T0*'
_output_shapes
:?????????`2
gru_step/BiasAdd_11y
gru_step/Const_5Const*
_output_shapes
:*
dtype0*!
valueB"        ????2
gru_step/Const_5?
gru_step/split_11/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_step/split_11/split_dim?
gru_step/split_11SplitVgru_step/BiasAdd_11:output:0gru_step/Const_5:output:0$gru_step/split_11/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
gru_step/split_11?
gru_step/add_20AddV2gru_step/split_10:output:0gru_step/split_11:output:0*
T0*'
_output_shapes
:????????? 2
gru_step/add_20|
gru_step/Sigmoid_10Sigmoidgru_step/add_20:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Sigmoid_10?
gru_step/add_21AddV2gru_step/split_10:output:1gru_step/split_11:output:1*
T0*'
_output_shapes
:????????? 2
gru_step/add_21|
gru_step/Sigmoid_11Sigmoidgru_step/add_21:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Sigmoid_11?
gru_step/mul_15Mulgru_step/Sigmoid_11:y:0gru_step/split_11:output:2*
T0*'
_output_shapes
:????????? 2
gru_step/mul_15?
gru_step/add_22AddV2gru_step/split_10:output:2gru_step/mul_15:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/add_22q
gru_step/Tanh_5Tanhgru_step/add_22:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Tanh_5?
gru_step/mul_16Mulgru_step/Sigmoid_10:y:0gru_step/add_19:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/mul_16i
gru_step/sub_5/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_step/sub_5/x?
gru_step/sub_5Subgru_step/sub_5/x:output:0gru_step/Sigmoid_10:y:0*
T0*'
_output_shapes
:????????? 2
gru_step/sub_5?
gru_step/mul_17Mulgru_step/sub_5:z:0gru_step/Tanh_5:y:0*
T0*'
_output_shapes
:????????? 2
gru_step/mul_17?
gru_step/add_23AddV2gru_step/mul_16:z:0gru_step/mul_17:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/add_23?
$message_layer/strided_slice_12/stackConst*
_output_shapes
:*
dtype0*
valueB"       2&
$message_layer/strided_slice_12/stack?
&message_layer/strided_slice_12/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&message_layer/strided_slice_12/stack_1?
&message_layer/strided_slice_12/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&message_layer/strided_slice_12/stack_2?
message_layer/strided_slice_12StridedSliceinputs_3-message_layer/strided_slice_12/stack:output:0/message_layer/strided_slice_12/stack_1:output:0/message_layer/strided_slice_12/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2 
message_layer/strided_slice_12?
message_layer/GatherV2_6/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
message_layer/GatherV2_6/axis?
message_layer/GatherV2_6GatherV2gru_step/add_23:z:0'message_layer/strided_slice_12:output:0&message_layer/GatherV2_6/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:????????? 2
message_layer/GatherV2_6?
message_layer/ExpandDims_6/dimConst*
_output_shapes
: *
dtype0*
value	B :2 
message_layer/ExpandDims_6/dim?
message_layer/ExpandDims_6
ExpandDims!message_layer/GatherV2_6:output:0'message_layer/ExpandDims_6/dim:output:0*
T0*+
_output_shapes
:????????? 2
message_layer/ExpandDims_6?
message_layer/MatMul_6BatchMatMulV23bond_embedding/embedding_lookup/Identity_1:output:0#message_layer/ExpandDims_6:output:0*
T0*+
_output_shapes
:????????? 2
message_layer/MatMul_6}
message_layer/Shape_6Shapemessage_layer/MatMul_6:output:0*
T0*
_output_shapes
:2
message_layer/Shape_6?
message_layer/Squeeze_6Squeezemessage_layer/MatMul_6:output:0*
T0*'
_output_shapes
:????????? *
squeeze_dims

?????????2
message_layer/Squeeze_6?
message_layer/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
message_layer/dropout_6/Const?
message_layer/dropout_6/MulMul message_layer/Squeeze_6:output:0&message_layer/dropout_6/Const:output:0*
T0*'
_output_shapes
:????????? 2
message_layer/dropout_6/Mul?
message_layer/dropout_6/ShapeShape message_layer/Squeeze_6:output:0*
T0*
_output_shapes
:2
message_layer/dropout_6/Shape?
4message_layer/dropout_6/random_uniform/RandomUniformRandomUniform&message_layer/dropout_6/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*

seed*
seed2䵄26
4message_layer/dropout_6/random_uniform/RandomUniform?
&message_layer/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2(
&message_layer/dropout_6/GreaterEqual/y?
$message_layer/dropout_6/GreaterEqualGreaterEqual=message_layer/dropout_6/random_uniform/RandomUniform:output:0/message_layer/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2&
$message_layer/dropout_6/GreaterEqual?
message_layer/dropout_6/CastCast(message_layer/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
message_layer/dropout_6/Cast?
message_layer/dropout_6/Mul_1Mulmessage_layer/dropout_6/Mul:z:0 message_layer/dropout_6/Cast:y:0*
T0*'
_output_shapes
:????????? 2
message_layer/dropout_6/Mul_1?
$message_layer/strided_slice_13/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$message_layer/strided_slice_13/stack?
&message_layer/strided_slice_13/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&message_layer/strided_slice_13/stack_1?
&message_layer/strided_slice_13/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&message_layer/strided_slice_13/stack_2?
message_layer/strided_slice_13StridedSliceinputs_3-message_layer/strided_slice_13/stack:output:0/message_layer/strided_slice_13/stack_1:output:0/message_layer/strided_slice_13/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2 
message_layer/strided_slice_13?
message_layer/SegmentSum_6
SegmentSum message_layer/Squeeze_6:output:0'message_layer/strided_slice_13:output:0*
T0*
Tindices0*'
_output_shapes
:????????? 2
message_layer/SegmentSum_6?
gru_step/ReadVariableOp_6ReadVariableOp gru_step_readvariableop_resource*
_output_shapes

:`*
dtype02
gru_step/ReadVariableOp_6?
gru_step/unstack_6Unpack!gru_step/ReadVariableOp_6:value:0*
T0* 
_output_shapes
:`:`*	
num2
gru_step/unstack_6?
!gru_step/MatMul_12/ReadVariableOpReadVariableOp'gru_step_matmul_readvariableop_resource*
_output_shapes

: `*
dtype02#
!gru_step/MatMul_12/ReadVariableOp?
gru_step/MatMul_12MatMul#message_layer/SegmentSum_6:output:0)gru_step/MatMul_12/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2
gru_step/MatMul_12?
gru_step/BiasAdd_12BiasAddgru_step/MatMul_12:product:0gru_step/unstack_6:output:0*
T0*'
_output_shapes
:?????????`2
gru_step/BiasAdd_12?
gru_step/split_12/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_step/split_12/split_dim?
gru_step/split_12Split$gru_step/split_12/split_dim:output:0gru_step/BiasAdd_12:output:0*
T0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
gru_step/split_12?
!gru_step/MatMul_13/ReadVariableOpReadVariableOp)gru_step_matmul_1_readvariableop_resource*
_output_shapes

: `*
dtype02#
!gru_step/MatMul_13/ReadVariableOp?
gru_step/MatMul_13MatMulgru_step/add_23:z:0)gru_step/MatMul_13/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2
gru_step/MatMul_13?
gru_step/BiasAdd_13BiasAddgru_step/MatMul_13:product:0gru_step/unstack_6:output:1*
T0*'
_output_shapes
:?????????`2
gru_step/BiasAdd_13y
gru_step/Const_6Const*
_output_shapes
:*
dtype0*!
valueB"        ????2
gru_step/Const_6?
gru_step/split_13/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_step/split_13/split_dim?
gru_step/split_13SplitVgru_step/BiasAdd_13:output:0gru_step/Const_6:output:0$gru_step/split_13/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
gru_step/split_13?
gru_step/add_24AddV2gru_step/split_12:output:0gru_step/split_13:output:0*
T0*'
_output_shapes
:????????? 2
gru_step/add_24|
gru_step/Sigmoid_12Sigmoidgru_step/add_24:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Sigmoid_12?
gru_step/add_25AddV2gru_step/split_12:output:1gru_step/split_13:output:1*
T0*'
_output_shapes
:????????? 2
gru_step/add_25|
gru_step/Sigmoid_13Sigmoidgru_step/add_25:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Sigmoid_13?
gru_step/mul_18Mulgru_step/Sigmoid_13:y:0gru_step/split_13:output:2*
T0*'
_output_shapes
:????????? 2
gru_step/mul_18?
gru_step/add_26AddV2gru_step/split_12:output:2gru_step/mul_18:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/add_26q
gru_step/Tanh_6Tanhgru_step/add_26:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Tanh_6?
gru_step/mul_19Mulgru_step/Sigmoid_12:y:0gru_step/add_23:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/mul_19i
gru_step/sub_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_step/sub_6/x?
gru_step/sub_6Subgru_step/sub_6/x:output:0gru_step/Sigmoid_12:y:0*
T0*'
_output_shapes
:????????? 2
gru_step/sub_6?
gru_step/mul_20Mulgru_step/sub_6:z:0gru_step/Tanh_6:y:0*
T0*'
_output_shapes
:????????? 2
gru_step/mul_20?
gru_step/add_27AddV2gru_step/mul_19:z:0gru_step/mul_20:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/add_27?
$message_layer/strided_slice_14/stackConst*
_output_shapes
:*
dtype0*
valueB"       2&
$message_layer/strided_slice_14/stack?
&message_layer/strided_slice_14/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&message_layer/strided_slice_14/stack_1?
&message_layer/strided_slice_14/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&message_layer/strided_slice_14/stack_2?
message_layer/strided_slice_14StridedSliceinputs_3-message_layer/strided_slice_14/stack:output:0/message_layer/strided_slice_14/stack_1:output:0/message_layer/strided_slice_14/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2 
message_layer/strided_slice_14?
message_layer/GatherV2_7/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
message_layer/GatherV2_7/axis?
message_layer/GatherV2_7GatherV2gru_step/add_27:z:0'message_layer/strided_slice_14:output:0&message_layer/GatherV2_7/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:????????? 2
message_layer/GatherV2_7?
message_layer/ExpandDims_7/dimConst*
_output_shapes
: *
dtype0*
value	B :2 
message_layer/ExpandDims_7/dim?
message_layer/ExpandDims_7
ExpandDims!message_layer/GatherV2_7:output:0'message_layer/ExpandDims_7/dim:output:0*
T0*+
_output_shapes
:????????? 2
message_layer/ExpandDims_7?
message_layer/MatMul_7BatchMatMulV23bond_embedding/embedding_lookup/Identity_1:output:0#message_layer/ExpandDims_7:output:0*
T0*+
_output_shapes
:????????? 2
message_layer/MatMul_7}
message_layer/Shape_7Shapemessage_layer/MatMul_7:output:0*
T0*
_output_shapes
:2
message_layer/Shape_7?
message_layer/Squeeze_7Squeezemessage_layer/MatMul_7:output:0*
T0*'
_output_shapes
:????????? *
squeeze_dims

?????????2
message_layer/Squeeze_7?
message_layer/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
message_layer/dropout_7/Const?
message_layer/dropout_7/MulMul message_layer/Squeeze_7:output:0&message_layer/dropout_7/Const:output:0*
T0*'
_output_shapes
:????????? 2
message_layer/dropout_7/Mul?
message_layer/dropout_7/ShapeShape message_layer/Squeeze_7:output:0*
T0*
_output_shapes
:2
message_layer/dropout_7/Shape?
4message_layer/dropout_7/random_uniform/RandomUniformRandomUniform&message_layer/dropout_7/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*

seed*
seed2???26
4message_layer/dropout_7/random_uniform/RandomUniform?
&message_layer/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2(
&message_layer/dropout_7/GreaterEqual/y?
$message_layer/dropout_7/GreaterEqualGreaterEqual=message_layer/dropout_7/random_uniform/RandomUniform:output:0/message_layer/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2&
$message_layer/dropout_7/GreaterEqual?
message_layer/dropout_7/CastCast(message_layer/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
message_layer/dropout_7/Cast?
message_layer/dropout_7/Mul_1Mulmessage_layer/dropout_7/Mul:z:0 message_layer/dropout_7/Cast:y:0*
T0*'
_output_shapes
:????????? 2
message_layer/dropout_7/Mul_1?
$message_layer/strided_slice_15/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$message_layer/strided_slice_15/stack?
&message_layer/strided_slice_15/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&message_layer/strided_slice_15/stack_1?
&message_layer/strided_slice_15/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&message_layer/strided_slice_15/stack_2?
message_layer/strided_slice_15StridedSliceinputs_3-message_layer/strided_slice_15/stack:output:0/message_layer/strided_slice_15/stack_1:output:0/message_layer/strided_slice_15/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2 
message_layer/strided_slice_15?
message_layer/SegmentSum_7
SegmentSum message_layer/Squeeze_7:output:0'message_layer/strided_slice_15:output:0*
T0*
Tindices0*'
_output_shapes
:????????? 2
message_layer/SegmentSum_7?
gru_step/ReadVariableOp_7ReadVariableOp gru_step_readvariableop_resource*
_output_shapes

:`*
dtype02
gru_step/ReadVariableOp_7?
gru_step/unstack_7Unpack!gru_step/ReadVariableOp_7:value:0*
T0* 
_output_shapes
:`:`*	
num2
gru_step/unstack_7?
!gru_step/MatMul_14/ReadVariableOpReadVariableOp'gru_step_matmul_readvariableop_resource*
_output_shapes

: `*
dtype02#
!gru_step/MatMul_14/ReadVariableOp?
gru_step/MatMul_14MatMul#message_layer/SegmentSum_7:output:0)gru_step/MatMul_14/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2
gru_step/MatMul_14?
gru_step/BiasAdd_14BiasAddgru_step/MatMul_14:product:0gru_step/unstack_7:output:0*
T0*'
_output_shapes
:?????????`2
gru_step/BiasAdd_14?
gru_step/split_14/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_step/split_14/split_dim?
gru_step/split_14Split$gru_step/split_14/split_dim:output:0gru_step/BiasAdd_14:output:0*
T0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
gru_step/split_14?
!gru_step/MatMul_15/ReadVariableOpReadVariableOp)gru_step_matmul_1_readvariableop_resource*
_output_shapes

: `*
dtype02#
!gru_step/MatMul_15/ReadVariableOp?
gru_step/MatMul_15MatMulgru_step/add_27:z:0)gru_step/MatMul_15/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2
gru_step/MatMul_15?
gru_step/BiasAdd_15BiasAddgru_step/MatMul_15:product:0gru_step/unstack_7:output:1*
T0*'
_output_shapes
:?????????`2
gru_step/BiasAdd_15y
gru_step/Const_7Const*
_output_shapes
:*
dtype0*!
valueB"        ????2
gru_step/Const_7?
gru_step/split_15/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_step/split_15/split_dim?
gru_step/split_15SplitVgru_step/BiasAdd_15:output:0gru_step/Const_7:output:0$gru_step/split_15/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
gru_step/split_15?
gru_step/add_28AddV2gru_step/split_14:output:0gru_step/split_15:output:0*
T0*'
_output_shapes
:????????? 2
gru_step/add_28|
gru_step/Sigmoid_14Sigmoidgru_step/add_28:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Sigmoid_14?
gru_step/add_29AddV2gru_step/split_14:output:1gru_step/split_15:output:1*
T0*'
_output_shapes
:????????? 2
gru_step/add_29|
gru_step/Sigmoid_15Sigmoidgru_step/add_29:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Sigmoid_15?
gru_step/mul_21Mulgru_step/Sigmoid_15:y:0gru_step/split_15:output:2*
T0*'
_output_shapes
:????????? 2
gru_step/mul_21?
gru_step/add_30AddV2gru_step/split_14:output:2gru_step/mul_21:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/add_30q
gru_step/Tanh_7Tanhgru_step/add_30:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Tanh_7?
gru_step/mul_22Mulgru_step/Sigmoid_14:y:0gru_step/add_27:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/mul_22i
gru_step/sub_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_step/sub_7/x?
gru_step/sub_7Subgru_step/sub_7/x:output:0gru_step/Sigmoid_14:y:0*
T0*'
_output_shapes
:????????? 2
gru_step/sub_7?
gru_step/mul_23Mulgru_step/sub_7:z:0gru_step/Tanh_7:y:0*
T0*'
_output_shapes
:????????? 2
gru_step/mul_23?
gru_step/add_31AddV2gru_step/mul_22:z:0gru_step/mul_23:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/add_31?
$message_layer/strided_slice_16/stackConst*
_output_shapes
:*
dtype0*
valueB"       2&
$message_layer/strided_slice_16/stack?
&message_layer/strided_slice_16/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&message_layer/strided_slice_16/stack_1?
&message_layer/strided_slice_16/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&message_layer/strided_slice_16/stack_2?
message_layer/strided_slice_16StridedSliceinputs_3-message_layer/strided_slice_16/stack:output:0/message_layer/strided_slice_16/stack_1:output:0/message_layer/strided_slice_16/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2 
message_layer/strided_slice_16?
message_layer/GatherV2_8/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
message_layer/GatherV2_8/axis?
message_layer/GatherV2_8GatherV2gru_step/add_31:z:0'message_layer/strided_slice_16:output:0&message_layer/GatherV2_8/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:????????? 2
message_layer/GatherV2_8?
message_layer/ExpandDims_8/dimConst*
_output_shapes
: *
dtype0*
value	B :2 
message_layer/ExpandDims_8/dim?
message_layer/ExpandDims_8
ExpandDims!message_layer/GatherV2_8:output:0'message_layer/ExpandDims_8/dim:output:0*
T0*+
_output_shapes
:????????? 2
message_layer/ExpandDims_8?
message_layer/MatMul_8BatchMatMulV23bond_embedding/embedding_lookup/Identity_1:output:0#message_layer/ExpandDims_8:output:0*
T0*+
_output_shapes
:????????? 2
message_layer/MatMul_8}
message_layer/Shape_8Shapemessage_layer/MatMul_8:output:0*
T0*
_output_shapes
:2
message_layer/Shape_8?
message_layer/Squeeze_8Squeezemessage_layer/MatMul_8:output:0*
T0*'
_output_shapes
:????????? *
squeeze_dims

?????????2
message_layer/Squeeze_8?
message_layer/dropout_8/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
message_layer/dropout_8/Const?
message_layer/dropout_8/MulMul message_layer/Squeeze_8:output:0&message_layer/dropout_8/Const:output:0*
T0*'
_output_shapes
:????????? 2
message_layer/dropout_8/Mul?
message_layer/dropout_8/ShapeShape message_layer/Squeeze_8:output:0*
T0*
_output_shapes
:2
message_layer/dropout_8/Shape?
4message_layer/dropout_8/random_uniform/RandomUniformRandomUniform&message_layer/dropout_8/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*

seed*
seed2ᡴ26
4message_layer/dropout_8/random_uniform/RandomUniform?
&message_layer/dropout_8/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2(
&message_layer/dropout_8/GreaterEqual/y?
$message_layer/dropout_8/GreaterEqualGreaterEqual=message_layer/dropout_8/random_uniform/RandomUniform:output:0/message_layer/dropout_8/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2&
$message_layer/dropout_8/GreaterEqual?
message_layer/dropout_8/CastCast(message_layer/dropout_8/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
message_layer/dropout_8/Cast?
message_layer/dropout_8/Mul_1Mulmessage_layer/dropout_8/Mul:z:0 message_layer/dropout_8/Cast:y:0*
T0*'
_output_shapes
:????????? 2
message_layer/dropout_8/Mul_1?
$message_layer/strided_slice_17/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$message_layer/strided_slice_17/stack?
&message_layer/strided_slice_17/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&message_layer/strided_slice_17/stack_1?
&message_layer/strided_slice_17/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&message_layer/strided_slice_17/stack_2?
message_layer/strided_slice_17StridedSliceinputs_3-message_layer/strided_slice_17/stack:output:0/message_layer/strided_slice_17/stack_1:output:0/message_layer/strided_slice_17/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2 
message_layer/strided_slice_17?
message_layer/SegmentSum_8
SegmentSum message_layer/Squeeze_8:output:0'message_layer/strided_slice_17:output:0*
T0*
Tindices0*'
_output_shapes
:????????? 2
message_layer/SegmentSum_8?
gru_step/ReadVariableOp_8ReadVariableOp gru_step_readvariableop_resource*
_output_shapes

:`*
dtype02
gru_step/ReadVariableOp_8?
gru_step/unstack_8Unpack!gru_step/ReadVariableOp_8:value:0*
T0* 
_output_shapes
:`:`*	
num2
gru_step/unstack_8?
!gru_step/MatMul_16/ReadVariableOpReadVariableOp'gru_step_matmul_readvariableop_resource*
_output_shapes

: `*
dtype02#
!gru_step/MatMul_16/ReadVariableOp?
gru_step/MatMul_16MatMul#message_layer/SegmentSum_8:output:0)gru_step/MatMul_16/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2
gru_step/MatMul_16?
gru_step/BiasAdd_16BiasAddgru_step/MatMul_16:product:0gru_step/unstack_8:output:0*
T0*'
_output_shapes
:?????????`2
gru_step/BiasAdd_16?
gru_step/split_16/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_step/split_16/split_dim?
gru_step/split_16Split$gru_step/split_16/split_dim:output:0gru_step/BiasAdd_16:output:0*
T0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
gru_step/split_16?
!gru_step/MatMul_17/ReadVariableOpReadVariableOp)gru_step_matmul_1_readvariableop_resource*
_output_shapes

: `*
dtype02#
!gru_step/MatMul_17/ReadVariableOp?
gru_step/MatMul_17MatMulgru_step/add_31:z:0)gru_step/MatMul_17/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2
gru_step/MatMul_17?
gru_step/BiasAdd_17BiasAddgru_step/MatMul_17:product:0gru_step/unstack_8:output:1*
T0*'
_output_shapes
:?????????`2
gru_step/BiasAdd_17y
gru_step/Const_8Const*
_output_shapes
:*
dtype0*!
valueB"        ????2
gru_step/Const_8?
gru_step/split_17/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_step/split_17/split_dim?
gru_step/split_17SplitVgru_step/BiasAdd_17:output:0gru_step/Const_8:output:0$gru_step/split_17/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
gru_step/split_17?
gru_step/add_32AddV2gru_step/split_16:output:0gru_step/split_17:output:0*
T0*'
_output_shapes
:????????? 2
gru_step/add_32|
gru_step/Sigmoid_16Sigmoidgru_step/add_32:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Sigmoid_16?
gru_step/add_33AddV2gru_step/split_16:output:1gru_step/split_17:output:1*
T0*'
_output_shapes
:????????? 2
gru_step/add_33|
gru_step/Sigmoid_17Sigmoidgru_step/add_33:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Sigmoid_17?
gru_step/mul_24Mulgru_step/Sigmoid_17:y:0gru_step/split_17:output:2*
T0*'
_output_shapes
:????????? 2
gru_step/mul_24?
gru_step/add_34AddV2gru_step/split_16:output:2gru_step/mul_24:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/add_34q
gru_step/Tanh_8Tanhgru_step/add_34:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/Tanh_8?
gru_step/mul_25Mulgru_step/Sigmoid_16:y:0gru_step/add_31:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/mul_25i
gru_step/sub_8/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_step/sub_8/x?
gru_step/sub_8Subgru_step/sub_8/x:output:0gru_step/Sigmoid_16:y:0*
T0*'
_output_shapes
:????????? 2
gru_step/sub_8?
gru_step/mul_26Mulgru_step/sub_8:z:0gru_step/Tanh_8:y:0*
T0*'
_output_shapes
:????????? 2
gru_step/mul_26?
gru_step/add_35AddV2gru_step/mul_25:z:0gru_step/mul_26:z:0*
T0*'
_output_shapes
:????????? 2
gru_step/add_35?
squeeze/Squeeze_2Squeezeinputs_0*
T0*#
_output_shapes
:?????????*
squeeze_dims
2
squeeze/Squeeze_2|
graph_fingerprint/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
graph_fingerprint/Const?
graph_fingerprint/MaxMaxsqueeze/Squeeze_2:output:0 graph_fingerprint/Const:output:0*
T0*
_output_shapes
: 2
graph_fingerprint/Maxt
graph_fingerprint/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
graph_fingerprint/add/y?
graph_fingerprint/addAddV2graph_fingerprint/Max:output:0 graph_fingerprint/add/y:output:0*
T0*
_output_shapes
: 2
graph_fingerprint/add?
graph_fingerprint/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
graph_fingerprint/zeros/mul/y?
graph_fingerprint/zeros/mulMulgraph_fingerprint/add:z:0&graph_fingerprint/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
graph_fingerprint/zeros/mul?
graph_fingerprint/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2 
graph_fingerprint/zeros/Less/y?
graph_fingerprint/zeros/LessLessgraph_fingerprint/zeros/mul:z:0'graph_fingerprint/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
graph_fingerprint/zeros/Less?
 graph_fingerprint/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2"
 graph_fingerprint/zeros/packed/1?
graph_fingerprint/zeros/packedPackgraph_fingerprint/add:z:0)graph_fingerprint/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2 
graph_fingerprint/zeros/packed?
graph_fingerprint/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
graph_fingerprint/zeros/Const?
graph_fingerprint/zerosFill'graph_fingerprint/zeros/packed:output:0&graph_fingerprint/zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/zeros?
graph_fingerprint/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2!
graph_fingerprint/zeros_1/mul/y?
graph_fingerprint/zeros_1/mulMulgraph_fingerprint/add:z:0(graph_fingerprint/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
graph_fingerprint/zeros_1/mul?
 graph_fingerprint/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2"
 graph_fingerprint/zeros_1/Less/y?
graph_fingerprint/zeros_1/LessLess!graph_fingerprint/zeros_1/mul:z:0)graph_fingerprint/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2 
graph_fingerprint/zeros_1/Less?
"graph_fingerprint/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2$
"graph_fingerprint/zeros_1/packed/1?
 graph_fingerprint/zeros_1/packedPackgraph_fingerprint/add:z:0+graph_fingerprint/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2"
 graph_fingerprint/zeros_1/packed?
graph_fingerprint/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
graph_fingerprint/zeros_1/Const?
graph_fingerprint/zeros_1Fill)graph_fingerprint/zeros_1/packed:output:0(graph_fingerprint/zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/zeros_1?
graph_fingerprint/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
graph_fingerprint/GatherV2/axis?
graph_fingerprint/GatherV2GatherV2"graph_fingerprint/zeros_1:output:0squeeze/Squeeze_2:output:0(graph_fingerprint/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:????????? 2
graph_fingerprint/GatherV2?
graph_fingerprint/mulMulgru_step/add_35:z:0#graph_fingerprint/GatherV2:output:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/mul?
'graph_fingerprint/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2)
'graph_fingerprint/Sum/reduction_indices?
graph_fingerprint/SumSumgraph_fingerprint/mul:z:00graph_fingerprint/Sum/reduction_indices:output:0*
T0*#
_output_shapes
:?????????2
graph_fingerprint/Sum?
graph_fingerprint/ExpExpgraph_fingerprint/Sum:output:0*
T0*#
_output_shapes
:?????????2
graph_fingerprint/Exp?
graph_fingerprint/SegmentSum
SegmentSumgraph_fingerprint/Exp:y:0squeeze/Squeeze_2:output:0*
T0*
Tindices0*#
_output_shapes
:?????????2
graph_fingerprint/SegmentSum?
!graph_fingerprint/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!graph_fingerprint/GatherV2_1/axis?
graph_fingerprint/GatherV2_1GatherV2%graph_fingerprint/SegmentSum:output:0squeeze/Squeeze_2:output:0*graph_fingerprint/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*#
_output_shapes
:?????????2
graph_fingerprint/GatherV2_1?
graph_fingerprint/truedivRealDivgraph_fingerprint/Exp:y:0%graph_fingerprint/GatherV2_1:output:0*
T0*#
_output_shapes
:?????????2
graph_fingerprint/truediv?
graph_fingerprint/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2!
graph_fingerprint/Reshape/shape?
graph_fingerprint/ReshapeReshapegraph_fingerprint/truediv:z:0(graph_fingerprint/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
graph_fingerprint/Reshape?
graph_fingerprint/mul_1Mul"graph_fingerprint/Reshape:output:0gru_step/add_35:z:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/mul_1?
graph_fingerprint/SegmentSum_1
SegmentSumgraph_fingerprint/mul_1:z:0squeeze/Squeeze_2:output:0*
T0*
Tindices0*'
_output_shapes
:????????? 2 
graph_fingerprint/SegmentSum_1?
graph_fingerprint/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
graph_fingerprint/concat/axis?
graph_fingerprint/concatConcatV2"graph_fingerprint/zeros_1:output:0'graph_fingerprint/SegmentSum_1:output:0&graph_fingerprint/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????@2
graph_fingerprint/concat?
*graph_fingerprint/xw_plus_b/ReadVariableOpReadVariableOp3graph_fingerprint_xw_plus_b_readvariableop_resource*
_output_shapes
:	@?*
dtype02,
*graph_fingerprint/xw_plus_b/ReadVariableOp?
,graph_fingerprint/xw_plus_b/ReadVariableOp_1ReadVariableOp5graph_fingerprint_xw_plus_b_readvariableop_1_resource*
_output_shapes	
:?*
dtype02.
,graph_fingerprint/xw_plus_b/ReadVariableOp_1?
"graph_fingerprint/xw_plus_b/MatMulMatMul!graph_fingerprint/concat:output:02graph_fingerprint/xw_plus_b/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2$
"graph_fingerprint/xw_plus_b/MatMul?
graph_fingerprint/xw_plus_bBiasAdd,graph_fingerprint/xw_plus_b/MatMul:product:04graph_fingerprint/xw_plus_b/ReadVariableOp_1:value:0*
T0*(
_output_shapes
:??????????2
graph_fingerprint/xw_plus_b?
%graph_fingerprint/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%graph_fingerprint/strided_slice/stack?
'graph_fingerprint/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'graph_fingerprint/strided_slice/stack_1?
'graph_fingerprint/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'graph_fingerprint/strided_slice/stack_2?
graph_fingerprint/strided_sliceStridedSlice$graph_fingerprint/xw_plus_b:output:0.graph_fingerprint/strided_slice/stack:output:00graph_fingerprint/strided_slice/stack_1:output:00graph_fingerprint/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2!
graph_fingerprint/strided_slice?
graph_fingerprint/SigmoidSigmoid(graph_fingerprint/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/Sigmoid?
'graph_fingerprint/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'graph_fingerprint/strided_slice_1/stack?
)graph_fingerprint/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2+
)graph_fingerprint/strided_slice_1/stack_1?
)graph_fingerprint/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)graph_fingerprint/strided_slice_1/stack_2?
!graph_fingerprint/strided_slice_1StridedSlice$graph_fingerprint/xw_plus_b:output:00graph_fingerprint/strided_slice_1/stack:output:02graph_fingerprint/strided_slice_1/stack_1:output:02graph_fingerprint/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2#
!graph_fingerprint/strided_slice_1?
graph_fingerprint/Sigmoid_1Sigmoid*graph_fingerprint/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/Sigmoid_1?
'graph_fingerprint/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2)
'graph_fingerprint/strided_slice_2/stack?
)graph_fingerprint/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2+
)graph_fingerprint/strided_slice_2/stack_1?
)graph_fingerprint/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)graph_fingerprint/strided_slice_2/stack_2?
!graph_fingerprint/strided_slice_2StridedSlice$graph_fingerprint/xw_plus_b:output:00graph_fingerprint/strided_slice_2/stack:output:02graph_fingerprint/strided_slice_2/stack_1:output:02graph_fingerprint/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2#
!graph_fingerprint/strided_slice_2?
graph_fingerprint/Sigmoid_2Sigmoid*graph_fingerprint/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/Sigmoid_2?
'graph_fingerprint/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2)
'graph_fingerprint/strided_slice_3/stack?
)graph_fingerprint/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)graph_fingerprint/strided_slice_3/stack_1?
)graph_fingerprint/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)graph_fingerprint/strided_slice_3/stack_2?
!graph_fingerprint/strided_slice_3StridedSlice$graph_fingerprint/xw_plus_b:output:00graph_fingerprint/strided_slice_3/stack:output:02graph_fingerprint/strided_slice_3/stack_1:output:02graph_fingerprint/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2#
!graph_fingerprint/strided_slice_3?
graph_fingerprint/mul_2Mulgraph_fingerprint/Sigmoid_1:y:0 graph_fingerprint/zeros:output:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/mul_2?
graph_fingerprint/TanhTanh*graph_fingerprint/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/Tanh?
graph_fingerprint/mul_3Mulgraph_fingerprint/Sigmoid:y:0graph_fingerprint/Tanh:y:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/mul_3?
graph_fingerprint/add_1AddV2graph_fingerprint/mul_2:z:0graph_fingerprint/mul_3:z:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/add_1?
graph_fingerprint/Tanh_1Tanhgraph_fingerprint/add_1:z:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/Tanh_1?
graph_fingerprint/mul_4Mulgraph_fingerprint/Sigmoid_2:y:0graph_fingerprint/Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/mul_4?
!graph_fingerprint/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!graph_fingerprint/GatherV2_2/axis?
graph_fingerprint/GatherV2_2GatherV2graph_fingerprint/mul_4:z:0squeeze/Squeeze_2:output:0*graph_fingerprint/GatherV2_2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:????????? 2
graph_fingerprint/GatherV2_2?
graph_fingerprint/mul_5Mulgru_step/add_35:z:0%graph_fingerprint/GatherV2_2:output:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/mul_5?
)graph_fingerprint/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2+
)graph_fingerprint/Sum_1/reduction_indices?
graph_fingerprint/Sum_1Sumgraph_fingerprint/mul_5:z:02graph_fingerprint/Sum_1/reduction_indices:output:0*
T0*#
_output_shapes
:?????????2
graph_fingerprint/Sum_1?
graph_fingerprint/Exp_1Exp graph_fingerprint/Sum_1:output:0*
T0*#
_output_shapes
:?????????2
graph_fingerprint/Exp_1?
graph_fingerprint/SegmentSum_2
SegmentSumgraph_fingerprint/Exp_1:y:0squeeze/Squeeze_2:output:0*
T0*
Tindices0*#
_output_shapes
:?????????2 
graph_fingerprint/SegmentSum_2?
!graph_fingerprint/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!graph_fingerprint/GatherV2_3/axis?
graph_fingerprint/GatherV2_3GatherV2'graph_fingerprint/SegmentSum_2:output:0squeeze/Squeeze_2:output:0*graph_fingerprint/GatherV2_3/axis:output:0*
Taxis0*
Tindices0*
Tparams0*#
_output_shapes
:?????????2
graph_fingerprint/GatherV2_3?
graph_fingerprint/truediv_1RealDivgraph_fingerprint/Exp_1:y:0%graph_fingerprint/GatherV2_3:output:0*
T0*#
_output_shapes
:?????????2
graph_fingerprint/truediv_1?
!graph_fingerprint/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2#
!graph_fingerprint/Reshape_1/shape?
graph_fingerprint/Reshape_1Reshapegraph_fingerprint/truediv_1:z:0*graph_fingerprint/Reshape_1/shape:output:0*
T0*'
_output_shapes
:?????????2
graph_fingerprint/Reshape_1?
graph_fingerprint/mul_6Mul$graph_fingerprint/Reshape_1:output:0gru_step/add_35:z:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/mul_6?
graph_fingerprint/SegmentSum_3
SegmentSumgraph_fingerprint/mul_6:z:0squeeze/Squeeze_2:output:0*
T0*
Tindices0*'
_output_shapes
:????????? 2 
graph_fingerprint/SegmentSum_3?
graph_fingerprint/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2!
graph_fingerprint/concat_1/axis?
graph_fingerprint/concat_1ConcatV2graph_fingerprint/mul_4:z:0'graph_fingerprint/SegmentSum_3:output:0(graph_fingerprint/concat_1/axis:output:0*
N*
T0*'
_output_shapes
:?????????@2
graph_fingerprint/concat_1?
,graph_fingerprint/xw_plus_b_1/ReadVariableOpReadVariableOp3graph_fingerprint_xw_plus_b_readvariableop_resource*
_output_shapes
:	@?*
dtype02.
,graph_fingerprint/xw_plus_b_1/ReadVariableOp?
.graph_fingerprint/xw_plus_b_1/ReadVariableOp_1ReadVariableOp5graph_fingerprint_xw_plus_b_readvariableop_1_resource*
_output_shapes	
:?*
dtype020
.graph_fingerprint/xw_plus_b_1/ReadVariableOp_1?
$graph_fingerprint/xw_plus_b_1/MatMulMatMul#graph_fingerprint/concat_1:output:04graph_fingerprint/xw_plus_b_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2&
$graph_fingerprint/xw_plus_b_1/MatMul?
graph_fingerprint/xw_plus_b_1BiasAdd.graph_fingerprint/xw_plus_b_1/MatMul:product:06graph_fingerprint/xw_plus_b_1/ReadVariableOp_1:value:0*
T0*(
_output_shapes
:??????????2
graph_fingerprint/xw_plus_b_1?
'graph_fingerprint/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'graph_fingerprint/strided_slice_4/stack?
)graph_fingerprint/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)graph_fingerprint/strided_slice_4/stack_1?
)graph_fingerprint/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)graph_fingerprint/strided_slice_4/stack_2?
!graph_fingerprint/strided_slice_4StridedSlice&graph_fingerprint/xw_plus_b_1:output:00graph_fingerprint/strided_slice_4/stack:output:02graph_fingerprint/strided_slice_4/stack_1:output:02graph_fingerprint/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2#
!graph_fingerprint/strided_slice_4?
graph_fingerprint/Sigmoid_3Sigmoid*graph_fingerprint/strided_slice_4:output:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/Sigmoid_3?
'graph_fingerprint/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'graph_fingerprint/strided_slice_5/stack?
)graph_fingerprint/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2+
)graph_fingerprint/strided_slice_5/stack_1?
)graph_fingerprint/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)graph_fingerprint/strided_slice_5/stack_2?
!graph_fingerprint/strided_slice_5StridedSlice&graph_fingerprint/xw_plus_b_1:output:00graph_fingerprint/strided_slice_5/stack:output:02graph_fingerprint/strided_slice_5/stack_1:output:02graph_fingerprint/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2#
!graph_fingerprint/strided_slice_5?
graph_fingerprint/Sigmoid_4Sigmoid*graph_fingerprint/strided_slice_5:output:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/Sigmoid_4?
'graph_fingerprint/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2)
'graph_fingerprint/strided_slice_6/stack?
)graph_fingerprint/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2+
)graph_fingerprint/strided_slice_6/stack_1?
)graph_fingerprint/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)graph_fingerprint/strided_slice_6/stack_2?
!graph_fingerprint/strided_slice_6StridedSlice&graph_fingerprint/xw_plus_b_1:output:00graph_fingerprint/strided_slice_6/stack:output:02graph_fingerprint/strided_slice_6/stack_1:output:02graph_fingerprint/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2#
!graph_fingerprint/strided_slice_6?
graph_fingerprint/Sigmoid_5Sigmoid*graph_fingerprint/strided_slice_6:output:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/Sigmoid_5?
'graph_fingerprint/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2)
'graph_fingerprint/strided_slice_7/stack?
)graph_fingerprint/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)graph_fingerprint/strided_slice_7/stack_1?
)graph_fingerprint/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)graph_fingerprint/strided_slice_7/stack_2?
!graph_fingerprint/strided_slice_7StridedSlice&graph_fingerprint/xw_plus_b_1:output:00graph_fingerprint/strided_slice_7/stack:output:02graph_fingerprint/strided_slice_7/stack_1:output:02graph_fingerprint/strided_slice_7/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2#
!graph_fingerprint/strided_slice_7?
graph_fingerprint/mul_7Mulgraph_fingerprint/Sigmoid_4:y:0graph_fingerprint/add_1:z:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/mul_7?
graph_fingerprint/Tanh_2Tanh*graph_fingerprint/strided_slice_7:output:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/Tanh_2?
graph_fingerprint/mul_8Mulgraph_fingerprint/Sigmoid_3:y:0graph_fingerprint/Tanh_2:y:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/mul_8?
graph_fingerprint/add_2AddV2graph_fingerprint/mul_7:z:0graph_fingerprint/mul_8:z:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/add_2?
graph_fingerprint/Tanh_3Tanhgraph_fingerprint/add_2:z:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/Tanh_3?
graph_fingerprint/mul_9Mulgraph_fingerprint/Sigmoid_5:y:0graph_fingerprint/Tanh_3:y:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/mul_9?
!graph_fingerprint/GatherV2_4/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!graph_fingerprint/GatherV2_4/axis?
graph_fingerprint/GatherV2_4GatherV2graph_fingerprint/mul_9:z:0squeeze/Squeeze_2:output:0*graph_fingerprint/GatherV2_4/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:????????? 2
graph_fingerprint/GatherV2_4?
graph_fingerprint/mul_10Mulgru_step/add_35:z:0%graph_fingerprint/GatherV2_4:output:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/mul_10?
)graph_fingerprint/Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2+
)graph_fingerprint/Sum_2/reduction_indices?
graph_fingerprint/Sum_2Sumgraph_fingerprint/mul_10:z:02graph_fingerprint/Sum_2/reduction_indices:output:0*
T0*#
_output_shapes
:?????????2
graph_fingerprint/Sum_2?
graph_fingerprint/Exp_2Exp graph_fingerprint/Sum_2:output:0*
T0*#
_output_shapes
:?????????2
graph_fingerprint/Exp_2?
graph_fingerprint/SegmentSum_4
SegmentSumgraph_fingerprint/Exp_2:y:0squeeze/Squeeze_2:output:0*
T0*
Tindices0*#
_output_shapes
:?????????2 
graph_fingerprint/SegmentSum_4?
!graph_fingerprint/GatherV2_5/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!graph_fingerprint/GatherV2_5/axis?
graph_fingerprint/GatherV2_5GatherV2'graph_fingerprint/SegmentSum_4:output:0squeeze/Squeeze_2:output:0*graph_fingerprint/GatherV2_5/axis:output:0*
Taxis0*
Tindices0*
Tparams0*#
_output_shapes
:?????????2
graph_fingerprint/GatherV2_5?
graph_fingerprint/truediv_2RealDivgraph_fingerprint/Exp_2:y:0%graph_fingerprint/GatherV2_5:output:0*
T0*#
_output_shapes
:?????????2
graph_fingerprint/truediv_2?
!graph_fingerprint/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2#
!graph_fingerprint/Reshape_2/shape?
graph_fingerprint/Reshape_2Reshapegraph_fingerprint/truediv_2:z:0*graph_fingerprint/Reshape_2/shape:output:0*
T0*'
_output_shapes
:?????????2
graph_fingerprint/Reshape_2?
graph_fingerprint/mul_11Mul$graph_fingerprint/Reshape_2:output:0gru_step/add_35:z:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/mul_11?
graph_fingerprint/SegmentSum_5
SegmentSumgraph_fingerprint/mul_11:z:0squeeze/Squeeze_2:output:0*
T0*
Tindices0*'
_output_shapes
:????????? 2 
graph_fingerprint/SegmentSum_5?
graph_fingerprint/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2!
graph_fingerprint/concat_2/axis?
graph_fingerprint/concat_2ConcatV2graph_fingerprint/mul_9:z:0'graph_fingerprint/SegmentSum_5:output:0(graph_fingerprint/concat_2/axis:output:0*
N*
T0*'
_output_shapes
:?????????@2
graph_fingerprint/concat_2?
,graph_fingerprint/xw_plus_b_2/ReadVariableOpReadVariableOp3graph_fingerprint_xw_plus_b_readvariableop_resource*
_output_shapes
:	@?*
dtype02.
,graph_fingerprint/xw_plus_b_2/ReadVariableOp?
.graph_fingerprint/xw_plus_b_2/ReadVariableOp_1ReadVariableOp5graph_fingerprint_xw_plus_b_readvariableop_1_resource*
_output_shapes	
:?*
dtype020
.graph_fingerprint/xw_plus_b_2/ReadVariableOp_1?
$graph_fingerprint/xw_plus_b_2/MatMulMatMul#graph_fingerprint/concat_2:output:04graph_fingerprint/xw_plus_b_2/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2&
$graph_fingerprint/xw_plus_b_2/MatMul?
graph_fingerprint/xw_plus_b_2BiasAdd.graph_fingerprint/xw_plus_b_2/MatMul:product:06graph_fingerprint/xw_plus_b_2/ReadVariableOp_1:value:0*
T0*(
_output_shapes
:??????????2
graph_fingerprint/xw_plus_b_2?
'graph_fingerprint/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'graph_fingerprint/strided_slice_8/stack?
)graph_fingerprint/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)graph_fingerprint/strided_slice_8/stack_1?
)graph_fingerprint/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)graph_fingerprint/strided_slice_8/stack_2?
!graph_fingerprint/strided_slice_8StridedSlice&graph_fingerprint/xw_plus_b_2:output:00graph_fingerprint/strided_slice_8/stack:output:02graph_fingerprint/strided_slice_8/stack_1:output:02graph_fingerprint/strided_slice_8/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2#
!graph_fingerprint/strided_slice_8?
graph_fingerprint/Sigmoid_6Sigmoid*graph_fingerprint/strided_slice_8:output:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/Sigmoid_6?
'graph_fingerprint/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'graph_fingerprint/strided_slice_9/stack?
)graph_fingerprint/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2+
)graph_fingerprint/strided_slice_9/stack_1?
)graph_fingerprint/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)graph_fingerprint/strided_slice_9/stack_2?
!graph_fingerprint/strided_slice_9StridedSlice&graph_fingerprint/xw_plus_b_2:output:00graph_fingerprint/strided_slice_9/stack:output:02graph_fingerprint/strided_slice_9/stack_1:output:02graph_fingerprint/strided_slice_9/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2#
!graph_fingerprint/strided_slice_9?
graph_fingerprint/Sigmoid_7Sigmoid*graph_fingerprint/strided_slice_9:output:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/Sigmoid_7?
(graph_fingerprint/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(graph_fingerprint/strided_slice_10/stack?
*graph_fingerprint/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*graph_fingerprint/strided_slice_10/stack_1?
*graph_fingerprint/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*graph_fingerprint/strided_slice_10/stack_2?
"graph_fingerprint/strided_slice_10StridedSlice&graph_fingerprint/xw_plus_b_2:output:01graph_fingerprint/strided_slice_10/stack:output:03graph_fingerprint/strided_slice_10/stack_1:output:03graph_fingerprint/strided_slice_10/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2$
"graph_fingerprint/strided_slice_10?
graph_fingerprint/Sigmoid_8Sigmoid+graph_fingerprint/strided_slice_10:output:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/Sigmoid_8?
(graph_fingerprint/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(graph_fingerprint/strided_slice_11/stack?
*graph_fingerprint/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*graph_fingerprint/strided_slice_11/stack_1?
*graph_fingerprint/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*graph_fingerprint/strided_slice_11/stack_2?
"graph_fingerprint/strided_slice_11StridedSlice&graph_fingerprint/xw_plus_b_2:output:01graph_fingerprint/strided_slice_11/stack:output:03graph_fingerprint/strided_slice_11/stack_1:output:03graph_fingerprint/strided_slice_11/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2$
"graph_fingerprint/strided_slice_11?
graph_fingerprint/mul_12Mulgraph_fingerprint/Sigmoid_7:y:0graph_fingerprint/add_2:z:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/mul_12?
graph_fingerprint/Tanh_4Tanh+graph_fingerprint/strided_slice_11:output:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/Tanh_4?
graph_fingerprint/mul_13Mulgraph_fingerprint/Sigmoid_6:y:0graph_fingerprint/Tanh_4:y:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/mul_13?
graph_fingerprint/add_3AddV2graph_fingerprint/mul_12:z:0graph_fingerprint/mul_13:z:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/add_3?
graph_fingerprint/Tanh_5Tanhgraph_fingerprint/add_3:z:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/Tanh_5?
graph_fingerprint/mul_14Mulgraph_fingerprint/Sigmoid_8:y:0graph_fingerprint/Tanh_5:y:0*
T0*'
_output_shapes
:????????? 2
graph_fingerprint/mul_14?
mfp1/MatMul/ReadVariableOpReadVariableOp#mfp1_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02
mfp1/MatMul/ReadVariableOp?
mfp1/MatMulMatMul#graph_fingerprint/concat_2:output:0"mfp1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
mfp1/MatMul?
mfp1/BiasAdd/ReadVariableOpReadVariableOp$mfp1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
mfp1/BiasAdd/ReadVariableOp?
mfp1/BiasAddBiasAddmfp1/MatMul:product:0#mfp1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
mfp1/BiasAddh
	mfp1/ReluRelumfp1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
	mfp1/Relu?
,batch_normalization/batchnorm/ReadVariableOpReadVariableOp5batch_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,batch_normalization/batchnorm/ReadVariableOp?
#batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2%
#batch_normalization/batchnorm/add/y?
!batch_normalization/batchnorm/addAddV24batch_normalization/batchnorm/ReadVariableOp:value:0,batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2#
!batch_normalization/batchnorm/add?
#batch_normalization/batchnorm/RsqrtRsqrt%batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization/batchnorm/Rsqrt?
0batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9batch_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype022
0batch_normalization/batchnorm/mul/ReadVariableOp?
!batch_normalization/batchnorm/mulMul'batch_normalization/batchnorm/Rsqrt:y:08batch_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2#
!batch_normalization/batchnorm/mul?
#batch_normalization/batchnorm/mul_1Mulmfp1/Relu:activations:0%batch_normalization/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2%
#batch_normalization/batchnorm/mul_1?
.batch_normalization/batchnorm/ReadVariableOp_1ReadVariableOp7batch_normalization_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype020
.batch_normalization/batchnorm/ReadVariableOp_1?
#batch_normalization/batchnorm/mul_2Mul6batch_normalization/batchnorm/ReadVariableOp_1:value:0%batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization/batchnorm/mul_2?
.batch_normalization/batchnorm/ReadVariableOp_2ReadVariableOp7batch_normalization_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype020
.batch_normalization/batchnorm/ReadVariableOp_2?
!batch_normalization/batchnorm/subSub6batch_normalization/batchnorm/ReadVariableOp_2:value:0'batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2#
!batch_normalization/batchnorm/sub?
#batch_normalization/batchnorm/add_1AddV2'batch_normalization/batchnorm/mul_1:z:0%batch_normalization/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2%
#batch_normalization/batchnorm/add_1?
mfp2/MatMul/ReadVariableOpReadVariableOp#mfp2_matmul_readvariableop_resource*
_output_shapes
:	? *
dtype02
mfp2/MatMul/ReadVariableOp?
mfp2/MatMulMatMul'batch_normalization/batchnorm/add_1:z:0"mfp2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
mfp2/MatMul?
mfp2/BiasAdd/ReadVariableOpReadVariableOp$mfp2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
mfp2/BiasAdd/ReadVariableOp?
mfp2/BiasAddBiasAddmfp2/MatMul:product:0#mfp2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
mfp2/BiasAddg
	mfp2/ReluRelumfp2/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
	mfp2/Relu?
.batch_normalization_1/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype020
.batch_normalization_1/batchnorm/ReadVariableOp?
%batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_1/batchnorm/add/y?
#batch_normalization_1/batchnorm/addAddV26batch_normalization_1/batchnorm/ReadVariableOp:value:0.batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes
: 2%
#batch_normalization_1/batchnorm/add?
%batch_normalization_1/batchnorm/RsqrtRsqrt'batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes
: 2'
%batch_normalization_1/batchnorm/Rsqrt?
2batch_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype024
2batch_normalization_1/batchnorm/mul/ReadVariableOp?
#batch_normalization_1/batchnorm/mulMul)batch_normalization_1/batchnorm/Rsqrt:y:0:batch_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2%
#batch_normalization_1/batchnorm/mul?
%batch_normalization_1/batchnorm/mul_1Mulmfp2/Relu:activations:0'batch_normalization_1/batchnorm/mul:z:0*
T0*'
_output_shapes
:????????? 2'
%batch_normalization_1/batchnorm/mul_1?
0batch_normalization_1/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_1_batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype022
0batch_normalization_1/batchnorm/ReadVariableOp_1?
%batch_normalization_1/batchnorm/mul_2Mul8batch_normalization_1/batchnorm/ReadVariableOp_1:value:0'batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes
: 2'
%batch_normalization_1/batchnorm/mul_2?
0batch_normalization_1/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_1_batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype022
0batch_normalization_1/batchnorm/ReadVariableOp_2?
#batch_normalization_1/batchnorm/subSub8batch_normalization_1/batchnorm/ReadVariableOp_2:value:0)batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2%
#batch_normalization_1/batchnorm/sub?
%batch_normalization_1/batchnorm/add_1AddV2)batch_normalization_1/batchnorm/mul_1:z:0'batch_normalization_1/batchnorm/sub:z:0*
T0*'
_output_shapes
:????????? 2'
%batch_normalization_1/batchnorm/add_1?
mfp3/MatMul/ReadVariableOpReadVariableOp#mfp3_matmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
mfp3/MatMul/ReadVariableOp?
mfp3/MatMulMatMul)batch_normalization_1/batchnorm/add_1:z:0"mfp3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
mfp3/MatMul?
mfp3/BiasAdd/ReadVariableOpReadVariableOp$mfp3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
mfp3/BiasAdd/ReadVariableOp?
mfp3/BiasAddBiasAddmfp3/MatMul:product:0#mfp3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
mfp3/BiasAddh
	mfp3/ReluRelumfp3/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
	mfp3/Relu?
.batch_normalization_2/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_2_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype020
.batch_normalization_2/batchnorm/ReadVariableOp?
%batch_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_2/batchnorm/add/y?
#batch_normalization_2/batchnorm/addAddV26batch_normalization_2/batchnorm/ReadVariableOp:value:0.batch_normalization_2/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2%
#batch_normalization_2/batchnorm/add?
%batch_normalization_2/batchnorm/RsqrtRsqrt'batch_normalization_2/batchnorm/add:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_2/batchnorm/Rsqrt?
2batch_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype024
2batch_normalization_2/batchnorm/mul/ReadVariableOp?
#batch_normalization_2/batchnorm/mulMul)batch_normalization_2/batchnorm/Rsqrt:y:0:batch_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2%
#batch_normalization_2/batchnorm/mul?
%batch_normalization_2/batchnorm/mul_1Mulmfp3/Relu:activations:0'batch_normalization_2/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_2/batchnorm/mul_1?
0batch_normalization_2/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_2_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype022
0batch_normalization_2/batchnorm/ReadVariableOp_1?
%batch_normalization_2/batchnorm/mul_2Mul8batch_normalization_2/batchnorm/ReadVariableOp_1:value:0'batch_normalization_2/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_2/batchnorm/mul_2?
0batch_normalization_2/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_2_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype022
0batch_normalization_2/batchnorm/ReadVariableOp_2?
#batch_normalization_2/batchnorm/subSub8batch_normalization_2/batchnorm/ReadVariableOp_2:value:0)batch_normalization_2/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization_2/batchnorm/sub?
%batch_normalization_2/batchnorm/add_1AddV2)batch_normalization_2/batchnorm/mul_1:z:0'batch_normalization_2/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2'
%batch_normalization_2/batchnorm/add_1?
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
output/MatMul/ReadVariableOp?
output/MatMulMatMul)batch_normalization_2/batchnorm/add_1:z:0$output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
output/MatMul?
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
output/BiasAdd/ReadVariableOp?
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
output/BiasAdd?
IdentityIdentityoutput/BiasAdd:output:0 ^atom_embedding/embedding_lookup-^batch_normalization/batchnorm/ReadVariableOp/^batch_normalization/batchnorm/ReadVariableOp_1/^batch_normalization/batchnorm/ReadVariableOp_21^batch_normalization/batchnorm/mul/ReadVariableOp/^batch_normalization_1/batchnorm/ReadVariableOp1^batch_normalization_1/batchnorm/ReadVariableOp_11^batch_normalization_1/batchnorm/ReadVariableOp_23^batch_normalization_1/batchnorm/mul/ReadVariableOp/^batch_normalization_2/batchnorm/ReadVariableOp1^batch_normalization_2/batchnorm/ReadVariableOp_11^batch_normalization_2/batchnorm/ReadVariableOp_23^batch_normalization_2/batchnorm/mul/ReadVariableOp ^bond_embedding/embedding_lookup+^graph_fingerprint/xw_plus_b/ReadVariableOp-^graph_fingerprint/xw_plus_b/ReadVariableOp_1-^graph_fingerprint/xw_plus_b_1/ReadVariableOp/^graph_fingerprint/xw_plus_b_1/ReadVariableOp_1-^graph_fingerprint/xw_plus_b_2/ReadVariableOp/^graph_fingerprint/xw_plus_b_2/ReadVariableOp_1^gru_step/MatMul/ReadVariableOp!^gru_step/MatMul_1/ReadVariableOp"^gru_step/MatMul_10/ReadVariableOp"^gru_step/MatMul_11/ReadVariableOp"^gru_step/MatMul_12/ReadVariableOp"^gru_step/MatMul_13/ReadVariableOp"^gru_step/MatMul_14/ReadVariableOp"^gru_step/MatMul_15/ReadVariableOp"^gru_step/MatMul_16/ReadVariableOp"^gru_step/MatMul_17/ReadVariableOp!^gru_step/MatMul_2/ReadVariableOp!^gru_step/MatMul_3/ReadVariableOp!^gru_step/MatMul_4/ReadVariableOp!^gru_step/MatMul_5/ReadVariableOp!^gru_step/MatMul_6/ReadVariableOp!^gru_step/MatMul_7/ReadVariableOp!^gru_step/MatMul_8/ReadVariableOp!^gru_step/MatMul_9/ReadVariableOp^gru_step/ReadVariableOp^gru_step/ReadVariableOp_1^gru_step/ReadVariableOp_2^gru_step/ReadVariableOp_3^gru_step/ReadVariableOp_4^gru_step/ReadVariableOp_5^gru_step/ReadVariableOp_6^gru_step/ReadVariableOp_7^gru_step/ReadVariableOp_8^mfp1/BiasAdd/ReadVariableOp^mfp1/MatMul/ReadVariableOp^mfp2/BiasAdd/ReadVariableOp^mfp2/MatMul/ReadVariableOp^mfp3/BiasAdd/ReadVariableOp^mfp3/MatMul/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : 2B
atom_embedding/embedding_lookupatom_embedding/embedding_lookup2\
,batch_normalization/batchnorm/ReadVariableOp,batch_normalization/batchnorm/ReadVariableOp2`
.batch_normalization/batchnorm/ReadVariableOp_1.batch_normalization/batchnorm/ReadVariableOp_12`
.batch_normalization/batchnorm/ReadVariableOp_2.batch_normalization/batchnorm/ReadVariableOp_22d
0batch_normalization/batchnorm/mul/ReadVariableOp0batch_normalization/batchnorm/mul/ReadVariableOp2`
.batch_normalization_1/batchnorm/ReadVariableOp.batch_normalization_1/batchnorm/ReadVariableOp2d
0batch_normalization_1/batchnorm/ReadVariableOp_10batch_normalization_1/batchnorm/ReadVariableOp_12d
0batch_normalization_1/batchnorm/ReadVariableOp_20batch_normalization_1/batchnorm/ReadVariableOp_22h
2batch_normalization_1/batchnorm/mul/ReadVariableOp2batch_normalization_1/batchnorm/mul/ReadVariableOp2`
.batch_normalization_2/batchnorm/ReadVariableOp.batch_normalization_2/batchnorm/ReadVariableOp2d
0batch_normalization_2/batchnorm/ReadVariableOp_10batch_normalization_2/batchnorm/ReadVariableOp_12d
0batch_normalization_2/batchnorm/ReadVariableOp_20batch_normalization_2/batchnorm/ReadVariableOp_22h
2batch_normalization_2/batchnorm/mul/ReadVariableOp2batch_normalization_2/batchnorm/mul/ReadVariableOp2B
bond_embedding/embedding_lookupbond_embedding/embedding_lookup2X
*graph_fingerprint/xw_plus_b/ReadVariableOp*graph_fingerprint/xw_plus_b/ReadVariableOp2\
,graph_fingerprint/xw_plus_b/ReadVariableOp_1,graph_fingerprint/xw_plus_b/ReadVariableOp_12\
,graph_fingerprint/xw_plus_b_1/ReadVariableOp,graph_fingerprint/xw_plus_b_1/ReadVariableOp2`
.graph_fingerprint/xw_plus_b_1/ReadVariableOp_1.graph_fingerprint/xw_plus_b_1/ReadVariableOp_12\
,graph_fingerprint/xw_plus_b_2/ReadVariableOp,graph_fingerprint/xw_plus_b_2/ReadVariableOp2`
.graph_fingerprint/xw_plus_b_2/ReadVariableOp_1.graph_fingerprint/xw_plus_b_2/ReadVariableOp_12@
gru_step/MatMul/ReadVariableOpgru_step/MatMul/ReadVariableOp2D
 gru_step/MatMul_1/ReadVariableOp gru_step/MatMul_1/ReadVariableOp2F
!gru_step/MatMul_10/ReadVariableOp!gru_step/MatMul_10/ReadVariableOp2F
!gru_step/MatMul_11/ReadVariableOp!gru_step/MatMul_11/ReadVariableOp2F
!gru_step/MatMul_12/ReadVariableOp!gru_step/MatMul_12/ReadVariableOp2F
!gru_step/MatMul_13/ReadVariableOp!gru_step/MatMul_13/ReadVariableOp2F
!gru_step/MatMul_14/ReadVariableOp!gru_step/MatMul_14/ReadVariableOp2F
!gru_step/MatMul_15/ReadVariableOp!gru_step/MatMul_15/ReadVariableOp2F
!gru_step/MatMul_16/ReadVariableOp!gru_step/MatMul_16/ReadVariableOp2F
!gru_step/MatMul_17/ReadVariableOp!gru_step/MatMul_17/ReadVariableOp2D
 gru_step/MatMul_2/ReadVariableOp gru_step/MatMul_2/ReadVariableOp2D
 gru_step/MatMul_3/ReadVariableOp gru_step/MatMul_3/ReadVariableOp2D
 gru_step/MatMul_4/ReadVariableOp gru_step/MatMul_4/ReadVariableOp2D
 gru_step/MatMul_5/ReadVariableOp gru_step/MatMul_5/ReadVariableOp2D
 gru_step/MatMul_6/ReadVariableOp gru_step/MatMul_6/ReadVariableOp2D
 gru_step/MatMul_7/ReadVariableOp gru_step/MatMul_7/ReadVariableOp2D
 gru_step/MatMul_8/ReadVariableOp gru_step/MatMul_8/ReadVariableOp2D
 gru_step/MatMul_9/ReadVariableOp gru_step/MatMul_9/ReadVariableOp22
gru_step/ReadVariableOpgru_step/ReadVariableOp26
gru_step/ReadVariableOp_1gru_step/ReadVariableOp_126
gru_step/ReadVariableOp_2gru_step/ReadVariableOp_226
gru_step/ReadVariableOp_3gru_step/ReadVariableOp_326
gru_step/ReadVariableOp_4gru_step/ReadVariableOp_426
gru_step/ReadVariableOp_5gru_step/ReadVariableOp_526
gru_step/ReadVariableOp_6gru_step/ReadVariableOp_626
gru_step/ReadVariableOp_7gru_step/ReadVariableOp_726
gru_step/ReadVariableOp_8gru_step/ReadVariableOp_82:
mfp1/BiasAdd/ReadVariableOpmfp1/BiasAdd/ReadVariableOp28
mfp1/MatMul/ReadVariableOpmfp1/MatMul/ReadVariableOp2:
mfp2/BiasAdd/ReadVariableOpmfp2/BiasAdd/ReadVariableOp28
mfp2/MatMul/ReadVariableOpmfp2/MatMul/ReadVariableOp2:
mfp3/BiasAdd/ReadVariableOpmfp3/BiasAdd/ReadVariableOp28
mfp3/MatMul/ReadVariableOpmfp3/MatMul/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/3
?
?
3__inference_batch_normalization_layer_call_fn_68265

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_642192
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
?__inference_mfp3_layer_call_and_return_conditional_losses_68452

inputs1
matmul_readvariableop_resource:	 ?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

?
?__inference_mfp2_layer_call_and_return_conditional_losses_65052

inputs1
matmul_readvariableop_resource:	? -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	? *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
F__inference_graph_model_layer_call_and_return_conditional_losses_65888
node_graph_indices
atom
bond
connectivity+
bond_embedding_65780:?  '
atom_embedding_65783:	?  
gru_step_65787:` 
gru_step_65789: ` 
gru_step_65791: `*
graph_fingerprint_65835:	@?&
graph_fingerprint_65837:	?

mfp1_65840:	@?

mfp1_65842:	?(
batch_normalization_65845:	?(
batch_normalization_65847:	?(
batch_normalization_65849:	?(
batch_normalization_65851:	?

mfp2_65854:	? 

mfp2_65856: )
batch_normalization_1_65859: )
batch_normalization_1_65861: )
batch_normalization_1_65863: )
batch_normalization_1_65865: 

mfp3_65868:	 ?

mfp3_65870:	?*
batch_normalization_2_65873:	?*
batch_normalization_2_65875:	?*
batch_normalization_2_65877:	?*
batch_normalization_2_65879:	?
output_65882:	?
output_65884:
identity??&atom_embedding/StatefulPartitionedCall?+batch_normalization/StatefulPartitionedCall?-batch_normalization_1/StatefulPartitionedCall?-batch_normalization_2/StatefulPartitionedCall?&bond_embedding/StatefulPartitionedCall?)graph_fingerprint/StatefulPartitionedCall? gru_step/StatefulPartitionedCall?"gru_step/StatefulPartitionedCall_1?"gru_step/StatefulPartitionedCall_2?"gru_step/StatefulPartitionedCall_3?"gru_step/StatefulPartitionedCall_4?"gru_step/StatefulPartitionedCall_5?"gru_step/StatefulPartitionedCall_6?"gru_step/StatefulPartitionedCall_7?"gru_step/StatefulPartitionedCall_8?%message_layer/StatefulPartitionedCall?'message_layer/StatefulPartitionedCall_1?'message_layer/StatefulPartitionedCall_2?'message_layer/StatefulPartitionedCall_3?'message_layer/StatefulPartitionedCall_4?'message_layer/StatefulPartitionedCall_5?'message_layer/StatefulPartitionedCall_6?'message_layer/StatefulPartitionedCall_7?'message_layer/StatefulPartitionedCall_8?mfp1/StatefulPartitionedCall?mfp2/StatefulPartitionedCall?mfp3/StatefulPartitionedCall?output/StatefulPartitionedCall?
squeeze/PartitionedCallPartitionedCallbond*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_squeeze_layer_call_and_return_conditional_losses_646992
squeeze/PartitionedCall?
squeeze/PartitionedCall_1PartitionedCallatom*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_squeeze_layer_call_and_return_conditional_losses_646992
squeeze/PartitionedCall_1?
&bond_embedding/StatefulPartitionedCallStatefulPartitionedCall squeeze/PartitionedCall:output:0bond_embedding_65780*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????  *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_bond_embedding_layer_call_and_return_conditional_losses_647112(
&bond_embedding/StatefulPartitionedCall?
&atom_embedding/StatefulPartitionedCallStatefulPartitionedCall"squeeze/PartitionedCall_1:output:0atom_embedding_65783*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_atom_embedding_layer_call_and_return_conditional_losses_647242(
&atom_embedding/StatefulPartitionedCall?
%message_layer/StatefulPartitionedCallStatefulPartitionedCall/atom_embedding/StatefulPartitionedCall:output:0/bond_embedding/StatefulPartitionedCall:output:0connectivity*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_message_layer_layer_call_and_return_conditional_losses_647582'
%message_layer/StatefulPartitionedCall?
 gru_step/StatefulPartitionedCallStatefulPartitionedCall.message_layer/StatefulPartitionedCall:output:0/atom_embedding/StatefulPartitionedCall:output:0gru_step_65787gru_step_65789gru_step_65791*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_gru_step_layer_call_and_return_conditional_losses_647982"
 gru_step/StatefulPartitionedCall?
'message_layer/StatefulPartitionedCall_1StatefulPartitionedCall)gru_step/StatefulPartitionedCall:output:0/bond_embedding/StatefulPartitionedCall:output:0connectivity&^message_layer/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_message_layer_layer_call_and_return_conditional_losses_647582)
'message_layer/StatefulPartitionedCall_1?
"gru_step/StatefulPartitionedCall_1StatefulPartitionedCall0message_layer/StatefulPartitionedCall_1:output:0)gru_step/StatefulPartitionedCall:output:0gru_step_65787gru_step_65789gru_step_65791*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_gru_step_layer_call_and_return_conditional_losses_647982$
"gru_step/StatefulPartitionedCall_1?
'message_layer/StatefulPartitionedCall_2StatefulPartitionedCall+gru_step/StatefulPartitionedCall_1:output:0/bond_embedding/StatefulPartitionedCall:output:0connectivity(^message_layer/StatefulPartitionedCall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_message_layer_layer_call_and_return_conditional_losses_647582)
'message_layer/StatefulPartitionedCall_2?
"gru_step/StatefulPartitionedCall_2StatefulPartitionedCall0message_layer/StatefulPartitionedCall_2:output:0+gru_step/StatefulPartitionedCall_1:output:0gru_step_65787gru_step_65789gru_step_65791*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_gru_step_layer_call_and_return_conditional_losses_647982$
"gru_step/StatefulPartitionedCall_2?
'message_layer/StatefulPartitionedCall_3StatefulPartitionedCall+gru_step/StatefulPartitionedCall_2:output:0/bond_embedding/StatefulPartitionedCall:output:0connectivity(^message_layer/StatefulPartitionedCall_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_message_layer_layer_call_and_return_conditional_losses_647582)
'message_layer/StatefulPartitionedCall_3?
"gru_step/StatefulPartitionedCall_3StatefulPartitionedCall0message_layer/StatefulPartitionedCall_3:output:0+gru_step/StatefulPartitionedCall_2:output:0gru_step_65787gru_step_65789gru_step_65791*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_gru_step_layer_call_and_return_conditional_losses_647982$
"gru_step/StatefulPartitionedCall_3?
'message_layer/StatefulPartitionedCall_4StatefulPartitionedCall+gru_step/StatefulPartitionedCall_3:output:0/bond_embedding/StatefulPartitionedCall:output:0connectivity(^message_layer/StatefulPartitionedCall_3*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_message_layer_layer_call_and_return_conditional_losses_647582)
'message_layer/StatefulPartitionedCall_4?
"gru_step/StatefulPartitionedCall_4StatefulPartitionedCall0message_layer/StatefulPartitionedCall_4:output:0+gru_step/StatefulPartitionedCall_3:output:0gru_step_65787gru_step_65789gru_step_65791*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_gru_step_layer_call_and_return_conditional_losses_647982$
"gru_step/StatefulPartitionedCall_4?
'message_layer/StatefulPartitionedCall_5StatefulPartitionedCall+gru_step/StatefulPartitionedCall_4:output:0/bond_embedding/StatefulPartitionedCall:output:0connectivity(^message_layer/StatefulPartitionedCall_4*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_message_layer_layer_call_and_return_conditional_losses_647582)
'message_layer/StatefulPartitionedCall_5?
"gru_step/StatefulPartitionedCall_5StatefulPartitionedCall0message_layer/StatefulPartitionedCall_5:output:0+gru_step/StatefulPartitionedCall_4:output:0gru_step_65787gru_step_65789gru_step_65791*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_gru_step_layer_call_and_return_conditional_losses_647982$
"gru_step/StatefulPartitionedCall_5?
'message_layer/StatefulPartitionedCall_6StatefulPartitionedCall+gru_step/StatefulPartitionedCall_5:output:0/bond_embedding/StatefulPartitionedCall:output:0connectivity(^message_layer/StatefulPartitionedCall_5*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_message_layer_layer_call_and_return_conditional_losses_647582)
'message_layer/StatefulPartitionedCall_6?
"gru_step/StatefulPartitionedCall_6StatefulPartitionedCall0message_layer/StatefulPartitionedCall_6:output:0+gru_step/StatefulPartitionedCall_5:output:0gru_step_65787gru_step_65789gru_step_65791*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_gru_step_layer_call_and_return_conditional_losses_647982$
"gru_step/StatefulPartitionedCall_6?
'message_layer/StatefulPartitionedCall_7StatefulPartitionedCall+gru_step/StatefulPartitionedCall_6:output:0/bond_embedding/StatefulPartitionedCall:output:0connectivity(^message_layer/StatefulPartitionedCall_6*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_message_layer_layer_call_and_return_conditional_losses_647582)
'message_layer/StatefulPartitionedCall_7?
"gru_step/StatefulPartitionedCall_7StatefulPartitionedCall0message_layer/StatefulPartitionedCall_7:output:0+gru_step/StatefulPartitionedCall_6:output:0gru_step_65787gru_step_65789gru_step_65791*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_gru_step_layer_call_and_return_conditional_losses_647982$
"gru_step/StatefulPartitionedCall_7?
'message_layer/StatefulPartitionedCall_8StatefulPartitionedCall+gru_step/StatefulPartitionedCall_7:output:0/bond_embedding/StatefulPartitionedCall:output:0connectivity(^message_layer/StatefulPartitionedCall_7*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_message_layer_layer_call_and_return_conditional_losses_647582)
'message_layer/StatefulPartitionedCall_8?
"gru_step/StatefulPartitionedCall_8StatefulPartitionedCall0message_layer/StatefulPartitionedCall_8:output:0+gru_step/StatefulPartitionedCall_7:output:0gru_step_65787gru_step_65789gru_step_65791*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_gru_step_layer_call_and_return_conditional_losses_647982$
"gru_step/StatefulPartitionedCall_8?
squeeze/PartitionedCall_2PartitionedCallnode_graph_indices*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_squeeze_layer_call_and_return_conditional_losses_646992
squeeze/PartitionedCall_2?
)graph_fingerprint/StatefulPartitionedCallStatefulPartitionedCall+gru_step/StatefulPartitionedCall_8:output:0"squeeze/PartitionedCall_2:output:0graph_fingerprint_65835graph_fingerprint_65837*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_graph_fingerprint_layer_call_and_return_conditional_losses_650092+
)graph_fingerprint/StatefulPartitionedCall?
mfp1/StatefulPartitionedCallStatefulPartitionedCall2graph_fingerprint/StatefulPartitionedCall:output:0
mfp1_65840
mfp1_65842*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_mfp1_layer_call_and_return_conditional_losses_650262
mfp1/StatefulPartitionedCall?
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall%mfp1/StatefulPartitionedCall:output:0batch_normalization_65845batch_normalization_65847batch_normalization_65849batch_normalization_65851*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_642192-
+batch_normalization/StatefulPartitionedCall?
mfp2/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0
mfp2_65854
mfp2_65856*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_mfp2_layer_call_and_return_conditional_losses_650522
mfp2/StatefulPartitionedCall?
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall%mfp2/StatefulPartitionedCall:output:0batch_normalization_1_65859batch_normalization_1_65861batch_normalization_1_65863batch_normalization_1_65865*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_643812/
-batch_normalization_1/StatefulPartitionedCall?
mfp3/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0
mfp3_65868
mfp3_65870*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_mfp3_layer_call_and_return_conditional_losses_650782
mfp3/StatefulPartitionedCall?
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall%mfp3/StatefulPartitionedCall:output:0batch_normalization_2_65873batch_normalization_2_65875batch_normalization_2_65877batch_normalization_2_65879*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_645432/
-batch_normalization_2/StatefulPartitionedCall?
output/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0output_65882output_65884*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_output_layer_call_and_return_conditional_losses_651032 
output/StatefulPartitionedCall?	
IdentityIdentity'output/StatefulPartitionedCall:output:0'^atom_embedding/StatefulPartitionedCall,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall'^bond_embedding/StatefulPartitionedCall*^graph_fingerprint/StatefulPartitionedCall!^gru_step/StatefulPartitionedCall#^gru_step/StatefulPartitionedCall_1#^gru_step/StatefulPartitionedCall_2#^gru_step/StatefulPartitionedCall_3#^gru_step/StatefulPartitionedCall_4#^gru_step/StatefulPartitionedCall_5#^gru_step/StatefulPartitionedCall_6#^gru_step/StatefulPartitionedCall_7#^gru_step/StatefulPartitionedCall_8&^message_layer/StatefulPartitionedCall(^message_layer/StatefulPartitionedCall_1(^message_layer/StatefulPartitionedCall_2(^message_layer/StatefulPartitionedCall_3(^message_layer/StatefulPartitionedCall_4(^message_layer/StatefulPartitionedCall_5(^message_layer/StatefulPartitionedCall_6(^message_layer/StatefulPartitionedCall_7(^message_layer/StatefulPartitionedCall_8^mfp1/StatefulPartitionedCall^mfp2/StatefulPartitionedCall^mfp3/StatefulPartitionedCall^output/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : 2P
&atom_embedding/StatefulPartitionedCall&atom_embedding/StatefulPartitionedCall2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2P
&bond_embedding/StatefulPartitionedCall&bond_embedding/StatefulPartitionedCall2V
)graph_fingerprint/StatefulPartitionedCall)graph_fingerprint/StatefulPartitionedCall2D
 gru_step/StatefulPartitionedCall gru_step/StatefulPartitionedCall2H
"gru_step/StatefulPartitionedCall_1"gru_step/StatefulPartitionedCall_12H
"gru_step/StatefulPartitionedCall_2"gru_step/StatefulPartitionedCall_22H
"gru_step/StatefulPartitionedCall_3"gru_step/StatefulPartitionedCall_32H
"gru_step/StatefulPartitionedCall_4"gru_step/StatefulPartitionedCall_42H
"gru_step/StatefulPartitionedCall_5"gru_step/StatefulPartitionedCall_52H
"gru_step/StatefulPartitionedCall_6"gru_step/StatefulPartitionedCall_62H
"gru_step/StatefulPartitionedCall_7"gru_step/StatefulPartitionedCall_72H
"gru_step/StatefulPartitionedCall_8"gru_step/StatefulPartitionedCall_82N
%message_layer/StatefulPartitionedCall%message_layer/StatefulPartitionedCall2R
'message_layer/StatefulPartitionedCall_1'message_layer/StatefulPartitionedCall_12R
'message_layer/StatefulPartitionedCall_2'message_layer/StatefulPartitionedCall_22R
'message_layer/StatefulPartitionedCall_3'message_layer/StatefulPartitionedCall_32R
'message_layer/StatefulPartitionedCall_4'message_layer/StatefulPartitionedCall_42R
'message_layer/StatefulPartitionedCall_5'message_layer/StatefulPartitionedCall_52R
'message_layer/StatefulPartitionedCall_6'message_layer/StatefulPartitionedCall_62R
'message_layer/StatefulPartitionedCall_7'message_layer/StatefulPartitionedCall_72R
'message_layer/StatefulPartitionedCall_8'message_layer/StatefulPartitionedCall_82<
mfp1/StatefulPartitionedCallmfp1/StatefulPartitionedCall2<
mfp2/StatefulPartitionedCallmfp2/StatefulPartitionedCall2<
mfp3/StatefulPartitionedCallmfp3/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:[ W
'
_output_shapes
:?????????
,
_user_specified_namenode_graph_indices:MI
'
_output_shapes
:?????????

_user_specified_nameatom:MI
'
_output_shapes
:?????????

_user_specified_namebond:UQ
'
_output_shapes
:?????????
&
_user_specified_nameconnectivity
֛
?"
__inference__traced_save_68811
file_prefix8
4savev2_atom_embedding_embeddings_read_readvariableopD
@savev2_bond_embedding_bond_embedding_weights_read_readvariableop.
*savev2_gru_step_kernel_read_readvariableop8
4savev2_gru_step_recurrent_kernel_read_readvariableop,
(savev2_gru_step_bias_read_readvariableop2
.savev2_graph_fingerprint_u_read_readvariableop2
.savev2_graph_fingerprint_b_read_readvariableop*
&savev2_mfp1_kernel_read_readvariableop(
$savev2_mfp1_bias_read_readvariableop8
4savev2_batch_normalization_gamma_read_readvariableop7
3savev2_batch_normalization_beta_read_readvariableop>
:savev2_batch_normalization_moving_mean_read_readvariableopB
>savev2_batch_normalization_moving_variance_read_readvariableop*
&savev2_mfp2_kernel_read_readvariableop(
$savev2_mfp2_bias_read_readvariableop:
6savev2_batch_normalization_1_gamma_read_readvariableop9
5savev2_batch_normalization_1_beta_read_readvariableop@
<savev2_batch_normalization_1_moving_mean_read_readvariableopD
@savev2_batch_normalization_1_moving_variance_read_readvariableop*
&savev2_mfp3_kernel_read_readvariableop(
$savev2_mfp3_bias_read_readvariableop:
6savev2_batch_normalization_2_gamma_read_readvariableop9
5savev2_batch_normalization_2_beta_read_readvariableop@
<savev2_batch_normalization_2_moving_mean_read_readvariableopD
@savev2_batch_normalization_2_moving_variance_read_readvariableop,
(savev2_output_kernel_read_readvariableop*
&savev2_output_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop?
;savev2_adam_atom_embedding_embeddings_m_read_readvariableopK
Gsavev2_adam_bond_embedding_bond_embedding_weights_m_read_readvariableop5
1savev2_adam_gru_step_kernel_m_read_readvariableop?
;savev2_adam_gru_step_recurrent_kernel_m_read_readvariableop3
/savev2_adam_gru_step_bias_m_read_readvariableop9
5savev2_adam_graph_fingerprint_u_m_read_readvariableop9
5savev2_adam_graph_fingerprint_b_m_read_readvariableop1
-savev2_adam_mfp1_kernel_m_read_readvariableop/
+savev2_adam_mfp1_bias_m_read_readvariableop?
;savev2_adam_batch_normalization_gamma_m_read_readvariableop>
:savev2_adam_batch_normalization_beta_m_read_readvariableop1
-savev2_adam_mfp2_kernel_m_read_readvariableop/
+savev2_adam_mfp2_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_1_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_1_beta_m_read_readvariableop1
-savev2_adam_mfp3_kernel_m_read_readvariableop/
+savev2_adam_mfp3_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_2_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_2_beta_m_read_readvariableop3
/savev2_adam_output_kernel_m_read_readvariableop1
-savev2_adam_output_bias_m_read_readvariableop?
;savev2_adam_atom_embedding_embeddings_v_read_readvariableopK
Gsavev2_adam_bond_embedding_bond_embedding_weights_v_read_readvariableop5
1savev2_adam_gru_step_kernel_v_read_readvariableop?
;savev2_adam_gru_step_recurrent_kernel_v_read_readvariableop3
/savev2_adam_gru_step_bias_v_read_readvariableop9
5savev2_adam_graph_fingerprint_u_v_read_readvariableop9
5savev2_adam_graph_fingerprint_b_v_read_readvariableop1
-savev2_adam_mfp1_kernel_v_read_readvariableop/
+savev2_adam_mfp1_bias_v_read_readvariableop?
;savev2_adam_batch_normalization_gamma_v_read_readvariableop>
:savev2_adam_batch_normalization_beta_v_read_readvariableop1
-savev2_adam_mfp2_kernel_v_read_readvariableop/
+savev2_adam_mfp2_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_1_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_1_beta_v_read_readvariableop1
-savev2_adam_mfp3_kernel_v_read_readvariableop/
+savev2_adam_mfp3_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_2_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_2_beta_v_read_readvariableop3
/savev2_adam_output_kernel_v_read_readvariableop1
-savev2_adam_output_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?,
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:O*
dtype0*?+
value?+B?+OB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/bond_embedding_weights/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-2/recurrent_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB1layer_with_weights-3/U/.ATTRIBUTES/VARIABLE_VALUEB1layer_with_weights-3/b/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBblayer_with_weights-1/bond_embedding_weights/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-2/recurrent_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMlayer_with_weights-3/U/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMlayer_with_weights-3/b/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBblayer_with_weights-1/bond_embedding_weights/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-2/recurrent_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMlayer_with_weights-3/U/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMlayer_with_weights-3/b/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:O*
dtype0*?
value?B?OB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?!
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:04savev2_atom_embedding_embeddings_read_readvariableop@savev2_bond_embedding_bond_embedding_weights_read_readvariableop*savev2_gru_step_kernel_read_readvariableop4savev2_gru_step_recurrent_kernel_read_readvariableop(savev2_gru_step_bias_read_readvariableop.savev2_graph_fingerprint_u_read_readvariableop.savev2_graph_fingerprint_b_read_readvariableop&savev2_mfp1_kernel_read_readvariableop$savev2_mfp1_bias_read_readvariableop4savev2_batch_normalization_gamma_read_readvariableop3savev2_batch_normalization_beta_read_readvariableop:savev2_batch_normalization_moving_mean_read_readvariableop>savev2_batch_normalization_moving_variance_read_readvariableop&savev2_mfp2_kernel_read_readvariableop$savev2_mfp2_bias_read_readvariableop6savev2_batch_normalization_1_gamma_read_readvariableop5savev2_batch_normalization_1_beta_read_readvariableop<savev2_batch_normalization_1_moving_mean_read_readvariableop@savev2_batch_normalization_1_moving_variance_read_readvariableop&savev2_mfp3_kernel_read_readvariableop$savev2_mfp3_bias_read_readvariableop6savev2_batch_normalization_2_gamma_read_readvariableop5savev2_batch_normalization_2_beta_read_readvariableop<savev2_batch_normalization_2_moving_mean_read_readvariableop@savev2_batch_normalization_2_moving_variance_read_readvariableop(savev2_output_kernel_read_readvariableop&savev2_output_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop;savev2_adam_atom_embedding_embeddings_m_read_readvariableopGsavev2_adam_bond_embedding_bond_embedding_weights_m_read_readvariableop1savev2_adam_gru_step_kernel_m_read_readvariableop;savev2_adam_gru_step_recurrent_kernel_m_read_readvariableop/savev2_adam_gru_step_bias_m_read_readvariableop5savev2_adam_graph_fingerprint_u_m_read_readvariableop5savev2_adam_graph_fingerprint_b_m_read_readvariableop-savev2_adam_mfp1_kernel_m_read_readvariableop+savev2_adam_mfp1_bias_m_read_readvariableop;savev2_adam_batch_normalization_gamma_m_read_readvariableop:savev2_adam_batch_normalization_beta_m_read_readvariableop-savev2_adam_mfp2_kernel_m_read_readvariableop+savev2_adam_mfp2_bias_m_read_readvariableop=savev2_adam_batch_normalization_1_gamma_m_read_readvariableop<savev2_adam_batch_normalization_1_beta_m_read_readvariableop-savev2_adam_mfp3_kernel_m_read_readvariableop+savev2_adam_mfp3_bias_m_read_readvariableop=savev2_adam_batch_normalization_2_gamma_m_read_readvariableop<savev2_adam_batch_normalization_2_beta_m_read_readvariableop/savev2_adam_output_kernel_m_read_readvariableop-savev2_adam_output_bias_m_read_readvariableop;savev2_adam_atom_embedding_embeddings_v_read_readvariableopGsavev2_adam_bond_embedding_bond_embedding_weights_v_read_readvariableop1savev2_adam_gru_step_kernel_v_read_readvariableop;savev2_adam_gru_step_recurrent_kernel_v_read_readvariableop/savev2_adam_gru_step_bias_v_read_readvariableop5savev2_adam_graph_fingerprint_u_v_read_readvariableop5savev2_adam_graph_fingerprint_b_v_read_readvariableop-savev2_adam_mfp1_kernel_v_read_readvariableop+savev2_adam_mfp1_bias_v_read_readvariableop;savev2_adam_batch_normalization_gamma_v_read_readvariableop:savev2_adam_batch_normalization_beta_v_read_readvariableop-savev2_adam_mfp2_kernel_v_read_readvariableop+savev2_adam_mfp2_bias_v_read_readvariableop=savev2_adam_batch_normalization_1_gamma_v_read_readvariableop<savev2_adam_batch_normalization_1_beta_v_read_readvariableop-savev2_adam_mfp3_kernel_v_read_readvariableop+savev2_adam_mfp3_bias_v_read_readvariableop=savev2_adam_batch_normalization_2_gamma_v_read_readvariableop<savev2_adam_batch_normalization_2_beta_v_read_readvariableop/savev2_adam_output_kernel_v_read_readvariableop-savev2_adam_output_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *]
dtypesS
Q2O	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :	? :?  : `: `:`:	@?:?:	@?:?:?:?:?:?:	? : : : : : :	 ?:?:?:?:?:?:	?:: : : : : : : : : :	? :?  : `: `:`:	@?:?:	@?:?:?:?:	? : : : :	 ?:?:?:?:	?::	? :?  : `: `:`:	@?:?:	@?:?:?:?:	? : : : :	 ?:?:?:?:	?:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	? :)%
#
_output_shapes
:?  :$ 

_output_shapes

: `:$ 

_output_shapes

: `:$ 

_output_shapes

:`:%!

_output_shapes
:	@?:!

_output_shapes	
:?:%!

_output_shapes
:	@?:!	

_output_shapes	
:?:!


_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:%!

_output_shapes
:	? : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :%!

_output_shapes
:	 ?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%%!

_output_shapes
:	? :)&%
#
_output_shapes
:?  :$' 

_output_shapes

: `:$( 

_output_shapes

: `:$) 

_output_shapes

:`:%*!

_output_shapes
:	@?:!+

_output_shapes	
:?:%,!

_output_shapes
:	@?:!-

_output_shapes	
:?:!.

_output_shapes	
:?:!/

_output_shapes	
:?:%0!

_output_shapes
:	? : 1

_output_shapes
: : 2

_output_shapes
: : 3

_output_shapes
: :%4!

_output_shapes
:	 ?:!5

_output_shapes	
:?:!6

_output_shapes	
:?:!7

_output_shapes	
:?:%8!

_output_shapes
:	?: 9

_output_shapes
::%:!

_output_shapes
:	? :);%
#
_output_shapes
:?  :$< 

_output_shapes

: `:$= 

_output_shapes

: `:$> 

_output_shapes

:`:%?!

_output_shapes
:	@?:!@

_output_shapes	
:?:%A!

_output_shapes
:	@?:!B

_output_shapes	
:?:!C

_output_shapes	
:?:!D

_output_shapes	
:?:%E!

_output_shapes
:	? : F

_output_shapes
: : G

_output_shapes
: : H

_output_shapes
: :%I!

_output_shapes
:	 ?:!J

_output_shapes	
:?:!K

_output_shapes	
:?:!L

_output_shapes	
:?:%M!

_output_shapes
:	?: N

_output_shapes
::O

_output_shapes
: 
?
?
#__inference_signature_wrapper_66074
atom
bond
connectivity
node_graph_indices
unknown:?  
	unknown_0:	? 
	unknown_1:`
	unknown_2: `
	unknown_3: `
	unknown_4:	@?
	unknown_5:	?
	unknown_6:	@?
	unknown_7:	?
	unknown_8:	?
	unknown_9:	?

unknown_10:	?

unknown_11:	?

unknown_12:	? 

unknown_13: 

unknown_14: 

unknown_15: 

unknown_16: 

unknown_17: 

unknown_18:	 ?

unknown_19:	?

unknown_20:	?

unknown_21:	?

unknown_22:	?

unknown_23:	?

unknown_24:	?

unknown_25:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallnode_graph_indicesatombondconnectivityunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*=
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__wrapped_model_641952
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:M I
'
_output_shapes
:?????????

_user_specified_nameatom:MI
'
_output_shapes
:?????????

_user_specified_namebond:UQ
'
_output_shapes
:?????????
&
_user_specified_nameconnectivity:[W
'
_output_shapes
:?????????
,
_user_specified_namenode_graph_indices
?
^
B__inference_squeeze_layer_call_and_return_conditional_losses_64699

inputs
identityj
SqueezeSqueezeinputs*
T0*#
_output_shapes
:?????????*
squeeze_dims
2	
Squeeze`
IdentityIdentitySqueeze:output:0*
T0*#
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
L__inference_graph_fingerprint_layer_call_and_return_conditional_losses_65009

inputs
inputs_14
!xw_plus_b_readvariableop_resource:	@?2
#xw_plus_b_readvariableop_1_resource:	?
identity??xw_plus_b/ReadVariableOp?xw_plus_b/ReadVariableOp_1?xw_plus_b_1/ReadVariableOp?xw_plus_b_1/ReadVariableOp_1?xw_plus_b_2/ReadVariableOp?xw_plus_b_2/ReadVariableOp_1X
ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
ConstL
MaxMaxinputs_1Const:output:0*
T0*
_output_shapes
: 2
MaxP
add/yConst*
_output_shapes
: *
dtype0*
value	B :2
add/yR
addAddV2Max:output:0add/y:output:0*
T0*
_output_shapes
: 2
add\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/y]
	zeros/mulMuladd:z:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1t
zeros/packedPackadd:z:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yc
zeros_1/mulMuladd:z:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1z
zeros_1/packedPackadd:z:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2	
zeros_1`
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2/axis?
GatherV2GatherV2zeros_1:output:0inputs_1GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:????????? 2

GatherV2^
mulMulinputsGatherV2:output:0*
T0*'
_output_shapes
:????????? 2
mulp
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indicesh
SumSummul:z:0Sum/reduction_indices:output:0*
T0*#
_output_shapes
:?????????2
SumM
ExpExpSum:output:0*
T0*#
_output_shapes
:?????????2
Expw

SegmentSum
SegmentSumExp:y:0inputs_1*
T0*
Tindices0*#
_output_shapes
:?????????2

SegmentSumd
GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_1/axis?

GatherV2_1GatherV2SegmentSum:output:0inputs_1GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*#
_output_shapes
:?????????2

GatherV2_1i
truedivRealDivExp:y:0GatherV2_1:output:0*
T0*#
_output_shapes
:?????????2	
truedivo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
Reshape/shapet
ReshapeReshapetruediv:z:0Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2	
Reshapea
mul_1MulReshape:output:0inputs*
T0*'
_output_shapes
:????????? 2
mul_1?
SegmentSum_1
SegmentSum	mul_1:z:0inputs_1*
T0*
Tindices0*'
_output_shapes
:????????? 2
SegmentSum_1\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2zeros_1:output:0SegmentSum_1:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????@2
concat?
xw_plus_b/ReadVariableOpReadVariableOp!xw_plus_b_readvariableop_resource*
_output_shapes
:	@?*
dtype02
xw_plus_b/ReadVariableOp?
xw_plus_b/ReadVariableOp_1ReadVariableOp#xw_plus_b_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
xw_plus_b/ReadVariableOp_1?
xw_plus_b/MatMulMatMulconcat:output:0 xw_plus_b/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
xw_plus_b/MatMul?
	xw_plus_bBiasAddxw_plus_b/MatMul:product:0"xw_plus_b/ReadVariableOp_1:value:0*
T0*(
_output_shapes
:??????????2
	xw_plus_b{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSlicexw_plus_b:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2
strided_sliceg
SigmoidSigmoidstrided_slice:output:0*
T0*'
_output_shapes
:????????? 2	
Sigmoid
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSlicexw_plus_b:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2
strided_slice_1m
	Sigmoid_1Sigmoidstrided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
	Sigmoid_1
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_2/stack?
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2
strided_slice_2/stack_1?
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2?
strided_slice_2StridedSlicexw_plus_b:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2
strided_slice_2m
	Sigmoid_2Sigmoidstrided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
	Sigmoid_2
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2
strided_slice_3/stack?
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1?
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2?
strided_slice_3StridedSlicexw_plus_b:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2
strided_slice_3f
mul_2MulSigmoid_1:y:0zeros:output:0*
T0*'
_output_shapes
:????????? 2
mul_2`
TanhTanhstrided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
Tanh^
mul_3MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:????????? 2
mul_3_
add_1AddV2	mul_2:z:0	mul_3:z:0*
T0*'
_output_shapes
:????????? 2
add_1U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:????????? 2
Tanh_1b
mul_4MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
mul_4d
GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_2/axis?

GatherV2_2GatherV2	mul_4:z:0inputs_1GatherV2_2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:????????? 2

GatherV2_2d
mul_5MulinputsGatherV2_2:output:0*
T0*'
_output_shapes
:????????? 2
mul_5t
Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum_1/reduction_indicesp
Sum_1Sum	mul_5:z:0 Sum_1/reduction_indices:output:0*
T0*#
_output_shapes
:?????????2
Sum_1S
Exp_1ExpSum_1:output:0*
T0*#
_output_shapes
:?????????2
Exp_1}
SegmentSum_2
SegmentSum	Exp_1:y:0inputs_1*
T0*
Tindices0*#
_output_shapes
:?????????2
SegmentSum_2d
GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_3/axis?

GatherV2_3GatherV2SegmentSum_2:output:0inputs_1GatherV2_3/axis:output:0*
Taxis0*
Tindices0*
Tparams0*#
_output_shapes
:?????????2

GatherV2_3o
	truediv_1RealDiv	Exp_1:y:0GatherV2_3:output:0*
T0*#
_output_shapes
:?????????2
	truediv_1s
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
Reshape_1/shape|
	Reshape_1Reshapetruediv_1:z:0Reshape_1/shape:output:0*
T0*'
_output_shapes
:?????????2
	Reshape_1c
mul_6MulReshape_1:output:0inputs*
T0*'
_output_shapes
:????????? 2
mul_6?
SegmentSum_3
SegmentSum	mul_6:z:0inputs_1*
T0*
Tindices0*'
_output_shapes
:????????? 2
SegmentSum_3`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_1/axis?
concat_1ConcatV2	mul_4:z:0SegmentSum_3:output:0concat_1/axis:output:0*
N*
T0*'
_output_shapes
:?????????@2

concat_1?
xw_plus_b_1/ReadVariableOpReadVariableOp!xw_plus_b_readvariableop_resource*
_output_shapes
:	@?*
dtype02
xw_plus_b_1/ReadVariableOp?
xw_plus_b_1/ReadVariableOp_1ReadVariableOp#xw_plus_b_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
xw_plus_b_1/ReadVariableOp_1?
xw_plus_b_1/MatMulMatMulconcat_1:output:0"xw_plus_b_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
xw_plus_b_1/MatMul?
xw_plus_b_1BiasAddxw_plus_b_1/MatMul:product:0$xw_plus_b_1/ReadVariableOp_1:value:0*
T0*(
_output_shapes
:??????????2
xw_plus_b_1
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_4/stack?
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_4/stack_1?
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_4/stack_2?
strided_slice_4StridedSlicexw_plus_b_1:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2
strided_slice_4m
	Sigmoid_3Sigmoidstrided_slice_4:output:0*
T0*'
_output_shapes
:????????? 2
	Sigmoid_3
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_5/stack?
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_5/stack_1?
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_5/stack_2?
strided_slice_5StridedSlicexw_plus_b_1:output:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2
strided_slice_5m
	Sigmoid_4Sigmoidstrided_slice_5:output:0*
T0*'
_output_shapes
:????????? 2
	Sigmoid_4
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_6/stack?
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2
strided_slice_6/stack_1?
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_6/stack_2?
strided_slice_6StridedSlicexw_plus_b_1:output:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2
strided_slice_6m
	Sigmoid_5Sigmoidstrided_slice_6:output:0*
T0*'
_output_shapes
:????????? 2
	Sigmoid_5
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2
strided_slice_7/stack?
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_7/stack_1?
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_7/stack_2?
strided_slice_7StridedSlicexw_plus_b_1:output:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2
strided_slice_7a
mul_7MulSigmoid_4:y:0	add_1:z:0*
T0*'
_output_shapes
:????????? 2
mul_7d
Tanh_2Tanhstrided_slice_7:output:0*
T0*'
_output_shapes
:????????? 2
Tanh_2b
mul_8MulSigmoid_3:y:0
Tanh_2:y:0*
T0*'
_output_shapes
:????????? 2
mul_8_
add_2AddV2	mul_7:z:0	mul_8:z:0*
T0*'
_output_shapes
:????????? 2
add_2U
Tanh_3Tanh	add_2:z:0*
T0*'
_output_shapes
:????????? 2
Tanh_3b
mul_9MulSigmoid_5:y:0
Tanh_3:y:0*
T0*'
_output_shapes
:????????? 2
mul_9d
GatherV2_4/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_4/axis?

GatherV2_4GatherV2	mul_9:z:0inputs_1GatherV2_4/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:????????? 2

GatherV2_4f
mul_10MulinputsGatherV2_4:output:0*
T0*'
_output_shapes
:????????? 2
mul_10t
Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum_2/reduction_indicesq
Sum_2Sum
mul_10:z:0 Sum_2/reduction_indices:output:0*
T0*#
_output_shapes
:?????????2
Sum_2S
Exp_2ExpSum_2:output:0*
T0*#
_output_shapes
:?????????2
Exp_2}
SegmentSum_4
SegmentSum	Exp_2:y:0inputs_1*
T0*
Tindices0*#
_output_shapes
:?????????2
SegmentSum_4d
GatherV2_5/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_5/axis?

GatherV2_5GatherV2SegmentSum_4:output:0inputs_1GatherV2_5/axis:output:0*
Taxis0*
Tindices0*
Tparams0*#
_output_shapes
:?????????2

GatherV2_5o
	truediv_2RealDiv	Exp_2:y:0GatherV2_5:output:0*
T0*#
_output_shapes
:?????????2
	truediv_2s
Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
Reshape_2/shape|
	Reshape_2Reshapetruediv_2:z:0Reshape_2/shape:output:0*
T0*'
_output_shapes
:?????????2
	Reshape_2e
mul_11MulReshape_2:output:0inputs*
T0*'
_output_shapes
:????????? 2
mul_11?
SegmentSum_5
SegmentSum
mul_11:z:0inputs_1*
T0*
Tindices0*'
_output_shapes
:????????? 2
SegmentSum_5`
concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_2/axis?
concat_2ConcatV2	mul_9:z:0SegmentSum_5:output:0concat_2/axis:output:0*
N*
T0*'
_output_shapes
:?????????@2

concat_2?
xw_plus_b_2/ReadVariableOpReadVariableOp!xw_plus_b_readvariableop_resource*
_output_shapes
:	@?*
dtype02
xw_plus_b_2/ReadVariableOp?
xw_plus_b_2/ReadVariableOp_1ReadVariableOp#xw_plus_b_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
xw_plus_b_2/ReadVariableOp_1?
xw_plus_b_2/MatMulMatMulconcat_2:output:0"xw_plus_b_2/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
xw_plus_b_2/MatMul?
xw_plus_b_2BiasAddxw_plus_b_2/MatMul:product:0$xw_plus_b_2/ReadVariableOp_1:value:0*
T0*(
_output_shapes
:??????????2
xw_plus_b_2
strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_8/stack?
strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_8/stack_1?
strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_8/stack_2?
strided_slice_8StridedSlicexw_plus_b_2:output:0strided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2
strided_slice_8m
	Sigmoid_6Sigmoidstrided_slice_8:output:0*
T0*'
_output_shapes
:????????? 2
	Sigmoid_6
strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_9/stack?
strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_9/stack_1?
strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_9/stack_2?
strided_slice_9StridedSlicexw_plus_b_2:output:0strided_slice_9/stack:output:0 strided_slice_9/stack_1:output:0 strided_slice_9/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2
strided_slice_9m
	Sigmoid_7Sigmoidstrided_slice_9:output:0*
T0*'
_output_shapes
:????????? 2
	Sigmoid_7?
strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_10/stack?
strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2
strided_slice_10/stack_1?
strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_10/stack_2?
strided_slice_10StridedSlicexw_plus_b_2:output:0strided_slice_10/stack:output:0!strided_slice_10/stack_1:output:0!strided_slice_10/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2
strided_slice_10n
	Sigmoid_8Sigmoidstrided_slice_10:output:0*
T0*'
_output_shapes
:????????? 2
	Sigmoid_8?
strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2
strided_slice_11/stack?
strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_11/stack_1?
strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_11/stack_2?
strided_slice_11StridedSlicexw_plus_b_2:output:0strided_slice_11/stack:output:0!strided_slice_11/stack_1:output:0!strided_slice_11/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2
strided_slice_11c
mul_12MulSigmoid_7:y:0	add_2:z:0*
T0*'
_output_shapes
:????????? 2
mul_12e
Tanh_4Tanhstrided_slice_11:output:0*
T0*'
_output_shapes
:????????? 2
Tanh_4d
mul_13MulSigmoid_6:y:0
Tanh_4:y:0*
T0*'
_output_shapes
:????????? 2
mul_13a
add_3AddV2
mul_12:z:0
mul_13:z:0*
T0*'
_output_shapes
:????????? 2
add_3U
Tanh_5Tanh	add_3:z:0*
T0*'
_output_shapes
:????????? 2
Tanh_5d
mul_14MulSigmoid_8:y:0
Tanh_5:y:0*
T0*'
_output_shapes
:????????? 2
mul_14?
IdentityIdentityconcat_2:output:0^xw_plus_b/ReadVariableOp^xw_plus_b/ReadVariableOp_1^xw_plus_b_1/ReadVariableOp^xw_plus_b_1/ReadVariableOp_1^xw_plus_b_2/ReadVariableOp^xw_plus_b_2/ReadVariableOp_1*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:????????? :?????????: : 24
xw_plus_b/ReadVariableOpxw_plus_b/ReadVariableOp28
xw_plus_b/ReadVariableOp_1xw_plus_b/ReadVariableOp_128
xw_plus_b_1/ReadVariableOpxw_plus_b_1/ReadVariableOp2<
xw_plus_b_1/ReadVariableOp_1xw_plus_b_1/ReadVariableOp_128
xw_plus_b_2/ReadVariableOpxw_plus_b_2/ReadVariableOp2<
xw_plus_b_2/ReadVariableOp_1xw_plus_b_2/ReadVariableOp_1:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs
??	
?&
 __inference__wrapped_model_64195
node_graph_indices
atom
bond
connectivityH
1graph_model_bond_embedding_embedding_lookup_63462:?  D
1graph_model_atom_embedding_embedding_lookup_63467:	? >
,graph_model_gru_step_readvariableop_resource:`E
3graph_model_gru_step_matmul_readvariableop_resource: `G
5graph_model_gru_step_matmul_1_readvariableop_resource: `R
?graph_model_graph_fingerprint_xw_plus_b_readvariableop_resource:	@?P
Agraph_model_graph_fingerprint_xw_plus_b_readvariableop_1_resource:	?B
/graph_model_mfp1_matmul_readvariableop_resource:	@??
0graph_model_mfp1_biasadd_readvariableop_resource:	?P
Agraph_model_batch_normalization_batchnorm_readvariableop_resource:	?T
Egraph_model_batch_normalization_batchnorm_mul_readvariableop_resource:	?R
Cgraph_model_batch_normalization_batchnorm_readvariableop_1_resource:	?R
Cgraph_model_batch_normalization_batchnorm_readvariableop_2_resource:	?B
/graph_model_mfp2_matmul_readvariableop_resource:	? >
0graph_model_mfp2_biasadd_readvariableop_resource: Q
Cgraph_model_batch_normalization_1_batchnorm_readvariableop_resource: U
Ggraph_model_batch_normalization_1_batchnorm_mul_readvariableop_resource: S
Egraph_model_batch_normalization_1_batchnorm_readvariableop_1_resource: S
Egraph_model_batch_normalization_1_batchnorm_readvariableop_2_resource: B
/graph_model_mfp3_matmul_readvariableop_resource:	 ??
0graph_model_mfp3_biasadd_readvariableop_resource:	?R
Cgraph_model_batch_normalization_2_batchnorm_readvariableop_resource:	?V
Ggraph_model_batch_normalization_2_batchnorm_mul_readvariableop_resource:	?T
Egraph_model_batch_normalization_2_batchnorm_readvariableop_1_resource:	?T
Egraph_model_batch_normalization_2_batchnorm_readvariableop_2_resource:	?D
1graph_model_output_matmul_readvariableop_resource:	?@
2graph_model_output_biasadd_readvariableop_resource:
identity??+graph_model/atom_embedding/embedding_lookup?8graph_model/batch_normalization/batchnorm/ReadVariableOp?:graph_model/batch_normalization/batchnorm/ReadVariableOp_1?:graph_model/batch_normalization/batchnorm/ReadVariableOp_2?<graph_model/batch_normalization/batchnorm/mul/ReadVariableOp?:graph_model/batch_normalization_1/batchnorm/ReadVariableOp?<graph_model/batch_normalization_1/batchnorm/ReadVariableOp_1?<graph_model/batch_normalization_1/batchnorm/ReadVariableOp_2?>graph_model/batch_normalization_1/batchnorm/mul/ReadVariableOp?:graph_model/batch_normalization_2/batchnorm/ReadVariableOp?<graph_model/batch_normalization_2/batchnorm/ReadVariableOp_1?<graph_model/batch_normalization_2/batchnorm/ReadVariableOp_2?>graph_model/batch_normalization_2/batchnorm/mul/ReadVariableOp?+graph_model/bond_embedding/embedding_lookup?6graph_model/graph_fingerprint/xw_plus_b/ReadVariableOp?8graph_model/graph_fingerprint/xw_plus_b/ReadVariableOp_1?8graph_model/graph_fingerprint/xw_plus_b_1/ReadVariableOp?:graph_model/graph_fingerprint/xw_plus_b_1/ReadVariableOp_1?8graph_model/graph_fingerprint/xw_plus_b_2/ReadVariableOp?:graph_model/graph_fingerprint/xw_plus_b_2/ReadVariableOp_1?*graph_model/gru_step/MatMul/ReadVariableOp?,graph_model/gru_step/MatMul_1/ReadVariableOp?-graph_model/gru_step/MatMul_10/ReadVariableOp?-graph_model/gru_step/MatMul_11/ReadVariableOp?-graph_model/gru_step/MatMul_12/ReadVariableOp?-graph_model/gru_step/MatMul_13/ReadVariableOp?-graph_model/gru_step/MatMul_14/ReadVariableOp?-graph_model/gru_step/MatMul_15/ReadVariableOp?-graph_model/gru_step/MatMul_16/ReadVariableOp?-graph_model/gru_step/MatMul_17/ReadVariableOp?,graph_model/gru_step/MatMul_2/ReadVariableOp?,graph_model/gru_step/MatMul_3/ReadVariableOp?,graph_model/gru_step/MatMul_4/ReadVariableOp?,graph_model/gru_step/MatMul_5/ReadVariableOp?,graph_model/gru_step/MatMul_6/ReadVariableOp?,graph_model/gru_step/MatMul_7/ReadVariableOp?,graph_model/gru_step/MatMul_8/ReadVariableOp?,graph_model/gru_step/MatMul_9/ReadVariableOp?#graph_model/gru_step/ReadVariableOp?%graph_model/gru_step/ReadVariableOp_1?%graph_model/gru_step/ReadVariableOp_2?%graph_model/gru_step/ReadVariableOp_3?%graph_model/gru_step/ReadVariableOp_4?%graph_model/gru_step/ReadVariableOp_5?%graph_model/gru_step/ReadVariableOp_6?%graph_model/gru_step/ReadVariableOp_7?%graph_model/gru_step/ReadVariableOp_8?'graph_model/mfp1/BiasAdd/ReadVariableOp?&graph_model/mfp1/MatMul/ReadVariableOp?'graph_model/mfp2/BiasAdd/ReadVariableOp?&graph_model/mfp2/MatMul/ReadVariableOp?'graph_model/mfp3/BiasAdd/ReadVariableOp?&graph_model/mfp3/MatMul/ReadVariableOp?)graph_model/output/BiasAdd/ReadVariableOp?(graph_model/output/MatMul/ReadVariableOp?
graph_model/squeeze/SqueezeSqueezebond*
T0*#
_output_shapes
:?????????*
squeeze_dims
2
graph_model/squeeze/Squeeze?
graph_model/squeeze/Squeeze_1Squeezeatom*
T0*#
_output_shapes
:?????????*
squeeze_dims
2
graph_model/squeeze/Squeeze_1?
+graph_model/bond_embedding/embedding_lookupResourceGather1graph_model_bond_embedding_embedding_lookup_63462$graph_model/squeeze/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*D
_class:
86loc:@graph_model/bond_embedding/embedding_lookup/63462*+
_output_shapes
:?????????  *
dtype02-
+graph_model/bond_embedding/embedding_lookup?
4graph_model/bond_embedding/embedding_lookup/IdentityIdentity4graph_model/bond_embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*D
_class:
86loc:@graph_model/bond_embedding/embedding_lookup/63462*+
_output_shapes
:?????????  26
4graph_model/bond_embedding/embedding_lookup/Identity?
6graph_model/bond_embedding/embedding_lookup/Identity_1Identity=graph_model/bond_embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????  28
6graph_model/bond_embedding/embedding_lookup/Identity_1?
+graph_model/atom_embedding/embedding_lookupResourceGather1graph_model_atom_embedding_embedding_lookup_63467&graph_model/squeeze/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*D
_class:
86loc:@graph_model/atom_embedding/embedding_lookup/63467*'
_output_shapes
:????????? *
dtype02-
+graph_model/atom_embedding/embedding_lookup?
4graph_model/atom_embedding/embedding_lookup/IdentityIdentity4graph_model/atom_embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*D
_class:
86loc:@graph_model/atom_embedding/embedding_lookup/63467*'
_output_shapes
:????????? 26
4graph_model/atom_embedding/embedding_lookup/Identity?
6graph_model/atom_embedding/embedding_lookup/Identity_1Identity=graph_model/atom_embedding/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? 28
6graph_model/atom_embedding/embedding_lookup/Identity_1?
-graph_model/message_layer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2/
-graph_model/message_layer/strided_slice/stack?
/graph_model/message_layer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       21
/graph_model/message_layer/strided_slice/stack_1?
/graph_model/message_layer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      21
/graph_model/message_layer/strided_slice/stack_2?
'graph_model/message_layer/strided_sliceStridedSliceconnectivity6graph_model/message_layer/strided_slice/stack:output:08graph_model/message_layer/strided_slice/stack_1:output:08graph_model/message_layer/strided_slice/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2)
'graph_model/message_layer/strided_slice?
'graph_model/message_layer/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2)
'graph_model/message_layer/GatherV2/axis?
"graph_model/message_layer/GatherV2GatherV2?graph_model/atom_embedding/embedding_lookup/Identity_1:output:00graph_model/message_layer/strided_slice:output:00graph_model/message_layer/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:????????? 2$
"graph_model/message_layer/GatherV2?
(graph_model/message_layer/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(graph_model/message_layer/ExpandDims/dim?
$graph_model/message_layer/ExpandDims
ExpandDims+graph_model/message_layer/GatherV2:output:01graph_model/message_layer/ExpandDims/dim:output:0*
T0*+
_output_shapes
:????????? 2&
$graph_model/message_layer/ExpandDims?
 graph_model/message_layer/MatMulBatchMatMulV2?graph_model/bond_embedding/embedding_lookup/Identity_1:output:0-graph_model/message_layer/ExpandDims:output:0*
T0*+
_output_shapes
:????????? 2"
 graph_model/message_layer/MatMul?
graph_model/message_layer/ShapeShape)graph_model/message_layer/MatMul:output:0*
T0*
_output_shapes
:2!
graph_model/message_layer/Shape?
!graph_model/message_layer/SqueezeSqueeze)graph_model/message_layer/MatMul:output:0*
T0*'
_output_shapes
:????????? *
squeeze_dims

?????????2#
!graph_model/message_layer/Squeeze?
'graph_model/message_layer/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2)
'graph_model/message_layer/dropout/Const?
%graph_model/message_layer/dropout/MulMul*graph_model/message_layer/Squeeze:output:00graph_model/message_layer/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2'
%graph_model/message_layer/dropout/Mul?
'graph_model/message_layer/dropout/ShapeShape*graph_model/message_layer/Squeeze:output:0*
T0*
_output_shapes
:2)
'graph_model/message_layer/dropout/Shape?
>graph_model/message_layer/dropout/random_uniform/RandomUniformRandomUniform0graph_model/message_layer/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*

seed*
seed2Աi2@
>graph_model/message_layer/dropout/random_uniform/RandomUniform?
0graph_model/message_layer/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=22
0graph_model/message_layer/dropout/GreaterEqual/y?
.graph_model/message_layer/dropout/GreaterEqualGreaterEqualGgraph_model/message_layer/dropout/random_uniform/RandomUniform:output:09graph_model/message_layer/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 20
.graph_model/message_layer/dropout/GreaterEqual?
&graph_model/message_layer/dropout/CastCast2graph_model/message_layer/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2(
&graph_model/message_layer/dropout/Cast?
'graph_model/message_layer/dropout/Mul_1Mul)graph_model/message_layer/dropout/Mul:z:0*graph_model/message_layer/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2)
'graph_model/message_layer/dropout/Mul_1?
/graph_model/message_layer/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/graph_model/message_layer/strided_slice_1/stack?
1graph_model/message_layer/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1graph_model/message_layer/strided_slice_1/stack_1?
1graph_model/message_layer/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1graph_model/message_layer/strided_slice_1/stack_2?
)graph_model/message_layer/strided_slice_1StridedSliceconnectivity8graph_model/message_layer/strided_slice_1/stack:output:0:graph_model/message_layer/strided_slice_1/stack_1:output:0:graph_model/message_layer/strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2+
)graph_model/message_layer/strided_slice_1?
$graph_model/message_layer/SegmentSum
SegmentSum*graph_model/message_layer/Squeeze:output:02graph_model/message_layer/strided_slice_1:output:0*
T0*
Tindices0*'
_output_shapes
:????????? 2&
$graph_model/message_layer/SegmentSum?
#graph_model/gru_step/ReadVariableOpReadVariableOp,graph_model_gru_step_readvariableop_resource*
_output_shapes

:`*
dtype02%
#graph_model/gru_step/ReadVariableOp?
graph_model/gru_step/unstackUnpack+graph_model/gru_step/ReadVariableOp:value:0*
T0* 
_output_shapes
:`:`*	
num2
graph_model/gru_step/unstack?
*graph_model/gru_step/MatMul/ReadVariableOpReadVariableOp3graph_model_gru_step_matmul_readvariableop_resource*
_output_shapes

: `*
dtype02,
*graph_model/gru_step/MatMul/ReadVariableOp?
graph_model/gru_step/MatMulMatMul-graph_model/message_layer/SegmentSum:output:02graph_model/gru_step/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2
graph_model/gru_step/MatMul?
graph_model/gru_step/BiasAddBiasAdd%graph_model/gru_step/MatMul:product:0%graph_model/gru_step/unstack:output:0*
T0*'
_output_shapes
:?????????`2
graph_model/gru_step/BiasAdd?
$graph_model/gru_step/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2&
$graph_model/gru_step/split/split_dim?
graph_model/gru_step/splitSplit-graph_model/gru_step/split/split_dim:output:0%graph_model/gru_step/BiasAdd:output:0*
T0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
graph_model/gru_step/split?
,graph_model/gru_step/MatMul_1/ReadVariableOpReadVariableOp5graph_model_gru_step_matmul_1_readvariableop_resource*
_output_shapes

: `*
dtype02.
,graph_model/gru_step/MatMul_1/ReadVariableOp?
graph_model/gru_step/MatMul_1MatMul?graph_model/atom_embedding/embedding_lookup/Identity_1:output:04graph_model/gru_step/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2
graph_model/gru_step/MatMul_1?
graph_model/gru_step/BiasAdd_1BiasAdd'graph_model/gru_step/MatMul_1:product:0%graph_model/gru_step/unstack:output:1*
T0*'
_output_shapes
:?????????`2 
graph_model/gru_step/BiasAdd_1?
graph_model/gru_step/ConstConst*
_output_shapes
:*
dtype0*!
valueB"        ????2
graph_model/gru_step/Const?
&graph_model/gru_step/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2(
&graph_model/gru_step/split_1/split_dim?
graph_model/gru_step/split_1SplitV'graph_model/gru_step/BiasAdd_1:output:0#graph_model/gru_step/Const:output:0/graph_model/gru_step/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
graph_model/gru_step/split_1?
graph_model/gru_step/addAddV2#graph_model/gru_step/split:output:0%graph_model/gru_step/split_1:output:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/add?
graph_model/gru_step/SigmoidSigmoidgraph_model/gru_step/add:z:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/Sigmoid?
graph_model/gru_step/add_1AddV2#graph_model/gru_step/split:output:1%graph_model/gru_step/split_1:output:1*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/add_1?
graph_model/gru_step/Sigmoid_1Sigmoidgraph_model/gru_step/add_1:z:0*
T0*'
_output_shapes
:????????? 2 
graph_model/gru_step/Sigmoid_1?
graph_model/gru_step/mulMul"graph_model/gru_step/Sigmoid_1:y:0%graph_model/gru_step/split_1:output:2*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/mul?
graph_model/gru_step/add_2AddV2#graph_model/gru_step/split:output:2graph_model/gru_step/mul:z:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/add_2?
graph_model/gru_step/TanhTanhgraph_model/gru_step/add_2:z:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/Tanh?
graph_model/gru_step/mul_1Mul graph_model/gru_step/Sigmoid:y:0?graph_model/atom_embedding/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/mul_1}
graph_model/gru_step/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
graph_model/gru_step/sub/x?
graph_model/gru_step/subSub#graph_model/gru_step/sub/x:output:0 graph_model/gru_step/Sigmoid:y:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/sub?
graph_model/gru_step/mul_2Mulgraph_model/gru_step/sub:z:0graph_model/gru_step/Tanh:y:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/mul_2?
graph_model/gru_step/add_3AddV2graph_model/gru_step/mul_1:z:0graph_model/gru_step/mul_2:z:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/add_3?
/graph_model/message_layer/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/graph_model/message_layer/strided_slice_2/stack?
1graph_model/message_layer/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1graph_model/message_layer/strided_slice_2/stack_1?
1graph_model/message_layer/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1graph_model/message_layer/strided_slice_2/stack_2?
)graph_model/message_layer/strided_slice_2StridedSliceconnectivity8graph_model/message_layer/strided_slice_2/stack:output:0:graph_model/message_layer/strided_slice_2/stack_1:output:0:graph_model/message_layer/strided_slice_2/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2+
)graph_model/message_layer/strided_slice_2?
)graph_model/message_layer/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)graph_model/message_layer/GatherV2_1/axis?
$graph_model/message_layer/GatherV2_1GatherV2graph_model/gru_step/add_3:z:02graph_model/message_layer/strided_slice_2:output:02graph_model/message_layer/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:????????? 2&
$graph_model/message_layer/GatherV2_1?
*graph_model/message_layer/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*graph_model/message_layer/ExpandDims_1/dim?
&graph_model/message_layer/ExpandDims_1
ExpandDims-graph_model/message_layer/GatherV2_1:output:03graph_model/message_layer/ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:????????? 2(
&graph_model/message_layer/ExpandDims_1?
"graph_model/message_layer/MatMul_1BatchMatMulV2?graph_model/bond_embedding/embedding_lookup/Identity_1:output:0/graph_model/message_layer/ExpandDims_1:output:0*
T0*+
_output_shapes
:????????? 2$
"graph_model/message_layer/MatMul_1?
!graph_model/message_layer/Shape_1Shape+graph_model/message_layer/MatMul_1:output:0*
T0*
_output_shapes
:2#
!graph_model/message_layer/Shape_1?
#graph_model/message_layer/Squeeze_1Squeeze+graph_model/message_layer/MatMul_1:output:0*
T0*'
_output_shapes
:????????? *
squeeze_dims

?????????2%
#graph_model/message_layer/Squeeze_1?
)graph_model/message_layer/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2+
)graph_model/message_layer/dropout_1/Const?
'graph_model/message_layer/dropout_1/MulMul,graph_model/message_layer/Squeeze_1:output:02graph_model/message_layer/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2)
'graph_model/message_layer/dropout_1/Mul?
)graph_model/message_layer/dropout_1/ShapeShape,graph_model/message_layer/Squeeze_1:output:0*
T0*
_output_shapes
:2+
)graph_model/message_layer/dropout_1/Shape?
@graph_model/message_layer/dropout_1/random_uniform/RandomUniformRandomUniform2graph_model/message_layer/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*

seed*
seed2??V2B
@graph_model/message_layer/dropout_1/random_uniform/RandomUniform?
2graph_model/message_layer/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=24
2graph_model/message_layer/dropout_1/GreaterEqual/y?
0graph_model/message_layer/dropout_1/GreaterEqualGreaterEqualIgraph_model/message_layer/dropout_1/random_uniform/RandomUniform:output:0;graph_model/message_layer/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 22
0graph_model/message_layer/dropout_1/GreaterEqual?
(graph_model/message_layer/dropout_1/CastCast4graph_model/message_layer/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2*
(graph_model/message_layer/dropout_1/Cast?
)graph_model/message_layer/dropout_1/Mul_1Mul+graph_model/message_layer/dropout_1/Mul:z:0,graph_model/message_layer/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2+
)graph_model/message_layer/dropout_1/Mul_1?
/graph_model/message_layer/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/graph_model/message_layer/strided_slice_3/stack?
1graph_model/message_layer/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1graph_model/message_layer/strided_slice_3/stack_1?
1graph_model/message_layer/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1graph_model/message_layer/strided_slice_3/stack_2?
)graph_model/message_layer/strided_slice_3StridedSliceconnectivity8graph_model/message_layer/strided_slice_3/stack:output:0:graph_model/message_layer/strided_slice_3/stack_1:output:0:graph_model/message_layer/strided_slice_3/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2+
)graph_model/message_layer/strided_slice_3?
&graph_model/message_layer/SegmentSum_1
SegmentSum,graph_model/message_layer/Squeeze_1:output:02graph_model/message_layer/strided_slice_3:output:0*
T0*
Tindices0*'
_output_shapes
:????????? 2(
&graph_model/message_layer/SegmentSum_1?
%graph_model/gru_step/ReadVariableOp_1ReadVariableOp,graph_model_gru_step_readvariableop_resource*
_output_shapes

:`*
dtype02'
%graph_model/gru_step/ReadVariableOp_1?
graph_model/gru_step/unstack_1Unpack-graph_model/gru_step/ReadVariableOp_1:value:0*
T0* 
_output_shapes
:`:`*	
num2 
graph_model/gru_step/unstack_1?
,graph_model/gru_step/MatMul_2/ReadVariableOpReadVariableOp3graph_model_gru_step_matmul_readvariableop_resource*
_output_shapes

: `*
dtype02.
,graph_model/gru_step/MatMul_2/ReadVariableOp?
graph_model/gru_step/MatMul_2MatMul/graph_model/message_layer/SegmentSum_1:output:04graph_model/gru_step/MatMul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2
graph_model/gru_step/MatMul_2?
graph_model/gru_step/BiasAdd_2BiasAdd'graph_model/gru_step/MatMul_2:product:0'graph_model/gru_step/unstack_1:output:0*
T0*'
_output_shapes
:?????????`2 
graph_model/gru_step/BiasAdd_2?
&graph_model/gru_step/split_2/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2(
&graph_model/gru_step/split_2/split_dim?
graph_model/gru_step/split_2Split/graph_model/gru_step/split_2/split_dim:output:0'graph_model/gru_step/BiasAdd_2:output:0*
T0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
graph_model/gru_step/split_2?
,graph_model/gru_step/MatMul_3/ReadVariableOpReadVariableOp5graph_model_gru_step_matmul_1_readvariableop_resource*
_output_shapes

: `*
dtype02.
,graph_model/gru_step/MatMul_3/ReadVariableOp?
graph_model/gru_step/MatMul_3MatMulgraph_model/gru_step/add_3:z:04graph_model/gru_step/MatMul_3/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2
graph_model/gru_step/MatMul_3?
graph_model/gru_step/BiasAdd_3BiasAdd'graph_model/gru_step/MatMul_3:product:0'graph_model/gru_step/unstack_1:output:1*
T0*'
_output_shapes
:?????????`2 
graph_model/gru_step/BiasAdd_3?
graph_model/gru_step/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"        ????2
graph_model/gru_step/Const_1?
&graph_model/gru_step/split_3/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2(
&graph_model/gru_step/split_3/split_dim?
graph_model/gru_step/split_3SplitV'graph_model/gru_step/BiasAdd_3:output:0%graph_model/gru_step/Const_1:output:0/graph_model/gru_step/split_3/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
graph_model/gru_step/split_3?
graph_model/gru_step/add_4AddV2%graph_model/gru_step/split_2:output:0%graph_model/gru_step/split_3:output:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/add_4?
graph_model/gru_step/Sigmoid_2Sigmoidgraph_model/gru_step/add_4:z:0*
T0*'
_output_shapes
:????????? 2 
graph_model/gru_step/Sigmoid_2?
graph_model/gru_step/add_5AddV2%graph_model/gru_step/split_2:output:1%graph_model/gru_step/split_3:output:1*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/add_5?
graph_model/gru_step/Sigmoid_3Sigmoidgraph_model/gru_step/add_5:z:0*
T0*'
_output_shapes
:????????? 2 
graph_model/gru_step/Sigmoid_3?
graph_model/gru_step/mul_3Mul"graph_model/gru_step/Sigmoid_3:y:0%graph_model/gru_step/split_3:output:2*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/mul_3?
graph_model/gru_step/add_6AddV2%graph_model/gru_step/split_2:output:2graph_model/gru_step/mul_3:z:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/add_6?
graph_model/gru_step/Tanh_1Tanhgraph_model/gru_step/add_6:z:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/Tanh_1?
graph_model/gru_step/mul_4Mul"graph_model/gru_step/Sigmoid_2:y:0graph_model/gru_step/add_3:z:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/mul_4?
graph_model/gru_step/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
graph_model/gru_step/sub_1/x?
graph_model/gru_step/sub_1Sub%graph_model/gru_step/sub_1/x:output:0"graph_model/gru_step/Sigmoid_2:y:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/sub_1?
graph_model/gru_step/mul_5Mulgraph_model/gru_step/sub_1:z:0graph_model/gru_step/Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/mul_5?
graph_model/gru_step/add_7AddV2graph_model/gru_step/mul_4:z:0graph_model/gru_step/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/add_7?
/graph_model/message_layer/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/graph_model/message_layer/strided_slice_4/stack?
1graph_model/message_layer/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1graph_model/message_layer/strided_slice_4/stack_1?
1graph_model/message_layer/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1graph_model/message_layer/strided_slice_4/stack_2?
)graph_model/message_layer/strided_slice_4StridedSliceconnectivity8graph_model/message_layer/strided_slice_4/stack:output:0:graph_model/message_layer/strided_slice_4/stack_1:output:0:graph_model/message_layer/strided_slice_4/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2+
)graph_model/message_layer/strided_slice_4?
)graph_model/message_layer/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)graph_model/message_layer/GatherV2_2/axis?
$graph_model/message_layer/GatherV2_2GatherV2graph_model/gru_step/add_7:z:02graph_model/message_layer/strided_slice_4:output:02graph_model/message_layer/GatherV2_2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:????????? 2&
$graph_model/message_layer/GatherV2_2?
*graph_model/message_layer/ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*graph_model/message_layer/ExpandDims_2/dim?
&graph_model/message_layer/ExpandDims_2
ExpandDims-graph_model/message_layer/GatherV2_2:output:03graph_model/message_layer/ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:????????? 2(
&graph_model/message_layer/ExpandDims_2?
"graph_model/message_layer/MatMul_2BatchMatMulV2?graph_model/bond_embedding/embedding_lookup/Identity_1:output:0/graph_model/message_layer/ExpandDims_2:output:0*
T0*+
_output_shapes
:????????? 2$
"graph_model/message_layer/MatMul_2?
!graph_model/message_layer/Shape_2Shape+graph_model/message_layer/MatMul_2:output:0*
T0*
_output_shapes
:2#
!graph_model/message_layer/Shape_2?
#graph_model/message_layer/Squeeze_2Squeeze+graph_model/message_layer/MatMul_2:output:0*
T0*'
_output_shapes
:????????? *
squeeze_dims

?????????2%
#graph_model/message_layer/Squeeze_2?
)graph_model/message_layer/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2+
)graph_model/message_layer/dropout_2/Const?
'graph_model/message_layer/dropout_2/MulMul,graph_model/message_layer/Squeeze_2:output:02graph_model/message_layer/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2)
'graph_model/message_layer/dropout_2/Mul?
)graph_model/message_layer/dropout_2/ShapeShape,graph_model/message_layer/Squeeze_2:output:0*
T0*
_output_shapes
:2+
)graph_model/message_layer/dropout_2/Shape?
@graph_model/message_layer/dropout_2/random_uniform/RandomUniformRandomUniform2graph_model/message_layer/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*

seed*
seed2??32B
@graph_model/message_layer/dropout_2/random_uniform/RandomUniform?
2graph_model/message_layer/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=24
2graph_model/message_layer/dropout_2/GreaterEqual/y?
0graph_model/message_layer/dropout_2/GreaterEqualGreaterEqualIgraph_model/message_layer/dropout_2/random_uniform/RandomUniform:output:0;graph_model/message_layer/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 22
0graph_model/message_layer/dropout_2/GreaterEqual?
(graph_model/message_layer/dropout_2/CastCast4graph_model/message_layer/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2*
(graph_model/message_layer/dropout_2/Cast?
)graph_model/message_layer/dropout_2/Mul_1Mul+graph_model/message_layer/dropout_2/Mul:z:0,graph_model/message_layer/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2+
)graph_model/message_layer/dropout_2/Mul_1?
/graph_model/message_layer/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/graph_model/message_layer/strided_slice_5/stack?
1graph_model/message_layer/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1graph_model/message_layer/strided_slice_5/stack_1?
1graph_model/message_layer/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1graph_model/message_layer/strided_slice_5/stack_2?
)graph_model/message_layer/strided_slice_5StridedSliceconnectivity8graph_model/message_layer/strided_slice_5/stack:output:0:graph_model/message_layer/strided_slice_5/stack_1:output:0:graph_model/message_layer/strided_slice_5/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2+
)graph_model/message_layer/strided_slice_5?
&graph_model/message_layer/SegmentSum_2
SegmentSum,graph_model/message_layer/Squeeze_2:output:02graph_model/message_layer/strided_slice_5:output:0*
T0*
Tindices0*'
_output_shapes
:????????? 2(
&graph_model/message_layer/SegmentSum_2?
%graph_model/gru_step/ReadVariableOp_2ReadVariableOp,graph_model_gru_step_readvariableop_resource*
_output_shapes

:`*
dtype02'
%graph_model/gru_step/ReadVariableOp_2?
graph_model/gru_step/unstack_2Unpack-graph_model/gru_step/ReadVariableOp_2:value:0*
T0* 
_output_shapes
:`:`*	
num2 
graph_model/gru_step/unstack_2?
,graph_model/gru_step/MatMul_4/ReadVariableOpReadVariableOp3graph_model_gru_step_matmul_readvariableop_resource*
_output_shapes

: `*
dtype02.
,graph_model/gru_step/MatMul_4/ReadVariableOp?
graph_model/gru_step/MatMul_4MatMul/graph_model/message_layer/SegmentSum_2:output:04graph_model/gru_step/MatMul_4/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2
graph_model/gru_step/MatMul_4?
graph_model/gru_step/BiasAdd_4BiasAdd'graph_model/gru_step/MatMul_4:product:0'graph_model/gru_step/unstack_2:output:0*
T0*'
_output_shapes
:?????????`2 
graph_model/gru_step/BiasAdd_4?
&graph_model/gru_step/split_4/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2(
&graph_model/gru_step/split_4/split_dim?
graph_model/gru_step/split_4Split/graph_model/gru_step/split_4/split_dim:output:0'graph_model/gru_step/BiasAdd_4:output:0*
T0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
graph_model/gru_step/split_4?
,graph_model/gru_step/MatMul_5/ReadVariableOpReadVariableOp5graph_model_gru_step_matmul_1_readvariableop_resource*
_output_shapes

: `*
dtype02.
,graph_model/gru_step/MatMul_5/ReadVariableOp?
graph_model/gru_step/MatMul_5MatMulgraph_model/gru_step/add_7:z:04graph_model/gru_step/MatMul_5/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2
graph_model/gru_step/MatMul_5?
graph_model/gru_step/BiasAdd_5BiasAdd'graph_model/gru_step/MatMul_5:product:0'graph_model/gru_step/unstack_2:output:1*
T0*'
_output_shapes
:?????????`2 
graph_model/gru_step/BiasAdd_5?
graph_model/gru_step/Const_2Const*
_output_shapes
:*
dtype0*!
valueB"        ????2
graph_model/gru_step/Const_2?
&graph_model/gru_step/split_5/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2(
&graph_model/gru_step/split_5/split_dim?
graph_model/gru_step/split_5SplitV'graph_model/gru_step/BiasAdd_5:output:0%graph_model/gru_step/Const_2:output:0/graph_model/gru_step/split_5/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
graph_model/gru_step/split_5?
graph_model/gru_step/add_8AddV2%graph_model/gru_step/split_4:output:0%graph_model/gru_step/split_5:output:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/add_8?
graph_model/gru_step/Sigmoid_4Sigmoidgraph_model/gru_step/add_8:z:0*
T0*'
_output_shapes
:????????? 2 
graph_model/gru_step/Sigmoid_4?
graph_model/gru_step/add_9AddV2%graph_model/gru_step/split_4:output:1%graph_model/gru_step/split_5:output:1*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/add_9?
graph_model/gru_step/Sigmoid_5Sigmoidgraph_model/gru_step/add_9:z:0*
T0*'
_output_shapes
:????????? 2 
graph_model/gru_step/Sigmoid_5?
graph_model/gru_step/mul_6Mul"graph_model/gru_step/Sigmoid_5:y:0%graph_model/gru_step/split_5:output:2*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/mul_6?
graph_model/gru_step/add_10AddV2%graph_model/gru_step/split_4:output:2graph_model/gru_step/mul_6:z:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/add_10?
graph_model/gru_step/Tanh_2Tanhgraph_model/gru_step/add_10:z:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/Tanh_2?
graph_model/gru_step/mul_7Mul"graph_model/gru_step/Sigmoid_4:y:0graph_model/gru_step/add_7:z:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/mul_7?
graph_model/gru_step/sub_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
graph_model/gru_step/sub_2/x?
graph_model/gru_step/sub_2Sub%graph_model/gru_step/sub_2/x:output:0"graph_model/gru_step/Sigmoid_4:y:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/sub_2?
graph_model/gru_step/mul_8Mulgraph_model/gru_step/sub_2:z:0graph_model/gru_step/Tanh_2:y:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/mul_8?
graph_model/gru_step/add_11AddV2graph_model/gru_step/mul_7:z:0graph_model/gru_step/mul_8:z:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/add_11?
/graph_model/message_layer/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/graph_model/message_layer/strided_slice_6/stack?
1graph_model/message_layer/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1graph_model/message_layer/strided_slice_6/stack_1?
1graph_model/message_layer/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1graph_model/message_layer/strided_slice_6/stack_2?
)graph_model/message_layer/strided_slice_6StridedSliceconnectivity8graph_model/message_layer/strided_slice_6/stack:output:0:graph_model/message_layer/strided_slice_6/stack_1:output:0:graph_model/message_layer/strided_slice_6/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2+
)graph_model/message_layer/strided_slice_6?
)graph_model/message_layer/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)graph_model/message_layer/GatherV2_3/axis?
$graph_model/message_layer/GatherV2_3GatherV2graph_model/gru_step/add_11:z:02graph_model/message_layer/strided_slice_6:output:02graph_model/message_layer/GatherV2_3/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:????????? 2&
$graph_model/message_layer/GatherV2_3?
*graph_model/message_layer/ExpandDims_3/dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*graph_model/message_layer/ExpandDims_3/dim?
&graph_model/message_layer/ExpandDims_3
ExpandDims-graph_model/message_layer/GatherV2_3:output:03graph_model/message_layer/ExpandDims_3/dim:output:0*
T0*+
_output_shapes
:????????? 2(
&graph_model/message_layer/ExpandDims_3?
"graph_model/message_layer/MatMul_3BatchMatMulV2?graph_model/bond_embedding/embedding_lookup/Identity_1:output:0/graph_model/message_layer/ExpandDims_3:output:0*
T0*+
_output_shapes
:????????? 2$
"graph_model/message_layer/MatMul_3?
!graph_model/message_layer/Shape_3Shape+graph_model/message_layer/MatMul_3:output:0*
T0*
_output_shapes
:2#
!graph_model/message_layer/Shape_3?
#graph_model/message_layer/Squeeze_3Squeeze+graph_model/message_layer/MatMul_3:output:0*
T0*'
_output_shapes
:????????? *
squeeze_dims

?????????2%
#graph_model/message_layer/Squeeze_3?
)graph_model/message_layer/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2+
)graph_model/message_layer/dropout_3/Const?
'graph_model/message_layer/dropout_3/MulMul,graph_model/message_layer/Squeeze_3:output:02graph_model/message_layer/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2)
'graph_model/message_layer/dropout_3/Mul?
)graph_model/message_layer/dropout_3/ShapeShape,graph_model/message_layer/Squeeze_3:output:0*
T0*
_output_shapes
:2+
)graph_model/message_layer/dropout_3/Shape?
@graph_model/message_layer/dropout_3/random_uniform/RandomUniformRandomUniform2graph_model/message_layer/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*

seed*
seed2?ۇ2B
@graph_model/message_layer/dropout_3/random_uniform/RandomUniform?
2graph_model/message_layer/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=24
2graph_model/message_layer/dropout_3/GreaterEqual/y?
0graph_model/message_layer/dropout_3/GreaterEqualGreaterEqualIgraph_model/message_layer/dropout_3/random_uniform/RandomUniform:output:0;graph_model/message_layer/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 22
0graph_model/message_layer/dropout_3/GreaterEqual?
(graph_model/message_layer/dropout_3/CastCast4graph_model/message_layer/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2*
(graph_model/message_layer/dropout_3/Cast?
)graph_model/message_layer/dropout_3/Mul_1Mul+graph_model/message_layer/dropout_3/Mul:z:0,graph_model/message_layer/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2+
)graph_model/message_layer/dropout_3/Mul_1?
/graph_model/message_layer/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/graph_model/message_layer/strided_slice_7/stack?
1graph_model/message_layer/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1graph_model/message_layer/strided_slice_7/stack_1?
1graph_model/message_layer/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1graph_model/message_layer/strided_slice_7/stack_2?
)graph_model/message_layer/strided_slice_7StridedSliceconnectivity8graph_model/message_layer/strided_slice_7/stack:output:0:graph_model/message_layer/strided_slice_7/stack_1:output:0:graph_model/message_layer/strided_slice_7/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2+
)graph_model/message_layer/strided_slice_7?
&graph_model/message_layer/SegmentSum_3
SegmentSum,graph_model/message_layer/Squeeze_3:output:02graph_model/message_layer/strided_slice_7:output:0*
T0*
Tindices0*'
_output_shapes
:????????? 2(
&graph_model/message_layer/SegmentSum_3?
%graph_model/gru_step/ReadVariableOp_3ReadVariableOp,graph_model_gru_step_readvariableop_resource*
_output_shapes

:`*
dtype02'
%graph_model/gru_step/ReadVariableOp_3?
graph_model/gru_step/unstack_3Unpack-graph_model/gru_step/ReadVariableOp_3:value:0*
T0* 
_output_shapes
:`:`*	
num2 
graph_model/gru_step/unstack_3?
,graph_model/gru_step/MatMul_6/ReadVariableOpReadVariableOp3graph_model_gru_step_matmul_readvariableop_resource*
_output_shapes

: `*
dtype02.
,graph_model/gru_step/MatMul_6/ReadVariableOp?
graph_model/gru_step/MatMul_6MatMul/graph_model/message_layer/SegmentSum_3:output:04graph_model/gru_step/MatMul_6/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2
graph_model/gru_step/MatMul_6?
graph_model/gru_step/BiasAdd_6BiasAdd'graph_model/gru_step/MatMul_6:product:0'graph_model/gru_step/unstack_3:output:0*
T0*'
_output_shapes
:?????????`2 
graph_model/gru_step/BiasAdd_6?
&graph_model/gru_step/split_6/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2(
&graph_model/gru_step/split_6/split_dim?
graph_model/gru_step/split_6Split/graph_model/gru_step/split_6/split_dim:output:0'graph_model/gru_step/BiasAdd_6:output:0*
T0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
graph_model/gru_step/split_6?
,graph_model/gru_step/MatMul_7/ReadVariableOpReadVariableOp5graph_model_gru_step_matmul_1_readvariableop_resource*
_output_shapes

: `*
dtype02.
,graph_model/gru_step/MatMul_7/ReadVariableOp?
graph_model/gru_step/MatMul_7MatMulgraph_model/gru_step/add_11:z:04graph_model/gru_step/MatMul_7/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2
graph_model/gru_step/MatMul_7?
graph_model/gru_step/BiasAdd_7BiasAdd'graph_model/gru_step/MatMul_7:product:0'graph_model/gru_step/unstack_3:output:1*
T0*'
_output_shapes
:?????????`2 
graph_model/gru_step/BiasAdd_7?
graph_model/gru_step/Const_3Const*
_output_shapes
:*
dtype0*!
valueB"        ????2
graph_model/gru_step/Const_3?
&graph_model/gru_step/split_7/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2(
&graph_model/gru_step/split_7/split_dim?
graph_model/gru_step/split_7SplitV'graph_model/gru_step/BiasAdd_7:output:0%graph_model/gru_step/Const_3:output:0/graph_model/gru_step/split_7/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
graph_model/gru_step/split_7?
graph_model/gru_step/add_12AddV2%graph_model/gru_step/split_6:output:0%graph_model/gru_step/split_7:output:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/add_12?
graph_model/gru_step/Sigmoid_6Sigmoidgraph_model/gru_step/add_12:z:0*
T0*'
_output_shapes
:????????? 2 
graph_model/gru_step/Sigmoid_6?
graph_model/gru_step/add_13AddV2%graph_model/gru_step/split_6:output:1%graph_model/gru_step/split_7:output:1*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/add_13?
graph_model/gru_step/Sigmoid_7Sigmoidgraph_model/gru_step/add_13:z:0*
T0*'
_output_shapes
:????????? 2 
graph_model/gru_step/Sigmoid_7?
graph_model/gru_step/mul_9Mul"graph_model/gru_step/Sigmoid_7:y:0%graph_model/gru_step/split_7:output:2*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/mul_9?
graph_model/gru_step/add_14AddV2%graph_model/gru_step/split_6:output:2graph_model/gru_step/mul_9:z:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/add_14?
graph_model/gru_step/Tanh_3Tanhgraph_model/gru_step/add_14:z:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/Tanh_3?
graph_model/gru_step/mul_10Mul"graph_model/gru_step/Sigmoid_6:y:0graph_model/gru_step/add_11:z:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/mul_10?
graph_model/gru_step/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
graph_model/gru_step/sub_3/x?
graph_model/gru_step/sub_3Sub%graph_model/gru_step/sub_3/x:output:0"graph_model/gru_step/Sigmoid_6:y:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/sub_3?
graph_model/gru_step/mul_11Mulgraph_model/gru_step/sub_3:z:0graph_model/gru_step/Tanh_3:y:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/mul_11?
graph_model/gru_step/add_15AddV2graph_model/gru_step/mul_10:z:0graph_model/gru_step/mul_11:z:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/add_15?
/graph_model/message_layer/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/graph_model/message_layer/strided_slice_8/stack?
1graph_model/message_layer/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1graph_model/message_layer/strided_slice_8/stack_1?
1graph_model/message_layer/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1graph_model/message_layer/strided_slice_8/stack_2?
)graph_model/message_layer/strided_slice_8StridedSliceconnectivity8graph_model/message_layer/strided_slice_8/stack:output:0:graph_model/message_layer/strided_slice_8/stack_1:output:0:graph_model/message_layer/strided_slice_8/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2+
)graph_model/message_layer/strided_slice_8?
)graph_model/message_layer/GatherV2_4/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)graph_model/message_layer/GatherV2_4/axis?
$graph_model/message_layer/GatherV2_4GatherV2graph_model/gru_step/add_15:z:02graph_model/message_layer/strided_slice_8:output:02graph_model/message_layer/GatherV2_4/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:????????? 2&
$graph_model/message_layer/GatherV2_4?
*graph_model/message_layer/ExpandDims_4/dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*graph_model/message_layer/ExpandDims_4/dim?
&graph_model/message_layer/ExpandDims_4
ExpandDims-graph_model/message_layer/GatherV2_4:output:03graph_model/message_layer/ExpandDims_4/dim:output:0*
T0*+
_output_shapes
:????????? 2(
&graph_model/message_layer/ExpandDims_4?
"graph_model/message_layer/MatMul_4BatchMatMulV2?graph_model/bond_embedding/embedding_lookup/Identity_1:output:0/graph_model/message_layer/ExpandDims_4:output:0*
T0*+
_output_shapes
:????????? 2$
"graph_model/message_layer/MatMul_4?
!graph_model/message_layer/Shape_4Shape+graph_model/message_layer/MatMul_4:output:0*
T0*
_output_shapes
:2#
!graph_model/message_layer/Shape_4?
#graph_model/message_layer/Squeeze_4Squeeze+graph_model/message_layer/MatMul_4:output:0*
T0*'
_output_shapes
:????????? *
squeeze_dims

?????????2%
#graph_model/message_layer/Squeeze_4?
)graph_model/message_layer/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2+
)graph_model/message_layer/dropout_4/Const?
'graph_model/message_layer/dropout_4/MulMul,graph_model/message_layer/Squeeze_4:output:02graph_model/message_layer/dropout_4/Const:output:0*
T0*'
_output_shapes
:????????? 2)
'graph_model/message_layer/dropout_4/Mul?
)graph_model/message_layer/dropout_4/ShapeShape,graph_model/message_layer/Squeeze_4:output:0*
T0*
_output_shapes
:2+
)graph_model/message_layer/dropout_4/Shape?
@graph_model/message_layer/dropout_4/random_uniform/RandomUniformRandomUniform2graph_model/message_layer/dropout_4/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*

seed*
seed2Ѣ?2B
@graph_model/message_layer/dropout_4/random_uniform/RandomUniform?
2graph_model/message_layer/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=24
2graph_model/message_layer/dropout_4/GreaterEqual/y?
0graph_model/message_layer/dropout_4/GreaterEqualGreaterEqualIgraph_model/message_layer/dropout_4/random_uniform/RandomUniform:output:0;graph_model/message_layer/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 22
0graph_model/message_layer/dropout_4/GreaterEqual?
(graph_model/message_layer/dropout_4/CastCast4graph_model/message_layer/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2*
(graph_model/message_layer/dropout_4/Cast?
)graph_model/message_layer/dropout_4/Mul_1Mul+graph_model/message_layer/dropout_4/Mul:z:0,graph_model/message_layer/dropout_4/Cast:y:0*
T0*'
_output_shapes
:????????? 2+
)graph_model/message_layer/dropout_4/Mul_1?
/graph_model/message_layer/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/graph_model/message_layer/strided_slice_9/stack?
1graph_model/message_layer/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1graph_model/message_layer/strided_slice_9/stack_1?
1graph_model/message_layer/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1graph_model/message_layer/strided_slice_9/stack_2?
)graph_model/message_layer/strided_slice_9StridedSliceconnectivity8graph_model/message_layer/strided_slice_9/stack:output:0:graph_model/message_layer/strided_slice_9/stack_1:output:0:graph_model/message_layer/strided_slice_9/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2+
)graph_model/message_layer/strided_slice_9?
&graph_model/message_layer/SegmentSum_4
SegmentSum,graph_model/message_layer/Squeeze_4:output:02graph_model/message_layer/strided_slice_9:output:0*
T0*
Tindices0*'
_output_shapes
:????????? 2(
&graph_model/message_layer/SegmentSum_4?
%graph_model/gru_step/ReadVariableOp_4ReadVariableOp,graph_model_gru_step_readvariableop_resource*
_output_shapes

:`*
dtype02'
%graph_model/gru_step/ReadVariableOp_4?
graph_model/gru_step/unstack_4Unpack-graph_model/gru_step/ReadVariableOp_4:value:0*
T0* 
_output_shapes
:`:`*	
num2 
graph_model/gru_step/unstack_4?
,graph_model/gru_step/MatMul_8/ReadVariableOpReadVariableOp3graph_model_gru_step_matmul_readvariableop_resource*
_output_shapes

: `*
dtype02.
,graph_model/gru_step/MatMul_8/ReadVariableOp?
graph_model/gru_step/MatMul_8MatMul/graph_model/message_layer/SegmentSum_4:output:04graph_model/gru_step/MatMul_8/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2
graph_model/gru_step/MatMul_8?
graph_model/gru_step/BiasAdd_8BiasAdd'graph_model/gru_step/MatMul_8:product:0'graph_model/gru_step/unstack_4:output:0*
T0*'
_output_shapes
:?????????`2 
graph_model/gru_step/BiasAdd_8?
&graph_model/gru_step/split_8/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2(
&graph_model/gru_step/split_8/split_dim?
graph_model/gru_step/split_8Split/graph_model/gru_step/split_8/split_dim:output:0'graph_model/gru_step/BiasAdd_8:output:0*
T0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
graph_model/gru_step/split_8?
,graph_model/gru_step/MatMul_9/ReadVariableOpReadVariableOp5graph_model_gru_step_matmul_1_readvariableop_resource*
_output_shapes

: `*
dtype02.
,graph_model/gru_step/MatMul_9/ReadVariableOp?
graph_model/gru_step/MatMul_9MatMulgraph_model/gru_step/add_15:z:04graph_model/gru_step/MatMul_9/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2
graph_model/gru_step/MatMul_9?
graph_model/gru_step/BiasAdd_9BiasAdd'graph_model/gru_step/MatMul_9:product:0'graph_model/gru_step/unstack_4:output:1*
T0*'
_output_shapes
:?????????`2 
graph_model/gru_step/BiasAdd_9?
graph_model/gru_step/Const_4Const*
_output_shapes
:*
dtype0*!
valueB"        ????2
graph_model/gru_step/Const_4?
&graph_model/gru_step/split_9/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2(
&graph_model/gru_step/split_9/split_dim?
graph_model/gru_step/split_9SplitV'graph_model/gru_step/BiasAdd_9:output:0%graph_model/gru_step/Const_4:output:0/graph_model/gru_step/split_9/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
graph_model/gru_step/split_9?
graph_model/gru_step/add_16AddV2%graph_model/gru_step/split_8:output:0%graph_model/gru_step/split_9:output:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/add_16?
graph_model/gru_step/Sigmoid_8Sigmoidgraph_model/gru_step/add_16:z:0*
T0*'
_output_shapes
:????????? 2 
graph_model/gru_step/Sigmoid_8?
graph_model/gru_step/add_17AddV2%graph_model/gru_step/split_8:output:1%graph_model/gru_step/split_9:output:1*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/add_17?
graph_model/gru_step/Sigmoid_9Sigmoidgraph_model/gru_step/add_17:z:0*
T0*'
_output_shapes
:????????? 2 
graph_model/gru_step/Sigmoid_9?
graph_model/gru_step/mul_12Mul"graph_model/gru_step/Sigmoid_9:y:0%graph_model/gru_step/split_9:output:2*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/mul_12?
graph_model/gru_step/add_18AddV2%graph_model/gru_step/split_8:output:2graph_model/gru_step/mul_12:z:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/add_18?
graph_model/gru_step/Tanh_4Tanhgraph_model/gru_step/add_18:z:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/Tanh_4?
graph_model/gru_step/mul_13Mul"graph_model/gru_step/Sigmoid_8:y:0graph_model/gru_step/add_15:z:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/mul_13?
graph_model/gru_step/sub_4/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
graph_model/gru_step/sub_4/x?
graph_model/gru_step/sub_4Sub%graph_model/gru_step/sub_4/x:output:0"graph_model/gru_step/Sigmoid_8:y:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/sub_4?
graph_model/gru_step/mul_14Mulgraph_model/gru_step/sub_4:z:0graph_model/gru_step/Tanh_4:y:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/mul_14?
graph_model/gru_step/add_19AddV2graph_model/gru_step/mul_13:z:0graph_model/gru_step/mul_14:z:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/add_19?
0graph_model/message_layer/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0graph_model/message_layer/strided_slice_10/stack?
2graph_model/message_layer/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2graph_model/message_layer/strided_slice_10/stack_1?
2graph_model/message_layer/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2graph_model/message_layer/strided_slice_10/stack_2?
*graph_model/message_layer/strided_slice_10StridedSliceconnectivity9graph_model/message_layer/strided_slice_10/stack:output:0;graph_model/message_layer/strided_slice_10/stack_1:output:0;graph_model/message_layer/strided_slice_10/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2,
*graph_model/message_layer/strided_slice_10?
)graph_model/message_layer/GatherV2_5/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)graph_model/message_layer/GatherV2_5/axis?
$graph_model/message_layer/GatherV2_5GatherV2graph_model/gru_step/add_19:z:03graph_model/message_layer/strided_slice_10:output:02graph_model/message_layer/GatherV2_5/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:????????? 2&
$graph_model/message_layer/GatherV2_5?
*graph_model/message_layer/ExpandDims_5/dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*graph_model/message_layer/ExpandDims_5/dim?
&graph_model/message_layer/ExpandDims_5
ExpandDims-graph_model/message_layer/GatherV2_5:output:03graph_model/message_layer/ExpandDims_5/dim:output:0*
T0*+
_output_shapes
:????????? 2(
&graph_model/message_layer/ExpandDims_5?
"graph_model/message_layer/MatMul_5BatchMatMulV2?graph_model/bond_embedding/embedding_lookup/Identity_1:output:0/graph_model/message_layer/ExpandDims_5:output:0*
T0*+
_output_shapes
:????????? 2$
"graph_model/message_layer/MatMul_5?
!graph_model/message_layer/Shape_5Shape+graph_model/message_layer/MatMul_5:output:0*
T0*
_output_shapes
:2#
!graph_model/message_layer/Shape_5?
#graph_model/message_layer/Squeeze_5Squeeze+graph_model/message_layer/MatMul_5:output:0*
T0*'
_output_shapes
:????????? *
squeeze_dims

?????????2%
#graph_model/message_layer/Squeeze_5?
)graph_model/message_layer/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2+
)graph_model/message_layer/dropout_5/Const?
'graph_model/message_layer/dropout_5/MulMul,graph_model/message_layer/Squeeze_5:output:02graph_model/message_layer/dropout_5/Const:output:0*
T0*'
_output_shapes
:????????? 2)
'graph_model/message_layer/dropout_5/Mul?
)graph_model/message_layer/dropout_5/ShapeShape,graph_model/message_layer/Squeeze_5:output:0*
T0*
_output_shapes
:2+
)graph_model/message_layer/dropout_5/Shape?
@graph_model/message_layer/dropout_5/random_uniform/RandomUniformRandomUniform2graph_model/message_layer/dropout_5/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*

seed*
seed2???2B
@graph_model/message_layer/dropout_5/random_uniform/RandomUniform?
2graph_model/message_layer/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=24
2graph_model/message_layer/dropout_5/GreaterEqual/y?
0graph_model/message_layer/dropout_5/GreaterEqualGreaterEqualIgraph_model/message_layer/dropout_5/random_uniform/RandomUniform:output:0;graph_model/message_layer/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 22
0graph_model/message_layer/dropout_5/GreaterEqual?
(graph_model/message_layer/dropout_5/CastCast4graph_model/message_layer/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2*
(graph_model/message_layer/dropout_5/Cast?
)graph_model/message_layer/dropout_5/Mul_1Mul+graph_model/message_layer/dropout_5/Mul:z:0,graph_model/message_layer/dropout_5/Cast:y:0*
T0*'
_output_shapes
:????????? 2+
)graph_model/message_layer/dropout_5/Mul_1?
0graph_model/message_layer/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0graph_model/message_layer/strided_slice_11/stack?
2graph_model/message_layer/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2graph_model/message_layer/strided_slice_11/stack_1?
2graph_model/message_layer/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2graph_model/message_layer/strided_slice_11/stack_2?
*graph_model/message_layer/strided_slice_11StridedSliceconnectivity9graph_model/message_layer/strided_slice_11/stack:output:0;graph_model/message_layer/strided_slice_11/stack_1:output:0;graph_model/message_layer/strided_slice_11/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2,
*graph_model/message_layer/strided_slice_11?
&graph_model/message_layer/SegmentSum_5
SegmentSum,graph_model/message_layer/Squeeze_5:output:03graph_model/message_layer/strided_slice_11:output:0*
T0*
Tindices0*'
_output_shapes
:????????? 2(
&graph_model/message_layer/SegmentSum_5?
%graph_model/gru_step/ReadVariableOp_5ReadVariableOp,graph_model_gru_step_readvariableop_resource*
_output_shapes

:`*
dtype02'
%graph_model/gru_step/ReadVariableOp_5?
graph_model/gru_step/unstack_5Unpack-graph_model/gru_step/ReadVariableOp_5:value:0*
T0* 
_output_shapes
:`:`*	
num2 
graph_model/gru_step/unstack_5?
-graph_model/gru_step/MatMul_10/ReadVariableOpReadVariableOp3graph_model_gru_step_matmul_readvariableop_resource*
_output_shapes

: `*
dtype02/
-graph_model/gru_step/MatMul_10/ReadVariableOp?
graph_model/gru_step/MatMul_10MatMul/graph_model/message_layer/SegmentSum_5:output:05graph_model/gru_step/MatMul_10/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2 
graph_model/gru_step/MatMul_10?
graph_model/gru_step/BiasAdd_10BiasAdd(graph_model/gru_step/MatMul_10:product:0'graph_model/gru_step/unstack_5:output:0*
T0*'
_output_shapes
:?????????`2!
graph_model/gru_step/BiasAdd_10?
'graph_model/gru_step/split_10/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2)
'graph_model/gru_step/split_10/split_dim?
graph_model/gru_step/split_10Split0graph_model/gru_step/split_10/split_dim:output:0(graph_model/gru_step/BiasAdd_10:output:0*
T0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
graph_model/gru_step/split_10?
-graph_model/gru_step/MatMul_11/ReadVariableOpReadVariableOp5graph_model_gru_step_matmul_1_readvariableop_resource*
_output_shapes

: `*
dtype02/
-graph_model/gru_step/MatMul_11/ReadVariableOp?
graph_model/gru_step/MatMul_11MatMulgraph_model/gru_step/add_19:z:05graph_model/gru_step/MatMul_11/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2 
graph_model/gru_step/MatMul_11?
graph_model/gru_step/BiasAdd_11BiasAdd(graph_model/gru_step/MatMul_11:product:0'graph_model/gru_step/unstack_5:output:1*
T0*'
_output_shapes
:?????????`2!
graph_model/gru_step/BiasAdd_11?
graph_model/gru_step/Const_5Const*
_output_shapes
:*
dtype0*!
valueB"        ????2
graph_model/gru_step/Const_5?
'graph_model/gru_step/split_11/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2)
'graph_model/gru_step/split_11/split_dim?
graph_model/gru_step/split_11SplitV(graph_model/gru_step/BiasAdd_11:output:0%graph_model/gru_step/Const_5:output:00graph_model/gru_step/split_11/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
graph_model/gru_step/split_11?
graph_model/gru_step/add_20AddV2&graph_model/gru_step/split_10:output:0&graph_model/gru_step/split_11:output:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/add_20?
graph_model/gru_step/Sigmoid_10Sigmoidgraph_model/gru_step/add_20:z:0*
T0*'
_output_shapes
:????????? 2!
graph_model/gru_step/Sigmoid_10?
graph_model/gru_step/add_21AddV2&graph_model/gru_step/split_10:output:1&graph_model/gru_step/split_11:output:1*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/add_21?
graph_model/gru_step/Sigmoid_11Sigmoidgraph_model/gru_step/add_21:z:0*
T0*'
_output_shapes
:????????? 2!
graph_model/gru_step/Sigmoid_11?
graph_model/gru_step/mul_15Mul#graph_model/gru_step/Sigmoid_11:y:0&graph_model/gru_step/split_11:output:2*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/mul_15?
graph_model/gru_step/add_22AddV2&graph_model/gru_step/split_10:output:2graph_model/gru_step/mul_15:z:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/add_22?
graph_model/gru_step/Tanh_5Tanhgraph_model/gru_step/add_22:z:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/Tanh_5?
graph_model/gru_step/mul_16Mul#graph_model/gru_step/Sigmoid_10:y:0graph_model/gru_step/add_19:z:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/mul_16?
graph_model/gru_step/sub_5/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
graph_model/gru_step/sub_5/x?
graph_model/gru_step/sub_5Sub%graph_model/gru_step/sub_5/x:output:0#graph_model/gru_step/Sigmoid_10:y:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/sub_5?
graph_model/gru_step/mul_17Mulgraph_model/gru_step/sub_5:z:0graph_model/gru_step/Tanh_5:y:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/mul_17?
graph_model/gru_step/add_23AddV2graph_model/gru_step/mul_16:z:0graph_model/gru_step/mul_17:z:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/add_23?
0graph_model/message_layer/strided_slice_12/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0graph_model/message_layer/strided_slice_12/stack?
2graph_model/message_layer/strided_slice_12/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2graph_model/message_layer/strided_slice_12/stack_1?
2graph_model/message_layer/strided_slice_12/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2graph_model/message_layer/strided_slice_12/stack_2?
*graph_model/message_layer/strided_slice_12StridedSliceconnectivity9graph_model/message_layer/strided_slice_12/stack:output:0;graph_model/message_layer/strided_slice_12/stack_1:output:0;graph_model/message_layer/strided_slice_12/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2,
*graph_model/message_layer/strided_slice_12?
)graph_model/message_layer/GatherV2_6/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)graph_model/message_layer/GatherV2_6/axis?
$graph_model/message_layer/GatherV2_6GatherV2graph_model/gru_step/add_23:z:03graph_model/message_layer/strided_slice_12:output:02graph_model/message_layer/GatherV2_6/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:????????? 2&
$graph_model/message_layer/GatherV2_6?
*graph_model/message_layer/ExpandDims_6/dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*graph_model/message_layer/ExpandDims_6/dim?
&graph_model/message_layer/ExpandDims_6
ExpandDims-graph_model/message_layer/GatherV2_6:output:03graph_model/message_layer/ExpandDims_6/dim:output:0*
T0*+
_output_shapes
:????????? 2(
&graph_model/message_layer/ExpandDims_6?
"graph_model/message_layer/MatMul_6BatchMatMulV2?graph_model/bond_embedding/embedding_lookup/Identity_1:output:0/graph_model/message_layer/ExpandDims_6:output:0*
T0*+
_output_shapes
:????????? 2$
"graph_model/message_layer/MatMul_6?
!graph_model/message_layer/Shape_6Shape+graph_model/message_layer/MatMul_6:output:0*
T0*
_output_shapes
:2#
!graph_model/message_layer/Shape_6?
#graph_model/message_layer/Squeeze_6Squeeze+graph_model/message_layer/MatMul_6:output:0*
T0*'
_output_shapes
:????????? *
squeeze_dims

?????????2%
#graph_model/message_layer/Squeeze_6?
)graph_model/message_layer/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2+
)graph_model/message_layer/dropout_6/Const?
'graph_model/message_layer/dropout_6/MulMul,graph_model/message_layer/Squeeze_6:output:02graph_model/message_layer/dropout_6/Const:output:0*
T0*'
_output_shapes
:????????? 2)
'graph_model/message_layer/dropout_6/Mul?
)graph_model/message_layer/dropout_6/ShapeShape,graph_model/message_layer/Squeeze_6:output:0*
T0*
_output_shapes
:2+
)graph_model/message_layer/dropout_6/Shape?
@graph_model/message_layer/dropout_6/random_uniform/RandomUniformRandomUniform2graph_model/message_layer/dropout_6/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*

seed*
seed2???2B
@graph_model/message_layer/dropout_6/random_uniform/RandomUniform?
2graph_model/message_layer/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=24
2graph_model/message_layer/dropout_6/GreaterEqual/y?
0graph_model/message_layer/dropout_6/GreaterEqualGreaterEqualIgraph_model/message_layer/dropout_6/random_uniform/RandomUniform:output:0;graph_model/message_layer/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 22
0graph_model/message_layer/dropout_6/GreaterEqual?
(graph_model/message_layer/dropout_6/CastCast4graph_model/message_layer/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2*
(graph_model/message_layer/dropout_6/Cast?
)graph_model/message_layer/dropout_6/Mul_1Mul+graph_model/message_layer/dropout_6/Mul:z:0,graph_model/message_layer/dropout_6/Cast:y:0*
T0*'
_output_shapes
:????????? 2+
)graph_model/message_layer/dropout_6/Mul_1?
0graph_model/message_layer/strided_slice_13/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0graph_model/message_layer/strided_slice_13/stack?
2graph_model/message_layer/strided_slice_13/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2graph_model/message_layer/strided_slice_13/stack_1?
2graph_model/message_layer/strided_slice_13/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2graph_model/message_layer/strided_slice_13/stack_2?
*graph_model/message_layer/strided_slice_13StridedSliceconnectivity9graph_model/message_layer/strided_slice_13/stack:output:0;graph_model/message_layer/strided_slice_13/stack_1:output:0;graph_model/message_layer/strided_slice_13/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2,
*graph_model/message_layer/strided_slice_13?
&graph_model/message_layer/SegmentSum_6
SegmentSum,graph_model/message_layer/Squeeze_6:output:03graph_model/message_layer/strided_slice_13:output:0*
T0*
Tindices0*'
_output_shapes
:????????? 2(
&graph_model/message_layer/SegmentSum_6?
%graph_model/gru_step/ReadVariableOp_6ReadVariableOp,graph_model_gru_step_readvariableop_resource*
_output_shapes

:`*
dtype02'
%graph_model/gru_step/ReadVariableOp_6?
graph_model/gru_step/unstack_6Unpack-graph_model/gru_step/ReadVariableOp_6:value:0*
T0* 
_output_shapes
:`:`*	
num2 
graph_model/gru_step/unstack_6?
-graph_model/gru_step/MatMul_12/ReadVariableOpReadVariableOp3graph_model_gru_step_matmul_readvariableop_resource*
_output_shapes

: `*
dtype02/
-graph_model/gru_step/MatMul_12/ReadVariableOp?
graph_model/gru_step/MatMul_12MatMul/graph_model/message_layer/SegmentSum_6:output:05graph_model/gru_step/MatMul_12/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2 
graph_model/gru_step/MatMul_12?
graph_model/gru_step/BiasAdd_12BiasAdd(graph_model/gru_step/MatMul_12:product:0'graph_model/gru_step/unstack_6:output:0*
T0*'
_output_shapes
:?????????`2!
graph_model/gru_step/BiasAdd_12?
'graph_model/gru_step/split_12/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2)
'graph_model/gru_step/split_12/split_dim?
graph_model/gru_step/split_12Split0graph_model/gru_step/split_12/split_dim:output:0(graph_model/gru_step/BiasAdd_12:output:0*
T0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
graph_model/gru_step/split_12?
-graph_model/gru_step/MatMul_13/ReadVariableOpReadVariableOp5graph_model_gru_step_matmul_1_readvariableop_resource*
_output_shapes

: `*
dtype02/
-graph_model/gru_step/MatMul_13/ReadVariableOp?
graph_model/gru_step/MatMul_13MatMulgraph_model/gru_step/add_23:z:05graph_model/gru_step/MatMul_13/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2 
graph_model/gru_step/MatMul_13?
graph_model/gru_step/BiasAdd_13BiasAdd(graph_model/gru_step/MatMul_13:product:0'graph_model/gru_step/unstack_6:output:1*
T0*'
_output_shapes
:?????????`2!
graph_model/gru_step/BiasAdd_13?
graph_model/gru_step/Const_6Const*
_output_shapes
:*
dtype0*!
valueB"        ????2
graph_model/gru_step/Const_6?
'graph_model/gru_step/split_13/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2)
'graph_model/gru_step/split_13/split_dim?
graph_model/gru_step/split_13SplitV(graph_model/gru_step/BiasAdd_13:output:0%graph_model/gru_step/Const_6:output:00graph_model/gru_step/split_13/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
graph_model/gru_step/split_13?
graph_model/gru_step/add_24AddV2&graph_model/gru_step/split_12:output:0&graph_model/gru_step/split_13:output:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/add_24?
graph_model/gru_step/Sigmoid_12Sigmoidgraph_model/gru_step/add_24:z:0*
T0*'
_output_shapes
:????????? 2!
graph_model/gru_step/Sigmoid_12?
graph_model/gru_step/add_25AddV2&graph_model/gru_step/split_12:output:1&graph_model/gru_step/split_13:output:1*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/add_25?
graph_model/gru_step/Sigmoid_13Sigmoidgraph_model/gru_step/add_25:z:0*
T0*'
_output_shapes
:????????? 2!
graph_model/gru_step/Sigmoid_13?
graph_model/gru_step/mul_18Mul#graph_model/gru_step/Sigmoid_13:y:0&graph_model/gru_step/split_13:output:2*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/mul_18?
graph_model/gru_step/add_26AddV2&graph_model/gru_step/split_12:output:2graph_model/gru_step/mul_18:z:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/add_26?
graph_model/gru_step/Tanh_6Tanhgraph_model/gru_step/add_26:z:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/Tanh_6?
graph_model/gru_step/mul_19Mul#graph_model/gru_step/Sigmoid_12:y:0graph_model/gru_step/add_23:z:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/mul_19?
graph_model/gru_step/sub_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
graph_model/gru_step/sub_6/x?
graph_model/gru_step/sub_6Sub%graph_model/gru_step/sub_6/x:output:0#graph_model/gru_step/Sigmoid_12:y:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/sub_6?
graph_model/gru_step/mul_20Mulgraph_model/gru_step/sub_6:z:0graph_model/gru_step/Tanh_6:y:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/mul_20?
graph_model/gru_step/add_27AddV2graph_model/gru_step/mul_19:z:0graph_model/gru_step/mul_20:z:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/add_27?
0graph_model/message_layer/strided_slice_14/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0graph_model/message_layer/strided_slice_14/stack?
2graph_model/message_layer/strided_slice_14/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2graph_model/message_layer/strided_slice_14/stack_1?
2graph_model/message_layer/strided_slice_14/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2graph_model/message_layer/strided_slice_14/stack_2?
*graph_model/message_layer/strided_slice_14StridedSliceconnectivity9graph_model/message_layer/strided_slice_14/stack:output:0;graph_model/message_layer/strided_slice_14/stack_1:output:0;graph_model/message_layer/strided_slice_14/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2,
*graph_model/message_layer/strided_slice_14?
)graph_model/message_layer/GatherV2_7/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)graph_model/message_layer/GatherV2_7/axis?
$graph_model/message_layer/GatherV2_7GatherV2graph_model/gru_step/add_27:z:03graph_model/message_layer/strided_slice_14:output:02graph_model/message_layer/GatherV2_7/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:????????? 2&
$graph_model/message_layer/GatherV2_7?
*graph_model/message_layer/ExpandDims_7/dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*graph_model/message_layer/ExpandDims_7/dim?
&graph_model/message_layer/ExpandDims_7
ExpandDims-graph_model/message_layer/GatherV2_7:output:03graph_model/message_layer/ExpandDims_7/dim:output:0*
T0*+
_output_shapes
:????????? 2(
&graph_model/message_layer/ExpandDims_7?
"graph_model/message_layer/MatMul_7BatchMatMulV2?graph_model/bond_embedding/embedding_lookup/Identity_1:output:0/graph_model/message_layer/ExpandDims_7:output:0*
T0*+
_output_shapes
:????????? 2$
"graph_model/message_layer/MatMul_7?
!graph_model/message_layer/Shape_7Shape+graph_model/message_layer/MatMul_7:output:0*
T0*
_output_shapes
:2#
!graph_model/message_layer/Shape_7?
#graph_model/message_layer/Squeeze_7Squeeze+graph_model/message_layer/MatMul_7:output:0*
T0*'
_output_shapes
:????????? *
squeeze_dims

?????????2%
#graph_model/message_layer/Squeeze_7?
)graph_model/message_layer/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2+
)graph_model/message_layer/dropout_7/Const?
'graph_model/message_layer/dropout_7/MulMul,graph_model/message_layer/Squeeze_7:output:02graph_model/message_layer/dropout_7/Const:output:0*
T0*'
_output_shapes
:????????? 2)
'graph_model/message_layer/dropout_7/Mul?
)graph_model/message_layer/dropout_7/ShapeShape,graph_model/message_layer/Squeeze_7:output:0*
T0*
_output_shapes
:2+
)graph_model/message_layer/dropout_7/Shape?
@graph_model/message_layer/dropout_7/random_uniform/RandomUniformRandomUniform2graph_model/message_layer/dropout_7/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*

seed*
seed2??:2B
@graph_model/message_layer/dropout_7/random_uniform/RandomUniform?
2graph_model/message_layer/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=24
2graph_model/message_layer/dropout_7/GreaterEqual/y?
0graph_model/message_layer/dropout_7/GreaterEqualGreaterEqualIgraph_model/message_layer/dropout_7/random_uniform/RandomUniform:output:0;graph_model/message_layer/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 22
0graph_model/message_layer/dropout_7/GreaterEqual?
(graph_model/message_layer/dropout_7/CastCast4graph_model/message_layer/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2*
(graph_model/message_layer/dropout_7/Cast?
)graph_model/message_layer/dropout_7/Mul_1Mul+graph_model/message_layer/dropout_7/Mul:z:0,graph_model/message_layer/dropout_7/Cast:y:0*
T0*'
_output_shapes
:????????? 2+
)graph_model/message_layer/dropout_7/Mul_1?
0graph_model/message_layer/strided_slice_15/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0graph_model/message_layer/strided_slice_15/stack?
2graph_model/message_layer/strided_slice_15/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2graph_model/message_layer/strided_slice_15/stack_1?
2graph_model/message_layer/strided_slice_15/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2graph_model/message_layer/strided_slice_15/stack_2?
*graph_model/message_layer/strided_slice_15StridedSliceconnectivity9graph_model/message_layer/strided_slice_15/stack:output:0;graph_model/message_layer/strided_slice_15/stack_1:output:0;graph_model/message_layer/strided_slice_15/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2,
*graph_model/message_layer/strided_slice_15?
&graph_model/message_layer/SegmentSum_7
SegmentSum,graph_model/message_layer/Squeeze_7:output:03graph_model/message_layer/strided_slice_15:output:0*
T0*
Tindices0*'
_output_shapes
:????????? 2(
&graph_model/message_layer/SegmentSum_7?
%graph_model/gru_step/ReadVariableOp_7ReadVariableOp,graph_model_gru_step_readvariableop_resource*
_output_shapes

:`*
dtype02'
%graph_model/gru_step/ReadVariableOp_7?
graph_model/gru_step/unstack_7Unpack-graph_model/gru_step/ReadVariableOp_7:value:0*
T0* 
_output_shapes
:`:`*	
num2 
graph_model/gru_step/unstack_7?
-graph_model/gru_step/MatMul_14/ReadVariableOpReadVariableOp3graph_model_gru_step_matmul_readvariableop_resource*
_output_shapes

: `*
dtype02/
-graph_model/gru_step/MatMul_14/ReadVariableOp?
graph_model/gru_step/MatMul_14MatMul/graph_model/message_layer/SegmentSum_7:output:05graph_model/gru_step/MatMul_14/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2 
graph_model/gru_step/MatMul_14?
graph_model/gru_step/BiasAdd_14BiasAdd(graph_model/gru_step/MatMul_14:product:0'graph_model/gru_step/unstack_7:output:0*
T0*'
_output_shapes
:?????????`2!
graph_model/gru_step/BiasAdd_14?
'graph_model/gru_step/split_14/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2)
'graph_model/gru_step/split_14/split_dim?
graph_model/gru_step/split_14Split0graph_model/gru_step/split_14/split_dim:output:0(graph_model/gru_step/BiasAdd_14:output:0*
T0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
graph_model/gru_step/split_14?
-graph_model/gru_step/MatMul_15/ReadVariableOpReadVariableOp5graph_model_gru_step_matmul_1_readvariableop_resource*
_output_shapes

: `*
dtype02/
-graph_model/gru_step/MatMul_15/ReadVariableOp?
graph_model/gru_step/MatMul_15MatMulgraph_model/gru_step/add_27:z:05graph_model/gru_step/MatMul_15/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2 
graph_model/gru_step/MatMul_15?
graph_model/gru_step/BiasAdd_15BiasAdd(graph_model/gru_step/MatMul_15:product:0'graph_model/gru_step/unstack_7:output:1*
T0*'
_output_shapes
:?????????`2!
graph_model/gru_step/BiasAdd_15?
graph_model/gru_step/Const_7Const*
_output_shapes
:*
dtype0*!
valueB"        ????2
graph_model/gru_step/Const_7?
'graph_model/gru_step/split_15/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2)
'graph_model/gru_step/split_15/split_dim?
graph_model/gru_step/split_15SplitV(graph_model/gru_step/BiasAdd_15:output:0%graph_model/gru_step/Const_7:output:00graph_model/gru_step/split_15/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
graph_model/gru_step/split_15?
graph_model/gru_step/add_28AddV2&graph_model/gru_step/split_14:output:0&graph_model/gru_step/split_15:output:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/add_28?
graph_model/gru_step/Sigmoid_14Sigmoidgraph_model/gru_step/add_28:z:0*
T0*'
_output_shapes
:????????? 2!
graph_model/gru_step/Sigmoid_14?
graph_model/gru_step/add_29AddV2&graph_model/gru_step/split_14:output:1&graph_model/gru_step/split_15:output:1*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/add_29?
graph_model/gru_step/Sigmoid_15Sigmoidgraph_model/gru_step/add_29:z:0*
T0*'
_output_shapes
:????????? 2!
graph_model/gru_step/Sigmoid_15?
graph_model/gru_step/mul_21Mul#graph_model/gru_step/Sigmoid_15:y:0&graph_model/gru_step/split_15:output:2*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/mul_21?
graph_model/gru_step/add_30AddV2&graph_model/gru_step/split_14:output:2graph_model/gru_step/mul_21:z:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/add_30?
graph_model/gru_step/Tanh_7Tanhgraph_model/gru_step/add_30:z:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/Tanh_7?
graph_model/gru_step/mul_22Mul#graph_model/gru_step/Sigmoid_14:y:0graph_model/gru_step/add_27:z:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/mul_22?
graph_model/gru_step/sub_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
graph_model/gru_step/sub_7/x?
graph_model/gru_step/sub_7Sub%graph_model/gru_step/sub_7/x:output:0#graph_model/gru_step/Sigmoid_14:y:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/sub_7?
graph_model/gru_step/mul_23Mulgraph_model/gru_step/sub_7:z:0graph_model/gru_step/Tanh_7:y:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/mul_23?
graph_model/gru_step/add_31AddV2graph_model/gru_step/mul_22:z:0graph_model/gru_step/mul_23:z:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/add_31?
0graph_model/message_layer/strided_slice_16/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0graph_model/message_layer/strided_slice_16/stack?
2graph_model/message_layer/strided_slice_16/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2graph_model/message_layer/strided_slice_16/stack_1?
2graph_model/message_layer/strided_slice_16/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2graph_model/message_layer/strided_slice_16/stack_2?
*graph_model/message_layer/strided_slice_16StridedSliceconnectivity9graph_model/message_layer/strided_slice_16/stack:output:0;graph_model/message_layer/strided_slice_16/stack_1:output:0;graph_model/message_layer/strided_slice_16/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2,
*graph_model/message_layer/strided_slice_16?
)graph_model/message_layer/GatherV2_8/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)graph_model/message_layer/GatherV2_8/axis?
$graph_model/message_layer/GatherV2_8GatherV2graph_model/gru_step/add_31:z:03graph_model/message_layer/strided_slice_16:output:02graph_model/message_layer/GatherV2_8/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:????????? 2&
$graph_model/message_layer/GatherV2_8?
*graph_model/message_layer/ExpandDims_8/dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*graph_model/message_layer/ExpandDims_8/dim?
&graph_model/message_layer/ExpandDims_8
ExpandDims-graph_model/message_layer/GatherV2_8:output:03graph_model/message_layer/ExpandDims_8/dim:output:0*
T0*+
_output_shapes
:????????? 2(
&graph_model/message_layer/ExpandDims_8?
"graph_model/message_layer/MatMul_8BatchMatMulV2?graph_model/bond_embedding/embedding_lookup/Identity_1:output:0/graph_model/message_layer/ExpandDims_8:output:0*
T0*+
_output_shapes
:????????? 2$
"graph_model/message_layer/MatMul_8?
!graph_model/message_layer/Shape_8Shape+graph_model/message_layer/MatMul_8:output:0*
T0*
_output_shapes
:2#
!graph_model/message_layer/Shape_8?
#graph_model/message_layer/Squeeze_8Squeeze+graph_model/message_layer/MatMul_8:output:0*
T0*'
_output_shapes
:????????? *
squeeze_dims

?????????2%
#graph_model/message_layer/Squeeze_8?
)graph_model/message_layer/dropout_8/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2+
)graph_model/message_layer/dropout_8/Const?
'graph_model/message_layer/dropout_8/MulMul,graph_model/message_layer/Squeeze_8:output:02graph_model/message_layer/dropout_8/Const:output:0*
T0*'
_output_shapes
:????????? 2)
'graph_model/message_layer/dropout_8/Mul?
)graph_model/message_layer/dropout_8/ShapeShape,graph_model/message_layer/Squeeze_8:output:0*
T0*
_output_shapes
:2+
)graph_model/message_layer/dropout_8/Shape?
@graph_model/message_layer/dropout_8/random_uniform/RandomUniformRandomUniform2graph_model/message_layer/dropout_8/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*

seed*
seed2???2B
@graph_model/message_layer/dropout_8/random_uniform/RandomUniform?
2graph_model/message_layer/dropout_8/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=24
2graph_model/message_layer/dropout_8/GreaterEqual/y?
0graph_model/message_layer/dropout_8/GreaterEqualGreaterEqualIgraph_model/message_layer/dropout_8/random_uniform/RandomUniform:output:0;graph_model/message_layer/dropout_8/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 22
0graph_model/message_layer/dropout_8/GreaterEqual?
(graph_model/message_layer/dropout_8/CastCast4graph_model/message_layer/dropout_8/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2*
(graph_model/message_layer/dropout_8/Cast?
)graph_model/message_layer/dropout_8/Mul_1Mul+graph_model/message_layer/dropout_8/Mul:z:0,graph_model/message_layer/dropout_8/Cast:y:0*
T0*'
_output_shapes
:????????? 2+
)graph_model/message_layer/dropout_8/Mul_1?
0graph_model/message_layer/strided_slice_17/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0graph_model/message_layer/strided_slice_17/stack?
2graph_model/message_layer/strided_slice_17/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2graph_model/message_layer/strided_slice_17/stack_1?
2graph_model/message_layer/strided_slice_17/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2graph_model/message_layer/strided_slice_17/stack_2?
*graph_model/message_layer/strided_slice_17StridedSliceconnectivity9graph_model/message_layer/strided_slice_17/stack:output:0;graph_model/message_layer/strided_slice_17/stack_1:output:0;graph_model/message_layer/strided_slice_17/stack_2:output:0*
Index0*
T0*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2,
*graph_model/message_layer/strided_slice_17?
&graph_model/message_layer/SegmentSum_8
SegmentSum,graph_model/message_layer/Squeeze_8:output:03graph_model/message_layer/strided_slice_17:output:0*
T0*
Tindices0*'
_output_shapes
:????????? 2(
&graph_model/message_layer/SegmentSum_8?
%graph_model/gru_step/ReadVariableOp_8ReadVariableOp,graph_model_gru_step_readvariableop_resource*
_output_shapes

:`*
dtype02'
%graph_model/gru_step/ReadVariableOp_8?
graph_model/gru_step/unstack_8Unpack-graph_model/gru_step/ReadVariableOp_8:value:0*
T0* 
_output_shapes
:`:`*	
num2 
graph_model/gru_step/unstack_8?
-graph_model/gru_step/MatMul_16/ReadVariableOpReadVariableOp3graph_model_gru_step_matmul_readvariableop_resource*
_output_shapes

: `*
dtype02/
-graph_model/gru_step/MatMul_16/ReadVariableOp?
graph_model/gru_step/MatMul_16MatMul/graph_model/message_layer/SegmentSum_8:output:05graph_model/gru_step/MatMul_16/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2 
graph_model/gru_step/MatMul_16?
graph_model/gru_step/BiasAdd_16BiasAdd(graph_model/gru_step/MatMul_16:product:0'graph_model/gru_step/unstack_8:output:0*
T0*'
_output_shapes
:?????????`2!
graph_model/gru_step/BiasAdd_16?
'graph_model/gru_step/split_16/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2)
'graph_model/gru_step/split_16/split_dim?
graph_model/gru_step/split_16Split0graph_model/gru_step/split_16/split_dim:output:0(graph_model/gru_step/BiasAdd_16:output:0*
T0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
graph_model/gru_step/split_16?
-graph_model/gru_step/MatMul_17/ReadVariableOpReadVariableOp5graph_model_gru_step_matmul_1_readvariableop_resource*
_output_shapes

: `*
dtype02/
-graph_model/gru_step/MatMul_17/ReadVariableOp?
graph_model/gru_step/MatMul_17MatMulgraph_model/gru_step/add_31:z:05graph_model/gru_step/MatMul_17/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`2 
graph_model/gru_step/MatMul_17?
graph_model/gru_step/BiasAdd_17BiasAdd(graph_model/gru_step/MatMul_17:product:0'graph_model/gru_step/unstack_8:output:1*
T0*'
_output_shapes
:?????????`2!
graph_model/gru_step/BiasAdd_17?
graph_model/gru_step/Const_8Const*
_output_shapes
:*
dtype0*!
valueB"        ????2
graph_model/gru_step/Const_8?
'graph_model/gru_step/split_17/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2)
'graph_model/gru_step/split_17/split_dim?
graph_model/gru_step/split_17SplitV(graph_model/gru_step/BiasAdd_17:output:0%graph_model/gru_step/Const_8:output:00graph_model/gru_step/split_17/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:????????? :????????? :????????? *
	num_split2
graph_model/gru_step/split_17?
graph_model/gru_step/add_32AddV2&graph_model/gru_step/split_16:output:0&graph_model/gru_step/split_17:output:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/add_32?
graph_model/gru_step/Sigmoid_16Sigmoidgraph_model/gru_step/add_32:z:0*
T0*'
_output_shapes
:????????? 2!
graph_model/gru_step/Sigmoid_16?
graph_model/gru_step/add_33AddV2&graph_model/gru_step/split_16:output:1&graph_model/gru_step/split_17:output:1*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/add_33?
graph_model/gru_step/Sigmoid_17Sigmoidgraph_model/gru_step/add_33:z:0*
T0*'
_output_shapes
:????????? 2!
graph_model/gru_step/Sigmoid_17?
graph_model/gru_step/mul_24Mul#graph_model/gru_step/Sigmoid_17:y:0&graph_model/gru_step/split_17:output:2*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/mul_24?
graph_model/gru_step/add_34AddV2&graph_model/gru_step/split_16:output:2graph_model/gru_step/mul_24:z:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/add_34?
graph_model/gru_step/Tanh_8Tanhgraph_model/gru_step/add_34:z:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/Tanh_8?
graph_model/gru_step/mul_25Mul#graph_model/gru_step/Sigmoid_16:y:0graph_model/gru_step/add_31:z:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/mul_25?
graph_model/gru_step/sub_8/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
graph_model/gru_step/sub_8/x?
graph_model/gru_step/sub_8Sub%graph_model/gru_step/sub_8/x:output:0#graph_model/gru_step/Sigmoid_16:y:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/sub_8?
graph_model/gru_step/mul_26Mulgraph_model/gru_step/sub_8:z:0graph_model/gru_step/Tanh_8:y:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/mul_26?
graph_model/gru_step/add_35AddV2graph_model/gru_step/mul_25:z:0graph_model/gru_step/mul_26:z:0*
T0*'
_output_shapes
:????????? 2
graph_model/gru_step/add_35?
graph_model/squeeze/Squeeze_2Squeezenode_graph_indices*
T0*#
_output_shapes
:?????????*
squeeze_dims
2
graph_model/squeeze/Squeeze_2?
#graph_model/graph_fingerprint/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2%
#graph_model/graph_fingerprint/Const?
!graph_model/graph_fingerprint/MaxMax&graph_model/squeeze/Squeeze_2:output:0,graph_model/graph_fingerprint/Const:output:0*
T0*
_output_shapes
: 2#
!graph_model/graph_fingerprint/Max?
#graph_model/graph_fingerprint/add/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#graph_model/graph_fingerprint/add/y?
!graph_model/graph_fingerprint/addAddV2*graph_model/graph_fingerprint/Max:output:0,graph_model/graph_fingerprint/add/y:output:0*
T0*
_output_shapes
: 2#
!graph_model/graph_fingerprint/add?
)graph_model/graph_fingerprint/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2+
)graph_model/graph_fingerprint/zeros/mul/y?
'graph_model/graph_fingerprint/zeros/mulMul%graph_model/graph_fingerprint/add:z:02graph_model/graph_fingerprint/zeros/mul/y:output:0*
T0*
_output_shapes
: 2)
'graph_model/graph_fingerprint/zeros/mul?
*graph_model/graph_fingerprint/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2,
*graph_model/graph_fingerprint/zeros/Less/y?
(graph_model/graph_fingerprint/zeros/LessLess+graph_model/graph_fingerprint/zeros/mul:z:03graph_model/graph_fingerprint/zeros/Less/y:output:0*
T0*
_output_shapes
: 2*
(graph_model/graph_fingerprint/zeros/Less?
,graph_model/graph_fingerprint/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2.
,graph_model/graph_fingerprint/zeros/packed/1?
*graph_model/graph_fingerprint/zeros/packedPack%graph_model/graph_fingerprint/add:z:05graph_model/graph_fingerprint/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2,
*graph_model/graph_fingerprint/zeros/packed?
)graph_model/graph_fingerprint/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2+
)graph_model/graph_fingerprint/zeros/Const?
#graph_model/graph_fingerprint/zerosFill3graph_model/graph_fingerprint/zeros/packed:output:02graph_model/graph_fingerprint/zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2%
#graph_model/graph_fingerprint/zeros?
+graph_model/graph_fingerprint/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2-
+graph_model/graph_fingerprint/zeros_1/mul/y?
)graph_model/graph_fingerprint/zeros_1/mulMul%graph_model/graph_fingerprint/add:z:04graph_model/graph_fingerprint/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2+
)graph_model/graph_fingerprint/zeros_1/mul?
,graph_model/graph_fingerprint/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2.
,graph_model/graph_fingerprint/zeros_1/Less/y?
*graph_model/graph_fingerprint/zeros_1/LessLess-graph_model/graph_fingerprint/zeros_1/mul:z:05graph_model/graph_fingerprint/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2,
*graph_model/graph_fingerprint/zeros_1/Less?
.graph_model/graph_fingerprint/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 20
.graph_model/graph_fingerprint/zeros_1/packed/1?
,graph_model/graph_fingerprint/zeros_1/packedPack%graph_model/graph_fingerprint/add:z:07graph_model/graph_fingerprint/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2.
,graph_model/graph_fingerprint/zeros_1/packed?
+graph_model/graph_fingerprint/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2-
+graph_model/graph_fingerprint/zeros_1/Const?
%graph_model/graph_fingerprint/zeros_1Fill5graph_model/graph_fingerprint/zeros_1/packed:output:04graph_model/graph_fingerprint/zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2'
%graph_model/graph_fingerprint/zeros_1?
+graph_model/graph_fingerprint/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+graph_model/graph_fingerprint/GatherV2/axis?
&graph_model/graph_fingerprint/GatherV2GatherV2.graph_model/graph_fingerprint/zeros_1:output:0&graph_model/squeeze/Squeeze_2:output:04graph_model/graph_fingerprint/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:????????? 2(
&graph_model/graph_fingerprint/GatherV2?
!graph_model/graph_fingerprint/mulMulgraph_model/gru_step/add_35:z:0/graph_model/graph_fingerprint/GatherV2:output:0*
T0*'
_output_shapes
:????????? 2#
!graph_model/graph_fingerprint/mul?
3graph_model/graph_fingerprint/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :25
3graph_model/graph_fingerprint/Sum/reduction_indices?
!graph_model/graph_fingerprint/SumSum%graph_model/graph_fingerprint/mul:z:0<graph_model/graph_fingerprint/Sum/reduction_indices:output:0*
T0*#
_output_shapes
:?????????2#
!graph_model/graph_fingerprint/Sum?
!graph_model/graph_fingerprint/ExpExp*graph_model/graph_fingerprint/Sum:output:0*
T0*#
_output_shapes
:?????????2#
!graph_model/graph_fingerprint/Exp?
(graph_model/graph_fingerprint/SegmentSum
SegmentSum%graph_model/graph_fingerprint/Exp:y:0&graph_model/squeeze/Squeeze_2:output:0*
T0*
Tindices0*#
_output_shapes
:?????????2*
(graph_model/graph_fingerprint/SegmentSum?
-graph_model/graph_fingerprint/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-graph_model/graph_fingerprint/GatherV2_1/axis?
(graph_model/graph_fingerprint/GatherV2_1GatherV21graph_model/graph_fingerprint/SegmentSum:output:0&graph_model/squeeze/Squeeze_2:output:06graph_model/graph_fingerprint/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*#
_output_shapes
:?????????2*
(graph_model/graph_fingerprint/GatherV2_1?
%graph_model/graph_fingerprint/truedivRealDiv%graph_model/graph_fingerprint/Exp:y:01graph_model/graph_fingerprint/GatherV2_1:output:0*
T0*#
_output_shapes
:?????????2'
%graph_model/graph_fingerprint/truediv?
+graph_model/graph_fingerprint/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2-
+graph_model/graph_fingerprint/Reshape/shape?
%graph_model/graph_fingerprint/ReshapeReshape)graph_model/graph_fingerprint/truediv:z:04graph_model/graph_fingerprint/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2'
%graph_model/graph_fingerprint/Reshape?
#graph_model/graph_fingerprint/mul_1Mul.graph_model/graph_fingerprint/Reshape:output:0graph_model/gru_step/add_35:z:0*
T0*'
_output_shapes
:????????? 2%
#graph_model/graph_fingerprint/mul_1?
*graph_model/graph_fingerprint/SegmentSum_1
SegmentSum'graph_model/graph_fingerprint/mul_1:z:0&graph_model/squeeze/Squeeze_2:output:0*
T0*
Tindices0*'
_output_shapes
:????????? 2,
*graph_model/graph_fingerprint/SegmentSum_1?
)graph_model/graph_fingerprint/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2+
)graph_model/graph_fingerprint/concat/axis?
$graph_model/graph_fingerprint/concatConcatV2.graph_model/graph_fingerprint/zeros_1:output:03graph_model/graph_fingerprint/SegmentSum_1:output:02graph_model/graph_fingerprint/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????@2&
$graph_model/graph_fingerprint/concat?
6graph_model/graph_fingerprint/xw_plus_b/ReadVariableOpReadVariableOp?graph_model_graph_fingerprint_xw_plus_b_readvariableop_resource*
_output_shapes
:	@?*
dtype028
6graph_model/graph_fingerprint/xw_plus_b/ReadVariableOp?
8graph_model/graph_fingerprint/xw_plus_b/ReadVariableOp_1ReadVariableOpAgraph_model_graph_fingerprint_xw_plus_b_readvariableop_1_resource*
_output_shapes	
:?*
dtype02:
8graph_model/graph_fingerprint/xw_plus_b/ReadVariableOp_1?
.graph_model/graph_fingerprint/xw_plus_b/MatMulMatMul-graph_model/graph_fingerprint/concat:output:0>graph_model/graph_fingerprint/xw_plus_b/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????20
.graph_model/graph_fingerprint/xw_plus_b/MatMul?
'graph_model/graph_fingerprint/xw_plus_bBiasAdd8graph_model/graph_fingerprint/xw_plus_b/MatMul:product:0@graph_model/graph_fingerprint/xw_plus_b/ReadVariableOp_1:value:0*
T0*(
_output_shapes
:??????????2)
'graph_model/graph_fingerprint/xw_plus_b?
1graph_model/graph_fingerprint/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        23
1graph_model/graph_fingerprint/strided_slice/stack?
3graph_model/graph_fingerprint/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        25
3graph_model/graph_fingerprint/strided_slice/stack_1?
3graph_model/graph_fingerprint/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      25
3graph_model/graph_fingerprint/strided_slice/stack_2?
+graph_model/graph_fingerprint/strided_sliceStridedSlice0graph_model/graph_fingerprint/xw_plus_b:output:0:graph_model/graph_fingerprint/strided_slice/stack:output:0<graph_model/graph_fingerprint/strided_slice/stack_1:output:0<graph_model/graph_fingerprint/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2-
+graph_model/graph_fingerprint/strided_slice?
%graph_model/graph_fingerprint/SigmoidSigmoid4graph_model/graph_fingerprint/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2'
%graph_model/graph_fingerprint/Sigmoid?
3graph_model/graph_fingerprint/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        25
3graph_model/graph_fingerprint/strided_slice_1/stack?
5graph_model/graph_fingerprint/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   27
5graph_model/graph_fingerprint/strided_slice_1/stack_1?
5graph_model/graph_fingerprint/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      27
5graph_model/graph_fingerprint/strided_slice_1/stack_2?
-graph_model/graph_fingerprint/strided_slice_1StridedSlice0graph_model/graph_fingerprint/xw_plus_b:output:0<graph_model/graph_fingerprint/strided_slice_1/stack:output:0>graph_model/graph_fingerprint/strided_slice_1/stack_1:output:0>graph_model/graph_fingerprint/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2/
-graph_model/graph_fingerprint/strided_slice_1?
'graph_model/graph_fingerprint/Sigmoid_1Sigmoid6graph_model/graph_fingerprint/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2)
'graph_model/graph_fingerprint/Sigmoid_1?
3graph_model/graph_fingerprint/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   25
3graph_model/graph_fingerprint/strided_slice_2/stack?
5graph_model/graph_fingerprint/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   27
5graph_model/graph_fingerprint/strided_slice_2/stack_1?
5graph_model/graph_fingerprint/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      27
5graph_model/graph_fingerprint/strided_slice_2/stack_2?
-graph_model/graph_fingerprint/strided_slice_2StridedSlice0graph_model/graph_fingerprint/xw_plus_b:output:0<graph_model/graph_fingerprint/strided_slice_2/stack:output:0>graph_model/graph_fingerprint/strided_slice_2/stack_1:output:0>graph_model/graph_fingerprint/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2/
-graph_model/graph_fingerprint/strided_slice_2?
'graph_model/graph_fingerprint/Sigmoid_2Sigmoid6graph_model/graph_fingerprint/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2)
'graph_model/graph_fingerprint/Sigmoid_2?
3graph_model/graph_fingerprint/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   25
3graph_model/graph_fingerprint/strided_slice_3/stack?
5graph_model/graph_fingerprint/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        27
5graph_model/graph_fingerprint/strided_slice_3/stack_1?
5graph_model/graph_fingerprint/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      27
5graph_model/graph_fingerprint/strided_slice_3/stack_2?
-graph_model/graph_fingerprint/strided_slice_3StridedSlice0graph_model/graph_fingerprint/xw_plus_b:output:0<graph_model/graph_fingerprint/strided_slice_3/stack:output:0>graph_model/graph_fingerprint/strided_slice_3/stack_1:output:0>graph_model/graph_fingerprint/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2/
-graph_model/graph_fingerprint/strided_slice_3?
#graph_model/graph_fingerprint/mul_2Mul+graph_model/graph_fingerprint/Sigmoid_1:y:0,graph_model/graph_fingerprint/zeros:output:0*
T0*'
_output_shapes
:????????? 2%
#graph_model/graph_fingerprint/mul_2?
"graph_model/graph_fingerprint/TanhTanh6graph_model/graph_fingerprint/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2$
"graph_model/graph_fingerprint/Tanh?
#graph_model/graph_fingerprint/mul_3Mul)graph_model/graph_fingerprint/Sigmoid:y:0&graph_model/graph_fingerprint/Tanh:y:0*
T0*'
_output_shapes
:????????? 2%
#graph_model/graph_fingerprint/mul_3?
#graph_model/graph_fingerprint/add_1AddV2'graph_model/graph_fingerprint/mul_2:z:0'graph_model/graph_fingerprint/mul_3:z:0*
T0*'
_output_shapes
:????????? 2%
#graph_model/graph_fingerprint/add_1?
$graph_model/graph_fingerprint/Tanh_1Tanh'graph_model/graph_fingerprint/add_1:z:0*
T0*'
_output_shapes
:????????? 2&
$graph_model/graph_fingerprint/Tanh_1?
#graph_model/graph_fingerprint/mul_4Mul+graph_model/graph_fingerprint/Sigmoid_2:y:0(graph_model/graph_fingerprint/Tanh_1:y:0*
T0*'
_output_shapes
:????????? 2%
#graph_model/graph_fingerprint/mul_4?
-graph_model/graph_fingerprint/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-graph_model/graph_fingerprint/GatherV2_2/axis?
(graph_model/graph_fingerprint/GatherV2_2GatherV2'graph_model/graph_fingerprint/mul_4:z:0&graph_model/squeeze/Squeeze_2:output:06graph_model/graph_fingerprint/GatherV2_2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:????????? 2*
(graph_model/graph_fingerprint/GatherV2_2?
#graph_model/graph_fingerprint/mul_5Mulgraph_model/gru_step/add_35:z:01graph_model/graph_fingerprint/GatherV2_2:output:0*
T0*'
_output_shapes
:????????? 2%
#graph_model/graph_fingerprint/mul_5?
5graph_model/graph_fingerprint/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :27
5graph_model/graph_fingerprint/Sum_1/reduction_indices?
#graph_model/graph_fingerprint/Sum_1Sum'graph_model/graph_fingerprint/mul_5:z:0>graph_model/graph_fingerprint/Sum_1/reduction_indices:output:0*
T0*#
_output_shapes
:?????????2%
#graph_model/graph_fingerprint/Sum_1?
#graph_model/graph_fingerprint/Exp_1Exp,graph_model/graph_fingerprint/Sum_1:output:0*
T0*#
_output_shapes
:?????????2%
#graph_model/graph_fingerprint/Exp_1?
*graph_model/graph_fingerprint/SegmentSum_2
SegmentSum'graph_model/graph_fingerprint/Exp_1:y:0&graph_model/squeeze/Squeeze_2:output:0*
T0*
Tindices0*#
_output_shapes
:?????????2,
*graph_model/graph_fingerprint/SegmentSum_2?
-graph_model/graph_fingerprint/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-graph_model/graph_fingerprint/GatherV2_3/axis?
(graph_model/graph_fingerprint/GatherV2_3GatherV23graph_model/graph_fingerprint/SegmentSum_2:output:0&graph_model/squeeze/Squeeze_2:output:06graph_model/graph_fingerprint/GatherV2_3/axis:output:0*
Taxis0*
Tindices0*
Tparams0*#
_output_shapes
:?????????2*
(graph_model/graph_fingerprint/GatherV2_3?
'graph_model/graph_fingerprint/truediv_1RealDiv'graph_model/graph_fingerprint/Exp_1:y:01graph_model/graph_fingerprint/GatherV2_3:output:0*
T0*#
_output_shapes
:?????????2)
'graph_model/graph_fingerprint/truediv_1?
-graph_model/graph_fingerprint/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2/
-graph_model/graph_fingerprint/Reshape_1/shape?
'graph_model/graph_fingerprint/Reshape_1Reshape+graph_model/graph_fingerprint/truediv_1:z:06graph_model/graph_fingerprint/Reshape_1/shape:output:0*
T0*'
_output_shapes
:?????????2)
'graph_model/graph_fingerprint/Reshape_1?
#graph_model/graph_fingerprint/mul_6Mul0graph_model/graph_fingerprint/Reshape_1:output:0graph_model/gru_step/add_35:z:0*
T0*'
_output_shapes
:????????? 2%
#graph_model/graph_fingerprint/mul_6?
*graph_model/graph_fingerprint/SegmentSum_3
SegmentSum'graph_model/graph_fingerprint/mul_6:z:0&graph_model/squeeze/Squeeze_2:output:0*
T0*
Tindices0*'
_output_shapes
:????????? 2,
*graph_model/graph_fingerprint/SegmentSum_3?
+graph_model/graph_fingerprint/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2-
+graph_model/graph_fingerprint/concat_1/axis?
&graph_model/graph_fingerprint/concat_1ConcatV2'graph_model/graph_fingerprint/mul_4:z:03graph_model/graph_fingerprint/SegmentSum_3:output:04graph_model/graph_fingerprint/concat_1/axis:output:0*
N*
T0*'
_output_shapes
:?????????@2(
&graph_model/graph_fingerprint/concat_1?
8graph_model/graph_fingerprint/xw_plus_b_1/ReadVariableOpReadVariableOp?graph_model_graph_fingerprint_xw_plus_b_readvariableop_resource*
_output_shapes
:	@?*
dtype02:
8graph_model/graph_fingerprint/xw_plus_b_1/ReadVariableOp?
:graph_model/graph_fingerprint/xw_plus_b_1/ReadVariableOp_1ReadVariableOpAgraph_model_graph_fingerprint_xw_plus_b_readvariableop_1_resource*
_output_shapes	
:?*
dtype02<
:graph_model/graph_fingerprint/xw_plus_b_1/ReadVariableOp_1?
0graph_model/graph_fingerprint/xw_plus_b_1/MatMulMatMul/graph_model/graph_fingerprint/concat_1:output:0@graph_model/graph_fingerprint/xw_plus_b_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????22
0graph_model/graph_fingerprint/xw_plus_b_1/MatMul?
)graph_model/graph_fingerprint/xw_plus_b_1BiasAdd:graph_model/graph_fingerprint/xw_plus_b_1/MatMul:product:0Bgraph_model/graph_fingerprint/xw_plus_b_1/ReadVariableOp_1:value:0*
T0*(
_output_shapes
:??????????2+
)graph_model/graph_fingerprint/xw_plus_b_1?
3graph_model/graph_fingerprint/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        25
3graph_model/graph_fingerprint/strided_slice_4/stack?
5graph_model/graph_fingerprint/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        27
5graph_model/graph_fingerprint/strided_slice_4/stack_1?
5graph_model/graph_fingerprint/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      27
5graph_model/graph_fingerprint/strided_slice_4/stack_2?
-graph_model/graph_fingerprint/strided_slice_4StridedSlice2graph_model/graph_fingerprint/xw_plus_b_1:output:0<graph_model/graph_fingerprint/strided_slice_4/stack:output:0>graph_model/graph_fingerprint/strided_slice_4/stack_1:output:0>graph_model/graph_fingerprint/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2/
-graph_model/graph_fingerprint/strided_slice_4?
'graph_model/graph_fingerprint/Sigmoid_3Sigmoid6graph_model/graph_fingerprint/strided_slice_4:output:0*
T0*'
_output_shapes
:????????? 2)
'graph_model/graph_fingerprint/Sigmoid_3?
3graph_model/graph_fingerprint/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        25
3graph_model/graph_fingerprint/strided_slice_5/stack?
5graph_model/graph_fingerprint/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   27
5graph_model/graph_fingerprint/strided_slice_5/stack_1?
5graph_model/graph_fingerprint/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      27
5graph_model/graph_fingerprint/strided_slice_5/stack_2?
-graph_model/graph_fingerprint/strided_slice_5StridedSlice2graph_model/graph_fingerprint/xw_plus_b_1:output:0<graph_model/graph_fingerprint/strided_slice_5/stack:output:0>graph_model/graph_fingerprint/strided_slice_5/stack_1:output:0>graph_model/graph_fingerprint/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2/
-graph_model/graph_fingerprint/strided_slice_5?
'graph_model/graph_fingerprint/Sigmoid_4Sigmoid6graph_model/graph_fingerprint/strided_slice_5:output:0*
T0*'
_output_shapes
:????????? 2)
'graph_model/graph_fingerprint/Sigmoid_4?
3graph_model/graph_fingerprint/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   25
3graph_model/graph_fingerprint/strided_slice_6/stack?
5graph_model/graph_fingerprint/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   27
5graph_model/graph_fingerprint/strided_slice_6/stack_1?
5graph_model/graph_fingerprint/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      27
5graph_model/graph_fingerprint/strided_slice_6/stack_2?
-graph_model/graph_fingerprint/strided_slice_6StridedSlice2graph_model/graph_fingerprint/xw_plus_b_1:output:0<graph_model/graph_fingerprint/strided_slice_6/stack:output:0>graph_model/graph_fingerprint/strided_slice_6/stack_1:output:0>graph_model/graph_fingerprint/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2/
-graph_model/graph_fingerprint/strided_slice_6?
'graph_model/graph_fingerprint/Sigmoid_5Sigmoid6graph_model/graph_fingerprint/strided_slice_6:output:0*
T0*'
_output_shapes
:????????? 2)
'graph_model/graph_fingerprint/Sigmoid_5?
3graph_model/graph_fingerprint/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   25
3graph_model/graph_fingerprint/strided_slice_7/stack?
5graph_model/graph_fingerprint/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        27
5graph_model/graph_fingerprint/strided_slice_7/stack_1?
5graph_model/graph_fingerprint/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      27
5graph_model/graph_fingerprint/strided_slice_7/stack_2?
-graph_model/graph_fingerprint/strided_slice_7StridedSlice2graph_model/graph_fingerprint/xw_plus_b_1:output:0<graph_model/graph_fingerprint/strided_slice_7/stack:output:0>graph_model/graph_fingerprint/strided_slice_7/stack_1:output:0>graph_model/graph_fingerprint/strided_slice_7/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2/
-graph_model/graph_fingerprint/strided_slice_7?
#graph_model/graph_fingerprint/mul_7Mul+graph_model/graph_fingerprint/Sigmoid_4:y:0'graph_model/graph_fingerprint/add_1:z:0*
T0*'
_output_shapes
:????????? 2%
#graph_model/graph_fingerprint/mul_7?
$graph_model/graph_fingerprint/Tanh_2Tanh6graph_model/graph_fingerprint/strided_slice_7:output:0*
T0*'
_output_shapes
:????????? 2&
$graph_model/graph_fingerprint/Tanh_2?
#graph_model/graph_fingerprint/mul_8Mul+graph_model/graph_fingerprint/Sigmoid_3:y:0(graph_model/graph_fingerprint/Tanh_2:y:0*
T0*'
_output_shapes
:????????? 2%
#graph_model/graph_fingerprint/mul_8?
#graph_model/graph_fingerprint/add_2AddV2'graph_model/graph_fingerprint/mul_7:z:0'graph_model/graph_fingerprint/mul_8:z:0*
T0*'
_output_shapes
:????????? 2%
#graph_model/graph_fingerprint/add_2?
$graph_model/graph_fingerprint/Tanh_3Tanh'graph_model/graph_fingerprint/add_2:z:0*
T0*'
_output_shapes
:????????? 2&
$graph_model/graph_fingerprint/Tanh_3?
#graph_model/graph_fingerprint/mul_9Mul+graph_model/graph_fingerprint/Sigmoid_5:y:0(graph_model/graph_fingerprint/Tanh_3:y:0*
T0*'
_output_shapes
:????????? 2%
#graph_model/graph_fingerprint/mul_9?
-graph_model/graph_fingerprint/GatherV2_4/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-graph_model/graph_fingerprint/GatherV2_4/axis?
(graph_model/graph_fingerprint/GatherV2_4GatherV2'graph_model/graph_fingerprint/mul_9:z:0&graph_model/squeeze/Squeeze_2:output:06graph_model/graph_fingerprint/GatherV2_4/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:????????? 2*
(graph_model/graph_fingerprint/GatherV2_4?
$graph_model/graph_fingerprint/mul_10Mulgraph_model/gru_step/add_35:z:01graph_model/graph_fingerprint/GatherV2_4:output:0*
T0*'
_output_shapes
:????????? 2&
$graph_model/graph_fingerprint/mul_10?
5graph_model/graph_fingerprint/Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :27
5graph_model/graph_fingerprint/Sum_2/reduction_indices?
#graph_model/graph_fingerprint/Sum_2Sum(graph_model/graph_fingerprint/mul_10:z:0>graph_model/graph_fingerprint/Sum_2/reduction_indices:output:0*
T0*#
_output_shapes
:?????????2%
#graph_model/graph_fingerprint/Sum_2?
#graph_model/graph_fingerprint/Exp_2Exp,graph_model/graph_fingerprint/Sum_2:output:0*
T0*#
_output_shapes
:?????????2%
#graph_model/graph_fingerprint/Exp_2?
*graph_model/graph_fingerprint/SegmentSum_4
SegmentSum'graph_model/graph_fingerprint/Exp_2:y:0&graph_model/squeeze/Squeeze_2:output:0*
T0*
Tindices0*#
_output_shapes
:?????????2,
*graph_model/graph_fingerprint/SegmentSum_4?
-graph_model/graph_fingerprint/GatherV2_5/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-graph_model/graph_fingerprint/GatherV2_5/axis?
(graph_model/graph_fingerprint/GatherV2_5GatherV23graph_model/graph_fingerprint/SegmentSum_4:output:0&graph_model/squeeze/Squeeze_2:output:06graph_model/graph_fingerprint/GatherV2_5/axis:output:0*
Taxis0*
Tindices0*
Tparams0*#
_output_shapes
:?????????2*
(graph_model/graph_fingerprint/GatherV2_5?
'graph_model/graph_fingerprint/truediv_2RealDiv'graph_model/graph_fingerprint/Exp_2:y:01graph_model/graph_fingerprint/GatherV2_5:output:0*
T0*#
_output_shapes
:?????????2)
'graph_model/graph_fingerprint/truediv_2?
-graph_model/graph_fingerprint/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2/
-graph_model/graph_fingerprint/Reshape_2/shape?
'graph_model/graph_fingerprint/Reshape_2Reshape+graph_model/graph_fingerprint/truediv_2:z:06graph_model/graph_fingerprint/Reshape_2/shape:output:0*
T0*'
_output_shapes
:?????????2)
'graph_model/graph_fingerprint/Reshape_2?
$graph_model/graph_fingerprint/mul_11Mul0graph_model/graph_fingerprint/Reshape_2:output:0graph_model/gru_step/add_35:z:0*
T0*'
_output_shapes
:????????? 2&
$graph_model/graph_fingerprint/mul_11?
*graph_model/graph_fingerprint/SegmentSum_5
SegmentSum(graph_model/graph_fingerprint/mul_11:z:0&graph_model/squeeze/Squeeze_2:output:0*
T0*
Tindices0*'
_output_shapes
:????????? 2,
*graph_model/graph_fingerprint/SegmentSum_5?
+graph_model/graph_fingerprint/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2-
+graph_model/graph_fingerprint/concat_2/axis?
&graph_model/graph_fingerprint/concat_2ConcatV2'graph_model/graph_fingerprint/mul_9:z:03graph_model/graph_fingerprint/SegmentSum_5:output:04graph_model/graph_fingerprint/concat_2/axis:output:0*
N*
T0*'
_output_shapes
:?????????@2(
&graph_model/graph_fingerprint/concat_2?
8graph_model/graph_fingerprint/xw_plus_b_2/ReadVariableOpReadVariableOp?graph_model_graph_fingerprint_xw_plus_b_readvariableop_resource*
_output_shapes
:	@?*
dtype02:
8graph_model/graph_fingerprint/xw_plus_b_2/ReadVariableOp?
:graph_model/graph_fingerprint/xw_plus_b_2/ReadVariableOp_1ReadVariableOpAgraph_model_graph_fingerprint_xw_plus_b_readvariableop_1_resource*
_output_shapes	
:?*
dtype02<
:graph_model/graph_fingerprint/xw_plus_b_2/ReadVariableOp_1?
0graph_model/graph_fingerprint/xw_plus_b_2/MatMulMatMul/graph_model/graph_fingerprint/concat_2:output:0@graph_model/graph_fingerprint/xw_plus_b_2/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????22
0graph_model/graph_fingerprint/xw_plus_b_2/MatMul?
)graph_model/graph_fingerprint/xw_plus_b_2BiasAdd:graph_model/graph_fingerprint/xw_plus_b_2/MatMul:product:0Bgraph_model/graph_fingerprint/xw_plus_b_2/ReadVariableOp_1:value:0*
T0*(
_output_shapes
:??????????2+
)graph_model/graph_fingerprint/xw_plus_b_2?
3graph_model/graph_fingerprint/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB"        25
3graph_model/graph_fingerprint/strided_slice_8/stack?
5graph_model/graph_fingerprint/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        27
5graph_model/graph_fingerprint/strided_slice_8/stack_1?
5graph_model/graph_fingerprint/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      27
5graph_model/graph_fingerprint/strided_slice_8/stack_2?
-graph_model/graph_fingerprint/strided_slice_8StridedSlice2graph_model/graph_fingerprint/xw_plus_b_2:output:0<graph_model/graph_fingerprint/strided_slice_8/stack:output:0>graph_model/graph_fingerprint/strided_slice_8/stack_1:output:0>graph_model/graph_fingerprint/strided_slice_8/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2/
-graph_model/graph_fingerprint/strided_slice_8?
'graph_model/graph_fingerprint/Sigmoid_6Sigmoid6graph_model/graph_fingerprint/strided_slice_8:output:0*
T0*'
_output_shapes
:????????? 2)
'graph_model/graph_fingerprint/Sigmoid_6?
3graph_model/graph_fingerprint/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB"        25
3graph_model/graph_fingerprint/strided_slice_9/stack?
5graph_model/graph_fingerprint/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   27
5graph_model/graph_fingerprint/strided_slice_9/stack_1?
5graph_model/graph_fingerprint/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      27
5graph_model/graph_fingerprint/strided_slice_9/stack_2?
-graph_model/graph_fingerprint/strided_slice_9StridedSlice2graph_model/graph_fingerprint/xw_plus_b_2:output:0<graph_model/graph_fingerprint/strided_slice_9/stack:output:0>graph_model/graph_fingerprint/strided_slice_9/stack_1:output:0>graph_model/graph_fingerprint/strided_slice_9/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask2/
-graph_model/graph_fingerprint/strided_slice_9?
'graph_model/graph_fingerprint/Sigmoid_7Sigmoid6graph_model/graph_fingerprint/strided_slice_9:output:0*
T0*'
_output_shapes
:????????? 2)
'graph_model/graph_fingerprint/Sigmoid_7?
4graph_model/graph_fingerprint/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   26
4graph_model/graph_fingerprint/strided_slice_10/stack?
6graph_model/graph_fingerprint/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   28
6graph_model/graph_fingerprint/strided_slice_10/stack_1?
6graph_model/graph_fingerprint/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      28
6graph_model/graph_fingerprint/strided_slice_10/stack_2?
.graph_model/graph_fingerprint/strided_slice_10StridedSlice2graph_model/graph_fingerprint/xw_plus_b_2:output:0=graph_model/graph_fingerprint/strided_slice_10/stack:output:0?graph_model/graph_fingerprint/strided_slice_10/stack_1:output:0?graph_model/graph_fingerprint/strided_slice_10/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask20
.graph_model/graph_fingerprint/strided_slice_10?
'graph_model/graph_fingerprint/Sigmoid_8Sigmoid7graph_model/graph_fingerprint/strided_slice_10:output:0*
T0*'
_output_shapes
:????????? 2)
'graph_model/graph_fingerprint/Sigmoid_8?
4graph_model/graph_fingerprint/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   26
4graph_model/graph_fingerprint/strided_slice_11/stack?
6graph_model/graph_fingerprint/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        28
6graph_model/graph_fingerprint/strided_slice_11/stack_1?
6graph_model/graph_fingerprint/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      28
6graph_model/graph_fingerprint/strided_slice_11/stack_2?
.graph_model/graph_fingerprint/strided_slice_11StridedSlice2graph_model/graph_fingerprint/xw_plus_b_2:output:0=graph_model/graph_fingerprint/strided_slice_11/stack:output:0?graph_model/graph_fingerprint/strided_slice_11/stack_1:output:0?graph_model/graph_fingerprint/strided_slice_11/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *

begin_mask*
end_mask20
.graph_model/graph_fingerprint/strided_slice_11?
$graph_model/graph_fingerprint/mul_12Mul+graph_model/graph_fingerprint/Sigmoid_7:y:0'graph_model/graph_fingerprint/add_2:z:0*
T0*'
_output_shapes
:????????? 2&
$graph_model/graph_fingerprint/mul_12?
$graph_model/graph_fingerprint/Tanh_4Tanh7graph_model/graph_fingerprint/strided_slice_11:output:0*
T0*'
_output_shapes
:????????? 2&
$graph_model/graph_fingerprint/Tanh_4?
$graph_model/graph_fingerprint/mul_13Mul+graph_model/graph_fingerprint/Sigmoid_6:y:0(graph_model/graph_fingerprint/Tanh_4:y:0*
T0*'
_output_shapes
:????????? 2&
$graph_model/graph_fingerprint/mul_13?
#graph_model/graph_fingerprint/add_3AddV2(graph_model/graph_fingerprint/mul_12:z:0(graph_model/graph_fingerprint/mul_13:z:0*
T0*'
_output_shapes
:????????? 2%
#graph_model/graph_fingerprint/add_3?
$graph_model/graph_fingerprint/Tanh_5Tanh'graph_model/graph_fingerprint/add_3:z:0*
T0*'
_output_shapes
:????????? 2&
$graph_model/graph_fingerprint/Tanh_5?
$graph_model/graph_fingerprint/mul_14Mul+graph_model/graph_fingerprint/Sigmoid_8:y:0(graph_model/graph_fingerprint/Tanh_5:y:0*
T0*'
_output_shapes
:????????? 2&
$graph_model/graph_fingerprint/mul_14?
&graph_model/mfp1/MatMul/ReadVariableOpReadVariableOp/graph_model_mfp1_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02(
&graph_model/mfp1/MatMul/ReadVariableOp?
graph_model/mfp1/MatMulMatMul/graph_model/graph_fingerprint/concat_2:output:0.graph_model/mfp1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
graph_model/mfp1/MatMul?
'graph_model/mfp1/BiasAdd/ReadVariableOpReadVariableOp0graph_model_mfp1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02)
'graph_model/mfp1/BiasAdd/ReadVariableOp?
graph_model/mfp1/BiasAddBiasAdd!graph_model/mfp1/MatMul:product:0/graph_model/mfp1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
graph_model/mfp1/BiasAdd?
graph_model/mfp1/ReluRelu!graph_model/mfp1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
graph_model/mfp1/Relu?
8graph_model/batch_normalization/batchnorm/ReadVariableOpReadVariableOpAgraph_model_batch_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02:
8graph_model/batch_normalization/batchnorm/ReadVariableOp?
/graph_model/batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:21
/graph_model/batch_normalization/batchnorm/add/y?
-graph_model/batch_normalization/batchnorm/addAddV2@graph_model/batch_normalization/batchnorm/ReadVariableOp:value:08graph_model/batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2/
-graph_model/batch_normalization/batchnorm/add?
/graph_model/batch_normalization/batchnorm/RsqrtRsqrt1graph_model/batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes	
:?21
/graph_model/batch_normalization/batchnorm/Rsqrt?
<graph_model/batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOpEgraph_model_batch_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02>
<graph_model/batch_normalization/batchnorm/mul/ReadVariableOp?
-graph_model/batch_normalization/batchnorm/mulMul3graph_model/batch_normalization/batchnorm/Rsqrt:y:0Dgraph_model/batch_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2/
-graph_model/batch_normalization/batchnorm/mul?
/graph_model/batch_normalization/batchnorm/mul_1Mul#graph_model/mfp1/Relu:activations:01graph_model/batch_normalization/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????21
/graph_model/batch_normalization/batchnorm/mul_1?
:graph_model/batch_normalization/batchnorm/ReadVariableOp_1ReadVariableOpCgraph_model_batch_normalization_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02<
:graph_model/batch_normalization/batchnorm/ReadVariableOp_1?
/graph_model/batch_normalization/batchnorm/mul_2MulBgraph_model/batch_normalization/batchnorm/ReadVariableOp_1:value:01graph_model/batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes	
:?21
/graph_model/batch_normalization/batchnorm/mul_2?
:graph_model/batch_normalization/batchnorm/ReadVariableOp_2ReadVariableOpCgraph_model_batch_normalization_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02<
:graph_model/batch_normalization/batchnorm/ReadVariableOp_2?
-graph_model/batch_normalization/batchnorm/subSubBgraph_model/batch_normalization/batchnorm/ReadVariableOp_2:value:03graph_model/batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2/
-graph_model/batch_normalization/batchnorm/sub?
/graph_model/batch_normalization/batchnorm/add_1AddV23graph_model/batch_normalization/batchnorm/mul_1:z:01graph_model/batch_normalization/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????21
/graph_model/batch_normalization/batchnorm/add_1?
&graph_model/mfp2/MatMul/ReadVariableOpReadVariableOp/graph_model_mfp2_matmul_readvariableop_resource*
_output_shapes
:	? *
dtype02(
&graph_model/mfp2/MatMul/ReadVariableOp?
graph_model/mfp2/MatMulMatMul3graph_model/batch_normalization/batchnorm/add_1:z:0.graph_model/mfp2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
graph_model/mfp2/MatMul?
'graph_model/mfp2/BiasAdd/ReadVariableOpReadVariableOp0graph_model_mfp2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02)
'graph_model/mfp2/BiasAdd/ReadVariableOp?
graph_model/mfp2/BiasAddBiasAdd!graph_model/mfp2/MatMul:product:0/graph_model/mfp2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
graph_model/mfp2/BiasAdd?
graph_model/mfp2/ReluRelu!graph_model/mfp2/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
graph_model/mfp2/Relu?
:graph_model/batch_normalization_1/batchnorm/ReadVariableOpReadVariableOpCgraph_model_batch_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02<
:graph_model/batch_normalization_1/batchnorm/ReadVariableOp?
1graph_model/batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:23
1graph_model/batch_normalization_1/batchnorm/add/y?
/graph_model/batch_normalization_1/batchnorm/addAddV2Bgraph_model/batch_normalization_1/batchnorm/ReadVariableOp:value:0:graph_model/batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes
: 21
/graph_model/batch_normalization_1/batchnorm/add?
1graph_model/batch_normalization_1/batchnorm/RsqrtRsqrt3graph_model/batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes
: 23
1graph_model/batch_normalization_1/batchnorm/Rsqrt?
>graph_model/batch_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOpGgraph_model_batch_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02@
>graph_model/batch_normalization_1/batchnorm/mul/ReadVariableOp?
/graph_model/batch_normalization_1/batchnorm/mulMul5graph_model/batch_normalization_1/batchnorm/Rsqrt:y:0Fgraph_model/batch_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 21
/graph_model/batch_normalization_1/batchnorm/mul?
1graph_model/batch_normalization_1/batchnorm/mul_1Mul#graph_model/mfp2/Relu:activations:03graph_model/batch_normalization_1/batchnorm/mul:z:0*
T0*'
_output_shapes
:????????? 23
1graph_model/batch_normalization_1/batchnorm/mul_1?
<graph_model/batch_normalization_1/batchnorm/ReadVariableOp_1ReadVariableOpEgraph_model_batch_normalization_1_batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype02>
<graph_model/batch_normalization_1/batchnorm/ReadVariableOp_1?
1graph_model/batch_normalization_1/batchnorm/mul_2MulDgraph_model/batch_normalization_1/batchnorm/ReadVariableOp_1:value:03graph_model/batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes
: 23
1graph_model/batch_normalization_1/batchnorm/mul_2?
<graph_model/batch_normalization_1/batchnorm/ReadVariableOp_2ReadVariableOpEgraph_model_batch_normalization_1_batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype02>
<graph_model/batch_normalization_1/batchnorm/ReadVariableOp_2?
/graph_model/batch_normalization_1/batchnorm/subSubDgraph_model/batch_normalization_1/batchnorm/ReadVariableOp_2:value:05graph_model/batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
: 21
/graph_model/batch_normalization_1/batchnorm/sub?
1graph_model/batch_normalization_1/batchnorm/add_1AddV25graph_model/batch_normalization_1/batchnorm/mul_1:z:03graph_model/batch_normalization_1/batchnorm/sub:z:0*
T0*'
_output_shapes
:????????? 23
1graph_model/batch_normalization_1/batchnorm/add_1?
&graph_model/mfp3/MatMul/ReadVariableOpReadVariableOp/graph_model_mfp3_matmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02(
&graph_model/mfp3/MatMul/ReadVariableOp?
graph_model/mfp3/MatMulMatMul5graph_model/batch_normalization_1/batchnorm/add_1:z:0.graph_model/mfp3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
graph_model/mfp3/MatMul?
'graph_model/mfp3/BiasAdd/ReadVariableOpReadVariableOp0graph_model_mfp3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02)
'graph_model/mfp3/BiasAdd/ReadVariableOp?
graph_model/mfp3/BiasAddBiasAdd!graph_model/mfp3/MatMul:product:0/graph_model/mfp3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
graph_model/mfp3/BiasAdd?
graph_model/mfp3/ReluRelu!graph_model/mfp3/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
graph_model/mfp3/Relu?
:graph_model/batch_normalization_2/batchnorm/ReadVariableOpReadVariableOpCgraph_model_batch_normalization_2_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02<
:graph_model/batch_normalization_2/batchnorm/ReadVariableOp?
1graph_model/batch_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:23
1graph_model/batch_normalization_2/batchnorm/add/y?
/graph_model/batch_normalization_2/batchnorm/addAddV2Bgraph_model/batch_normalization_2/batchnorm/ReadVariableOp:value:0:graph_model/batch_normalization_2/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?21
/graph_model/batch_normalization_2/batchnorm/add?
1graph_model/batch_normalization_2/batchnorm/RsqrtRsqrt3graph_model/batch_normalization_2/batchnorm/add:z:0*
T0*
_output_shapes	
:?23
1graph_model/batch_normalization_2/batchnorm/Rsqrt?
>graph_model/batch_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOpGgraph_model_batch_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02@
>graph_model/batch_normalization_2/batchnorm/mul/ReadVariableOp?
/graph_model/batch_normalization_2/batchnorm/mulMul5graph_model/batch_normalization_2/batchnorm/Rsqrt:y:0Fgraph_model/batch_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?21
/graph_model/batch_normalization_2/batchnorm/mul?
1graph_model/batch_normalization_2/batchnorm/mul_1Mul#graph_model/mfp3/Relu:activations:03graph_model/batch_normalization_2/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????23
1graph_model/batch_normalization_2/batchnorm/mul_1?
<graph_model/batch_normalization_2/batchnorm/ReadVariableOp_1ReadVariableOpEgraph_model_batch_normalization_2_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02>
<graph_model/batch_normalization_2/batchnorm/ReadVariableOp_1?
1graph_model/batch_normalization_2/batchnorm/mul_2MulDgraph_model/batch_normalization_2/batchnorm/ReadVariableOp_1:value:03graph_model/batch_normalization_2/batchnorm/mul:z:0*
T0*
_output_shapes	
:?23
1graph_model/batch_normalization_2/batchnorm/mul_2?
<graph_model/batch_normalization_2/batchnorm/ReadVariableOp_2ReadVariableOpEgraph_model_batch_normalization_2_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02>
<graph_model/batch_normalization_2/batchnorm/ReadVariableOp_2?
/graph_model/batch_normalization_2/batchnorm/subSubDgraph_model/batch_normalization_2/batchnorm/ReadVariableOp_2:value:05graph_model/batch_normalization_2/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?21
/graph_model/batch_normalization_2/batchnorm/sub?
1graph_model/batch_normalization_2/batchnorm/add_1AddV25graph_model/batch_normalization_2/batchnorm/mul_1:z:03graph_model/batch_normalization_2/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????23
1graph_model/batch_normalization_2/batchnorm/add_1?
(graph_model/output/MatMul/ReadVariableOpReadVariableOp1graph_model_output_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02*
(graph_model/output/MatMul/ReadVariableOp?
graph_model/output/MatMulMatMul5graph_model/batch_normalization_2/batchnorm/add_1:z:00graph_model/output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
graph_model/output/MatMul?
)graph_model/output/BiasAdd/ReadVariableOpReadVariableOp2graph_model_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)graph_model/output/BiasAdd/ReadVariableOp?
graph_model/output/BiasAddBiasAdd#graph_model/output/MatMul:product:01graph_model/output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
graph_model/output/BiasAdd?
IdentityIdentity#graph_model/output/BiasAdd:output:0,^graph_model/atom_embedding/embedding_lookup9^graph_model/batch_normalization/batchnorm/ReadVariableOp;^graph_model/batch_normalization/batchnorm/ReadVariableOp_1;^graph_model/batch_normalization/batchnorm/ReadVariableOp_2=^graph_model/batch_normalization/batchnorm/mul/ReadVariableOp;^graph_model/batch_normalization_1/batchnorm/ReadVariableOp=^graph_model/batch_normalization_1/batchnorm/ReadVariableOp_1=^graph_model/batch_normalization_1/batchnorm/ReadVariableOp_2?^graph_model/batch_normalization_1/batchnorm/mul/ReadVariableOp;^graph_model/batch_normalization_2/batchnorm/ReadVariableOp=^graph_model/batch_normalization_2/batchnorm/ReadVariableOp_1=^graph_model/batch_normalization_2/batchnorm/ReadVariableOp_2?^graph_model/batch_normalization_2/batchnorm/mul/ReadVariableOp,^graph_model/bond_embedding/embedding_lookup7^graph_model/graph_fingerprint/xw_plus_b/ReadVariableOp9^graph_model/graph_fingerprint/xw_plus_b/ReadVariableOp_19^graph_model/graph_fingerprint/xw_plus_b_1/ReadVariableOp;^graph_model/graph_fingerprint/xw_plus_b_1/ReadVariableOp_19^graph_model/graph_fingerprint/xw_plus_b_2/ReadVariableOp;^graph_model/graph_fingerprint/xw_plus_b_2/ReadVariableOp_1+^graph_model/gru_step/MatMul/ReadVariableOp-^graph_model/gru_step/MatMul_1/ReadVariableOp.^graph_model/gru_step/MatMul_10/ReadVariableOp.^graph_model/gru_step/MatMul_11/ReadVariableOp.^graph_model/gru_step/MatMul_12/ReadVariableOp.^graph_model/gru_step/MatMul_13/ReadVariableOp.^graph_model/gru_step/MatMul_14/ReadVariableOp.^graph_model/gru_step/MatMul_15/ReadVariableOp.^graph_model/gru_step/MatMul_16/ReadVariableOp.^graph_model/gru_step/MatMul_17/ReadVariableOp-^graph_model/gru_step/MatMul_2/ReadVariableOp-^graph_model/gru_step/MatMul_3/ReadVariableOp-^graph_model/gru_step/MatMul_4/ReadVariableOp-^graph_model/gru_step/MatMul_5/ReadVariableOp-^graph_model/gru_step/MatMul_6/ReadVariableOp-^graph_model/gru_step/MatMul_7/ReadVariableOp-^graph_model/gru_step/MatMul_8/ReadVariableOp-^graph_model/gru_step/MatMul_9/ReadVariableOp$^graph_model/gru_step/ReadVariableOp&^graph_model/gru_step/ReadVariableOp_1&^graph_model/gru_step/ReadVariableOp_2&^graph_model/gru_step/ReadVariableOp_3&^graph_model/gru_step/ReadVariableOp_4&^graph_model/gru_step/ReadVariableOp_5&^graph_model/gru_step/ReadVariableOp_6&^graph_model/gru_step/ReadVariableOp_7&^graph_model/gru_step/ReadVariableOp_8(^graph_model/mfp1/BiasAdd/ReadVariableOp'^graph_model/mfp1/MatMul/ReadVariableOp(^graph_model/mfp2/BiasAdd/ReadVariableOp'^graph_model/mfp2/MatMul/ReadVariableOp(^graph_model/mfp3/BiasAdd/ReadVariableOp'^graph_model/mfp3/MatMul/ReadVariableOp*^graph_model/output/BiasAdd/ReadVariableOp)^graph_model/output/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : 2Z
+graph_model/atom_embedding/embedding_lookup+graph_model/atom_embedding/embedding_lookup2t
8graph_model/batch_normalization/batchnorm/ReadVariableOp8graph_model/batch_normalization/batchnorm/ReadVariableOp2x
:graph_model/batch_normalization/batchnorm/ReadVariableOp_1:graph_model/batch_normalization/batchnorm/ReadVariableOp_12x
:graph_model/batch_normalization/batchnorm/ReadVariableOp_2:graph_model/batch_normalization/batchnorm/ReadVariableOp_22|
<graph_model/batch_normalization/batchnorm/mul/ReadVariableOp<graph_model/batch_normalization/batchnorm/mul/ReadVariableOp2x
:graph_model/batch_normalization_1/batchnorm/ReadVariableOp:graph_model/batch_normalization_1/batchnorm/ReadVariableOp2|
<graph_model/batch_normalization_1/batchnorm/ReadVariableOp_1<graph_model/batch_normalization_1/batchnorm/ReadVariableOp_12|
<graph_model/batch_normalization_1/batchnorm/ReadVariableOp_2<graph_model/batch_normalization_1/batchnorm/ReadVariableOp_22?
>graph_model/batch_normalization_1/batchnorm/mul/ReadVariableOp>graph_model/batch_normalization_1/batchnorm/mul/ReadVariableOp2x
:graph_model/batch_normalization_2/batchnorm/ReadVariableOp:graph_model/batch_normalization_2/batchnorm/ReadVariableOp2|
<graph_model/batch_normalization_2/batchnorm/ReadVariableOp_1<graph_model/batch_normalization_2/batchnorm/ReadVariableOp_12|
<graph_model/batch_normalization_2/batchnorm/ReadVariableOp_2<graph_model/batch_normalization_2/batchnorm/ReadVariableOp_22?
>graph_model/batch_normalization_2/batchnorm/mul/ReadVariableOp>graph_model/batch_normalization_2/batchnorm/mul/ReadVariableOp2Z
+graph_model/bond_embedding/embedding_lookup+graph_model/bond_embedding/embedding_lookup2p
6graph_model/graph_fingerprint/xw_plus_b/ReadVariableOp6graph_model/graph_fingerprint/xw_plus_b/ReadVariableOp2t
8graph_model/graph_fingerprint/xw_plus_b/ReadVariableOp_18graph_model/graph_fingerprint/xw_plus_b/ReadVariableOp_12t
8graph_model/graph_fingerprint/xw_plus_b_1/ReadVariableOp8graph_model/graph_fingerprint/xw_plus_b_1/ReadVariableOp2x
:graph_model/graph_fingerprint/xw_plus_b_1/ReadVariableOp_1:graph_model/graph_fingerprint/xw_plus_b_1/ReadVariableOp_12t
8graph_model/graph_fingerprint/xw_plus_b_2/ReadVariableOp8graph_model/graph_fingerprint/xw_plus_b_2/ReadVariableOp2x
:graph_model/graph_fingerprint/xw_plus_b_2/ReadVariableOp_1:graph_model/graph_fingerprint/xw_plus_b_2/ReadVariableOp_12X
*graph_model/gru_step/MatMul/ReadVariableOp*graph_model/gru_step/MatMul/ReadVariableOp2\
,graph_model/gru_step/MatMul_1/ReadVariableOp,graph_model/gru_step/MatMul_1/ReadVariableOp2^
-graph_model/gru_step/MatMul_10/ReadVariableOp-graph_model/gru_step/MatMul_10/ReadVariableOp2^
-graph_model/gru_step/MatMul_11/ReadVariableOp-graph_model/gru_step/MatMul_11/ReadVariableOp2^
-graph_model/gru_step/MatMul_12/ReadVariableOp-graph_model/gru_step/MatMul_12/ReadVariableOp2^
-graph_model/gru_step/MatMul_13/ReadVariableOp-graph_model/gru_step/MatMul_13/ReadVariableOp2^
-graph_model/gru_step/MatMul_14/ReadVariableOp-graph_model/gru_step/MatMul_14/ReadVariableOp2^
-graph_model/gru_step/MatMul_15/ReadVariableOp-graph_model/gru_step/MatMul_15/ReadVariableOp2^
-graph_model/gru_step/MatMul_16/ReadVariableOp-graph_model/gru_step/MatMul_16/ReadVariableOp2^
-graph_model/gru_step/MatMul_17/ReadVariableOp-graph_model/gru_step/MatMul_17/ReadVariableOp2\
,graph_model/gru_step/MatMul_2/ReadVariableOp,graph_model/gru_step/MatMul_2/ReadVariableOp2\
,graph_model/gru_step/MatMul_3/ReadVariableOp,graph_model/gru_step/MatMul_3/ReadVariableOp2\
,graph_model/gru_step/MatMul_4/ReadVariableOp,graph_model/gru_step/MatMul_4/ReadVariableOp2\
,graph_model/gru_step/MatMul_5/ReadVariableOp,graph_model/gru_step/MatMul_5/ReadVariableOp2\
,graph_model/gru_step/MatMul_6/ReadVariableOp,graph_model/gru_step/MatMul_6/ReadVariableOp2\
,graph_model/gru_step/MatMul_7/ReadVariableOp,graph_model/gru_step/MatMul_7/ReadVariableOp2\
,graph_model/gru_step/MatMul_8/ReadVariableOp,graph_model/gru_step/MatMul_8/ReadVariableOp2\
,graph_model/gru_step/MatMul_9/ReadVariableOp,graph_model/gru_step/MatMul_9/ReadVariableOp2J
#graph_model/gru_step/ReadVariableOp#graph_model/gru_step/ReadVariableOp2N
%graph_model/gru_step/ReadVariableOp_1%graph_model/gru_step/ReadVariableOp_12N
%graph_model/gru_step/ReadVariableOp_2%graph_model/gru_step/ReadVariableOp_22N
%graph_model/gru_step/ReadVariableOp_3%graph_model/gru_step/ReadVariableOp_32N
%graph_model/gru_step/ReadVariableOp_4%graph_model/gru_step/ReadVariableOp_42N
%graph_model/gru_step/ReadVariableOp_5%graph_model/gru_step/ReadVariableOp_52N
%graph_model/gru_step/ReadVariableOp_6%graph_model/gru_step/ReadVariableOp_62N
%graph_model/gru_step/ReadVariableOp_7%graph_model/gru_step/ReadVariableOp_72N
%graph_model/gru_step/ReadVariableOp_8%graph_model/gru_step/ReadVariableOp_82R
'graph_model/mfp1/BiasAdd/ReadVariableOp'graph_model/mfp1/BiasAdd/ReadVariableOp2P
&graph_model/mfp1/MatMul/ReadVariableOp&graph_model/mfp1/MatMul/ReadVariableOp2R
'graph_model/mfp2/BiasAdd/ReadVariableOp'graph_model/mfp2/BiasAdd/ReadVariableOp2P
&graph_model/mfp2/MatMul/ReadVariableOp&graph_model/mfp2/MatMul/ReadVariableOp2R
'graph_model/mfp3/BiasAdd/ReadVariableOp'graph_model/mfp3/BiasAdd/ReadVariableOp2P
&graph_model/mfp3/MatMul/ReadVariableOp&graph_model/mfp3/MatMul/ReadVariableOp2V
)graph_model/output/BiasAdd/ReadVariableOp)graph_model/output/BiasAdd/ReadVariableOp2T
(graph_model/output/MatMul/ReadVariableOp(graph_model/output/MatMul/ReadVariableOp:[ W
'
_output_shapes
:?????????
,
_user_specified_namenode_graph_indices:MI
'
_output_shapes
:?????????

_user_specified_nameatom:MI
'
_output_shapes
:?????????

_user_specified_namebond:UQ
'
_output_shapes
:?????????
&
_user_specified_nameconnectivity
?
?
+__inference_graph_model_layer_call_fn_66136
inputs_0
inputs_1
inputs_2
inputs_3
unknown:?  
	unknown_0:	? 
	unknown_1:`
	unknown_2: `
	unknown_3: `
	unknown_4:	@?
	unknown_5:	?
	unknown_6:	@?
	unknown_7:	?
	unknown_8:	?
	unknown_9:	?

unknown_10:	?

unknown_11:	?

unknown_12:	? 

unknown_13: 

unknown_14: 

unknown_15: 

unknown_16: 

unknown_17: 

unknown_18:	 ?

unknown_19:	?

unknown_20:	?

unknown_21:	?

unknown_22:	?

unknown_23:	?

unknown_24:	?

unknown_25:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2inputs_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*=
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_graph_model_layer_call_and_return_conditional_losses_651102
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/3
?
?
$__inference_mfp2_layer_call_fn_68341

inputs
unknown:	? 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_mfp2_layer_call_and_return_conditional_losses_650522
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
5
atom-
serving_default_atom:0?????????
5
bond-
serving_default_bond:0?????????
E
connectivity5
serving_default_connectivity:0?????????
Q
node_graph_indices;
$serving_default_node_graph_indices:0?????????:
output0
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
??
layer-0
layer-1
layer-2
layer_with_weights-0
layer-3
layer_with_weights-1
layer-4
layer-5
layer-6
layer_with_weights-2
layer-7
	layer-8

layer_with_weights-3

layer-9
layer_with_weights-4
layer-10
layer_with_weights-5
layer-11
layer_with_weights-6
layer-12
layer_with_weights-7
layer-13
layer_with_weights-8
layer-14
layer_with_weights-9
layer-15
layer_with_weights-10
layer-16
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
?_default_save_signature
?__call__
+?&call_and_return_all_conditional_losses"??
_tf_keras_networkѠ{"name": "graph_model", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "GraphModel", "config": {"name": "graph_model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "atom"}, "name": "atom", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "bond"}, "name": "bond", "inbound_nodes": []}, {"class_name": "Squeeze", "config": {"name": "squeeze", "trainable": true, "dtype": "float32"}, "name": "squeeze", "inbound_nodes": [[["node_graph_indices", 0, 0, {}]], [["atom", 0, 0, {}]], [["bond", 0, 0, {}]]]}, {"class_name": "Embedding", "config": {"name": "atom_embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 1845, "output_dim": 32, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "name": "atom_embedding", "inbound_nodes": [[["squeeze", 1, 0, {}]]]}, {"class_name": "Embedding2D", "config": {"name": "bond_embedding", "trainable": true, "dtype": "float32", "input_dim": 1806, "output_dim": 32, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "embeddings_constraint": null}, "name": "bond_embedding", "inbound_nodes": [[["squeeze", 2, 0, {}]]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 2]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "connectivity"}, "name": "connectivity", "inbound_nodes": []}, {"class_name": "MessageLayer", "config": {"name": "message_layer", "trainable": true, "dtype": "float32", "dropout": 0.1, "reducer": "sum"}, "name": "message_layer", "inbound_nodes": [[["atom_embedding", 0, 0, {}], ["bond_embedding", 0, 0, {}], ["connectivity", 0, 0, {}]], [["gru_step", 0, 0, {}], ["bond_embedding", 0, 0, {}], ["connectivity", 0, 0, {}]], [["gru_step", 1, 0, {}], ["bond_embedding", 0, 0, {}], ["connectivity", 0, 0, {}]], [["gru_step", 2, 0, {}], ["bond_embedding", 0, 0, {}], ["connectivity", 0, 0, {}]], [["gru_step", 3, 0, {}], ["bond_embedding", 0, 0, {}], ["connectivity", 0, 0, {}]], [["gru_step", 4, 0, {}], ["bond_embedding", 0, 0, {}], ["connectivity", 0, 0, {}]], [["gru_step", 5, 0, {}], ["bond_embedding", 0, 0, {}], ["connectivity", 0, 0, {}]], [["gru_step", 6, 0, {}], ["bond_embedding", 0, 0, {}], ["connectivity", 0, 0, {}]], [["gru_step", 7, 0, {}], ["bond_embedding", 0, 0, {}], ["connectivity", 0, 0, {}]]]}, {"class_name": "GRUStep", "config": {"name": "gru_step", "trainable": true, "dtype": "float32", "units": 32, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": true}, "name": "gru_step", "inbound_nodes": [[["message_layer", 0, 0, {}], ["atom_embedding", 0, 0, {}]], [["message_layer", 1, 0, {}], ["gru_step", 0, 0, {}]], [["message_layer", 2, 0, {}], ["gru_step", 1, 0, {}]], [["message_layer", 3, 0, {}], ["gru_step", 2, 0, {}]], [["message_layer", 4, 0, {}], ["gru_step", 3, 0, {}]], [["message_layer", 5, 0, {}], ["gru_step", 4, 0, {}]], [["message_layer", 6, 0, {}], ["gru_step", 5, 0, {}]], [["message_layer", 7, 0, {}], ["gru_step", 6, 0, {}]], [["message_layer", 8, 0, {}], ["gru_step", 7, 0, {}]]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "node_graph_indices"}, "name": "node_graph_indices", "inbound_nodes": []}, {"class_name": "Set2Set", "config": {"name": "graph_fingerprint", "trainable": true, "dtype": "float32", "m": 3, "init": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "__passive_serialization__": true}}, "name": "graph_fingerprint", "inbound_nodes": [[["gru_step", 8, 0, {}], ["squeeze", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "mfp1", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "mfp1", "inbound_nodes": [[["graph_fingerprint", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.9, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization", "inbound_nodes": [[["mfp1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "mfp2", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "mfp2", "inbound_nodes": [[["batch_normalization", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_1", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.9, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_1", "inbound_nodes": [[["mfp2", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "mfp3", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "mfp3", "inbound_nodes": [[["batch_normalization_1", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_2", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.9, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_2", "inbound_nodes": [[["mfp3", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "output", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "output", "inbound_nodes": [[["batch_normalization_2", 0, 0, {}]]]}], "input_layers": [["node_graph_indices", 0, 0], ["atom", 0, 0], ["bond", 0, 0], ["connectivity", 0, 0]], "output_layers": [["output", 0, 0]]}, "shared_object_id": 43, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 1]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 1]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 1]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 2]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": [{"class_name": "TensorShape", "items": [null, 1]}, {"class_name": "TensorShape", "items": [null, 1]}, {"class_name": "TensorShape", "items": [null, 1]}, {"class_name": "TensorShape", "items": [null, 2]}], "is_graph_network": true, "save_spec": [{"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 1]}, "int32", "node_graph_indices"]}, {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 1]}, "int32", "atom"]}, {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 1]}, "int32", "bond"]}, {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 2]}, "int32", "connectivity"]}], "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "GraphModel", "config": {"name": "graph_model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "atom"}, "name": "atom", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "bond"}, "name": "bond", "inbound_nodes": [], "shared_object_id": 1}, {"class_name": "Squeeze", "config": {"name": "squeeze", "trainable": true, "dtype": "float32"}, "name": "squeeze", "inbound_nodes": [[["node_graph_indices", 0, 0, {}]], [["atom", 0, 0, {}]], [["bond", 0, 0, {}]]], "shared_object_id": 2}, {"class_name": "Embedding", "config": {"name": "atom_embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 1845, "output_dim": 32, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}, "shared_object_id": 3}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "name": "atom_embedding", "inbound_nodes": [[["squeeze", 1, 0, {}]]], "shared_object_id": 4}, {"class_name": "Embedding2D", "config": {"name": "bond_embedding", "trainable": true, "dtype": "float32", "input_dim": 1806, "output_dim": 32, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}, "shared_object_id": 5}, "embeddings_regularizer": null, "embeddings_constraint": null}, "name": "bond_embedding", "inbound_nodes": [[["squeeze", 2, 0, {}]]], "shared_object_id": 6}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 2]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "connectivity"}, "name": "connectivity", "inbound_nodes": [], "shared_object_id": 7}, {"class_name": "MessageLayer", "config": {"name": "message_layer", "trainable": true, "dtype": "float32", "dropout": 0.1, "reducer": "sum"}, "name": "message_layer", "inbound_nodes": [[["atom_embedding", 0, 0, {}], ["bond_embedding", 0, 0, {}], ["connectivity", 0, 0, {}]], [["gru_step", 0, 0, {}], ["bond_embedding", 0, 0, {}], ["connectivity", 0, 0, {}]], [["gru_step", 1, 0, {}], ["bond_embedding", 0, 0, {}], ["connectivity", 0, 0, {}]], [["gru_step", 2, 0, {}], ["bond_embedding", 0, 0, {}], ["connectivity", 0, 0, {}]], [["gru_step", 3, 0, {}], ["bond_embedding", 0, 0, {}], ["connectivity", 0, 0, {}]], [["gru_step", 4, 0, {}], ["bond_embedding", 0, 0, {}], ["connectivity", 0, 0, {}]], [["gru_step", 5, 0, {}], ["bond_embedding", 0, 0, {}], ["connectivity", 0, 0, {}]], [["gru_step", 6, 0, {}], ["bond_embedding", 0, 0, {}], ["connectivity", 0, 0, {}]], [["gru_step", 7, 0, {}], ["bond_embedding", 0, 0, {}], ["connectivity", 0, 0, {}]]], "shared_object_id": 8}, {"class_name": "GRUStep", "config": {"name": "gru_step", "trainable": true, "dtype": "float32", "units": 32, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": true}, "name": "gru_step", "inbound_nodes": [[["message_layer", 0, 0, {}], ["atom_embedding", 0, 0, {}]], [["message_layer", 1, 0, {}], ["gru_step", 0, 0, {}]], [["message_layer", 2, 0, {}], ["gru_step", 1, 0, {}]], [["message_layer", 3, 0, {}], ["gru_step", 2, 0, {}]], [["message_layer", 4, 0, {}], ["gru_step", 3, 0, {}]], [["message_layer", 5, 0, {}], ["gru_step", 4, 0, {}]], [["message_layer", 6, 0, {}], ["gru_step", 5, 0, {}]], [["message_layer", 7, 0, {}], ["gru_step", 6, 0, {}]], [["message_layer", 8, 0, {}], ["gru_step", 7, 0, {}]]], "shared_object_id": 12}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "node_graph_indices"}, "name": "node_graph_indices", "inbound_nodes": [], "shared_object_id": 13}, {"class_name": "Set2Set", "config": {"name": "graph_fingerprint", "trainable": true, "dtype": "float32", "m": 3, "init": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "__passive_serialization__": true, "shared_object_id": 14}}, "name": "graph_fingerprint", "inbound_nodes": [[["gru_step", 8, 0, {}], ["squeeze", 0, 0, {}]]], "shared_object_id": 15}, {"class_name": "Dense", "config": {"name": "mfp1", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 16}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "mfp1", "inbound_nodes": [[["graph_fingerprint", 0, 0, {}]]], "shared_object_id": 18}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.9, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 19}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 20}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 21}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 22}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization", "inbound_nodes": [[["mfp1", 0, 0, {}]]], "shared_object_id": 23}, {"class_name": "Dense", "config": {"name": "mfp2", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 24}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 25}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "mfp2", "inbound_nodes": [[["batch_normalization", 0, 0, {}]]], "shared_object_id": 26}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_1", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.9, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 27}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 28}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 29}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 30}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_1", "inbound_nodes": [[["mfp2", 0, 0, {}]]], "shared_object_id": 31}, {"class_name": "Dense", "config": {"name": "mfp3", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 32}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 33}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "mfp3", "inbound_nodes": [[["batch_normalization_1", 0, 0, {}]]], "shared_object_id": 34}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_2", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.9, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 35}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 36}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 37}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 38}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_2", "inbound_nodes": [[["mfp3", 0, 0, {}]]], "shared_object_id": 39}, {"class_name": "Dense", "config": {"name": "output", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 40}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 41}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "output", "inbound_nodes": [[["batch_normalization_2", 0, 0, {}]]], "shared_object_id": 42}], "input_layers": [["node_graph_indices", 0, 0], ["atom", 0, 0], ["bond", 0, 0], ["connectivity", 0, 0]], "output_layers": [["output", 0, 0]]}}, "training_config": {"loss": "mse", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "mae", "dtype": "float32", "fn": "mean_absolute_error"}, "shared_object_id": 48}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010158000513911247, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "atom", "dtype": "int32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "atom"}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "bond", "dtype": "int32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "bond"}}
?
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "squeeze", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Squeeze", "config": {"name": "squeeze", "trainable": true, "dtype": "float32"}, "inbound_nodes": [[["node_graph_indices", 0, 0, {}]], [["atom", 0, 0, {}]], [["bond", 0, 0, {}]]], "shared_object_id": 2}
?

embeddings
	variables
trainable_variables
regularization_losses
 	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "atom_embedding", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": false, "class_name": "Embedding", "config": {"name": "atom_embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 1845, "output_dim": 32, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}, "shared_object_id": 3}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "inbound_nodes": [[["squeeze", 1, 0, {}]]], "shared_object_id": 4, "build_input_shape": {"class_name": "TensorShape", "items": [null]}}
?
!bond_embedding_weights
!
embeddings
"	variables
#trainable_variables
$regularization_losses
%	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "bond_embedding", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Embedding2D", "config": {"name": "bond_embedding", "trainable": true, "dtype": "float32", "input_dim": 1806, "output_dim": 32, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}, "shared_object_id": 5}, "embeddings_regularizer": null, "embeddings_constraint": null}, "inbound_nodes": [[["squeeze", 2, 0, {}]]], "shared_object_id": 6, "build_input_shape": {"class_name": "TensorShape", "items": [null]}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "connectivity", "dtype": "int32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 2]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 2]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "connectivity"}}
?

&	variables
'trainable_variables
(regularization_losses
)	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "message_layer", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MessageLayer", "config": {"name": "message_layer", "trainable": true, "dtype": "float32", "dropout": 0.1, "reducer": "sum"}, "inbound_nodes": [[["atom_embedding", 0, 0, {}], ["bond_embedding", 0, 0, {}], ["connectivity", 0, 0, {}]], [["gru_step", 0, 0, {}], ["bond_embedding", 0, 0, {}], ["connectivity", 0, 0, {}]], [["gru_step", 1, 0, {}], ["bond_embedding", 0, 0, {}], ["connectivity", 0, 0, {}]], [["gru_step", 2, 0, {}], ["bond_embedding", 0, 0, {}], ["connectivity", 0, 0, {}]], [["gru_step", 3, 0, {}], ["bond_embedding", 0, 0, {}], ["connectivity", 0, 0, {}]], [["gru_step", 4, 0, {}], ["bond_embedding", 0, 0, {}], ["connectivity", 0, 0, {}]], [["gru_step", 5, 0, {}], ["bond_embedding", 0, 0, {}], ["connectivity", 0, 0, {}]], [["gru_step", 6, 0, {}], ["bond_embedding", 0, 0, {}], ["connectivity", 0, 0, {}]], [["gru_step", 7, 0, {}], ["bond_embedding", 0, 0, {}], ["connectivity", 0, 0, {}]]], "shared_object_id": 8}
?

*kernel
+recurrent_kernel
,bias
-	variables
.trainable_variables
/regularization_losses
0	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "gru_step", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "GRUStep", "config": {"name": "gru_step", "trainable": true, "dtype": "float32", "units": 32, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": true}, "inbound_nodes": [[["message_layer", 0, 0, {}], ["atom_embedding", 0, 0, {}]], [["message_layer", 1, 0, {}], ["gru_step", 0, 0, {}]], [["message_layer", 2, 0, {}], ["gru_step", 1, 0, {}]], [["message_layer", 3, 0, {}], ["gru_step", 2, 0, {}]], [["message_layer", 4, 0, {}], ["gru_step", 3, 0, {}]], [["message_layer", 5, 0, {}], ["gru_step", 4, 0, {}]], [["message_layer", 6, 0, {}], ["gru_step", 5, 0, {}]], [["message_layer", 7, 0, {}], ["gru_step", 6, 0, {}]], [["message_layer", 8, 0, {}], ["gru_step", 7, 0, {}]]], "shared_object_id": 12, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 32]}, {"class_name": "TensorShape", "items": [null, 32]}]}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "node_graph_indices", "dtype": "int32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "node_graph_indices"}}
?
1U
2b
3	variables
4trainable_variables
5regularization_losses
6	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "graph_fingerprint", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Set2Set", "config": {"name": "graph_fingerprint", "trainable": true, "dtype": "float32", "m": 3, "init": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "__passive_serialization__": true, "shared_object_id": 14}}, "inbound_nodes": [[["gru_step", 8, 0, {}], ["squeeze", 0, 0, {}]]], "shared_object_id": 15, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 32]}, {"class_name": "TensorShape", "items": [null]}]}
?	

7kernel
8bias
9	variables
:trainable_variables
;regularization_losses
<	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "mfp1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "mfp1", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 16}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["graph_fingerprint", 0, 0, {}]]], "shared_object_id": 18, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}, "shared_object_id": 49}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
?

=axis
	>gamma
?beta
@moving_mean
Amoving_variance
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?{"name": "batch_normalization", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.9, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 19}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 20}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 21}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 22}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "inbound_nodes": [[["mfp1", 0, 0, {}]]], "shared_object_id": 23, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 256}}, "shared_object_id": 50}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
?	

Fkernel
Gbias
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "mfp2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "mfp2", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 24}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 25}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["batch_normalization", 0, 0, {}]]], "shared_object_id": 26, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}, "shared_object_id": 51}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
?

Laxis
	Mgamma
Nbeta
Omoving_mean
Pmoving_variance
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?{"name": "batch_normalization_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_1", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.9, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 27}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 28}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 29}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 30}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "inbound_nodes": [[["mfp2", 0, 0, {}]]], "shared_object_id": 31, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 32}}, "shared_object_id": 52}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
?	

Ukernel
Vbias
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "mfp3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "mfp3", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 32}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 33}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["batch_normalization_1", 0, 0, {}]]], "shared_object_id": 34, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}, "shared_object_id": 53}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
?

[axis
	\gamma
]beta
^moving_mean
_moving_variance
`	variables
atrainable_variables
bregularization_losses
c	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?{"name": "batch_normalization_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_2", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.9, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 35}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 36}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 37}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 38}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "inbound_nodes": [[["mfp3", 0, 0, {}]]], "shared_object_id": 39, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 256}}, "shared_object_id": 54}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
?	

dkernel
ebias
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "output", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "output", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 40}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 41}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["batch_normalization_2", 0, 0, {}]]], "shared_object_id": 42, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}, "shared_object_id": 55}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
?
jiter

kbeta_1

lbeta_2
	mdecay
nlearning_ratem?!m?*m?+m?,m?1m?2m?7m?8m?>m??m?Fm?Gm?Mm?Nm?Um?Vm?\m?]m?dm?em?v?!v?*v?+v?,v?1v?2v?7v?8v?>v??v?Fv?Gv?Mv?Nv?Uv?Vv?\v?]v?dv?ev?"
	optimizer
?
0
!1
*2
+3
,4
15
26
77
88
>9
?10
@11
A12
F13
G14
M15
N16
O17
P18
U19
V20
\21
]22
^23
_24
d25
e26"
trackable_list_wrapper
?
0
!1
*2
+3
,4
15
26
77
88
>9
?10
F11
G12
M13
N14
U15
V16
\17
]18
d19
e20"
trackable_list_wrapper
 "
trackable_list_wrapper
?

olayers
pmetrics
qnon_trainable_variables
rlayer_metrics
	variables
trainable_variables
regularization_losses
slayer_regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

tlayers
ulayer_metrics
vmetrics
wnon_trainable_variables
	variables
trainable_variables
regularization_losses
xlayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
,:*	? 2atom_embedding/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?

ylayers
zlayer_metrics
{metrics
|non_trainable_variables
	variables
trainable_variables
regularization_losses
}layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
<::?  2%bond_embedding/bond_embedding_weights
'
!0"
trackable_list_wrapper
'
!0"
trackable_list_wrapper
 "
trackable_list_wrapper
?

~layers
layer_metrics
?metrics
?non_trainable_variables
"	variables
#trainable_variables
$regularization_losses
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
?metrics
?non_trainable_variables
&	variables
'trainable_variables
(regularization_losses
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!: `2gru_step/kernel
+:) `2gru_step/recurrent_kernel
:`2gru_step/bias
5
*0
+1
,2"
trackable_list_wrapper
5
*0
+1
,2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
?metrics
?non_trainable_variables
-	variables
.trainable_variables
/regularization_losses
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
&:$	@?2graph_fingerprint/U
": ?2graph_fingerprint/b
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
?metrics
?non_trainable_variables
3	variables
4trainable_variables
5regularization_losses
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	@?2mfp1/kernel
:?2	mfp1/bias
.
70
81"
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
?metrics
?non_trainable_variables
9	variables
:trainable_variables
;regularization_losses
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
(:&?2batch_normalization/gamma
':%?2batch_normalization/beta
0:.? (2batch_normalization/moving_mean
4:2? (2#batch_normalization/moving_variance
<
>0
?1
@2
A3"
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
?metrics
?non_trainable_variables
B	variables
Ctrainable_variables
Dregularization_losses
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	? 2mfp2/kernel
: 2	mfp2/bias
.
F0
G1"
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
?metrics
?non_trainable_variables
H	variables
Itrainable_variables
Jregularization_losses
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
):' 2batch_normalization_1/gamma
(:& 2batch_normalization_1/beta
1:/  (2!batch_normalization_1/moving_mean
5:3  (2%batch_normalization_1/moving_variance
<
M0
N1
O2
P3"
trackable_list_wrapper
.
M0
N1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
?metrics
?non_trainable_variables
Q	variables
Rtrainable_variables
Sregularization_losses
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 ?2mfp3/kernel
:?2	mfp3/bias
.
U0
V1"
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
?metrics
?non_trainable_variables
W	variables
Xtrainable_variables
Yregularization_losses
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(?2batch_normalization_2/gamma
):'?2batch_normalization_2/beta
2:0? (2!batch_normalization_2/moving_mean
6:4? (2%batch_normalization_2/moving_variance
<
\0
]1
^2
_3"
trackable_list_wrapper
.
\0
]1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
?metrics
?non_trainable_variables
`	variables
atrainable_variables
bregularization_losses
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :	?2output/kernel
:2output/bias
.
d0
e1"
trackable_list_wrapper
.
d0
e1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
?metrics
?non_trainable_variables
f	variables
gtrainable_variables
hregularization_losses
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
J
@0
A1
O2
P3
^4
_5"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
^0
_1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 56}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "mae", "dtype": "float32", "config": {"name": "mae", "dtype": "float32", "fn": "mean_absolute_error"}, "shared_object_id": 48}
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
1:/	? 2 Adam/atom_embedding/embeddings/m
A:??  2,Adam/bond_embedding/bond_embedding_weights/m
&:$ `2Adam/gru_step/kernel/m
0:. `2 Adam/gru_step/recurrent_kernel/m
$:"`2Adam/gru_step/bias/m
+:)	@?2Adam/graph_fingerprint/U/m
':%?2Adam/graph_fingerprint/b/m
#:!	@?2Adam/mfp1/kernel/m
:?2Adam/mfp1/bias/m
-:+?2 Adam/batch_normalization/gamma/m
,:*?2Adam/batch_normalization/beta/m
#:!	? 2Adam/mfp2/kernel/m
: 2Adam/mfp2/bias/m
.:, 2"Adam/batch_normalization_1/gamma/m
-:+ 2!Adam/batch_normalization_1/beta/m
#:!	 ?2Adam/mfp3/kernel/m
:?2Adam/mfp3/bias/m
/:-?2"Adam/batch_normalization_2/gamma/m
.:,?2!Adam/batch_normalization_2/beta/m
%:#	?2Adam/output/kernel/m
:2Adam/output/bias/m
1:/	? 2 Adam/atom_embedding/embeddings/v
A:??  2,Adam/bond_embedding/bond_embedding_weights/v
&:$ `2Adam/gru_step/kernel/v
0:. `2 Adam/gru_step/recurrent_kernel/v
$:"`2Adam/gru_step/bias/v
+:)	@?2Adam/graph_fingerprint/U/v
':%?2Adam/graph_fingerprint/b/v
#:!	@?2Adam/mfp1/kernel/v
:?2Adam/mfp1/bias/v
-:+?2 Adam/batch_normalization/gamma/v
,:*?2Adam/batch_normalization/beta/v
#:!	? 2Adam/mfp2/kernel/v
: 2Adam/mfp2/bias/v
.:, 2"Adam/batch_normalization_1/gamma/v
-:+ 2!Adam/batch_normalization_1/beta/v
#:!	 ?2Adam/mfp3/kernel/v
:?2Adam/mfp3/bias/v
/:-?2"Adam/batch_normalization_2/gamma/v
.:,?2!Adam/batch_normalization_2/beta/v
%:#	?2Adam/output/kernel/v
:2Adam/output/bias/v
?2?
 __inference__wrapped_model_64195?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *???
???
,?)
node_graph_indices?????????
?
atom?????????
?
bond?????????
&?#
connectivity?????????
?2?
+__inference_graph_model_layer_call_fn_65167
+__inference_graph_model_layer_call_fn_66136
+__inference_graph_model_layer_call_fn_66198
+__inference_graph_model_layer_call_fn_65772?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_graph_model_layer_call_and_return_conditional_losses_66939
F__inference_graph_model_layer_call_and_return_conditional_losses_67722
F__inference_graph_model_layer_call_and_return_conditional_losses_65888
F__inference_graph_model_layer_call_and_return_conditional_losses_66004?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
'__inference_squeeze_layer_call_fn_67727?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_squeeze_layer_call_and_return_conditional_losses_67732?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
.__inference_atom_embedding_layer_call_fn_67739?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_atom_embedding_layer_call_and_return_conditional_losses_67748?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
.__inference_bond_embedding_layer_call_fn_67755?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_bond_embedding_layer_call_and_return_conditional_losses_67764?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
-__inference_message_layer_layer_call_fn_67771
-__inference_message_layer_layer_call_fn_67778?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
H__inference_message_layer_layer_call_and_return_conditional_losses_67808
H__inference_message_layer_layer_call_and_return_conditional_losses_67838?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_gru_step_layer_call_fn_67850?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_gru_step_layer_call_and_return_conditional_losses_67888?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
1__inference_graph_fingerprint_layer_call_fn_67898
1__inference_graph_fingerprint_layer_call_fn_67908?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
L__inference_graph_fingerprint_layer_call_and_return_conditional_losses_68070
L__inference_graph_fingerprint_layer_call_and_return_conditional_losses_68232?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
$__inference_mfp1_layer_call_fn_68241?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
?__inference_mfp1_layer_call_and_return_conditional_losses_68252?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
3__inference_batch_normalization_layer_call_fn_68265
3__inference_batch_normalization_layer_call_fn_68278?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_68298
N__inference_batch_normalization_layer_call_and_return_conditional_losses_68332?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
$__inference_mfp2_layer_call_fn_68341?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
?__inference_mfp2_layer_call_and_return_conditional_losses_68352?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
5__inference_batch_normalization_1_layer_call_fn_68365
5__inference_batch_normalization_1_layer_call_fn_68378?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_68398
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_68432?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
$__inference_mfp3_layer_call_fn_68441?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
?__inference_mfp3_layer_call_and_return_conditional_losses_68452?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
5__inference_batch_normalization_2_layer_call_fn_68465
5__inference_batch_normalization_2_layer_call_fn_68478?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_68498
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_68532?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
&__inference_output_layer_call_fn_68541?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_output_layer_call_and_return_conditional_losses_68551?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
#__inference_signature_wrapper_66074atombondconnectivitynode_graph_indices"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
 __inference__wrapped_model_64195?!,*+1278A>@?FGPMONUV_\^]de???
???
???
,?)
node_graph_indices?????????
?
atom?????????
?
bond?????????
&?#
connectivity?????????
? "/?,
*
output ?
output??????????
I__inference_atom_embedding_layer_call_and_return_conditional_losses_67748W+?(
!?
?
inputs?????????
? "%?"
?
0????????? 
? |
.__inference_atom_embedding_layer_call_fn_67739J+?(
!?
?
inputs?????????
? "?????????? ?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_68398bPMON3?0
)?&
 ?
inputs????????? 
p 
? "%?"
?
0????????? 
? ?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_68432bOPMN3?0
)?&
 ?
inputs????????? 
p
? "%?"
?
0????????? 
? ?
5__inference_batch_normalization_1_layer_call_fn_68365UPMON3?0
)?&
 ?
inputs????????? 
p 
? "?????????? ?
5__inference_batch_normalization_1_layer_call_fn_68378UOPMN3?0
)?&
 ?
inputs????????? 
p
? "?????????? ?
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_68498d_\^]4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_68532d^_\]4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
5__inference_batch_normalization_2_layer_call_fn_68465W_\^]4?1
*?'
!?
inputs??????????
p 
? "????????????
5__inference_batch_normalization_2_layer_call_fn_68478W^_\]4?1
*?'
!?
inputs??????????
p
? "????????????
N__inference_batch_normalization_layer_call_and_return_conditional_losses_68298dA>@?4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_68332d@A>?4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
3__inference_batch_normalization_layer_call_fn_68265WA>@?4?1
*?'
!?
inputs??????????
p 
? "????????????
3__inference_batch_normalization_layer_call_fn_68278W@A>?4?1
*?'
!?
inputs??????????
p
? "????????????
I__inference_bond_embedding_layer_call_and_return_conditional_losses_67764[!+?(
!?
?
inputs?????????
? ")?&
?
0?????????  
? ?
.__inference_bond_embedding_layer_call_fn_67755N!+?(
!?
?
inputs?????????
? "??????????  ?
L__inference_graph_fingerprint_layer_call_and_return_conditional_losses_68070?12f?c
L?I
G?D
"?
inputs/0????????? 
?
inputs/1?????????
?

trainingp "%?"
?
0?????????@
? ?
L__inference_graph_fingerprint_layer_call_and_return_conditional_losses_68232?12f?c
L?I
G?D
"?
inputs/0????????? 
?
inputs/1?????????
?

trainingp"%?"
?
0?????????@
? ?
1__inference_graph_fingerprint_layer_call_fn_67898?12f?c
L?I
G?D
"?
inputs/0????????? 
?
inputs/1?????????
?

trainingp "??????????@?
1__inference_graph_fingerprint_layer_call_fn_67908?12f?c
L?I
G?D
"?
inputs/0????????? 
?
inputs/1?????????
?

trainingp"??????????@?
F__inference_graph_model_layer_call_and_return_conditional_losses_65888?!,*+1278A>@?FGPMONUV_\^]de???
???
???
,?)
node_graph_indices?????????
?
atom?????????
?
bond?????????
&?#
connectivity?????????
p 

 
? "%?"
?
0?????????
? ?
F__inference_graph_model_layer_call_and_return_conditional_losses_66004?!,*+1278@A>?FGOPMNUV^_\]de???
???
???
,?)
node_graph_indices?????????
?
atom?????????
?
bond?????????
&?#
connectivity?????????
p

 
? "%?"
?
0?????????
? ?
F__inference_graph_model_layer_call_and_return_conditional_losses_66939?!,*+1278A>@?FGPMONUV_\^]de???
???
???
"?
inputs/0?????????
"?
inputs/1?????????
"?
inputs/2?????????
"?
inputs/3?????????
p 

 
? "%?"
?
0?????????
? ?
F__inference_graph_model_layer_call_and_return_conditional_losses_67722?!,*+1278@A>?FGOPMNUV^_\]de???
???
???
"?
inputs/0?????????
"?
inputs/1?????????
"?
inputs/2?????????
"?
inputs/3?????????
p

 
? "%?"
?
0?????????
? ?
+__inference_graph_model_layer_call_fn_65167?!,*+1278A>@?FGPMONUV_\^]de???
???
???
,?)
node_graph_indices?????????
?
atom?????????
?
bond?????????
&?#
connectivity?????????
p 

 
? "???????????
+__inference_graph_model_layer_call_fn_65772?!,*+1278@A>?FGOPMNUV^_\]de???
???
???
,?)
node_graph_indices?????????
?
atom?????????
?
bond?????????
&?#
connectivity?????????
p

 
? "???????????
+__inference_graph_model_layer_call_fn_66136?!,*+1278A>@?FGPMONUV_\^]de???
???
???
"?
inputs/0?????????
"?
inputs/1?????????
"?
inputs/2?????????
"?
inputs/3?????????
p 

 
? "???????????
+__inference_graph_model_layer_call_fn_66198?!,*+1278@A>?FGOPMNUV^_\]de???
???
???
"?
inputs/0?????????
"?
inputs/1?????????
"?
inputs/2?????????
"?
inputs/3?????????
p

 
? "???????????
C__inference_gru_step_layer_call_and_return_conditional_losses_67888?,*+Z?W
P?M
K?H
"?
inputs/0????????? 
"?
inputs/1????????? 
? "%?"
?
0????????? 
? ?
(__inference_gru_step_layer_call_fn_67850{,*+Z?W
P?M
K?H
"?
inputs/0????????? 
"?
inputs/1????????? 
? "?????????? ?
H__inference_message_layer_layer_call_and_return_conditional_losses_67808????
|?y
s?p
"?
inputs/0????????? 
&?#
inputs/1?????????  
"?
inputs/2?????????
p 
? "%?"
?
0????????? 
? ?
H__inference_message_layer_layer_call_and_return_conditional_losses_67838????
|?y
s?p
"?
inputs/0????????? 
&?#
inputs/1?????????  
"?
inputs/2?????????
p
? "%?"
?
0????????? 
? ?
-__inference_message_layer_layer_call_fn_67771????
|?y
s?p
"?
inputs/0????????? 
&?#
inputs/1?????????  
"?
inputs/2?????????
p 
? "?????????? ?
-__inference_message_layer_layer_call_fn_67778????
|?y
s?p
"?
inputs/0????????? 
&?#
inputs/1?????????  
"?
inputs/2?????????
p
? "?????????? ?
?__inference_mfp1_layer_call_and_return_conditional_losses_68252]78/?,
%?"
 ?
inputs?????????@
? "&?#
?
0??????????
? x
$__inference_mfp1_layer_call_fn_68241P78/?,
%?"
 ?
inputs?????????@
? "????????????
?__inference_mfp2_layer_call_and_return_conditional_losses_68352]FG0?-
&?#
!?
inputs??????????
? "%?"
?
0????????? 
? x
$__inference_mfp2_layer_call_fn_68341PFG0?-
&?#
!?
inputs??????????
? "?????????? ?
?__inference_mfp3_layer_call_and_return_conditional_losses_68452]UV/?,
%?"
 ?
inputs????????? 
? "&?#
?
0??????????
? x
$__inference_mfp3_layer_call_fn_68441PUV/?,
%?"
 ?
inputs????????? 
? "????????????
A__inference_output_layer_call_and_return_conditional_losses_68551]de0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? z
&__inference_output_layer_call_fn_68541Pde0?-
&?#
!?
inputs??????????
? "???????????
#__inference_signature_wrapper_66074?!,*+1278A>@?FGPMONUV_\^]de???
? 
???
&
atom?
atom?????????
&
bond?
bond?????????
6
connectivity&?#
connectivity?????????
B
node_graph_indices,?)
node_graph_indices?????????"/?,
*
output ?
output??????????
B__inference_squeeze_layer_call_and_return_conditional_losses_67732T/?,
%?"
 ?
inputs?????????
? "!?
?
0?????????
? r
'__inference_squeeze_layer_call_fn_67727G/?,
%?"
 ?
inputs?????????
? "??????????