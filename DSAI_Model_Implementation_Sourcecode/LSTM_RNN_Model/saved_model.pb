еи.
╘Ш
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
│
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
┴
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
executor_typestring Ии
Ъ
StatelessWhile

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint

@
StaticRegexFullMatch	
input

output
"
patternstring
ў
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
-
Tanh
x"T
y"T"
Ttype:

2
░
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleКщшelement_dtype"
element_dtypetype"

shape_typetype:
2	
Я
TensorListReserve
element_shape"
shape_type
num_elements(
handleКщшelement_dtype"
element_dtypetype"

shape_typetype:
2	
И
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint         
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.10.0-dev202204172v1.12.1-74138-g74f728173a68┤ч,
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
l
SGD/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameSGD/momentum
e
 SGD/momentum/Read/ReadVariableOpReadVariableOpSGD/momentum*
_output_shapes
: *
dtype0
v
SGD/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameSGD/learning_rate
o
%SGD/learning_rate/Read/ReadVariableOpReadVariableOpSGD/learning_rate*
_output_shapes
: *
dtype0
f
	SGD/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	SGD/decay
_
SGD/decay/Read/ReadVariableOpReadVariableOp	SGD/decay*
_output_shapes
: *
dtype0
d
SGD/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
SGD/iter
]
SGD/iter/Read/ReadVariableOpReadVariableOpSGD/iter*
_output_shapes
: *
dtype0	
Й
lstm_4/lstm_cell_24/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Р*)
shared_namelstm_4/lstm_cell_24/bias
В
,lstm_4/lstm_cell_24/bias/Read/ReadVariableOpReadVariableOplstm_4/lstm_cell_24/bias*
_output_shapes	
:Р*
dtype0
е
$lstm_4/lstm_cell_24/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dР*5
shared_name&$lstm_4/lstm_cell_24/recurrent_kernel
Ю
8lstm_4/lstm_cell_24/recurrent_kernel/Read/ReadVariableOpReadVariableOp$lstm_4/lstm_cell_24/recurrent_kernel*
_output_shapes
:	dР*
dtype0
С
lstm_4/lstm_cell_24/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
Р*+
shared_namelstm_4/lstm_cell_24/kernel
К
.lstm_4/lstm_cell_24/kernel/Read/ReadVariableOpReadVariableOplstm_4/lstm_cell_24/kernel*
_output_shapes
:	
Р*
dtype0
r
dense_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_14/bias
k
!dense_14/bias/Read/ReadVariableOpReadVariableOpdense_14/bias*
_output_shapes
:*
dtype0
z
dense_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_14/kernel
s
#dense_14/kernel/Read/ReadVariableOpReadVariableOpdense_14/kernel*
_output_shapes

:*
dtype0
r
dense_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_13/bias
k
!dense_13/bias/Read/ReadVariableOpReadVariableOpdense_13/bias*
_output_shapes
:*
dtype0
z
dense_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_13/kernel
s
#dense_13/kernel/Read/ReadVariableOpReadVariableOpdense_13/kernel*
_output_shapes

:*
dtype0
r
dense_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_12/bias
k
!dense_12/bias/Read/ReadVariableOpReadVariableOpdense_12/bias*
_output_shapes
:*
dtype0
z
dense_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d* 
shared_namedense_12/kernel
s
#dense_12/kernel/Read/ReadVariableOpReadVariableOpdense_12/kernel*
_output_shapes

:d*
dtype0

NoOpNoOp
║.
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ї-
valueы-Bш- Bс-
ш
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
┴
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec*
ж
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
ж
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses

%kernel
&bias*
ж
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses

-kernel
.bias*
C
/0
01
12
3
4
%5
&6
-7
.8*
C
/0
01
12
3
4
%5
&6
-7
.8*
* 
░
2non_trainable_variables

3layers
4metrics
5layer_regularization_losses
6layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses*
6
7trace_0
8trace_1
9trace_2
:trace_3* 
6
;trace_0
<trace_1
=trace_2
>trace_3* 
* 
:
?iter
	@decay
Alearning_rate
Bmomentum*

Cserving_default* 

/0
01
12*

/0
01
12*
* 
Я

Dstates
Enon_trainable_variables

Flayers
Gmetrics
Hlayer_regularization_losses
Ilayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Jtrace_0
Ktrace_1
Ltrace_2
Mtrace_3* 
6
Ntrace_0
Otrace_1
Ptrace_2
Qtrace_3* 
* 
у
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses
X_random_generator
Y
state_size

/kernel
0recurrent_kernel
1bias*
* 

0
1*

0
1*
* 
У
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

_trace_0* 

`trace_0* 
_Y
VARIABLE_VALUEdense_12/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_12/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

%0
&1*

%0
&1*
* 
У
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses*

ftrace_0* 

gtrace_0* 
_Y
VARIABLE_VALUEdense_13/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_13/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

-0
.1*

-0
.1*
* 
У
hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses*

mtrace_0* 

ntrace_0* 
_Y
VARIABLE_VALUEdense_14/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_14/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElstm_4/lstm_cell_24/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE$lstm_4/lstm_cell_24/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUElstm_4/lstm_cell_24/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
0
1
2
3*

o0
p1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
KE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUE	SGD/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUESGD/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUESGD/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

/0
01
12*

/0
01
12*
* 
У
qnon_trainable_variables

rlayers
smetrics
tlayer_regularization_losses
ulayer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
8
v	variables
w	keras_api
	xtotal
	ycount*
H
z	variables
{	keras_api
	|total
	}count
~
_fn_kwargs*
* 
* 
* 
* 
* 

x0
y1*

v	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

|0
}1*

z	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
З
serving_default_lstm_4_inputPlaceholder*+
_output_shapes
:         
*
dtype0* 
shape:         

Е
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_4_inputlstm_4/lstm_cell_24/kernel$lstm_4/lstm_cell_24/recurrent_kernellstm_4/lstm_cell_24/biasdense_12/kerneldense_12/biasdense_13/kerneldense_13/biasdense_14/kerneldense_14/bias*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8В *-
f(R&
$__inference_signature_wrapper_223408
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Т
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_12/kernel/Read/ReadVariableOp!dense_12/bias/Read/ReadVariableOp#dense_13/kernel/Read/ReadVariableOp!dense_13/bias/Read/ReadVariableOp#dense_14/kernel/Read/ReadVariableOp!dense_14/bias/Read/ReadVariableOp.lstm_4/lstm_cell_24/kernel/Read/ReadVariableOp8lstm_4/lstm_cell_24/recurrent_kernel/Read/ReadVariableOp,lstm_4/lstm_cell_24/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*
Tin
2	*
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
GPU 2J 8В *(
f#R!
__inference__traced_save_226248
╣
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_12/kerneldense_12/biasdense_13/kerneldense_13/biasdense_14/kerneldense_14/biaslstm_4/lstm_cell_24/kernel$lstm_4/lstm_cell_24/recurrent_kernellstm_4/lstm_cell_24/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumtotal_1count_1totalcount*
Tin
2*
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
GPU 2J 8В *+
f&R$
"__inference__traced_restore_226309∙И,
д@
╠
)__inference_gpu_lstm_with_fallback_224154

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4Иc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         
P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         dR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         dQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:
d:
d:
d:
d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_splitY

zeros_likeConst*
_output_shapes	
:Р*
dtype0*
valueBР*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:аS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Э
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d
Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:РN[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:d\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:d\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:dO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:А▐╩
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:         d:         d:         d:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Г
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:         dc

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         dZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         d\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         
:         d:         d:	
Р:	dР:Р*=
api_implements+)lstm_4db3568b-5d07-4ba4-8f0d-2ce7015fc3e7*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:         

 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	
Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
С	
┴
while_cond_221426
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_221426___redundant_placeholder04
0while_while_cond_221426___redundant_placeholder14
0while_while_cond_221426___redundant_placeholder24
0while_while_cond_221426___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
┌C
ч
!__inference__wrapped_model_221353
lstm_4_inputD
1sequential_32_lstm_4_read_readvariableop_resource:	
РF
3sequential_32_lstm_4_read_1_readvariableop_resource:	dРB
3sequential_32_lstm_4_read_2_readvariableop_resource:	РG
5sequential_32_dense_12_matmul_readvariableop_resource:dD
6sequential_32_dense_12_biasadd_readvariableop_resource:G
5sequential_32_dense_13_matmul_readvariableop_resource:D
6sequential_32_dense_13_biasadd_readvariableop_resource:G
5sequential_32_dense_14_matmul_readvariableop_resource:D
6sequential_32_dense_14_biasadd_readvariableop_resource:
identityИв-sequential_32/dense_12/BiasAdd/ReadVariableOpв,sequential_32/dense_12/MatMul/ReadVariableOpв-sequential_32/dense_13/BiasAdd/ReadVariableOpв,sequential_32/dense_13/MatMul/ReadVariableOpв-sequential_32/dense_14/BiasAdd/ReadVariableOpв,sequential_32/dense_14/MatMul/ReadVariableOpв(sequential_32/lstm_4/Read/ReadVariableOpв*sequential_32/lstm_4/Read_1/ReadVariableOpв*sequential_32/lstm_4/Read_2/ReadVariableOpV
sequential_32/lstm_4/ShapeShapelstm_4_input*
T0*
_output_shapes
:r
(sequential_32/lstm_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*sequential_32/lstm_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*sequential_32/lstm_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:║
"sequential_32/lstm_4/strided_sliceStridedSlice#sequential_32/lstm_4/Shape:output:01sequential_32/lstm_4/strided_slice/stack:output:03sequential_32/lstm_4/strided_slice/stack_1:output:03sequential_32/lstm_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#sequential_32/lstm_4/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d▓
!sequential_32/lstm_4/zeros/packedPack+sequential_32/lstm_4/strided_slice:output:0,sequential_32/lstm_4/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:e
 sequential_32/lstm_4/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    л
sequential_32/lstm_4/zerosFill*sequential_32/lstm_4/zeros/packed:output:0)sequential_32/lstm_4/zeros/Const:output:0*
T0*'
_output_shapes
:         dg
%sequential_32/lstm_4/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d╢
#sequential_32/lstm_4/zeros_1/packedPack+sequential_32/lstm_4/strided_slice:output:0.sequential_32/lstm_4/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_32/lstm_4/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ▒
sequential_32/lstm_4/zeros_1Fill,sequential_32/lstm_4/zeros_1/packed:output:0+sequential_32/lstm_4/zeros_1/Const:output:0*
T0*'
_output_shapes
:         dЫ
(sequential_32/lstm_4/Read/ReadVariableOpReadVariableOp1sequential_32_lstm_4_read_readvariableop_resource*
_output_shapes
:	
Р*
dtype0Е
sequential_32/lstm_4/IdentityIdentity0sequential_32/lstm_4/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	
РЯ
*sequential_32/lstm_4/Read_1/ReadVariableOpReadVariableOp3sequential_32_lstm_4_read_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0Й
sequential_32/lstm_4/Identity_1Identity2sequential_32/lstm_4/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	dРЫ
*sequential_32/lstm_4/Read_2/ReadVariableOpReadVariableOp3sequential_32_lstm_4_read_2_readvariableop_resource*
_output_shapes	
:Р*
dtype0Е
sequential_32/lstm_4/Identity_2Identity2sequential_32/lstm_4/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:Р╢
$sequential_32/lstm_4/PartitionedCallPartitionedCalllstm_4_input#sequential_32/lstm_4/zeros:output:0%sequential_32/lstm_4/zeros_1:output:0&sequential_32/lstm_4/Identity:output:0(sequential_32/lstm_4/Identity_1:output:0(sequential_32/lstm_4/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:         d:         d:         d:         d: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference_standard_lstm_221059в
,sequential_32/dense_12/MatMul/ReadVariableOpReadVariableOp5sequential_32_dense_12_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0╛
sequential_32/dense_12/MatMulMatMul-sequential_32/lstm_4/PartitionedCall:output:04sequential_32/dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         а
-sequential_32/dense_12/BiasAdd/ReadVariableOpReadVariableOp6sequential_32_dense_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╗
sequential_32/dense_12/BiasAddBiasAdd'sequential_32/dense_12/MatMul:product:05sequential_32/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ~
sequential_32/dense_12/ReluRelu'sequential_32/dense_12/BiasAdd:output:0*
T0*'
_output_shapes
:         в
,sequential_32/dense_13/MatMul/ReadVariableOpReadVariableOp5sequential_32_dense_13_matmul_readvariableop_resource*
_output_shapes

:*
dtype0║
sequential_32/dense_13/MatMulMatMul)sequential_32/dense_12/Relu:activations:04sequential_32/dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         а
-sequential_32/dense_13/BiasAdd/ReadVariableOpReadVariableOp6sequential_32_dense_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╗
sequential_32/dense_13/BiasAddBiasAdd'sequential_32/dense_13/MatMul:product:05sequential_32/dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ~
sequential_32/dense_13/ReluRelu'sequential_32/dense_13/BiasAdd:output:0*
T0*'
_output_shapes
:         в
,sequential_32/dense_14/MatMul/ReadVariableOpReadVariableOp5sequential_32_dense_14_matmul_readvariableop_resource*
_output_shapes

:*
dtype0║
sequential_32/dense_14/MatMulMatMul)sequential_32/dense_13/Relu:activations:04sequential_32/dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         а
-sequential_32/dense_14/BiasAdd/ReadVariableOpReadVariableOp6sequential_32_dense_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╗
sequential_32/dense_14/BiasAddBiasAdd'sequential_32/dense_14/MatMul:product:05sequential_32/dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ~
sequential_32/dense_14/ReluRelu'sequential_32/dense_14/BiasAdd:output:0*
T0*'
_output_shapes
:         x
IdentityIdentity)sequential_32/dense_14/Relu:activations:0^NoOp*
T0*'
_output_shapes
:         ш
NoOpNoOp.^sequential_32/dense_12/BiasAdd/ReadVariableOp-^sequential_32/dense_12/MatMul/ReadVariableOp.^sequential_32/dense_13/BiasAdd/ReadVariableOp-^sequential_32/dense_13/MatMul/ReadVariableOp.^sequential_32/dense_14/BiasAdd/ReadVariableOp-^sequential_32/dense_14/MatMul/ReadVariableOp)^sequential_32/lstm_4/Read/ReadVariableOp+^sequential_32/lstm_4/Read_1/ReadVariableOp+^sequential_32/lstm_4/Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         
: : : : : : : : : 2^
-sequential_32/dense_12/BiasAdd/ReadVariableOp-sequential_32/dense_12/BiasAdd/ReadVariableOp2\
,sequential_32/dense_12/MatMul/ReadVariableOp,sequential_32/dense_12/MatMul/ReadVariableOp2^
-sequential_32/dense_13/BiasAdd/ReadVariableOp-sequential_32/dense_13/BiasAdd/ReadVariableOp2\
,sequential_32/dense_13/MatMul/ReadVariableOp,sequential_32/dense_13/MatMul/ReadVariableOp2^
-sequential_32/dense_14/BiasAdd/ReadVariableOp-sequential_32/dense_14/BiasAdd/ReadVariableOp2\
,sequential_32/dense_14/MatMul/ReadVariableOp,sequential_32/dense_14/MatMul/ReadVariableOp2T
(sequential_32/lstm_4/Read/ReadVariableOp(sequential_32/lstm_4/Read/ReadVariableOp2X
*sequential_32/lstm_4/Read_1/ReadVariableOp*sequential_32/lstm_4/Read_1/ReadVariableOp2X
*sequential_32/lstm_4/Read_2/ReadVariableOp*sequential_32/lstm_4/Read_2/ReadVariableOp:Y U
+
_output_shapes
:         

&
_user_specified_namelstm_4_input
г;
└
 __inference_standard_lstm_222950

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         
B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Р_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Рe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         РT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         РQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╢
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dS
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:         dN
TanhTanhsplit:output:2*
T0*'
_output_shapes
:         dU
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:         dY
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╢
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :         d:         d: : :	
Р:	dР:Р* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_222864*
condR
while_cond_222863*b
output_shapesQ
O: : : : :         d:         d: : :	
Р:	dР:Р*
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╓
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         d]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:         dX

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         dX

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         
:         d:         d:	
Р:	dР:Р*=
api_implements+)lstm_2d68b72d-374b-405e-bde3-83e22bf75d81*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:         

 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	
Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
ж
╝
B__inference_lstm_4_layer_call_and_return_conditional_losses_221786

inputs/
read_readvariableop_resource:	
Р1
read_1_readvariableop_resource:	dР-
read_2_readvariableop_resource:	Р

identity_3ИвRead/ReadVariableOpвRead_1/ReadVariableOpвRead_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         dq
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	
Р*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	
Рu
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	dРq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:Р*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:Р▓
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:         d:         d:         d:         d: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference_standard_lstm_221513i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         dМ
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  
: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:\ X
4
_output_shapes"
 :                  

 
_user_specified_nameinputs
С	
┴
while_cond_225325
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_225325___redundant_placeholder04
0while_while_cond_225325___redundant_placeholder14
0while_while_cond_225325___redundant_placeholder24
0while_while_cond_225325___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
Ф
╝
B__inference_lstm_4_layer_call_and_return_conditional_losses_225685

inputs/
read_readvariableop_resource:	
Р1
read_1_readvariableop_resource:	dР-
read_2_readvariableop_resource:	Р

identity_3ИвRead/ReadVariableOpвRead_1/ReadVariableOpвRead_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         dq
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	
Р*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	
Рu
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	dРq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:Р*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:Р▓
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:         d:         d:         d:         d: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference_standard_lstm_225412i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         dМ
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         
: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:S O
+
_output_shapes
:         

 
_user_specified_nameinputs
С	
┴
while_cond_222310
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_222310___redundant_placeholder04
0while_while_cond_222310___redundant_placeholder14
0while_while_cond_222310___redundant_placeholder24
0while_while_cond_222310___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
и
а
I__inference_sequential_32_layer_call_and_return_conditional_losses_223379
lstm_4_input 
lstm_4_223356:	
Р 
lstm_4_223358:	dР
lstm_4_223360:	Р!
dense_12_223363:d
dense_12_223365:!
dense_13_223368:
dense_13_223370:!
dense_14_223373:
dense_14_223375:
identityИв dense_12/StatefulPartitionedCallв dense_13/StatefulPartitionedCallв dense_14/StatefulPartitionedCallвlstm_4/StatefulPartitionedCall 
lstm_4/StatefulPartitionedCallStatefulPartitionedCalllstm_4_inputlstm_4_223356lstm_4_223358lstm_4_223360*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_4_layer_call_and_return_conditional_losses_223223С
 dense_12/StatefulPartitionedCallStatefulPartitionedCall'lstm_4/StatefulPartitionedCall:output:0dense_12_223363dense_12_223365*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_222689У
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_223368dense_13_223370*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_13_layer_call_and_return_conditional_losses_222706У
 dense_14/StatefulPartitionedCallStatefulPartitionedCall)dense_13/StatefulPartitionedCall:output:0dense_14_223373dense_14_223375*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_222723x
IdentityIdentity)dense_14/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ╨
NoOpNoOp!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall^lstm_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         
: : : : : : : : : 2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2@
lstm_4/StatefulPartitionedCalllstm_4/StatefulPartitionedCall:Y U
+
_output_shapes
:         

&
_user_specified_namelstm_4_input
┘)
╧
while_body_224897
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         
*
element_dtype0Т
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         РГ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         Рw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         Рp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         РW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╚
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:         db
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:         dl
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dZ

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:         dg
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:         df
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:         db
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:         dW
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:         dk
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:         dr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:         d_
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:         d"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :         d:         d: : :	
Р:	dР:Р: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	
Р:%	!

_output_shapes
:	dР:!


_output_shapes	
:Р
┘)
╧
while_body_225326
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         
*
element_dtype0Т
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         РГ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         Рw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         Рp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         РW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╚
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:         db
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:         dl
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dZ

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:         dg
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:         df
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:         db
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:         dW
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:         dk
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:         dr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:         d_
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:         d"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :         d:         d: : :	
Р:	dР:Р: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	
Р:%	!

_output_shapes
:	dР:!


_output_shapes	
:Р
г;
└
 __inference_standard_lstm_225841

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         
B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Р_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Рe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         РT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         РQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╢
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dS
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:         dN
TanhTanhsplit:output:2*
T0*'
_output_shapes
:         dU
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:         dY
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╢
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :         d:         d: : :	
Р:	dР:Р* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_225755*
condR
while_cond_225754*b
output_shapesQ
O: : : : :         d:         d: : :	
Р:	dР:Р*
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╓
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         d]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:         dX

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         dX

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         
:         d:         d:	
Р:	dР:Р*=
api_implements+)lstm_459df9f7-9af7-4d0c-8dcd-894b47e58cbc*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:         

 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	
Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
╛;
└
 __inference_standard_lstm_221513

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  
B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Р_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Рe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         РT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         РQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╢
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dS
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:         dN
TanhTanhsplit:output:2*
T0*'
_output_shapes
:         dU
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:         dY
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╢
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :         d:         d: : :	
Р:	dР:Р* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_221427*
condR
while_cond_221426*b
output_shapesQ
O: : : : :         d:         d: : :	
Р:	dР:Р*
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╓
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         d]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:         dX

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         dX

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:                  
:         d:         d:	
Р:	dР:Р*=
api_implements+)lstm_a250822b-54bb-48f7-8afa-163da11d06a1*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  

 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	
Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
г;
└
 __inference_standard_lstm_222397

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         
B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Р_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Рe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         РT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         РQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╢
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dS
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:         dN
TanhTanhsplit:output:2*
T0*'
_output_shapes
:         dU
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:         dY
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╢
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :         d:         d: : :	
Р:	dР:Р* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_222311*
condR
while_cond_222310*b
output_shapesQ
O: : : : :         d:         d: : :	
Р:	dР:Р*
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╓
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         d]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:         dX

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         dX

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         
:         d:         d:	
Р:	dР:Р*=
api_implements+)lstm_c7306610-d288-4ddb-8c0f-e1b444ed8ab1*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:         

 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	
Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
Ы

ї
D__inference_dense_13_layer_call_and_return_conditional_losses_222706

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Ц
Ъ
I__inference_sequential_32_layer_call_and_return_conditional_losses_223283

inputs 
lstm_4_223260:	
Р 
lstm_4_223262:	dР
lstm_4_223264:	Р!
dense_12_223267:d
dense_12_223269:!
dense_13_223272:
dense_13_223274:!
dense_14_223277:
dense_14_223279:
identityИв dense_12/StatefulPartitionedCallв dense_13/StatefulPartitionedCallв dense_14/StatefulPartitionedCallвlstm_4/StatefulPartitionedCall∙
lstm_4/StatefulPartitionedCallStatefulPartitionedCallinputslstm_4_223260lstm_4_223262lstm_4_223264*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_4_layer_call_and_return_conditional_losses_223223С
 dense_12/StatefulPartitionedCallStatefulPartitionedCall'lstm_4/StatefulPartitionedCall:output:0dense_12_223267dense_12_223269*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_222689У
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_223272dense_13_223274*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_13_layer_call_and_return_conditional_losses_222706У
 dense_14/StatefulPartitionedCallStatefulPartitionedCall)dense_13/StatefulPartitionedCall:output:0dense_14_223277dense_14_223279*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_222723x
IdentityIdentity)dense_14/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ╨
NoOpNoOp!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall^lstm_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         
: : : : : : : : : 2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2@
lstm_4/StatefulPartitionedCalllstm_4/StatefulPartitionedCall:S O
+
_output_shapes
:         

 
_user_specified_nameinputs
┘)
╧
while_body_223524
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         
*
element_dtype0Т
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         РГ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         Рw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         Рp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         РW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╚
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:         db
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:         dl
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dZ

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:         dg
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:         df
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:         db
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:         dW
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:         dk
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:         dr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:         d_
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:         d"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :         d:         d: : :	
Р:	dР:Р: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	
Р:%	!

_output_shapes
:	dР:!


_output_shapes	
:Р
ЇK
б
'__forward_gpu_lstm_with_fallback_225253

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisИc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         dR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         dQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:
d:
d:
d:
d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_splitY

zeros_likeConst*
_output_shapes	
:Р*
dtype0*
valueBР*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:аS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Э
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d
Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:РN[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:d\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:d\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:dO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0╫
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:                  d:         d:         d:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╛
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Е
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:         dc

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         dZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         d\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:                  
:         d:         d:	
Р:	dР:Р*=
api_implements+)lstm_91204b3a-4c01-464e-b705-8e314c1b01b9*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_225078_225254*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  

 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	
Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
Ж┬
х
;__inference___backward_gpu_lstm_with_fallback_224649_224825
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5И^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         dd
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:         d`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         d`
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:         dO
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: А
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
:к
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*'
_output_shapes
:         dq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:д
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         du
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:и
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:         d┼
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:         d}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ж
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:в
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*4
_output_shapes"
 :                  d*
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:м
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*j
_output_shapesX
V:                  
:         d:         d:А▐Ц
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:┘
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                  
u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:┼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         dy
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:╔
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:         d^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Ъ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:шj
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:шj
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:шj
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:шj
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:РNi
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:d°
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ь
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:шЁ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:шЁ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:шЁ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:шЁ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:РNя
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:dя
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:dm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   
   б
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:d
o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   
   з
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:d
o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   
   з
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:d
o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   
   з
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:d
o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:ddh
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dг
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:dh
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dг
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:dЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:╡
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
dЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:╖
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
dЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:╖
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
dЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:╖
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
dЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╖
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╖
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:╖
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:╖
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddч
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ап
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	
Р╡
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	dР\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Т
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Рh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Р╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::╥
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Р╓
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:Р{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :                  
t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:         dv

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:         df

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	
Рh

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	dРd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:Р"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*И
_input_shapesЎ
є:         d:         d:         d:         d: :         d:         d:         d:                  d::                  
:         d:         d:А▐::         d:         d: ::::::::: : : : *=
api_implements+)lstm_b6f5d44d-aaff-4504-bc45-01a8cbb4e863*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_224824*
go_backwards( *

time_major( :- )
'
_output_shapes
:         d:1-
+
_output_shapes
:         d:-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :-)
'
_output_shapes
:         d:1-
+
_output_shapes
:         d:1-
+
_output_shapes
:         d::6
4
_output_shapes"
 :                  d:	

_output_shapes
:::
6
4
_output_shapes"
 :                  
:1-
+
_output_shapes
:         d:1-
+
_output_shapes
:         d:"

_output_shapes

:А▐: 

_output_shapes
::-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
С	
┴
while_cond_225754
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_225754___redundant_placeholder04
0while_while_cond_225754___redundant_placeholder14
0while_while_cond_225754___redundant_placeholder24
0while_while_cond_225754___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
С	
┴
while_cond_224896
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_224896___redundant_placeholder04
0while_while_cond_224896___redundant_placeholder14
0while_while_cond_224896___redundant_placeholder24
0while_while_cond_224896___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
Ф
╝
B__inference_lstm_4_layer_call_and_return_conditional_losses_226114

inputs/
read_readvariableop_resource:	
Р1
read_1_readvariableop_resource:	dР-
read_2_readvariableop_resource:	Р

identity_3ИвRead/ReadVariableOpвRead_1/ReadVariableOpвRead_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         dq
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	
Р*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	
Рu
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	dРq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:Р*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:Р▓
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:         d:         d:         d:         d: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference_standard_lstm_225841i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         dМ
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         
: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:S O
+
_output_shapes
:         

 
_user_specified_nameinputs
┬
Ц
)__inference_dense_13_layer_call_fn_226143

inputs
unknown:
	unknown_0:
identityИвStatefulPartitionedCall┘
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_13_layer_call_and_return_conditional_losses_222706o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Ы

ї
D__inference_dense_13_layer_call_and_return_conditional_losses_226154

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
д@
╠
)__inference_gpu_lstm_with_fallback_225506

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4Иc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         
P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         dR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         dQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:
d:
d:
d:
d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_splitY

zeros_likeConst*
_output_shapes	
:Р*
dtype0*
valueBР*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:аS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Э
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d
Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:РN[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:d\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:d\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:dO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:А▐╩
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:         d:         d:         d:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Г
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:         dc

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         dZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         d\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         
:         d:         d:	
Р:	dР:Р*=
api_implements+)lstm_7ed88127-2f1d-4d80-85cf-6dc31582497d*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:         

 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	
Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
┘K
б
'__forward_gpu_lstm_with_fallback_221329

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisИc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         dR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         dQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:
d:
d:
d:
d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_splitY

zeros_likeConst*
_output_shapes	
:Р*
dtype0*
valueBР*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:аS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Э
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d
Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:РN[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:d\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:d\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:dO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0╬
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:         d:         d:         d:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╛
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Е
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:         dc

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         dZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         d\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         
:         d:         d:	
Р:	dР:Р*=
api_implements+)lstm_aaabc54a-75b7-4aa5-bba5-2a042f950e11*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_221154_221330*
go_backwards( *

time_major( :S O
+
_output_shapes
:         

 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	
Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
д@
╠
)__inference_gpu_lstm_with_fallback_221153

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4Иc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         
P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         dR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         dQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:
d:
d:
d:
d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_splitY

zeros_likeConst*
_output_shapes	
:Р*
dtype0*
valueBР*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:аS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Э
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d
Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:РN[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:d\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:d\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:dO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:А▐╩
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:         d:         d:         d:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Г
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:         dc

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         dZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         d\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         
:         d:         d:	
Р:	dР:Р*=
api_implements+)lstm_aaabc54a-75b7-4aa5-bba5-2a042f950e11*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:         

 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	
Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
┬
Ц
)__inference_dense_12_layer_call_fn_226123

inputs
unknown:d
	unknown_0:
identityИвStatefulPartitionedCall┘
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_222689o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         d: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
╛;
└
 __inference_standard_lstm_224554

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  
B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Р_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Рe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         РT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         РQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╢
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dS
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:         dN
TanhTanhsplit:output:2*
T0*'
_output_shapes
:         dU
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:         dY
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╢
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :         d:         d: : :	
Р:	dР:Р* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_224468*
condR
while_cond_224467*b
output_shapesQ
O: : : : :         d:         d: : :	
Р:	dР:Р*
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╓
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         d]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:         dX

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         dX

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:                  
:         d:         d:	
Р:	dР:Р*=
api_implements+)lstm_b6f5d44d-aaff-4504-bc45-01a8cbb4e863*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  

 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	
Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
┘)
╧
while_body_225755
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         
*
element_dtype0Т
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         РГ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         Рw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         Рp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         РW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╚
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:         db
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:         dl
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dZ

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:         dg
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:         df
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:         db
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:         dW
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:         dk
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:         dr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:         d_
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:         d"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :         d:         d: : :	
Р:	dР:Р: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	
Р:%	!

_output_shapes
:	dР:!


_output_shapes	
:Р
ЇK
б
'__forward_gpu_lstm_with_fallback_224824

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisИc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         dR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         dQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:
d:
d:
d:
d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_splitY

zeros_likeConst*
_output_shapes	
:Р*
dtype0*
valueBР*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:аS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Э
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d
Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:РN[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:d\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:d\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:dO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0╫
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:                  d:         d:         d:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╛
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Е
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:         dc

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         dZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         d\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:                  
:         d:         d:	
Р:	dР:Р*=
api_implements+)lstm_b6f5d44d-aaff-4504-bc45-01a8cbb4e863*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_224649_224825*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  

 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	
Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
╛┴
х
;__inference___backward_gpu_lstm_with_fallback_222492_222668
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5И^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         dd
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:         d`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         d`
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:         dO
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: А
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
:к
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*'
_output_shapes
:         dq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:д
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         du
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:и
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:         d┼
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:         d}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ж
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Щ
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*+
_output_shapes
:         d*
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:г
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*a
_output_shapesO
M:         
:         d:         d:А▐Ц
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:╨
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:         
u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:┼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         dy
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:╔
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:         d^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Ъ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:шj
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:шj
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:шj
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:шj
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:РNi
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:d°
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ь
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:шЁ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:шЁ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:шЁ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:шЁ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:РNя
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:dя
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:dm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   
   б
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:d
o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   
   з
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:d
o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   
   з
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:d
o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   
   з
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:d
o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:ddh
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dг
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:dh
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dг
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:dЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:╡
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
dЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:╖
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
dЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:╖
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
dЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:╖
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
dЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╖
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╖
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:╖
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:╖
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddч
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ап
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	
Р╡
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	dР\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Т
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Рh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Р╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::╥
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Р╓
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:Рr
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:         
t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:         dv

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:         df

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	
Рh

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	dРd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:Р"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Ў
_input_shapesф
с:         d:         d:         d:         d: :         d:         d:         d:         d::         
:         d:         d:А▐::         d:         d: ::::::::: : : : *=
api_implements+)lstm_c7306610-d288-4ddb-8c0f-e1b444ed8ab1*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_222667*
go_backwards( *

time_major( :- )
'
_output_shapes
:         d:1-
+
_output_shapes
:         d:-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :-)
'
_output_shapes
:         d:1-
+
_output_shapes
:         d:1-
+
_output_shapes
:         d:1-
+
_output_shapes
:         d:	

_output_shapes
::1
-
+
_output_shapes
:         
:1-
+
_output_shapes
:         d:1-
+
_output_shapes
:         d:"

_output_shapes

:А▐: 

_output_shapes
::-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
С

у
.__inference_sequential_32_layer_call_fn_222751
lstm_4_input
unknown:	
Р
	unknown_0:	dР
	unknown_1:	Р
	unknown_2:d
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
identityИвStatefulPartitionedCall┐
StatefulPartitionedCallStatefulPartitionedCalllstm_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_sequential_32_layer_call_and_return_conditional_losses_222730o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         
: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:         

&
_user_specified_namelstm_4_input
┘K
б
'__forward_gpu_lstm_with_fallback_222667

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisИc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         dR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         dQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:
d:
d:
d:
d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_splitY

zeros_likeConst*
_output_shapes	
:Р*
dtype0*
valueBР*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:аS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Э
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d
Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:РN[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:d\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:d\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:dO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0╬
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:         d:         d:         d:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╛
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Е
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:         dc

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         dZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         d\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         
:         d:         d:	
Р:	dР:Р*=
api_implements+)lstm_c7306610-d288-4ddb-8c0f-e1b444ed8ab1*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_222492_222668*
go_backwards( *

time_major( :S O
+
_output_shapes
:         

 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	
Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
ЪD
Є	
"__inference__traced_restore_226309
file_prefix2
 assignvariableop_dense_12_kernel:d.
 assignvariableop_1_dense_12_bias:4
"assignvariableop_2_dense_13_kernel:.
 assignvariableop_3_dense_13_bias:4
"assignvariableop_4_dense_14_kernel:.
 assignvariableop_5_dense_14_bias:@
-assignvariableop_6_lstm_4_lstm_cell_24_kernel:	
РJ
7assignvariableop_7_lstm_4_lstm_cell_24_recurrent_kernel:	dР:
+assignvariableop_8_lstm_4_lstm_cell_24_bias:	Р%
assignvariableop_9_sgd_iter:	 '
assignvariableop_10_sgd_decay: /
%assignvariableop_11_sgd_learning_rate: *
 assignvariableop_12_sgd_momentum: %
assignvariableop_13_total_1: %
assignvariableop_14_count_1: #
assignvariableop_15_total: #
assignvariableop_16_count: 
identity_18ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_2вAssignVariableOp_3вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9с
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*З
value¤B·B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHФ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*7
value.B,B B B B B B B B B B B B B B B B B B °
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*\
_output_shapesJ
H::::::::::::::::::* 
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Л
AssignVariableOpAssignVariableOp assignvariableop_dense_12_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_12_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_13_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_13_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_14_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_14_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_6AssignVariableOp-assignvariableop_6_lstm_4_lstm_cell_24_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:ж
AssignVariableOp_7AssignVariableOp7assignvariableop_7_lstm_4_lstm_cell_24_recurrent_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_8AssignVariableOp+assignvariableop_8_lstm_4_lstm_cell_24_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0	*
_output_shapes
:К
AssignVariableOp_9AssignVariableOpassignvariableop_9_sgd_iterIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_10AssignVariableOpassignvariableop_10_sgd_decayIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_11AssignVariableOp%assignvariableop_11_sgd_learning_rateIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_12AssignVariableOp assignvariableop_12_sgd_momentumIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ┼
Identity_17Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_18IdentityIdentity_17:output:0^NoOp_1*
T0*
_output_shapes
: ▓
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_18Identity_18:output:0*7
_input_shapes&
$: : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
С	
┴
while_cond_222863
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_222863___redundant_placeholder04
0while_while_cond_222863___redundant_placeholder14
0while_while_cond_222863___redundant_placeholder24
0while_while_cond_222863___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
С

у
.__inference_sequential_32_layer_call_fn_223327
lstm_4_input
unknown:	
Р
	unknown_0:	dР
	unknown_1:	Р
	unknown_2:d
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
identityИвStatefulPartitionedCall┐
StatefulPartitionedCallStatefulPartitionedCalllstm_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_sequential_32_layer_call_and_return_conditional_losses_223283o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         
: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:         

&
_user_specified_namelstm_4_input
Ы

ї
D__inference_dense_12_layer_call_and_return_conditional_losses_226134

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
╛;
└
 __inference_standard_lstm_224983

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  
B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Р_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Рe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         РT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         РQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╢
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dS
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:         dN
TanhTanhsplit:output:2*
T0*'
_output_shapes
:         dU
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:         dY
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╢
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :         d:         d: : :	
Р:	dР:Р* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_224897*
condR
while_cond_224896*b
output_shapesQ
O: : : : :         d:         d: : :	
Р:	dР:Р*
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╓
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         d]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:         dX

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         dX

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:                  
:         d:         d:	
Р:	dР:Р*=
api_implements+)lstm_91204b3a-4c01-464e-b705-8e314c1b01b9*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  

 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	
Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
┘)
╧
while_body_220973
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         
*
element_dtype0Т
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         РГ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         Рw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         Рp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         РW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╚
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:         db
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:         dl
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dZ

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:         dg
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:         df
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:         db
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:         dW
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:         dk
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:         dr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:         d_
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:         d"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :         d:         d: : :	
Р:	dР:Р: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	
Р:%	!

_output_shapes
:	dР:!


_output_shapes	
:Р
ї
┤
'__inference_lstm_4_layer_call_fn_224387

inputs
unknown:	
Р
	unknown_0:	dР
	unknown_1:	Р
identityИвStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_4_layer_call_and_return_conditional_losses_222670o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         

 
_user_specified_nameinputs
г;
└
 __inference_standard_lstm_224060

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         
B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Р_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Рe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         РT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         РQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╢
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dS
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:         dN
TanhTanhsplit:output:2*
T0*'
_output_shapes
:         dU
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:         dY
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╢
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :         d:         d: : :	
Р:	dР:Р* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_223974*
condR
while_cond_223973*b
output_shapesQ
O: : : : :         d:         d: : :	
Р:	dР:Р*
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╓
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         d]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:         dX

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         dX

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         
:         d:         d:	
Р:	dР:Р*=
api_implements+)lstm_4db3568b-5d07-4ba4-8f0d-2ce7015fc3e7*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:         

 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	
Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
┘K
б
'__forward_gpu_lstm_with_fallback_225682

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisИc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         dR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         dQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:
d:
d:
d:
d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_splitY

zeros_likeConst*
_output_shapes	
:Р*
dtype0*
valueBР*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:аS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Э
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d
Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:РN[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:d\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:d\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:dO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0╬
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:         d:         d:         d:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╛
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Е
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:         dc

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         dZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         d\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         
:         d:         d:	
Р:	dР:Р*=
api_implements+)lstm_7ed88127-2f1d-4d80-85cf-6dc31582497d*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_225507_225683*
go_backwards( *

time_major( :S O
+
_output_shapes
:         

 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	
Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
 	
▌
.__inference_sequential_32_layer_call_fn_223431

inputs
unknown:	
Р
	unknown_0:	dР
	unknown_1:	Р
	unknown_2:d
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
identityИвStatefulPartitionedCall╣
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_sequential_32_layer_call_and_return_conditional_losses_222730o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         
: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         

 
_user_specified_nameinputs
С	
┴
while_cond_221866
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_221866___redundant_placeholder04
0while_while_cond_221866___redundant_placeholder14
0while_while_cond_221866___redundant_placeholder24
0while_while_cond_221866___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
П6
Н
I__inference_sequential_32_layer_call_and_return_conditional_losses_224354

inputs6
#lstm_4_read_readvariableop_resource:	
Р8
%lstm_4_read_1_readvariableop_resource:	dР4
%lstm_4_read_2_readvariableop_resource:	Р9
'dense_12_matmul_readvariableop_resource:d6
(dense_12_biasadd_readvariableop_resource:9
'dense_13_matmul_readvariableop_resource:6
(dense_13_biasadd_readvariableop_resource:9
'dense_14_matmul_readvariableop_resource:6
(dense_14_biasadd_readvariableop_resource:
identityИвdense_12/BiasAdd/ReadVariableOpвdense_12/MatMul/ReadVariableOpвdense_13/BiasAdd/ReadVariableOpвdense_13/MatMul/ReadVariableOpвdense_14/BiasAdd/ReadVariableOpвdense_14/MatMul/ReadVariableOpвlstm_4/Read/ReadVariableOpвlstm_4/Read_1/ReadVariableOpвlstm_4/Read_2/ReadVariableOpB
lstm_4/ShapeShapeinputs*
T0*
_output_shapes
:d
lstm_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ї
lstm_4/strided_sliceStridedSlicelstm_4/Shape:output:0#lstm_4/strided_slice/stack:output:0%lstm_4/strided_slice/stack_1:output:0%lstm_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
lstm_4/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dИ
lstm_4/zeros/packedPacklstm_4/strided_slice:output:0lstm_4/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm_4/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Б
lstm_4/zerosFilllstm_4/zeros/packed:output:0lstm_4/zeros/Const:output:0*
T0*'
_output_shapes
:         dY
lstm_4/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dМ
lstm_4/zeros_1/packedPacklstm_4/strided_slice:output:0 lstm_4/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_4/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    З
lstm_4/zeros_1Filllstm_4/zeros_1/packed:output:0lstm_4/zeros_1/Const:output:0*
T0*'
_output_shapes
:         d
lstm_4/Read/ReadVariableOpReadVariableOp#lstm_4_read_readvariableop_resource*
_output_shapes
:	
Р*
dtype0i
lstm_4/IdentityIdentity"lstm_4/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	
РГ
lstm_4/Read_1/ReadVariableOpReadVariableOp%lstm_4_read_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0m
lstm_4/Identity_1Identity$lstm_4/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	dР
lstm_4/Read_2/ReadVariableOpReadVariableOp%lstm_4_read_2_readvariableop_resource*
_output_shapes	
:Р*
dtype0i
lstm_4/Identity_2Identity$lstm_4/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:Р▄
lstm_4/PartitionedCallPartitionedCallinputslstm_4/zeros:output:0lstm_4/zeros_1:output:0lstm_4/Identity:output:0lstm_4/Identity_1:output:0lstm_4/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:         d:         d:         d:         d: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference_standard_lstm_224060Ж
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0Ф
dense_12/MatMulMatMullstm_4/PartitionedCall:output:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Д
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         b
dense_12/ReluReludense_12/BiasAdd:output:0*
T0*'
_output_shapes
:         Ж
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Р
dense_13/MatMulMatMuldense_12/Relu:activations:0&dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Д
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
dense_13/BiasAddBiasAdddense_13/MatMul:product:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         b
dense_13/ReluReludense_13/BiasAdd:output:0*
T0*'
_output_shapes
:         Ж
dense_14/MatMul/ReadVariableOpReadVariableOp'dense_14_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Р
dense_14/MatMulMatMuldense_13/Relu:activations:0&dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Д
dense_14/BiasAdd/ReadVariableOpReadVariableOp(dense_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
dense_14/BiasAddBiasAdddense_14/MatMul:product:0'dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         b
dense_14/ReluReludense_14/BiasAdd:output:0*
T0*'
_output_shapes
:         j
IdentityIdentitydense_14/Relu:activations:0^NoOp*
T0*'
_output_shapes
:         ъ
NoOpNoOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp ^dense_14/BiasAdd/ReadVariableOp^dense_14/MatMul/ReadVariableOp^lstm_4/Read/ReadVariableOp^lstm_4/Read_1/ReadVariableOp^lstm_4/Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         
: : : : : : : : : 2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp2B
dense_14/BiasAdd/ReadVariableOpdense_14/BiasAdd/ReadVariableOp2@
dense_14/MatMul/ReadVariableOpdense_14/MatMul/ReadVariableOp28
lstm_4/Read/ReadVariableOplstm_4/Read/ReadVariableOp2<
lstm_4/Read_1/ReadVariableOplstm_4/Read_1/ReadVariableOp2<
lstm_4/Read_2/ReadVariableOplstm_4/Read_2/ReadVariableOp:S O
+
_output_shapes
:         

 
_user_specified_nameinputs
┘)
╧
while_body_223974
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         
*
element_dtype0Т
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         РГ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         Рw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         Рp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         РW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╚
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:         db
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:         dl
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dZ

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:         dg
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:         df
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:         db
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:         dW
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:         dk
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:         dr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:         d_
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:         d"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :         d:         d: : :	
Р:	dР:Р: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	
Р:%	!

_output_shapes
:	dР:!


_output_shapes	
:Р
┘K
б
'__forward_gpu_lstm_with_fallback_224330

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisИc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         dR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         dQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:
d:
d:
d:
d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_splitY

zeros_likeConst*
_output_shapes	
:Р*
dtype0*
valueBР*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:аS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Э
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d
Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:РN[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:d\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:d\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:dO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0╬
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:         d:         d:         d:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╛
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Е
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:         dc

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         dZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         d\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         
:         d:         d:	
Р:	dР:Р*=
api_implements+)lstm_4db3568b-5d07-4ba4-8f0d-2ce7015fc3e7*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_224155_224331*
go_backwards( *

time_major( :S O
+
_output_shapes
:         

 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	
Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
╚@
╠
)__inference_gpu_lstm_with_fallback_224648

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4Иc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  
P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         dR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         dQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:
d:
d:
d:
d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_splitY

zeros_likeConst*
_output_shapes	
:Р*
dtype0*
valueBР*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:аS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Э
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d
Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:РN[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:d\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:d\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:dO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:А▐╙
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:                  d:         d:         d:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Г
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:         dc

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         dZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         d\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:                  
:         d:         d:	
Р:	dР:Р*=
api_implements+)lstm_b6f5d44d-aaff-4504-bc45-01a8cbb4e863*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  

 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	
Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
Ы

ї
D__inference_dense_14_layer_call_and_return_conditional_losses_222723

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
╛;
└
 __inference_standard_lstm_221953

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  
B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Р_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Рe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         РT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         РQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╢
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dS
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:         dN
TanhTanhsplit:output:2*
T0*'
_output_shapes
:         dU
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:         dY
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╢
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :         d:         d: : :	
Р:	dР:Р* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_221867*
condR
while_cond_221866*b
output_shapesQ
O: : : : :         d:         d: : :	
Р:	dР:Р*
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╓
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         d]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:         dX

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         dX

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:                  
:         d:         d:	
Р:	dР:Р*=
api_implements+)lstm_90fb4990-c125-433a-9531-bdcaf850b31f*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  

 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	
Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
ї
┤
'__inference_lstm_4_layer_call_fn_224398

inputs
unknown:	
Р
	unknown_0:	dР
	unknown_1:	Р
identityИвStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_4_layer_call_and_return_conditional_losses_223223o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         

 
_user_specified_nameinputs
г;
└
 __inference_standard_lstm_225412

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         
B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Р_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Рe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         РT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         РQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╢
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dS
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:         dN
TanhTanhsplit:output:2*
T0*'
_output_shapes
:         dU
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:         dY
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╢
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :         d:         d: : :	
Р:	dР:Р* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_225326*
condR
while_cond_225325*b
output_shapesQ
O: : : : :         d:         d: : :	
Р:	dР:Р*
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╓
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         d]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:         dX

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         dX

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         
:         d:         d:	
Р:	dР:Р*=
api_implements+)lstm_7ed88127-2f1d-4d80-85cf-6dc31582497d*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:         

 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	
Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
╛┴
х
;__inference___backward_gpu_lstm_with_fallback_221154_221330
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5И^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         dd
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:         d`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         d`
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:         dO
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: А
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
:к
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*'
_output_shapes
:         dq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:д
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         du
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:и
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:         d┼
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:         d}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ж
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Щ
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*+
_output_shapes
:         d*
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:г
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*a
_output_shapesO
M:         
:         d:         d:А▐Ц
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:╨
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:         
u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:┼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         dy
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:╔
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:         d^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Ъ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:шj
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:шj
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:шj
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:шj
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:РNi
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:d°
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ь
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:шЁ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:шЁ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:шЁ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:шЁ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:РNя
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:dя
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:dm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   
   б
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:d
o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   
   з
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:d
o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   
   з
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:d
o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   
   з
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:d
o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:ddh
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dг
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:dh
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dг
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:dЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:╡
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
dЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:╖
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
dЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:╖
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
dЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:╖
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
dЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╖
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╖
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:╖
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:╖
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddч
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ап
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	
Р╡
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	dР\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Т
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Рh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Р╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::╥
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Р╓
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:Рr
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:         
t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:         dv

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:         df

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	
Рh

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	dРd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:Р"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Ў
_input_shapesф
с:         d:         d:         d:         d: :         d:         d:         d:         d::         
:         d:         d:А▐::         d:         d: ::::::::: : : : *=
api_implements+)lstm_aaabc54a-75b7-4aa5-bba5-2a042f950e11*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_221329*
go_backwards( *

time_major( :- )
'
_output_shapes
:         d:1-
+
_output_shapes
:         d:-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :-)
'
_output_shapes
:         d:1-
+
_output_shapes
:         d:1-
+
_output_shapes
:         d:1-
+
_output_shapes
:         d:	

_output_shapes
::1
-
+
_output_shapes
:         
:1-
+
_output_shapes
:         d:1-
+
_output_shapes
:         d:"

_output_shapes

:А▐: 

_output_shapes
::-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ЇK
б
'__forward_gpu_lstm_with_fallback_221783

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisИc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         dR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         dQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:
d:
d:
d:
d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_splitY

zeros_likeConst*
_output_shapes	
:Р*
dtype0*
valueBР*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:аS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Э
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d
Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:РN[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:d\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:d\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:dO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0╫
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:                  d:         d:         d:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╛
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Е
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:         dc

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         dZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         d\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:                  
:         d:         d:	
Р:	dР:Р*=
api_implements+)lstm_a250822b-54bb-48f7-8afa-163da11d06a1*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_221608_221784*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  

 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	
Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
д@
╠
)__inference_gpu_lstm_with_fallback_223044

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4Иc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         
P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         dR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         dQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:
d:
d:
d:
d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_splitY

zeros_likeConst*
_output_shapes	
:Р*
dtype0*
valueBР*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:аS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Э
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d
Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:РN[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:d\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:d\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:dO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:А▐╩
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:         d:         d:         d:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Г
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:         dc

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         dZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         d\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         
:         d:         d:	
Р:	dР:Р*=
api_implements+)lstm_2d68b72d-374b-405e-bde3-83e22bf75d81*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:         

 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	
Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
г;
└
 __inference_standard_lstm_223610

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         
B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Р_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Рe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         РT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         РQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╢
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dS
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:         dN
TanhTanhsplit:output:2*
T0*'
_output_shapes
:         dU
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:         dY
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╢
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :         d:         d: : :	
Р:	dР:Р* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_223524*
condR
while_cond_223523*b
output_shapesQ
O: : : : :         d:         d: : :	
Р:	dР:Р*
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╓
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         d]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:         dX

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         dX

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         
:         d:         d:	
Р:	dР:Р*=
api_implements+)lstm_94c6eff0-c2ba-4c26-b147-3ac59d4d0926*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:         

 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	
Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
С	
┴
while_cond_220972
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_220972___redundant_placeholder04
0while_while_cond_220972___redundant_placeholder14
0while_while_cond_220972___redundant_placeholder24
0while_while_cond_220972___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
┘)
╧
while_body_222311
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         
*
element_dtype0Т
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         РГ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         Рw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         Рp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         РW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╚
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:         db
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:         dl
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dZ

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:         dg
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:         df
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:         db
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:         dW
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:         dk
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:         dr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:         d_
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:         d"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :         d:         d: : :	
Р:	dР:Р: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	
Р:%	!

_output_shapes
:	dР:!


_output_shapes	
:Р
о
╛
B__inference_lstm_4_layer_call_and_return_conditional_losses_225256
inputs_0/
read_readvariableop_resource:	
Р1
read_1_readvariableop_resource:	dР-
read_2_readvariableop_resource:	Р

identity_3ИвRead/ReadVariableOpвRead_1/ReadVariableOpвRead_2/ReadVariableOp=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         dq
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	
Р*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	
Рu
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	dРq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:Р*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:Р┤
PartitionedCallPartitionedCallinputs_0zeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:         d:         d:         d:         d: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference_standard_lstm_224983i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         dМ
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  
: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:^ Z
4
_output_shapes"
 :                  

"
_user_specified_name
inputs/0
Ж┬
х
;__inference___backward_gpu_lstm_with_fallback_221608_221784
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5И^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         dd
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:         d`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         d`
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:         dO
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: А
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
:к
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*'
_output_shapes
:         dq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:д
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         du
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:и
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:         d┼
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:         d}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ж
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:в
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*4
_output_shapes"
 :                  d*
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:м
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*j
_output_shapesX
V:                  
:         d:         d:А▐Ц
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:┘
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                  
u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:┼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         dy
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:╔
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:         d^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Ъ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:шj
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:шj
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:шj
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:шj
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:РNi
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:d°
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ь
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:шЁ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:шЁ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:шЁ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:шЁ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:РNя
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:dя
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:dm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   
   б
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:d
o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   
   з
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:d
o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   
   з
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:d
o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   
   з
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:d
o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:ddh
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dг
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:dh
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dг
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:dЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:╡
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
dЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:╖
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
dЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:╖
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
dЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:╖
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
dЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╖
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╖
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:╖
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:╖
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddч
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ап
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	
Р╡
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	dР\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Т
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Рh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Р╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::╥
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Р╓
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:Р{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :                  
t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:         dv

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:         df

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	
Рh

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	dРd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:Р"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*И
_input_shapesЎ
є:         d:         d:         d:         d: :         d:         d:         d:                  d::                  
:         d:         d:А▐::         d:         d: ::::::::: : : : *=
api_implements+)lstm_a250822b-54bb-48f7-8afa-163da11d06a1*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_221783*
go_backwards( *

time_major( :- )
'
_output_shapes
:         d:1-
+
_output_shapes
:         d:-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :-)
'
_output_shapes
:         d:1-
+
_output_shapes
:         d:1-
+
_output_shapes
:         d::6
4
_output_shapes"
 :                  d:	

_output_shapes
:::
6
4
_output_shapes"
 :                  
:1-
+
_output_shapes
:         d:1-
+
_output_shapes
:         d:"

_output_shapes

:А▐: 

_output_shapes
::-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
┘)
╧
while_body_221427
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         
*
element_dtype0Т
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         РГ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         Рw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         Рp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         РW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╚
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:         db
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:         dl
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dZ

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:         dg
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:         df
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:         db
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:         dW
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:         dk
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:         dr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:         d_
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:         d"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :         d:         d: : :	
Р:	dР:Р: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	
Р:%	!

_output_shapes
:	dР:!


_output_shapes	
:Р
П6
Н
I__inference_sequential_32_layer_call_and_return_conditional_losses_223904

inputs6
#lstm_4_read_readvariableop_resource:	
Р8
%lstm_4_read_1_readvariableop_resource:	dР4
%lstm_4_read_2_readvariableop_resource:	Р9
'dense_12_matmul_readvariableop_resource:d6
(dense_12_biasadd_readvariableop_resource:9
'dense_13_matmul_readvariableop_resource:6
(dense_13_biasadd_readvariableop_resource:9
'dense_14_matmul_readvariableop_resource:6
(dense_14_biasadd_readvariableop_resource:
identityИвdense_12/BiasAdd/ReadVariableOpвdense_12/MatMul/ReadVariableOpвdense_13/BiasAdd/ReadVariableOpвdense_13/MatMul/ReadVariableOpвdense_14/BiasAdd/ReadVariableOpвdense_14/MatMul/ReadVariableOpвlstm_4/Read/ReadVariableOpвlstm_4/Read_1/ReadVariableOpвlstm_4/Read_2/ReadVariableOpB
lstm_4/ShapeShapeinputs*
T0*
_output_shapes
:d
lstm_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ї
lstm_4/strided_sliceStridedSlicelstm_4/Shape:output:0#lstm_4/strided_slice/stack:output:0%lstm_4/strided_slice/stack_1:output:0%lstm_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
lstm_4/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dИ
lstm_4/zeros/packedPacklstm_4/strided_slice:output:0lstm_4/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm_4/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Б
lstm_4/zerosFilllstm_4/zeros/packed:output:0lstm_4/zeros/Const:output:0*
T0*'
_output_shapes
:         dY
lstm_4/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dМ
lstm_4/zeros_1/packedPacklstm_4/strided_slice:output:0 lstm_4/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_4/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    З
lstm_4/zeros_1Filllstm_4/zeros_1/packed:output:0lstm_4/zeros_1/Const:output:0*
T0*'
_output_shapes
:         d
lstm_4/Read/ReadVariableOpReadVariableOp#lstm_4_read_readvariableop_resource*
_output_shapes
:	
Р*
dtype0i
lstm_4/IdentityIdentity"lstm_4/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	
РГ
lstm_4/Read_1/ReadVariableOpReadVariableOp%lstm_4_read_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0m
lstm_4/Identity_1Identity$lstm_4/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	dР
lstm_4/Read_2/ReadVariableOpReadVariableOp%lstm_4_read_2_readvariableop_resource*
_output_shapes	
:Р*
dtype0i
lstm_4/Identity_2Identity$lstm_4/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:Р▄
lstm_4/PartitionedCallPartitionedCallinputslstm_4/zeros:output:0lstm_4/zeros_1:output:0lstm_4/Identity:output:0lstm_4/Identity_1:output:0lstm_4/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:         d:         d:         d:         d: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference_standard_lstm_223610Ж
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0Ф
dense_12/MatMulMatMullstm_4/PartitionedCall:output:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Д
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         b
dense_12/ReluReludense_12/BiasAdd:output:0*
T0*'
_output_shapes
:         Ж
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Р
dense_13/MatMulMatMuldense_12/Relu:activations:0&dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Д
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
dense_13/BiasAddBiasAdddense_13/MatMul:product:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         b
dense_13/ReluReludense_13/BiasAdd:output:0*
T0*'
_output_shapes
:         Ж
dense_14/MatMul/ReadVariableOpReadVariableOp'dense_14_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Р
dense_14/MatMulMatMuldense_13/Relu:activations:0&dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Д
dense_14/BiasAdd/ReadVariableOpReadVariableOp(dense_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
dense_14/BiasAddBiasAdddense_14/MatMul:product:0'dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         b
dense_14/ReluReludense_14/BiasAdd:output:0*
T0*'
_output_shapes
:         j
IdentityIdentitydense_14/Relu:activations:0^NoOp*
T0*'
_output_shapes
:         ъ
NoOpNoOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp ^dense_14/BiasAdd/ReadVariableOp^dense_14/MatMul/ReadVariableOp^lstm_4/Read/ReadVariableOp^lstm_4/Read_1/ReadVariableOp^lstm_4/Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         
: : : : : : : : : 2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp2B
dense_14/BiasAdd/ReadVariableOpdense_14/BiasAdd/ReadVariableOp2@
dense_14/MatMul/ReadVariableOpdense_14/MatMul/ReadVariableOp28
lstm_4/Read/ReadVariableOplstm_4/Read/ReadVariableOp2<
lstm_4/Read_1/ReadVariableOplstm_4/Read_1/ReadVariableOp2<
lstm_4/Read_2/ReadVariableOplstm_4/Read_2/ReadVariableOp:S O
+
_output_shapes
:         

 
_user_specified_nameinputs
┘)
╧
while_body_224468
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         
*
element_dtype0Т
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         РГ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         Рw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         Рp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         РW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╚
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:         db
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:         dl
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dZ

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:         dg
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:         df
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:         db
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:         dW
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:         dk
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:         dr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:         d_
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:         d"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :         d:         d: : :	
Р:	dР:Р: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	
Р:%	!

_output_shapes
:	dР:!


_output_shapes	
:Р
ж
╝
B__inference_lstm_4_layer_call_and_return_conditional_losses_222226

inputs/
read_readvariableop_resource:	
Р1
read_1_readvariableop_resource:	dР-
read_2_readvariableop_resource:	Р

identity_3ИвRead/ReadVariableOpвRead_1/ReadVariableOpвRead_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         dq
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	
Р*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	
Рu
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	dРq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:Р*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:Р▓
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:         d:         d:         d:         d: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference_standard_lstm_221953i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         dМ
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  
: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:\ X
4
_output_shapes"
 :                  

 
_user_specified_nameinputs
Ы

ї
D__inference_dense_14_layer_call_and_return_conditional_losses_226174

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Ы

ї
D__inference_dense_12_layer_call_and_return_conditional_losses_222689

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
Н
╢
'__inference_lstm_4_layer_call_fn_224365
inputs_0
unknown:	
Р
	unknown_0:	dР
	unknown_1:	Р
identityИвStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_4_layer_call_and_return_conditional_losses_221786o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  

"
_user_specified_name
inputs/0
╚@
╠
)__inference_gpu_lstm_with_fallback_221607

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4Иc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  
P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         dR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         dQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:
d:
d:
d:
d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_splitY

zeros_likeConst*
_output_shapes	
:Р*
dtype0*
valueBР*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:аS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Э
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d
Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:РN[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:d\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:d\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:dO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:А▐╙
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:                  d:         d:         d:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Г
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:         dc

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         dZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         d\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:                  
:         d:         d:	
Р:	dР:Р*=
api_implements+)lstm_a250822b-54bb-48f7-8afa-163da11d06a1*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  

 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	
Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
╛┴
х
;__inference___backward_gpu_lstm_with_fallback_223705_223881
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5И^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         dd
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:         d`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         d`
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:         dO
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: А
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
:к
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*'
_output_shapes
:         dq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:д
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         du
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:и
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:         d┼
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:         d}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ж
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Щ
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*+
_output_shapes
:         d*
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:г
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*a
_output_shapesO
M:         
:         d:         d:А▐Ц
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:╨
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:         
u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:┼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         dy
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:╔
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:         d^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Ъ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:шj
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:шj
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:шj
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:шj
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:РNi
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:d°
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ь
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:шЁ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:шЁ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:шЁ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:шЁ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:РNя
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:dя
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:dm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   
   б
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:d
o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   
   з
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:d
o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   
   з
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:d
o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   
   з
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:d
o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:ddh
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dг
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:dh
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dг
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:dЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:╡
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
dЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:╖
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
dЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:╖
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
dЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:╖
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
dЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╖
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╖
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:╖
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:╖
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddч
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ап
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	
Р╡
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	dР\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Т
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Рh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Р╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::╥
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Р╓
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:Рr
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:         
t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:         dv

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:         df

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	
Рh

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	dРd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:Р"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Ў
_input_shapesф
с:         d:         d:         d:         d: :         d:         d:         d:         d::         
:         d:         d:А▐::         d:         d: ::::::::: : : : *=
api_implements+)lstm_94c6eff0-c2ba-4c26-b147-3ac59d4d0926*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_223880*
go_backwards( *

time_major( :- )
'
_output_shapes
:         d:1-
+
_output_shapes
:         d:-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :-)
'
_output_shapes
:         d:1-
+
_output_shapes
:         d:1-
+
_output_shapes
:         d:1-
+
_output_shapes
:         d:	

_output_shapes
::1
-
+
_output_shapes
:         
:1-
+
_output_shapes
:         d:1-
+
_output_shapes
:         d:"

_output_shapes

:А▐: 

_output_shapes
::-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
▀	
┘
$__inference_signature_wrapper_223408
lstm_4_input
unknown:	
Р
	unknown_0:	dР
	unknown_1:	Р
	unknown_2:d
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
identityИвStatefulPartitionedCallЧ
StatefulPartitionedCallStatefulPartitionedCalllstm_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__wrapped_model_221353o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         
: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:         

&
_user_specified_namelstm_4_input
и
а
I__inference_sequential_32_layer_call_and_return_conditional_losses_223353
lstm_4_input 
lstm_4_223330:	
Р 
lstm_4_223332:	dР
lstm_4_223334:	Р!
dense_12_223337:d
dense_12_223339:!
dense_13_223342:
dense_13_223344:!
dense_14_223347:
dense_14_223349:
identityИв dense_12/StatefulPartitionedCallв dense_13/StatefulPartitionedCallв dense_14/StatefulPartitionedCallвlstm_4/StatefulPartitionedCall 
lstm_4/StatefulPartitionedCallStatefulPartitionedCalllstm_4_inputlstm_4_223330lstm_4_223332lstm_4_223334*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_4_layer_call_and_return_conditional_losses_222670С
 dense_12/StatefulPartitionedCallStatefulPartitionedCall'lstm_4/StatefulPartitionedCall:output:0dense_12_223337dense_12_223339*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_222689У
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_223342dense_13_223344*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_13_layer_call_and_return_conditional_losses_222706У
 dense_14/StatefulPartitionedCallStatefulPartitionedCall)dense_13/StatefulPartitionedCall:output:0dense_14_223347dense_14_223349*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_222723x
IdentityIdentity)dense_14/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ╨
NoOpNoOp!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall^lstm_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         
: : : : : : : : : 2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2@
lstm_4/StatefulPartitionedCalllstm_4/StatefulPartitionedCall:Y U
+
_output_shapes
:         

&
_user_specified_namelstm_4_input
┘K
б
'__forward_gpu_lstm_with_fallback_223880

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisИc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         dR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         dQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:
d:
d:
d:
d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_splitY

zeros_likeConst*
_output_shapes	
:Р*
dtype0*
valueBР*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:аS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Э
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d
Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:РN[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:d\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:d\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:dO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0╬
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:         d:         d:         d:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╛
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Е
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:         dc

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         dZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         d\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         
:         d:         d:	
Р:	dР:Р*=
api_implements+)lstm_94c6eff0-c2ba-4c26-b147-3ac59d4d0926*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_223705_223881*
go_backwards( *

time_major( :S O
+
_output_shapes
:         

 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	
Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
 	
▌
.__inference_sequential_32_layer_call_fn_223454

inputs
unknown:	
Р
	unknown_0:	dР
	unknown_1:	Р
	unknown_2:d
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
identityИвStatefulPartitionedCall╣
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_sequential_32_layer_call_and_return_conditional_losses_223283o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         
: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         

 
_user_specified_nameinputs
д@
╠
)__inference_gpu_lstm_with_fallback_222491

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4Иc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         
P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         dR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         dQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:
d:
d:
d:
d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_splitY

zeros_likeConst*
_output_shapes	
:Р*
dtype0*
valueBР*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:аS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Э
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d
Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:РN[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:d\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:d\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:dO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:А▐╩
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:         d:         d:         d:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Г
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:         dc

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         dZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         d\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         
:         d:         d:	
Р:	dР:Р*=
api_implements+)lstm_c7306610-d288-4ddb-8c0f-e1b444ed8ab1*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:         

 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	
Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
С	
┴
while_cond_223973
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_223973___redundant_placeholder04
0while_while_cond_223973___redundant_placeholder14
0while_while_cond_223973___redundant_placeholder24
0while_while_cond_223973___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
д@
╠
)__inference_gpu_lstm_with_fallback_223704

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4Иc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         
P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         dR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         dQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:
d:
d:
d:
d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_splitY

zeros_likeConst*
_output_shapes	
:Р*
dtype0*
valueBР*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:аS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Э
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d
Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:РN[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:d\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:d\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:dO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:А▐╩
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:         d:         d:         d:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Г
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:         dc

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         dZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         d\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         
:         d:         d:	
Р:	dР:Р*=
api_implements+)lstm_94c6eff0-c2ba-4c26-b147-3ac59d4d0926*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:         

 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	
Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
Ф
╝
B__inference_lstm_4_layer_call_and_return_conditional_losses_222670

inputs/
read_readvariableop_resource:	
Р1
read_1_readvariableop_resource:	dР-
read_2_readvariableop_resource:	Р

identity_3ИвRead/ReadVariableOpвRead_1/ReadVariableOpвRead_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         dq
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	
Р*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	
Рu
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	dРq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:Р*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:Р▓
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:         d:         d:         d:         d: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference_standard_lstm_222397i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         dМ
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         
: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:S O
+
_output_shapes
:         

 
_user_specified_nameinputs
г;
└
 __inference_standard_lstm_221059

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         
B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Р_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Рe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         РT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         РQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╢
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dS
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:         dN
TanhTanhsplit:output:2*
T0*'
_output_shapes
:         dU
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:         dY
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╢
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :         d:         d: : :	
Р:	dР:Р* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_220973*
condR
while_cond_220972*b
output_shapesQ
O: : : : :         d:         d: : :	
Р:	dР:Р*
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╓
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         d]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:         dX

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         dX

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         
:         d:         d:	
Р:	dР:Р*=
api_implements+)lstm_aaabc54a-75b7-4aa5-bba5-2a042f950e11*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:         

 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	
Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
Ж┬
х
;__inference___backward_gpu_lstm_with_fallback_222048_222224
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5И^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         dd
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:         d`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         d`
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:         dO
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: А
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
:к
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*'
_output_shapes
:         dq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:д
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         du
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:и
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:         d┼
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:         d}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ж
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:в
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*4
_output_shapes"
 :                  d*
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:м
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*j
_output_shapesX
V:                  
:         d:         d:А▐Ц
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:┘
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                  
u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:┼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         dy
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:╔
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:         d^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Ъ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:шj
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:шj
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:шj
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:шj
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:РNi
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:d°
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ь
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:шЁ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:шЁ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:шЁ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:шЁ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:РNя
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:dя
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:dm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   
   б
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:d
o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   
   з
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:d
o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   
   з
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:d
o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   
   з
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:d
o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:ddh
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dг
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:dh
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dг
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:dЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:╡
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
dЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:╖
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
dЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:╖
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
dЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:╖
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
dЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╖
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╖
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:╖
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:╖
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddч
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ап
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	
Р╡
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	dР\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Т
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Рh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Р╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::╥
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Р╓
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:Р{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :                  
t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:         dv

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:         df

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	
Рh

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	dРd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:Р"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*И
_input_shapesЎ
є:         d:         d:         d:         d: :         d:         d:         d:                  d::                  
:         d:         d:А▐::         d:         d: ::::::::: : : : *=
api_implements+)lstm_90fb4990-c125-433a-9531-bdcaf850b31f*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_222223*
go_backwards( *

time_major( :- )
'
_output_shapes
:         d:1-
+
_output_shapes
:         d:-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :-)
'
_output_shapes
:         d:1-
+
_output_shapes
:         d:1-
+
_output_shapes
:         d::6
4
_output_shapes"
 :                  d:	

_output_shapes
:::
6
4
_output_shapes"
 :                  
:1-
+
_output_shapes
:         d:1-
+
_output_shapes
:         d:"

_output_shapes

:А▐: 

_output_shapes
::-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
╛┴
х
;__inference___backward_gpu_lstm_with_fallback_225507_225683
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5И^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         dd
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:         d`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         d`
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:         dO
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: А
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
:к
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*'
_output_shapes
:         dq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:д
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         du
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:и
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:         d┼
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:         d}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ж
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Щ
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*+
_output_shapes
:         d*
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:г
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*a
_output_shapesO
M:         
:         d:         d:А▐Ц
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:╨
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:         
u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:┼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         dy
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:╔
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:         d^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Ъ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:шj
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:шj
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:шj
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:шj
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:РNi
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:d°
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ь
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:шЁ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:шЁ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:шЁ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:шЁ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:РNя
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:dя
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:dm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   
   б
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:d
o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   
   з
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:d
o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   
   з
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:d
o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   
   з
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:d
o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:ddh
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dг
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:dh
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dг
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:dЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:╡
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
dЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:╖
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
dЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:╖
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
dЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:╖
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
dЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╖
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╖
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:╖
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:╖
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddч
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ап
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	
Р╡
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	dР\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Т
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Рh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Р╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::╥
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Р╓
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:Рr
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:         
t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:         dv

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:         df

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	
Рh

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	dРd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:Р"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Ў
_input_shapesф
с:         d:         d:         d:         d: :         d:         d:         d:         d::         
:         d:         d:А▐::         d:         d: ::::::::: : : : *=
api_implements+)lstm_7ed88127-2f1d-4d80-85cf-6dc31582497d*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_225682*
go_backwards( *

time_major( :- )
'
_output_shapes
:         d:1-
+
_output_shapes
:         d:-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :-)
'
_output_shapes
:         d:1-
+
_output_shapes
:         d:1-
+
_output_shapes
:         d:1-
+
_output_shapes
:         d:	

_output_shapes
::1
-
+
_output_shapes
:         
:1-
+
_output_shapes
:         d:1-
+
_output_shapes
:         d:"

_output_shapes

:А▐: 

_output_shapes
::-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
┘)
╧
while_body_221867
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         
*
element_dtype0Т
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         РГ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         Рw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         Рp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         РW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╚
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:         db
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:         dl
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dZ

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:         dg
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:         df
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:         db
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:         dW
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:         dk
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:         dr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:         d_
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:         d"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :         d:         d: : :	
Р:	dР:Р: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	
Р:%	!

_output_shapes
:	dР:!


_output_shapes	
:Р
╚@
╠
)__inference_gpu_lstm_with_fallback_222047

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4Иc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  
P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         dR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         dQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:
d:
d:
d:
d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_splitY

zeros_likeConst*
_output_shapes	
:Р*
dtype0*
valueBР*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:аS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Э
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d
Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:РN[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:d\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:d\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:dO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:А▐╙
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:                  d:         d:         d:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Г
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:         dc

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         dZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         d\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:                  
:         d:         d:	
Р:	dР:Р*=
api_implements+)lstm_90fb4990-c125-433a-9531-bdcaf850b31f*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  

 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	
Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
╛┴
х
;__inference___backward_gpu_lstm_with_fallback_223045_223221
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5И^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         dd
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:         d`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         d`
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:         dO
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: А
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
:к
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*'
_output_shapes
:         dq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:д
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         du
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:и
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:         d┼
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:         d}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ж
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Щ
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*+
_output_shapes
:         d*
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:г
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*a
_output_shapesO
M:         
:         d:         d:А▐Ц
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:╨
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:         
u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:┼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         dy
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:╔
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:         d^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Ъ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:шj
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:шj
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:шj
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:шj
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:РNi
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:d°
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ь
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:шЁ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:шЁ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:шЁ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:шЁ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:РNя
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:dя
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:dm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   
   б
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:d
o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   
   з
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:d
o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   
   з
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:d
o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   
   з
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:d
o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:ddh
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dг
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:dh
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dг
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:dЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:╡
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
dЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:╖
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
dЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:╖
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
dЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:╖
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
dЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╖
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╖
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:╖
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:╖
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddч
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ап
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	
Р╡
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	dР\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Т
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Рh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Р╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::╥
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Р╓
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:Рr
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:         
t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:         dv

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:         df

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	
Рh

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	dРd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:Р"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Ў
_input_shapesф
с:         d:         d:         d:         d: :         d:         d:         d:         d::         
:         d:         d:А▐::         d:         d: ::::::::: : : : *=
api_implements+)lstm_2d68b72d-374b-405e-bde3-83e22bf75d81*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_223220*
go_backwards( *

time_major( :- )
'
_output_shapes
:         d:1-
+
_output_shapes
:         d:-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :-)
'
_output_shapes
:         d:1-
+
_output_shapes
:         d:1-
+
_output_shapes
:         d:1-
+
_output_shapes
:         d:	

_output_shapes
::1
-
+
_output_shapes
:         
:1-
+
_output_shapes
:         d:1-
+
_output_shapes
:         d:"

_output_shapes

:А▐: 

_output_shapes
::-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
┘K
б
'__forward_gpu_lstm_with_fallback_226111

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisИc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         dR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         dQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:
d:
d:
d:
d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_splitY

zeros_likeConst*
_output_shapes	
:Р*
dtype0*
valueBР*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:аS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Э
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d
Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:РN[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:d\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:d\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:dO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0╬
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:         d:         d:         d:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╛
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Е
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:         dc

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         dZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         d\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         
:         d:         d:	
Р:	dР:Р*=
api_implements+)lstm_459df9f7-9af7-4d0c-8dcd-894b47e58cbc*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_225936_226112*
go_backwards( *

time_major( :S O
+
_output_shapes
:         

 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	
Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
┘)
╧
while_body_222864
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         
*
element_dtype0Т
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         РГ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         Рw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         Рp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         РW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╚
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:         db
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:         dl
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dZ

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:         dg
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:         df
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:         db
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:         dW
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:         dk
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:         dr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:         d_
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:         d"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :         d:         d: : :	
Р:	dР:Р: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	
Р:%	!

_output_shapes
:	dР:!


_output_shapes	
:Р
┬
Ц
)__inference_dense_14_layer_call_fn_226163

inputs
unknown:
	unknown_0:
identityИвStatefulPartitionedCall┘
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_222723o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
д@
╠
)__inference_gpu_lstm_with_fallback_225935

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4Иc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         
P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         dR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         dQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:
d:
d:
d:
d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_splitY

zeros_likeConst*
_output_shapes	
:Р*
dtype0*
valueBР*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:аS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Э
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d
Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:РN[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:d\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:d\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:dO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:А▐╩
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:         d:         d:         d:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Г
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:         dc

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         dZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         d\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         
:         d:         d:	
Р:	dР:Р*=
api_implements+)lstm_459df9f7-9af7-4d0c-8dcd-894b47e58cbc*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:         

 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	
Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
С	
┴
while_cond_223523
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_223523___redundant_placeholder04
0while_while_cond_223523___redundant_placeholder14
0while_while_cond_223523___redundant_placeholder24
0while_while_cond_223523___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
Н
╢
'__inference_lstm_4_layer_call_fn_224376
inputs_0
unknown:	
Р
	unknown_0:	dР
	unknown_1:	Р
identityИвStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_4_layer_call_and_return_conditional_losses_222226o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  

"
_user_specified_name
inputs/0
┘K
б
'__forward_gpu_lstm_with_fallback_223220

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisИc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         dR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         dQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:
d:
d:
d:
d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_splitY

zeros_likeConst*
_output_shapes	
:Р*
dtype0*
valueBР*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:аS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Э
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d
Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:РN[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:d\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:d\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:dO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0╬
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:         d:         d:         d:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╛
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Е
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:         dc

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         dZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         d\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:         
:         d:         d:	
Р:	dР:Р*=
api_implements+)lstm_2d68b72d-374b-405e-bde3-83e22bf75d81*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_223045_223221*
go_backwards( *

time_major( :S O
+
_output_shapes
:         

 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	
Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
Ф
╝
B__inference_lstm_4_layer_call_and_return_conditional_losses_223223

inputs/
read_readvariableop_resource:	
Р1
read_1_readvariableop_resource:	dР-
read_2_readvariableop_resource:	Р

identity_3ИвRead/ReadVariableOpвRead_1/ReadVariableOpвRead_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         dq
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	
Р*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	
Рu
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	dРq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:Р*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:Р▓
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:         d:         d:         d:         d: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference_standard_lstm_222950i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         dМ
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         
: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:S O
+
_output_shapes
:         

 
_user_specified_nameinputs
С	
┴
while_cond_224467
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_224467___redundant_placeholder04
0while_while_cond_224467___redundant_placeholder14
0while_while_cond_224467___redundant_placeholder24
0while_while_cond_224467___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
о
╛
B__inference_lstm_4_layer_call_and_return_conditional_losses_224827
inputs_0/
read_readvariableop_resource:	
Р1
read_1_readvariableop_resource:	dР-
read_2_readvariableop_resource:	Р

identity_3ИвRead/ReadVariableOpвRead_1/ReadVariableOpвRead_2/ReadVariableOp=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         dq
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	
Р*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	
Рu
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	dРq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:Р*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:Р┤
PartitionedCallPartitionedCallinputs_0zeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:         d:         d:         d:         d: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference_standard_lstm_224554i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         dМ
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  
: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:^ Z
4
_output_shapes"
 :                  

"
_user_specified_name
inputs/0
Ж┬
х
;__inference___backward_gpu_lstm_with_fallback_225078_225254
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5И^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         dd
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:         d`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         d`
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:         dO
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: А
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
:к
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*'
_output_shapes
:         dq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:д
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         du
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:и
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:         d┼
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:         d}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ж
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:в
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*4
_output_shapes"
 :                  d*
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:м
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*j
_output_shapesX
V:                  
:         d:         d:А▐Ц
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:┘
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                  
u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:┼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         dy
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:╔
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:         d^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Ъ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:шj
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:шj
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:шj
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:шj
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:РNi
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:d°
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ь
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:шЁ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:шЁ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:шЁ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:шЁ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:РNя
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:dя
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:dm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   
   б
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:d
o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   
   з
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:d
o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   
   з
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:d
o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   
   з
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:d
o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:ddh
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dг
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:dh
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dг
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:dЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:╡
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
dЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:╖
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
dЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:╖
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
dЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:╖
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
dЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╖
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╖
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:╖
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:╖
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddч
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ап
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	
Р╡
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	dР\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Т
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Рh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Р╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::╥
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Р╓
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:Р{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :                  
t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:         dv

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:         df

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	
Рh

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	dРd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:Р"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*И
_input_shapesЎ
є:         d:         d:         d:         d: :         d:         d:         d:                  d::                  
:         d:         d:А▐::         d:         d: ::::::::: : : : *=
api_implements+)lstm_91204b3a-4c01-464e-b705-8e314c1b01b9*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_225253*
go_backwards( *

time_major( :- )
'
_output_shapes
:         d:1-
+
_output_shapes
:         d:-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :-)
'
_output_shapes
:         d:1-
+
_output_shapes
:         d:1-
+
_output_shapes
:         d::6
4
_output_shapes"
 :                  d:	

_output_shapes
:::
6
4
_output_shapes"
 :                  
:1-
+
_output_shapes
:         d:1-
+
_output_shapes
:         d:"

_output_shapes

:А▐: 

_output_shapes
::-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
╛┴
х
;__inference___backward_gpu_lstm_with_fallback_225936_226112
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5И^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         dd
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:         d`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         d`
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:         dO
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: А
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
:к
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*'
_output_shapes
:         dq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:д
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         du
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:и
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:         d┼
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:         d}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ж
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Щ
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*+
_output_shapes
:         d*
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:г
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*a
_output_shapesO
M:         
:         d:         d:А▐Ц
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:╨
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:         
u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:┼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         dy
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:╔
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:         d^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Ъ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:шj
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:шj
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:шj
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:шj
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:РNi
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:d°
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ь
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:шЁ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:шЁ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:шЁ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:шЁ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:РNя
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:dя
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:dm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   
   б
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:d
o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   
   з
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:d
o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   
   з
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:d
o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   
   з
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:d
o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:ddh
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dг
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:dh
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dг
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:dЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:╡
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
dЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:╖
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
dЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:╖
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
dЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:╖
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
dЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╖
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╖
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:╖
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:╖
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddч
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ап
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	
Р╡
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	dР\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Т
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Рh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Р╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::╥
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Р╓
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:Рr
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:         
t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:         dv

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:         df

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	
Рh

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	dРd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:Р"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Ў
_input_shapesф
с:         d:         d:         d:         d: :         d:         d:         d:         d::         
:         d:         d:А▐::         d:         d: ::::::::: : : : *=
api_implements+)lstm_459df9f7-9af7-4d0c-8dcd-894b47e58cbc*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_226111*
go_backwards( *

time_major( :- )
'
_output_shapes
:         d:1-
+
_output_shapes
:         d:-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :-)
'
_output_shapes
:         d:1-
+
_output_shapes
:         d:1-
+
_output_shapes
:         d:1-
+
_output_shapes
:         d:	

_output_shapes
::1
-
+
_output_shapes
:         
:1-
+
_output_shapes
:         d:1-
+
_output_shapes
:         d:"

_output_shapes

:А▐: 

_output_shapes
::-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
╚@
╠
)__inference_gpu_lstm_with_fallback_225077

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4Иc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  
P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         dR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         dQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:
d:
d:
d:
d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_splitY

zeros_likeConst*
_output_shapes	
:Р*
dtype0*
valueBР*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:аS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Э
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d
Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:РN[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:d\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:d\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:dO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:А▐╙
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:                  d:         d:         d:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Г
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:         dc

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         dZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         d\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:                  
:         d:         d:	
Р:	dР:Р*=
api_implements+)lstm_91204b3a-4c01-464e-b705-8e314c1b01b9*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  

 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	
Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
╛┴
х
;__inference___backward_gpu_lstm_with_fallback_224155_224331
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5И^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         dd
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:         d`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         d`
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:         dO
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: А
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
:к
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*'
_output_shapes
:         dq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:д
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         du
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:и
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:         d┼
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:         d}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ж
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Щ
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*+
_output_shapes
:         d*
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:г
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*a
_output_shapesO
M:         
:         d:         d:А▐Ц
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:╨
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:         
u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:┼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         dy
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:╔
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:         d^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Ъ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:шj
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:шj
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:шj
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:шj
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:РNj
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:РNi
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:dj
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:d°
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ь
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:шЁ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:шЁ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:шЁ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:шЁ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:РNЁ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:РNя
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:dя
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:dЄ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:dm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   
   б
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:d
o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   
   з
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:d
o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   
   з
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:d
o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   
   з
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:d
o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:ddo
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"d   d   з
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:ddh
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dг
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:dh
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dг
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:di
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:dж
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:dЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:╡
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
dЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:╖
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
dЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:╖
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
dЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:╖
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
dЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╖
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╖
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:╖
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:╖
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ddч
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ап
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	
Р╡
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	dР\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Т
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Рh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Р╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::╥
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Р╓
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:Рr
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:         
t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:         dv

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:         df

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	
Рh

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	dРd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:Р"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Ў
_input_shapesф
с:         d:         d:         d:         d: :         d:         d:         d:         d::         
:         d:         d:А▐::         d:         d: ::::::::: : : : *=
api_implements+)lstm_4db3568b-5d07-4ba4-8f0d-2ce7015fc3e7*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_224330*
go_backwards( *

time_major( :- )
'
_output_shapes
:         d:1-
+
_output_shapes
:         d:-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :-)
'
_output_shapes
:         d:1-
+
_output_shapes
:         d:1-
+
_output_shapes
:         d:1-
+
_output_shapes
:         d:	

_output_shapes
::1
-
+
_output_shapes
:         
:1-
+
_output_shapes
:         d:1-
+
_output_shapes
:         d:"

_output_shapes

:А▐: 

_output_shapes
::-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
о)
Н
__inference__traced_save_226248
file_prefix.
*savev2_dense_12_kernel_read_readvariableop,
(savev2_dense_12_bias_read_readvariableop.
*savev2_dense_13_kernel_read_readvariableop,
(savev2_dense_13_bias_read_readvariableop.
*savev2_dense_14_kernel_read_readvariableop,
(savev2_dense_14_bias_read_readvariableop9
5savev2_lstm_4_lstm_cell_24_kernel_read_readvariableopC
?savev2_lstm_4_lstm_cell_24_recurrent_kernel_read_readvariableop7
3savev2_lstm_4_lstm_cell_24_bias_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	(
$savev2_sgd_decay_read_readvariableop0
,savev2_sgd_learning_rate_read_readvariableop+
'savev2_sgd_momentum_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1ИвMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partБ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ▐
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*З
value¤B·B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHС
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*7
value.B,B B B B B B B B B B B B B B B B B B Ю
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_12_kernel_read_readvariableop(savev2_dense_12_bias_read_readvariableop*savev2_dense_13_kernel_read_readvariableop(savev2_dense_13_bias_read_readvariableop*savev2_dense_14_kernel_read_readvariableop(savev2_dense_14_bias_read_readvariableop5savev2_lstm_4_lstm_cell_24_kernel_read_readvariableop?savev2_lstm_4_lstm_cell_24_recurrent_kernel_read_readvariableop3savev2_lstm_4_lstm_cell_24_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 * 
dtypes
2	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*t
_input_shapesc
a: :d::::::	
Р:	dР:Р: : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:d: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::%!

_output_shapes
:	
Р:%!

_output_shapes
:	dР:!	

_output_shapes	
:Р:


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ЇK
б
'__forward_gpu_lstm_with_fallback_222223

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisИc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         dR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         dQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:
d:
d:
d:
d*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:dd:dd:dd:dd*
	num_splitY

zeros_likeConst*
_output_shapes	
:Р*
dtype0*
valueBР*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:аS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Э
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:d:d:d:d:d:d:d:d*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:d
Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:d
[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:шa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:РNa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:dd[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:РN[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:d\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:d\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:d\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:d\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:d\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:d\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:dO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0╫
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:                  d:         d:         d:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╛
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         d*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Е
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:         dc

Identity_1IdentityExpandDims_2:output:0*
T0*+
_output_shapes
:         dZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         d\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         dI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:                  
:         d:         d:	
Р:	dР:Р*=
api_implements+)lstm_90fb4990-c125-433a-9531-bdcaf850b31f*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_222048_222224*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  

 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         d
 
_user_specified_nameinit_c:GC

_output_shapes
:	
Р
 
_user_specified_namekernel:QM

_output_shapes
:	dР
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Р

_user_specified_namebias
Ц
Ъ
I__inference_sequential_32_layer_call_and_return_conditional_losses_222730

inputs 
lstm_4_222671:	
Р 
lstm_4_222673:	dР
lstm_4_222675:	Р!
dense_12_222690:d
dense_12_222692:!
dense_13_222707:
dense_13_222709:!
dense_14_222724:
dense_14_222726:
identityИв dense_12/StatefulPartitionedCallв dense_13/StatefulPartitionedCallв dense_14/StatefulPartitionedCallвlstm_4/StatefulPartitionedCall∙
lstm_4/StatefulPartitionedCallStatefulPartitionedCallinputslstm_4_222671lstm_4_222673lstm_4_222675*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_4_layer_call_and_return_conditional_losses_222670С
 dense_12/StatefulPartitionedCallStatefulPartitionedCall'lstm_4/StatefulPartitionedCall:output:0dense_12_222690dense_12_222692*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_222689У
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_222707dense_13_222709*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_13_layer_call_and_return_conditional_losses_222706У
 dense_14/StatefulPartitionedCallStatefulPartitionedCall)dense_13/StatefulPartitionedCall:output:0dense_14_222724dense_14_222726*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_222723x
IdentityIdentity)dense_14/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ╨
NoOpNoOp!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall^lstm_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         
: : : : : : : : : 2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2@
lstm_4/StatefulPartitionedCalllstm_4/StatefulPartitionedCall:S O
+
_output_shapes
:         

 
_user_specified_nameinputs"╧L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╣
serving_defaultе
I
lstm_4_input9
serving_default_lstm_4_input:0         
<
dense_140
StatefulPartitionedCall:0         tensorflow/serving/predict:зг
В
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
┌
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec"
_tf_keras_rnn_layer
╗
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
╗
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses

%kernel
&bias"
_tf_keras_layer
╗
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses

-kernel
.bias"
_tf_keras_layer
_
/0
01
12
3
4
%5
&6
-7
.8"
trackable_list_wrapper
_
/0
01
12
3
4
%5
&6
-7
.8"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
2non_trainable_variables

3layers
4metrics
5layer_regularization_losses
6layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses"
_generic_user_object
ю
7trace_0
8trace_1
9trace_2
:trace_32Г
.__inference_sequential_32_layer_call_fn_222751
.__inference_sequential_32_layer_call_fn_223431
.__inference_sequential_32_layer_call_fn_223454
.__inference_sequential_32_layer_call_fn_223327└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 z7trace_0z8trace_1z9trace_2z:trace_3
┌
;trace_0
<trace_1
=trace_2
>trace_32я
I__inference_sequential_32_layer_call_and_return_conditional_losses_223904
I__inference_sequential_32_layer_call_and_return_conditional_losses_224354
I__inference_sequential_32_layer_call_and_return_conditional_losses_223353
I__inference_sequential_32_layer_call_and_return_conditional_losses_223379└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 z;trace_0z<trace_1z=trace_2z>trace_3
╤B╬
!__inference__wrapped_model_221353lstm_4_input"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
I
?iter
	@decay
Alearning_rate
Bmomentum"
	optimizer
,
Cserving_default"
signature_map
5
/0
01
12"
trackable_list_wrapper
5
/0
01
12"
trackable_list_wrapper
 "
trackable_list_wrapper
╣

Dstates
Enon_trainable_variables

Flayers
Gmetrics
Hlayer_regularization_losses
Ilayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ч
Jtrace_0
Ktrace_1
Ltrace_2
Mtrace_32№
'__inference_lstm_4_layer_call_fn_224365
'__inference_lstm_4_layer_call_fn_224376
'__inference_lstm_4_layer_call_fn_224387
'__inference_lstm_4_layer_call_fn_224398╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 zJtrace_0zKtrace_1zLtrace_2zMtrace_3
╙
Ntrace_0
Otrace_1
Ptrace_2
Qtrace_32ш
B__inference_lstm_4_layer_call_and_return_conditional_losses_224827
B__inference_lstm_4_layer_call_and_return_conditional_losses_225256
B__inference_lstm_4_layer_call_and_return_conditional_losses_225685
B__inference_lstm_4_layer_call_and_return_conditional_losses_226114╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 zNtrace_0zOtrace_1zPtrace_2zQtrace_3
"
_generic_user_object
°
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses
X_random_generator
Y
state_size

/kernel
0recurrent_kernel
1bias"
_tf_keras_layer
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
н
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
э
_trace_02╨
)__inference_dense_12_layer_call_fn_226123в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z_trace_0
И
`trace_02ы
D__inference_dense_12_layer_call_and_return_conditional_losses_226134в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z`trace_0
!:d2dense_12/kernel
:2dense_12/bias
.
%0
&1"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
н
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
э
ftrace_02╨
)__inference_dense_13_layer_call_fn_226143в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zftrace_0
И
gtrace_02ы
D__inference_dense_13_layer_call_and_return_conditional_losses_226154в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zgtrace_0
!:2dense_13/kernel
:2dense_13/bias
.
-0
.1"
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
 "
trackable_list_wrapper
н
hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
э
mtrace_02╨
)__inference_dense_14_layer_call_fn_226163в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zmtrace_0
И
ntrace_02ы
D__inference_dense_14_layer_call_and_return_conditional_losses_226174в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zntrace_0
!:2dense_14/kernel
:2dense_14/bias
-:+	
Р2lstm_4/lstm_cell_24/kernel
7:5	dР2$lstm_4/lstm_cell_24/recurrent_kernel
':%Р2lstm_4/lstm_cell_24/bias
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
.
o0
p1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЖBГ
.__inference_sequential_32_layer_call_fn_222751lstm_4_input"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
АB¤
.__inference_sequential_32_layer_call_fn_223431inputs"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
АB¤
.__inference_sequential_32_layer_call_fn_223454inputs"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ЖBГ
.__inference_sequential_32_layer_call_fn_223327lstm_4_input"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ЫBШ
I__inference_sequential_32_layer_call_and_return_conditional_losses_223904inputs"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ЫBШ
I__inference_sequential_32_layer_call_and_return_conditional_losses_224354inputs"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
бBЮ
I__inference_sequential_32_layer_call_and_return_conditional_losses_223353lstm_4_input"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
бBЮ
I__inference_sequential_32_layer_call_and_return_conditional_losses_223379lstm_4_input"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
:	 (2SGD/iter
: (2	SGD/decay
: (2SGD/learning_rate
: (2SGD/momentum
╨B═
$__inference_signature_wrapper_223408lstm_4_input"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
РBН
'__inference_lstm_4_layer_call_fn_224365inputs/0"╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
РBН
'__inference_lstm_4_layer_call_fn_224376inputs/0"╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ОBЛ
'__inference_lstm_4_layer_call_fn_224387inputs"╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ОBЛ
'__inference_lstm_4_layer_call_fn_224398inputs"╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
лBи
B__inference_lstm_4_layer_call_and_return_conditional_losses_224827inputs/0"╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
лBи
B__inference_lstm_4_layer_call_and_return_conditional_losses_225256inputs/0"╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
йBж
B__inference_lstm_4_layer_call_and_return_conditional_losses_225685inputs"╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
йBж
B__inference_lstm_4_layer_call_and_return_conditional_losses_226114inputs"╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
5
/0
01
12"
trackable_list_wrapper
5
/0
01
12"
trackable_list_wrapper
 "
trackable_list_wrapper
н
qnon_trainable_variables

rlayers
smetrics
tlayer_regularization_losses
ulayer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses"
_generic_user_object
─2┴╛
╡▓▒
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
─2┴╛
╡▓▒
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
"
_generic_user_object
 "
trackable_list_wrapper
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
▌B┌
)__inference_dense_12_layer_call_fn_226123inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
°Bї
D__inference_dense_12_layer_call_and_return_conditional_losses_226134inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
▌B┌
)__inference_dense_13_layer_call_fn_226143inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
°Bї
D__inference_dense_13_layer_call_and_return_conditional_losses_226154inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
▌B┌
)__inference_dense_14_layer_call_fn_226163inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
°Bї
D__inference_dense_14_layer_call_and_return_conditional_losses_226174inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
N
v	variables
w	keras_api
	xtotal
	ycount"
_tf_keras_metric
^
z	variables
{	keras_api
	|total
	}count
~
_fn_kwargs"
_tf_keras_metric
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
.
x0
y1"
trackable_list_wrapper
-
v	variables"
_generic_user_object
:  (2total
:  (2count
.
|0
}1"
trackable_list_wrapper
-
z	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapperа
!__inference__wrapped_model_221353{	/01%&-.9в6
/в,
*К'
lstm_4_input         

к "3к0
.
dense_14"К
dense_14         д
D__inference_dense_12_layer_call_and_return_conditional_losses_226134\/в,
%в"
 К
inputs         d
к "%в"
К
0         
Ъ |
)__inference_dense_12_layer_call_fn_226123O/в,
%в"
 К
inputs         d
к "К         д
D__inference_dense_13_layer_call_and_return_conditional_losses_226154\%&/в,
%в"
 К
inputs         
к "%в"
К
0         
Ъ |
)__inference_dense_13_layer_call_fn_226143O%&/в,
%в"
 К
inputs         
к "К         д
D__inference_dense_14_layer_call_and_return_conditional_losses_226174\-./в,
%в"
 К
inputs         
к "%в"
К
0         
Ъ |
)__inference_dense_14_layer_call_fn_226163O-./в,
%в"
 К
inputs         
к "К         ├
B__inference_lstm_4_layer_call_and_return_conditional_losses_224827}/01OвL
EвB
4Ъ1
/К,
inputs/0                  


 
p 

 
к "%в"
К
0         d
Ъ ├
B__inference_lstm_4_layer_call_and_return_conditional_losses_225256}/01OвL
EвB
4Ъ1
/К,
inputs/0                  


 
p

 
к "%в"
К
0         d
Ъ │
B__inference_lstm_4_layer_call_and_return_conditional_losses_225685m/01?в<
5в2
$К!
inputs         


 
p 

 
к "%в"
К
0         d
Ъ │
B__inference_lstm_4_layer_call_and_return_conditional_losses_226114m/01?в<
5в2
$К!
inputs         


 
p

 
к "%в"
К
0         d
Ъ Ы
'__inference_lstm_4_layer_call_fn_224365p/01OвL
EвB
4Ъ1
/К,
inputs/0                  


 
p 

 
к "К         dЫ
'__inference_lstm_4_layer_call_fn_224376p/01OвL
EвB
4Ъ1
/К,
inputs/0                  


 
p

 
к "К         dЛ
'__inference_lstm_4_layer_call_fn_224387`/01?в<
5в2
$К!
inputs         


 
p 

 
к "К         dЛ
'__inference_lstm_4_layer_call_fn_224398`/01?в<
5в2
$К!
inputs         


 
p

 
к "К         d┬
I__inference_sequential_32_layer_call_and_return_conditional_losses_223353u	/01%&-.Aв>
7в4
*К'
lstm_4_input         

p 

 
к "%в"
К
0         
Ъ ┬
I__inference_sequential_32_layer_call_and_return_conditional_losses_223379u	/01%&-.Aв>
7в4
*К'
lstm_4_input         

p

 
к "%в"
К
0         
Ъ ╝
I__inference_sequential_32_layer_call_and_return_conditional_losses_223904o	/01%&-.;в8
1в.
$К!
inputs         

p 

 
к "%в"
К
0         
Ъ ╝
I__inference_sequential_32_layer_call_and_return_conditional_losses_224354o	/01%&-.;в8
1в.
$К!
inputs         

p

 
к "%в"
К
0         
Ъ Ъ
.__inference_sequential_32_layer_call_fn_222751h	/01%&-.Aв>
7в4
*К'
lstm_4_input         

p 

 
к "К         Ъ
.__inference_sequential_32_layer_call_fn_223327h	/01%&-.Aв>
7в4
*К'
lstm_4_input         

p

 
к "К         Ф
.__inference_sequential_32_layer_call_fn_223431b	/01%&-.;в8
1в.
$К!
inputs         

p 

 
к "К         Ф
.__inference_sequential_32_layer_call_fn_223454b	/01%&-.;в8
1в.
$К!
inputs         

p

 
к "К         ┤
$__inference_signature_wrapper_223408Л	/01%&-.IвF
в 
?к<
:
lstm_4_input*К'
lstm_4_input         
"3к0
.
dense_14"К
dense_14         