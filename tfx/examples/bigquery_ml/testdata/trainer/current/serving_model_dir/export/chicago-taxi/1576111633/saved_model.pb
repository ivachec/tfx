љ
ј>Э>
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	
A
AddV2
x"T
y"T
z"T"
Ttype:
2	

ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
И
AsString

input"T

output"
Ttype:
2		
"
	precisionintџџџџџџџџџ"

scientificbool( "
shortestbool( "
widthintџџџџџџџџџ"
fillstring 
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW

BoostedTreesBucketize
float_values*num_features#
bucket_boundaries*num_features
buckets*num_features"
num_featuresint(
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
h
Equal
x"T
y"T
z
"
Ttype:
2	
"$
incompatible_shape_errorbool(
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
p
GatherNd
params"Tparams
indices"Tindices
output"Tparams"
Tparamstype"
Tindicestype:
2	
­
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
=
Greater
x"T
y"T
z
"
Ttype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
Ё
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype
V
HistogramSummary
tag
values"T
summary"
Ttype0:
2	
.
Identity

input"T
output"T"	
Ttype
К
If
cond"Tcond
input2Tin
output2Tout"
Tcondtype"
Tin
list(type)("
Tout
list(type)("
then_branchfunc"
else_branchfunc" 
output_shapeslist(shape)
 
Щ
InitializeTableFromTextFileV2
table_handle
filename"
	key_indexint(0ўџџџџџџџџ"
value_indexint(0ўџџџџџџџџ"+

vocab_sizeintџџџџџџџџџ(0џџџџџџџџџ"
	delimiterstring	
+
IsNan
x"T
y
"
Ttype:
2
:
Less
x"T
y"T
z
"
Ttype:
2	
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
#
	LogicalOr
x

y

z

w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype
2
LookupTableSizeV2
table_handle
size	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
k
NotEqual
x"T
y"T
z
"
Ttype:
2	
"$
incompatible_shape_errorbool(
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
я
ParseExample

serialized	
names
sparse_keys*Nsparse

dense_keys*Ndense
dense_defaults2Tdense
sparse_indices	*Nsparse
sparse_values2sparse_types
sparse_shapes	*Nsparse
dense_values2Tdense"
Nsparseint("
Ndenseint("%
sparse_types
list(type)(:
2	"
Tdense
list(type)(:
2	"
dense_shapeslist(shape)(
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
Ѕ
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
	ReverseV2
tensor"T
axis"Tidx
output"T"
Tidxtype0:
2	"
Ttype:
2	

l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
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
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
З
SparseFillEmptyRows
indices	
values"T
dense_shape	
default_value"T
output_indices	
output_values"T
empty_row_indicator

reverse_index_map	"	
Ttype
h
SparseReshape
input_indices	
input_shape	
	new_shape	
output_indices	
output_shape	

SparseSegmentSum	
data"T
indices"Tidx
segment_ids
output"T"
Ttype:
2	"
Tidxtype0:
2	
-
Sqrt
x"T
y"T"
Ttype:

2
1
Square
x"T
y"T"
Ttype:

2	
Р
StatelessIf
cond"Tcond
input2Tin
output2Tout"
Tcondtype"
Tin
list(type)("
Tout
list(type)("
then_branchfunc"
else_branchfunc" 
output_shapeslist(shape)
 
і
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
G
StringToHashBucketFast	
input

output	"
num_bucketsint(0
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
f
TopKV2

input"T
k
values"T
indices"
sortedbool("
Ttype:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
P
Unique
x"T
y"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape
9
VarIsInitializedOp
resource
is_initialized

E
Where

input"T	
index	"%
Ttype0
:
2	

&
	ZerosLike
x"T
y"T"	
Ttype"serve*2.0.02v2.0.0-rc2-26-g64c3d388№и

global_step/Initializer/zerosConst*
_output_shapes
: *
value	B	 R *
_class
loc:@global_step*
dtype0	

global_stepVarHandleOp*
shared_nameglobal_step*
_class
loc:@global_step*
dtype0	*
_output_shapes
: *
shape: 
g
,global_step/IsInitialized/VarIsInitializedOpVarIsInitializedOpglobal_step*
_output_shapes
: 
_
global_step/AssignAssignVariableOpglobal_stepglobal_step/Initializer/zeros*
dtype0	
c
global_step/Read/ReadVariableOpReadVariableOpglobal_step*
dtype0	*
_output_shapes
: 
o
input_example_tensorPlaceholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
U
ParseExample/ConstConst*
valueB *
dtype0*
_output_shapes
: 
W
ParseExample/Const_1Const*
valueB	 *
dtype0	*
_output_shapes
: 
W
ParseExample/Const_2Const*
dtype0	*
_output_shapes
: *
valueB	 
W
ParseExample/Const_3Const*
valueB *
dtype0*
_output_shapes
: 
W
ParseExample/Const_4Const*
valueB *
dtype0*
_output_shapes
: 
W
ParseExample/Const_5Const*
dtype0*
_output_shapes
: *
valueB 
W
ParseExample/Const_6Const*
_output_shapes
: *
valueB *
dtype0
W
ParseExample/Const_7Const*
_output_shapes
: *
valueB	 *
dtype0	
W
ParseExample/Const_8Const*
valueB	 *
dtype0	*
_output_shapes
: 
W
ParseExample/Const_9Const*
dtype0*
_output_shapes
: *
valueB 
X
ParseExample/Const_10Const*
valueB *
dtype0*
_output_shapes
: 
X
ParseExample/Const_11Const*
dtype0*
_output_shapes
: *
valueB 
X
ParseExample/Const_12Const*
valueB	 *
dtype0	*
_output_shapes
: 
X
ParseExample/Const_13Const*
valueB	 *
dtype0	*
_output_shapes
: 
X
ParseExample/Const_14Const*
valueB	 *
dtype0	*
_output_shapes
: 
X
ParseExample/Const_15Const*
valueB	 *
dtype0	*
_output_shapes
: 
X
ParseExample/Const_16Const*
valueB	 *
dtype0	*
_output_shapes
: 
b
ParseExample/ParseExample/namesConst*
valueB *
dtype0*
_output_shapes
: 
n
&ParseExample/ParseExample/dense_keys_0Const*
valueB Bcompany*
dtype0*
_output_shapes
: 
{
&ParseExample/ParseExample/dense_keys_1Const*%
valueB Bdropoff_census_tract*
dtype0*
_output_shapes
: 
}
&ParseExample/ParseExample/dense_keys_2Const*'
valueB Bdropoff_community_area*
dtype0*
_output_shapes
: 
w
&ParseExample/ParseExample/dense_keys_3Const*!
valueB Bdropoff_latitude*
dtype0*
_output_shapes
: 
x
&ParseExample/ParseExample/dense_keys_4Const*"
valueB Bdropoff_longitude*
dtype0*
_output_shapes
: 
k
&ParseExample/ParseExample/dense_keys_5Const*
_output_shapes
: *
valueB
 Bfare*
dtype0
s
&ParseExample/ParseExample/dense_keys_6Const*
_output_shapes
: *
valueB Bpayment_type*
dtype0
z
&ParseExample/ParseExample/dense_keys_7Const*$
valueB Bpickup_census_tract*
dtype0*
_output_shapes
: 
|
&ParseExample/ParseExample/dense_keys_8Const*&
valueB Bpickup_community_area*
dtype0*
_output_shapes
: 
v
&ParseExample/ParseExample/dense_keys_9Const* 
valueB Bpickup_latitude*
dtype0*
_output_shapes
: 
x
'ParseExample/ParseExample/dense_keys_10Const*!
valueB Bpickup_longitude*
dtype0*
_output_shapes
: 
r
'ParseExample/ParseExample/dense_keys_11Const*
valueB B
trip_miles*
dtype0*
_output_shapes
: 
t
'ParseExample/ParseExample/dense_keys_12Const*
valueB Btrip_seconds*
dtype0*
_output_shapes
: 
v
'ParseExample/ParseExample/dense_keys_13Const*
valueB Btrip_start_day*
dtype0*
_output_shapes
: 
w
'ParseExample/ParseExample/dense_keys_14Const* 
valueB Btrip_start_hour*
dtype0*
_output_shapes
: 
x
'ParseExample/ParseExample/dense_keys_15Const*!
valueB Btrip_start_month*
dtype0*
_output_shapes
: 
|
'ParseExample/ParseExample/dense_keys_16Const*%
valueB Btrip_start_timestamp*
dtype0*
_output_shapes
: 
В
ParseExample/ParseExampleParseExampleinput_example_tensorParseExample/ParseExample/names&ParseExample/ParseExample/dense_keys_0&ParseExample/ParseExample/dense_keys_1&ParseExample/ParseExample/dense_keys_2&ParseExample/ParseExample/dense_keys_3&ParseExample/ParseExample/dense_keys_4&ParseExample/ParseExample/dense_keys_5&ParseExample/ParseExample/dense_keys_6&ParseExample/ParseExample/dense_keys_7&ParseExample/ParseExample/dense_keys_8&ParseExample/ParseExample/dense_keys_9'ParseExample/ParseExample/dense_keys_10'ParseExample/ParseExample/dense_keys_11'ParseExample/ParseExample/dense_keys_12'ParseExample/ParseExample/dense_keys_13'ParseExample/ParseExample/dense_keys_14'ParseExample/ParseExample/dense_keys_15'ParseExample/ParseExample/dense_keys_16ParseExample/ConstParseExample/Const_1ParseExample/Const_2ParseExample/Const_3ParseExample/Const_4ParseExample/Const_5ParseExample/Const_6ParseExample/Const_7ParseExample/Const_8ParseExample/Const_9ParseExample/Const_10ParseExample/Const_11ParseExample/Const_12ParseExample/Const_13ParseExample/Const_14ParseExample/Const_15ParseExample/Const_16*
Ndense*й
_output_shapesЦ
У:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
Nsparse *x
dense_shapesh
f:::::::::::::::::*
sparse_types
 *
Tdense
2									
х
ConstConst*Џ
valueЅBЂ Bgs://sina-dev/output/tfx/chicago_taxi_pipeline_kubeflow_gcp/Transform/transform_output/33/transform_fn/assets/vocab_compute_and_apply_vocabulary_vocabulary*
dtype0*
_output_shapes
: 
щ
Const_1Const*Б
valueЇBЄ Bgs://sina-dev/output/tfx/chicago_taxi_pipeline_kubeflow_gcp/Transform/transform_output/33/transform_fn/assets/vocab_compute_and_apply_vocabulary_1_vocabulary*
dtype0*
_output_shapes
: 
|
transform/ConstConst*
_output_shapes
:	*9
value0B.	"$U'BЛx'B#'BN'BЇ'Bж'BВ'BЪ'BMп'B*
dtype0
V
transform/Const_1Const*
dtype0*
_output_shapes
: *
valueB
 *{?@

transform/Const_2Const*
_output_shapes
:
*=
value4B2
"(hrЏТ`ЏТWЏТ.RЏТYNЏТМJЏТFЏТїCЏТ@ЏТѓ=ЏТ*
dtype0
V
transform/Const_3Const*
dtype0*
_output_shapes
: *
valueB
 *ІўFA
V
transform/Const_4Const*
valueB
 *ЬTУA*
dtype0*
_output_shapes
: 
V
transform/Const_5Const*
valueB
 *^XC*
dtype0*
_output_shapes
: 
V
transform/Const_6Const*
valueB
 *џyDD*
dtype0*
_output_shapes
: 
~
transform/Const_7Const*
_output_shapes
:	*9
value0B.	"$)W'Bw'B#'BN'Bю'B1'BеА'BЩ'BMп'B*
dtype0
V
transform/Const_8Const*
valueB
 *ЪЭJ*
dtype0*
_output_shapes
: 
ј
transform/Const_9Const*Ж
valueЌBЉ BЂgs://sina-dev/output/tfx/chicago_taxi_pipeline_kubeflow_gcp/Transform/transform_output/33/.temp_path/tftransform_tmp/vocab_compute_and_apply_vocabulary_vocabulary*
dtype0*
_output_shapes
: 
ћ
transform/Const_10Const*И
valueЎBЋ BЄgs://sina-dev/output/tfx/chicago_taxi_pipeline_kubeflow_gcp/Transform/transform_output/33/.temp_path/tftransform_tmp/vocab_compute_and_apply_vocabulary_1_vocabulary*
dtype0*
_output_shapes
: 

transform/Const_11Const*=
value4B2
"(]oЏТuYЏТRЏТкNЏТLЏТЯHЏТDЏТїCЏТ@ЏТѓ=ЏТ*
dtype0*
_output_shapes
:


"transform/transform/inputs/companyPlaceholder*
shape:џџџџџџџџџ*
dtype0*'
_output_shapes
:џџџџџџџџџ

1transform/transform/inputs/F_dropoff_census_tractPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

3transform/transform/inputs/F_dropoff_community_areaPlaceholder*
shape:џџџџџџџџџ*
dtype0	*'
_output_shapes
:џџџџџџџџџ

-transform/transform/inputs/F_dropoff_latitudePlaceholder*
shape:џџџџџџџџџ*
dtype0*'
_output_shapes
:џџџџџџџџџ

.transform/transform/inputs/F_dropoff_longitudePlaceholder*
dtype0*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

transform/transform/inputs/farePlaceholder*
dtype0*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

)transform/transform/inputs/F_payment_typePlaceholder*
shape:џџџџџџџџџ*
dtype0*'
_output_shapes
:џџџџџџџџџ

0transform/transform/inputs/F_pickup_census_tractPlaceholder*
shape:џџџџџџџџџ*
dtype0	*'
_output_shapes
:џџџџџџџџџ

2transform/transform/inputs/F_pickup_community_areaPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

,transform/transform/inputs/F_pickup_latitudePlaceholder*
dtype0*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

-transform/transform/inputs/F_pickup_longitudePlaceholder*
dtype0*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

transform/transform/inputs/tipsPlaceholder*
dtype0*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

'transform/transform/inputs/F_trip_milesPlaceholder*
dtype0*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

)transform/transform/inputs/F_trip_secondsPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

+transform/transform/inputs/F_trip_start_dayPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

,transform/transform/inputs/F_trip_start_hourPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

-transform/transform/inputs/F_trip_start_monthPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

1transform/transform/inputs/F_trip_start_timestampPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

.transform/transform/inputs/inputs/company_copyIdentityParseExample/ParseExample*
T0*'
_output_shapes
:џџџџџџџџџ

=transform/transform/inputs/inputs/F_dropoff_census_tract_copyIdentityParseExample/ParseExample:1*
T0	*'
_output_shapes
:џџџџџџџџџ

?transform/transform/inputs/inputs/F_dropoff_community_area_copyIdentityParseExample/ParseExample:2*
T0	*'
_output_shapes
:џџџџџџџџџ

9transform/transform/inputs/inputs/F_dropoff_latitude_copyIdentityParseExample/ParseExample:3*
T0*'
_output_shapes
:џџџџџџџџџ

:transform/transform/inputs/inputs/F_dropoff_longitude_copyIdentityParseExample/ParseExample:4*
T0*'
_output_shapes
:џџџџџџџџџ

+transform/transform/inputs/inputs/fare_copyIdentityParseExample/ParseExample:5*
T0*'
_output_shapes
:џџџџџџџџџ

5transform/transform/inputs/inputs/F_payment_type_copyIdentityParseExample/ParseExample:6*
T0*'
_output_shapes
:џџџџџџџџџ

<transform/transform/inputs/inputs/F_pickup_census_tract_copyIdentityParseExample/ParseExample:7*'
_output_shapes
:џџџџџџџџџ*
T0	

>transform/transform/inputs/inputs/F_pickup_community_area_copyIdentityParseExample/ParseExample:8*'
_output_shapes
:џџџџџџџџџ*
T0	

8transform/transform/inputs/inputs/F_pickup_latitude_copyIdentityParseExample/ParseExample:9*
T0*'
_output_shapes
:џџџџџџџџџ

9transform/transform/inputs/inputs/F_pickup_longitude_copyIdentityParseExample/ParseExample:10*
T0*'
_output_shapes
:џџџџџџџџџ

+transform/transform/inputs/inputs/tips_copyIdentitytransform/transform/inputs/tips*
T0*'
_output_shapes
:џџџџџџџџџ

3transform/transform/inputs/inputs/F_trip_miles_copyIdentityParseExample/ParseExample:11*'
_output_shapes
:џџџџџџџџџ*
T0

5transform/transform/inputs/inputs/F_trip_seconds_copyIdentityParseExample/ParseExample:12*
T0	*'
_output_shapes
:џџџџџџџџџ

7transform/transform/inputs/inputs/F_trip_start_day_copyIdentityParseExample/ParseExample:13*
T0	*'
_output_shapes
:џџџџџџџџџ

8transform/transform/inputs/inputs/F_trip_start_hour_copyIdentityParseExample/ParseExample:14*
T0	*'
_output_shapes
:џџџџџџџџџ

9transform/transform/inputs/inputs/F_trip_start_month_copyIdentityParseExample/ParseExample:15*
T0	*'
_output_shapes
:џџџџџџџџџ

=transform/transform/inputs/inputs/F_trip_start_timestamp_copyIdentityParseExample/ParseExample:16*
T0	*'
_output_shapes
:џџџџџџџџџ
­
Otransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/SizeSize3transform/transform/inputs/inputs/F_trip_miles_copy*
_output_shapes
: *
T0
и
Otransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/CastCastOtransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/Size*
_output_shapes
: *

DstT0*

SrcT0
Ё
Ptransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
§
Ntransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/SumSum3transform/transform/inputs/inputs/F_trip_miles_copyPtransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/Const*
T0*
_output_shapes
: 

Rtransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/truedivRealDivNtransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/SumOtransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/Cast*
_output_shapes
: *
T0

Ntransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/subSub3transform/transform/inputs/inputs/F_trip_miles_copyRtransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/truediv*'
_output_shapes
:џџџџџџџџџ*
T0
н
Qtransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/SquareSquareNtransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/sub*
T0*'
_output_shapes
:џџџџџџџџџ
Ѓ
Rtransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/Const_1Const*
valueB"       *
dtype0*
_output_shapes
:

Ptransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/Sum_1SumQtransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/SquareRtransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/Const_1*
T0*
_output_shapes
: 
Ѓ
Ttransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/truediv_1RealDivPtransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/Sum_1Otransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/Cast*
T0*
_output_shapes
: 

Ptransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 

Vtransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/PlaceholderPlaceholder*
dtype0*
_output_shapes
: *
shape: 

Xtransform/transform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/Placeholder_1Placeholder*
dtype0*
_output_shapes
: *
shape: 
Т
Atransform/transform/scale_to_z_score/scale_to_z_score_per_key/subSub3transform/transform/inputs/inputs/F_trip_miles_copytransform/Const_1*
T0*'
_output_shapes
:џџџџџџџџџ
~
Btransform/transform/scale_to_z_score/scale_to_z_score_per_key/SqrtSqrttransform/Const_4*
T0*
_output_shapes
: 

Htransform/transform/scale_to_z_score/scale_to_z_score_per_key/NotEqual/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 

Ftransform/transform/scale_to_z_score/scale_to_z_score_per_key/NotEqualNotEqualBtransform/transform/scale_to_z_score/scale_to_z_score_per_key/SqrtHtransform/transform/scale_to_z_score/scale_to_z_score_per_key/NotEqual/y*
_output_shapes
: *
T0
Ъ
Htransform/transform/scale_to_z_score/scale_to_z_score_per_key/zeros_like	ZerosLikeAtransform/transform/scale_to_z_score/scale_to_z_score_per_key/sub*'
_output_shapes
:џџџџџџџџџ*
T0
Т
Btransform/transform/scale_to_z_score/scale_to_z_score_per_key/CastCastFtransform/transform/scale_to_z_score/scale_to_z_score_per_key/NotEqual*

SrcT0
*
_output_shapes
: *

DstT0

Atransform/transform/scale_to_z_score/scale_to_z_score_per_key/addAddV2Htransform/transform/scale_to_z_score/scale_to_z_score_per_key/zeros_likeBtransform/transform/scale_to_z_score/scale_to_z_score_per_key/Cast*'
_output_shapes
:џџџџџџџџџ*
T0
а
Dtransform/transform/scale_to_z_score/scale_to_z_score_per_key/Cast_1CastAtransform/transform/scale_to_z_score/scale_to_z_score_per_key/add*'
_output_shapes
:џџџџџџџџџ*

DstT0
*

SrcT0

Etransform/transform/scale_to_z_score/scale_to_z_score_per_key/truedivRealDivAtransform/transform/scale_to_z_score/scale_to_z_score_per_key/subBtransform/transform/scale_to_z_score/scale_to_z_score_per_key/Sqrt*'
_output_shapes
:џџџџџџџџџ*
T0
д
Ftransform/transform/scale_to_z_score/scale_to_z_score_per_key/SelectV2SelectV2Dtransform/transform/scale_to_z_score/scale_to_z_score_per_key/Cast_1Etransform/transform/scale_to_z_score/scale_to_z_score_per_key/truedivAtransform/transform/scale_to_z_score/scale_to_z_score_per_key/sub*
T0*'
_output_shapes
:џџџџџџџџџ
Ї
Qtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/SizeSize+transform/transform/inputs/inputs/fare_copy*
T0*
_output_shapes
: 
м
Qtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/CastCastQtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/Size*

SrcT0*
_output_shapes
: *

DstT0
Ѓ
Rtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
љ
Ptransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/SumSum+transform/transform/inputs/inputs/fare_copyRtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/Const*
T0*
_output_shapes
: 
Ѕ
Ttransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/truedivRealDivPtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/SumQtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/Cast*
T0*
_output_shapes
: 

Ptransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/subSub+transform/transform/inputs/inputs/fare_copyTtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/truediv*
T0*'
_output_shapes
:џџџџџџџџџ
с
Stransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/SquareSquarePtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/sub*
T0*'
_output_shapes
:џџџџџџџџџ
Ѕ
Ttransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/Const_1Const*
valueB"       *
dtype0*
_output_shapes
:
Ѕ
Rtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/Sum_1SumStransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/SquareTtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/Const_1*
T0*
_output_shapes
: 
Љ
Vtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/truediv_1RealDivRtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/Sum_1Qtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/Cast*
T0*
_output_shapes
: 

Rtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 

Xtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/PlaceholderPlaceholder*
dtype0*
_output_shapes
: *
shape: 

Ztransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/Placeholder_1Placeholder*
dtype0*
_output_shapes
: *
shape: 
М
Ctransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/subSub+transform/transform/inputs/inputs/fare_copytransform/Const_3*
T0*'
_output_shapes
:џџџџџџџџџ

Dtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/SqrtSqrttransform/Const_5*
T0*
_output_shapes
: 

Jtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/NotEqual/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 

Htransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/NotEqualNotEqualDtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/SqrtJtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/NotEqual/y*
T0*
_output_shapes
: 
Ю
Jtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/zeros_like	ZerosLikeCtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/sub*
T0*'
_output_shapes
:џџџџџџџџџ
Ц
Dtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/CastCastHtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/NotEqual*
_output_shapes
: *

DstT0*

SrcT0


Ctransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/addAddV2Jtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/zeros_likeDtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/Cast*'
_output_shapes
:џџџџџџџџџ*
T0
д
Ftransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/Cast_1CastCtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/add*'
_output_shapes
:џџџџџџџџџ*

DstT0
*

SrcT0

Gtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/truedivRealDivCtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/subDtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/Sqrt*
T0*'
_output_shapes
:џџџџџџџџџ
м
Htransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/SelectV2SelectV2Ftransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/Cast_1Gtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/truedivCtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/sub*'
_output_shapes
:џџџџџџџџџ*
T0
б
Qtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/CastCast5transform/transform/inputs/inputs/F_trip_seconds_copy*'
_output_shapes
:џџџџџџџџџ*

DstT0*

SrcT0	
Э
Qtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/SizeSizeQtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/Cast*
T0*
_output_shapes
: 
о
Stransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/Cast_1CastQtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/Size*

SrcT0*
_output_shapes
: *

DstT0
Ѓ
Rtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/ConstConst*
valueB"       *
dtype0*
_output_shapes
:

Ptransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/SumSumQtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/CastRtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/Const*
T0*
_output_shapes
: 
Ї
Ttransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/truedivRealDivPtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/SumStransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/Cast_1*
T0*
_output_shapes
: 
В
Ptransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/subSubQtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/CastTtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/truediv*
T0*'
_output_shapes
:џџџџџџџџџ
с
Stransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/SquareSquarePtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/sub*
T0*'
_output_shapes
:џџџџџџџџџ
Ѕ
Ttransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/Const_1Const*
valueB"       *
dtype0*
_output_shapes
:
Ѕ
Rtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/Sum_1SumStransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/SquareTtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/Const_1*
T0*
_output_shapes
: 
Ћ
Vtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/truediv_1RealDivRtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/Sum_1Stransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/Cast_1*
_output_shapes
: *
T0

Rtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 

Xtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/PlaceholderPlaceholder*
dtype0*
_output_shapes
: *
shape: 

Ztransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/Placeholder_1Placeholder*
dtype0*
_output_shapes
: *
shape: 
Ф
Dtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/CastCast5transform/transform/inputs/inputs/F_trip_seconds_copy*'
_output_shapes
:џџџџџџџџџ*

DstT0*

SrcT0	
е
Ctransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/subSubDtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/Casttransform/Const_6*
T0*'
_output_shapes
:џџџџџџџџџ

Dtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/SqrtSqrttransform/Const_8*
_output_shapes
: *
T0

Jtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/NotEqual/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 

Htransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/NotEqualNotEqualDtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/SqrtJtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/NotEqual/y*
T0*
_output_shapes
: 
Ю
Jtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/zeros_like	ZerosLikeCtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/sub*
T0*'
_output_shapes
:џџџџџџџџџ
Ш
Ftransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/Cast_1CastHtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/NotEqual*

SrcT0
*
_output_shapes
: *

DstT0

Ctransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/addAddV2Jtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/zeros_likeFtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/Cast_1*
T0*'
_output_shapes
:џџџџџџџџџ
д
Ftransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/Cast_2CastCtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/add*

SrcT0*'
_output_shapes
:џџџџџџџџџ*

DstT0


Gtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/truedivRealDivCtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/subDtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/Sqrt*'
_output_shapes
:џџџџџџџџџ*
T0
м
Htransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/SelectV2SelectV2Ftransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/Cast_2Gtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/truedivCtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/sub*'
_output_shapes
:џџџџџџџџџ*
T0

Itransform/transform/compute_and_apply_vocabulary/vocabulary/Reshape/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
ў
Ctransform/transform/compute_and_apply_vocabulary/vocabulary/ReshapeReshape5transform/transform/inputs/inputs/F_payment_type_copyItransform/transform/compute_and_apply_vocabulary/vocabulary/Reshape/shape*
T0*#
_output_shapes
:џџџџџџџџџ

Gtransform/transform/compute_and_apply_vocabulary/vocabulary/PlaceholderPlaceholder*
dtype0*
_output_shapes
: *
shape: 

Btransform/transform/compute_and_apply_vocabulary/apply_vocab/ConstConst*
valueB	 R
џџџџџџџџџ*
dtype0	*
_output_shapes
: 

Gtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_tableHashTableV2*
value_dtype0	*
	key_dtype0*
_output_shapes
: *y
shared_namejhhash_table_Tensor("compute_and_apply_vocabulary/vocabulary/Placeholder:0", shape=(), dtype=string)_-2_-1

itransform/transform/compute_and_apply_vocabulary/apply_vocab/text_file_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV2Gtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_tableConst*
value_indexџџџџџџџџџ*
	key_indexўџџџџџџџџ
ф
ntransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/hash_table_Size/LookupTableSizeV2LookupTableSizeV2Gtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table*
_output_shapes
: 

Rtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/add/yConst*
value	B	 R
*
dtype0	*
_output_shapes
: 
О
Ptransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/addAddV2ntransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/hash_table_Size/LookupTableSizeV2Rtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/add/y*
T0	*
_output_shapes
: 
ч
Ztransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_bucketStringToHashBucketFast5transform/transform/inputs/inputs/F_payment_type_copy*'
_output_shapes
:џџџџџџџџџ*
num_buckets


rtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Gtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table5transform/transform/inputs/inputs/F_payment_type_copyBtransform/transform/compute_and_apply_vocabulary/apply_vocab/Const*'
_output_shapes
:џџџџџџџџџ*	
Tin0*

Tout0	
ц
ptransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Size/LookupTableSizeV2LookupTableSizeV2Gtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table*
_output_shapes
: 
й
Rtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/AddAddZtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_bucketptransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Size/LookupTableSizeV2*'
_output_shapes
:џџџџџџџџџ*
T0	
Э
Wtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/NotEqualNotEqualrtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2Btransform/transform/compute_and_apply_vocabulary/apply_vocab/Const*'
_output_shapes
:џџџџџџџџџ*
T0	
Ж
Wtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/SelectV2SelectV2Wtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/NotEqualrtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2Rtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/Add*
T0	*'
_output_shapes
:џџџџџџџџџ

Dtransform/transform/compute_and_apply_vocabulary/apply_vocab/Const_1Const*
value	B	 R *
dtype0	*
_output_shapes
: 

Btransform/transform/compute_and_apply_vocabulary/apply_vocab/sub/yConst*
_output_shapes
: *
value	B	 R*
dtype0	
ў
@transform/transform/compute_and_apply_vocabulary/apply_vocab/subSubPtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/addBtransform/transform/compute_and_apply_vocabulary/apply_vocab/sub/y*
_output_shapes
: *
T0	

Ktransform/transform/compute_and_apply_vocabulary_1/vocabulary/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
ћ
Etransform/transform/compute_and_apply_vocabulary_1/vocabulary/ReshapeReshape.transform/transform/inputs/inputs/company_copyKtransform/transform/compute_and_apply_vocabulary_1/vocabulary/Reshape/shape*
T0*#
_output_shapes
:џџџџџџџџџ

Itransform/transform/compute_and_apply_vocabulary_1/vocabulary/PlaceholderPlaceholder*
shape: *
dtype0*
_output_shapes
: 

Dtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/ConstConst*
valueB	 R
џџџџџџџџџ*
dtype0	*
_output_shapes
: 

Itransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_tableHashTableV2*
value_dtype0	*
	key_dtype0*
_output_shapes
: *{
shared_nameljhash_table_Tensor("compute_and_apply_vocabulary_1/vocabulary/Placeholder:0", shape=(), dtype=string)_-2_-1

ktransform/transform/compute_and_apply_vocabulary_1/apply_vocab/text_file_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV2Itransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_tableConst_1*
value_indexџџџџџџџџџ*
	key_indexўџџџџџџџџ
ш
ptransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/hash_table_Size/LookupTableSizeV2LookupTableSizeV2Itransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table*
_output_shapes
: 

Ttransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/add/yConst*
value	B	 R
*
dtype0	*
_output_shapes
: 
Ф
Rtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/addAddV2ptransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/hash_table_Size/LookupTableSizeV2Ttransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/add/y*
_output_shapes
: *
T0	
т
\transform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_bucketStringToHashBucketFast.transform/transform/inputs/inputs/company_copy*'
_output_shapes
:џџџџџџџџџ*
num_buckets


ttransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Itransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table.transform/transform/inputs/inputs/company_copyDtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/Const*'
_output_shapes
:џџџџџџџџџ*	
Tin0*

Tout0	
ъ
rtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_table_Size/LookupTableSizeV2LookupTableSizeV2Itransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table*
_output_shapes
: 
п
Ttransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/AddAdd\transform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_bucketrtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_table_Size/LookupTableSizeV2*
T0	*'
_output_shapes
:џџџџџџџџџ
г
Ytransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/NotEqualNotEqualttransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2Dtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/Const*'
_output_shapes
:џџџџџџџџџ*
T0	
О
Ytransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/SelectV2SelectV2Ytransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/NotEqualttransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2Ttransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/Add*
T0	*'
_output_shapes
:џџџџџџџџџ

Ftransform/transform/compute_and_apply_vocabulary_1/apply_vocab/Const_1Const*
value	B	 R *
dtype0	*
_output_shapes
: 

Dtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/sub/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 

Btransform/transform/compute_and_apply_vocabulary_1/apply_vocab/subSubRtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/addDtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/sub/y*
_output_shapes
: *
T0	

3transform/transform/bucketize/quantiles/PlaceholderPlaceholder*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ*
dtype0
|
1transform/transform/bucketize/quantiles/sort/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
o
0transform/transform/bucketize/quantiles/sort/NegNegtransform/Const_7*
T0*
_output_shapes
:	

2transform/transform/bucketize/quantiles/sort/ShapeShape0transform/transform/bucketize/quantiles/sort/Neg*
_output_shapes
:*
T0

@transform/transform/bucketize/quantiles/sort/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ

Btransform/transform/bucketize/quantiles/sort/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:

Btransform/transform/bucketize/quantiles/sort/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

:transform/transform/bucketize/quantiles/sort/strided_sliceStridedSlice2transform/transform/bucketize/quantiles/sort/Shape@transform/transform/bucketize/quantiles/sort/strided_slice/stackBtransform/transform/bucketize/quantiles/sort/strided_slice/stack_1Btransform/transform/bucketize/quantiles/sort/strided_slice/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask
s
1transform/transform/bucketize/quantiles/sort/RankConst*
value	B :*
dtype0*
_output_shapes
: 
ж
3transform/transform/bucketize/quantiles/sort/TopKV2TopKV20transform/transform/bucketize/quantiles/sort/Neg:transform/transform/bucketize/quantiles/sort/strided_slice*
T0* 
_output_shapes
:	:	

2transform/transform/bucketize/quantiles/sort/Neg_1Neg3transform/transform/bucketize/quantiles/sort/TopKV2*
T0*
_output_shapes
:	
x
6transform/transform/bucketize/quantiles/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
е
2transform/transform/bucketize/quantiles/ExpandDims
ExpandDims2transform/transform/bucketize/quantiles/sort/Neg_16transform/transform/bucketize/quantiles/ExpandDims/dim*
T0*
_output_shapes

:	
~
3transform/transform/bucketize/quantiles/sort_1/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

2transform/transform/bucketize/quantiles/sort_1/NegNeg2transform/transform/bucketize/quantiles/ExpandDims*
_output_shapes

:	*
T0

4transform/transform/bucketize/quantiles/sort_1/ShapeShape2transform/transform/bucketize/quantiles/sort_1/Neg*
_output_shapes
:*
T0

Btransform/transform/bucketize/quantiles/sort_1/strided_slice/stackConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

Dtransform/transform/bucketize/quantiles/sort_1/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:

Dtransform/transform/bucketize/quantiles/sort_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

<transform/transform/bucketize/quantiles/sort_1/strided_sliceStridedSlice4transform/transform/bucketize/quantiles/sort_1/ShapeBtransform/transform/bucketize/quantiles/sort_1/strided_slice/stackDtransform/transform/bucketize/quantiles/sort_1/strided_slice/stack_1Dtransform/transform/bucketize/quantiles/sort_1/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
u
3transform/transform/bucketize/quantiles/sort_1/RankConst*
_output_shapes
: *
value	B :*
dtype0
ф
5transform/transform/bucketize/quantiles/sort_1/TopKV2TopKV22transform/transform/bucketize/quantiles/sort_1/Neg<transform/transform/bucketize/quantiles/sort_1/strided_slice*(
_output_shapes
:	:	*
T0

4transform/transform/bucketize/quantiles/sort_1/Neg_1Neg5transform/transform/bucketize/quantiles/sort_1/TopKV2*
T0*
_output_shapes

:	
p
.transform/transform/bucketize/assert_rank/rankConst*
value	B :*
dtype0*
_output_shapes
: 

/transform/transform/bucketize/assert_rank/ShapeShape4transform/transform/bucketize/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:
`
Xtransform/transform/bucketize/assert_rank/assert_type/statically_determined_correct_typeNoOp
Q
Itransform/transform/bucketize/assert_rank/static_checks_determined_all_okNoOp
ж
Mtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/unstackUnpack8transform/transform/inputs/inputs/F_pickup_latitude_copy*	
num*
T0*

axis*#
_output_shapes
:џџџџџџџџџ
О
Ztransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ShapeShape4transform/transform/bucketize/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:
В
htransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
Д
jtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
Д
jtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ж
btransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_sliceStridedSliceZtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Shapehtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackjtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1jtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
ѕ
Ytransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastCastbtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice*

SrcT0*
_output_shapes
: *

DstT0	
О
Xtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/NegNeg4transform/transform/bucketize/quantiles/sort_1/Neg_1*
_output_shapes

:	*
T0
Ж
ctransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axisConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
г
^transform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2	ReverseV2Xtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Negctransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axis*
_output_shapes

:	*
T0
о
Ztransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1NegMtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/unstack*
T0*#
_output_shapes
:џџџџџџџџџ
Є
Ztransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ConstConst*
valueB: *
dtype0*
_output_shapes
:
И
Xtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/MaxMaxZtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1Ztransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Const*
_output_shapes
: *
T0
і
ftransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0PackXtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Max*
T0*
N*
_output_shapes
:

dtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Packftransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0*
T0*
N*
_output_shapes

:
Ћ
`transform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
С
[transform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concatConcatV2^transform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2dtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1`transform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axis*
N*
_output_shapes

:
*
T0
о
Ztransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2NegMtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/unstack*#
_output_shapes
:џџџџџџџџџ*
T0
ѓ
\transform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstackUnpack[transform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat*
_output_shapes
:
*	
num*
T0
і
jtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketizeBoostedTreesBucketizeZtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2\transform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstack*
num_features*#
_output_shapes
:џџџџџџџџџ

[transform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1Castjtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketize*

SrcT0*#
_output_shapes
:џџџџџџџџџ*

DstT0	
Х
Xtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/SubSubYtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast[transform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1*#
_output_shapes
:џџџџџџџџџ*
T0	
ю
Qtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/transpose/aPackXtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub*
N*'
_output_shapes
:џџџџџџџџџ*
T0	
Ѕ
Ttransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/transpose/permConst*
_output_shapes
:*
valueB"       *
dtype0
З
Otransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/transpose	TransposeQtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/transpose/aTtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/transpose/perm*'
_output_shapes
:џџџџџџџџџ*
T0	
s
1transform/transform/bucketize/apply_buckets/ConstConst*
_output_shapes
: *
value	B	 R *
dtype0	

1transform/transform/bucketize/apply_buckets/ShapeShape4transform/transform/bucketize/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:

?transform/transform/bucketize/apply_buckets/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

Atransform/transform/bucketize/apply_buckets/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Atransform/transform/bucketize/apply_buckets/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

9transform/transform/bucketize/apply_buckets/strided_sliceStridedSlice1transform/transform/bucketize/apply_buckets/Shape?transform/transform/bucketize/apply_buckets/strided_slice/stackAtransform/transform/bucketize/apply_buckets/strided_slice/stack_1Atransform/transform/bucketize/apply_buckets/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0

5transform/transform/bucketize_1/quantiles/PlaceholderPlaceholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
~
3transform/transform/bucketize_1/quantiles/sort/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
r
2transform/transform/bucketize_1/quantiles/sort/NegNegtransform/Const_11*
T0*
_output_shapes
:


4transform/transform/bucketize_1/quantiles/sort/ShapeShape2transform/transform/bucketize_1/quantiles/sort/Neg*
T0*
_output_shapes
:

Btransform/transform/bucketize_1/quantiles/sort/strided_slice/stackConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

Dtransform/transform/bucketize_1/quantiles/sort/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 

Dtransform/transform/bucketize_1/quantiles/sort/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

<transform/transform/bucketize_1/quantiles/sort/strided_sliceStridedSlice4transform/transform/bucketize_1/quantiles/sort/ShapeBtransform/transform/bucketize_1/quantiles/sort/strided_slice/stackDtransform/transform/bucketize_1/quantiles/sort/strided_slice/stack_1Dtransform/transform/bucketize_1/quantiles/sort/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
u
3transform/transform/bucketize_1/quantiles/sort/RankConst*
value	B :*
dtype0*
_output_shapes
: 
м
5transform/transform/bucketize_1/quantiles/sort/TopKV2TopKV22transform/transform/bucketize_1/quantiles/sort/Neg<transform/transform/bucketize_1/quantiles/sort/strided_slice* 
_output_shapes
:
:
*
T0

4transform/transform/bucketize_1/quantiles/sort/Neg_1Neg5transform/transform/bucketize_1/quantiles/sort/TopKV2*
T0*
_output_shapes
:

z
8transform/transform/bucketize_1/quantiles/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
л
4transform/transform/bucketize_1/quantiles/ExpandDims
ExpandDims4transform/transform/bucketize_1/quantiles/sort/Neg_18transform/transform/bucketize_1/quantiles/ExpandDims/dim*
T0*
_output_shapes

:


5transform/transform/bucketize_1/quantiles/sort_1/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

4transform/transform/bucketize_1/quantiles/sort_1/NegNeg4transform/transform/bucketize_1/quantiles/ExpandDims*
T0*
_output_shapes

:


6transform/transform/bucketize_1/quantiles/sort_1/ShapeShape4transform/transform/bucketize_1/quantiles/sort_1/Neg*
T0*
_output_shapes
:

Dtransform/transform/bucketize_1/quantiles/sort_1/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ

Ftransform/transform/bucketize_1/quantiles/sort_1/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:

Ftransform/transform/bucketize_1/quantiles/sort_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ђ
>transform/transform/bucketize_1/quantiles/sort_1/strided_sliceStridedSlice6transform/transform/bucketize_1/quantiles/sort_1/ShapeDtransform/transform/bucketize_1/quantiles/sort_1/strided_slice/stackFtransform/transform/bucketize_1/quantiles/sort_1/strided_slice/stack_1Ftransform/transform/bucketize_1/quantiles/sort_1/strided_slice/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask
w
5transform/transform/bucketize_1/quantiles/sort_1/RankConst*
_output_shapes
: *
value	B :*
dtype0
ъ
7transform/transform/bucketize_1/quantiles/sort_1/TopKV2TopKV24transform/transform/bucketize_1/quantiles/sort_1/Neg>transform/transform/bucketize_1/quantiles/sort_1/strided_slice*
T0*(
_output_shapes
:
:


6transform/transform/bucketize_1/quantiles/sort_1/Neg_1Neg7transform/transform/bucketize_1/quantiles/sort_1/TopKV2*
T0*
_output_shapes

:

r
0transform/transform/bucketize_1/assert_rank/rankConst*
value	B :*
dtype0*
_output_shapes
: 

1transform/transform/bucketize_1/assert_rank/ShapeShape6transform/transform/bucketize_1/quantiles/sort_1/Neg_1*
_output_shapes
:*
T0
b
Ztransform/transform/bucketize_1/assert_rank/assert_type/statically_determined_correct_typeNoOp
S
Ktransform/transform/bucketize_1/assert_rank/static_checks_determined_all_okNoOp
й
Otransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/unstackUnpack9transform/transform/inputs/inputs/F_pickup_longitude_copy*	
num*
T0*

axis*#
_output_shapes
:џџџџџџџџџ
Т
\transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ShapeShape6transform/transform/bucketize_1/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:
Д
jtransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
Ж
ltransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
Ж
ltransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
р
dtransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_sliceStridedSlice\transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Shapejtransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackltransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1ltransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
љ
[transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastCastdtransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice*

SrcT0*
_output_shapes
: *

DstT0	
Т
Ztransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/NegNeg6transform/transform/bucketize_1/quantiles/sort_1/Neg_1*
T0*
_output_shapes

:

И
etransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axisConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
й
`transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2	ReverseV2Ztransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Negetransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axis*
_output_shapes

:
*
T0
т
\transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1NegOtransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/unstack*
T0*#
_output_shapes
:џџџџџџџџџ
І
\transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ConstConst*
valueB: *
dtype0*
_output_shapes
:
О
Ztransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/MaxMax\transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1\transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Const*
_output_shapes
: *
T0
њ
htransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0PackZtransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Max*
N*
_output_shapes
:*
T0

ftransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Packhtransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0*
T0*
N*
_output_shapes

:
­
btransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
Щ
]transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concatConcatV2`transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2ftransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1btransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axis*
N*
_output_shapes

:*
T0
т
\transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2NegOtransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/unstack*
T0*#
_output_shapes
:џџџџџџџџџ
ї
^transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstackUnpack]transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat*	
num*
T0*
_output_shapes
:
ќ
ltransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketizeBoostedTreesBucketize\transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2^transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstack*
num_features*#
_output_shapes
:џџџџџџџџџ

]transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1Castltransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketize*

SrcT0*#
_output_shapes
:џџџџџџџџџ*

DstT0	
Ы
Ztransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/SubSub[transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast]transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1*#
_output_shapes
:џџџџџџџџџ*
T0	
ђ
Stransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/transpose/aPackZtransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub*
T0	*
N*'
_output_shapes
:џџџџџџџџџ
Ї
Vtransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/transpose/permConst*
dtype0*
_output_shapes
:*
valueB"       
Н
Qtransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/transpose	TransposeStransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/transpose/aVtransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/transpose/perm*'
_output_shapes
:џџџџџџџџџ*
T0	
u
3transform/transform/bucketize_1/apply_buckets/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 

3transform/transform/bucketize_1/apply_buckets/ShapeShape6transform/transform/bucketize_1/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:

Atransform/transform/bucketize_1/apply_buckets/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

Ctransform/transform/bucketize_1/apply_buckets/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Ctransform/transform/bucketize_1/apply_buckets/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

;transform/transform/bucketize_1/apply_buckets/strided_sliceStridedSlice3transform/transform/bucketize_1/apply_buckets/ShapeAtransform/transform/bucketize_1/apply_buckets/strided_slice/stackCtransform/transform/bucketize_1/apply_buckets/strided_slice/stack_1Ctransform/transform/bucketize_1/apply_buckets/strided_slice/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask

5transform/transform/bucketize_2/quantiles/PlaceholderPlaceholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ
~
3transform/transform/bucketize_2/quantiles/sort/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
o
2transform/transform/bucketize_2/quantiles/sort/NegNegtransform/Const*
T0*
_output_shapes
:	

4transform/transform/bucketize_2/quantiles/sort/ShapeShape2transform/transform/bucketize_2/quantiles/sort/Neg*
T0*
_output_shapes
:

Btransform/transform/bucketize_2/quantiles/sort/strided_slice/stackConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

Dtransform/transform/bucketize_2/quantiles/sort/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 

Dtransform/transform/bucketize_2/quantiles/sort/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

<transform/transform/bucketize_2/quantiles/sort/strided_sliceStridedSlice4transform/transform/bucketize_2/quantiles/sort/ShapeBtransform/transform/bucketize_2/quantiles/sort/strided_slice/stackDtransform/transform/bucketize_2/quantiles/sort/strided_slice/stack_1Dtransform/transform/bucketize_2/quantiles/sort/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
u
3transform/transform/bucketize_2/quantiles/sort/RankConst*
value	B :*
dtype0*
_output_shapes
: 
м
5transform/transform/bucketize_2/quantiles/sort/TopKV2TopKV22transform/transform/bucketize_2/quantiles/sort/Neg<transform/transform/bucketize_2/quantiles/sort/strided_slice* 
_output_shapes
:	:	*
T0

4transform/transform/bucketize_2/quantiles/sort/Neg_1Neg5transform/transform/bucketize_2/quantiles/sort/TopKV2*
T0*
_output_shapes
:	
z
8transform/transform/bucketize_2/quantiles/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
л
4transform/transform/bucketize_2/quantiles/ExpandDims
ExpandDims4transform/transform/bucketize_2/quantiles/sort/Neg_18transform/transform/bucketize_2/quantiles/ExpandDims/dim*
T0*
_output_shapes

:	

5transform/transform/bucketize_2/quantiles/sort_1/axisConst*
_output_shapes
: *
valueB :
џџџџџџџџџ*
dtype0

4transform/transform/bucketize_2/quantiles/sort_1/NegNeg4transform/transform/bucketize_2/quantiles/ExpandDims*
T0*
_output_shapes

:	

6transform/transform/bucketize_2/quantiles/sort_1/ShapeShape4transform/transform/bucketize_2/quantiles/sort_1/Neg*
T0*
_output_shapes
:

Dtransform/transform/bucketize_2/quantiles/sort_1/strided_slice/stackConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

Ftransform/transform/bucketize_2/quantiles/sort_1/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:

Ftransform/transform/bucketize_2/quantiles/sort_1/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Ђ
>transform/transform/bucketize_2/quantiles/sort_1/strided_sliceStridedSlice6transform/transform/bucketize_2/quantiles/sort_1/ShapeDtransform/transform/bucketize_2/quantiles/sort_1/strided_slice/stackFtransform/transform/bucketize_2/quantiles/sort_1/strided_slice/stack_1Ftransform/transform/bucketize_2/quantiles/sort_1/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
w
5transform/transform/bucketize_2/quantiles/sort_1/RankConst*
_output_shapes
: *
value	B :*
dtype0
ъ
7transform/transform/bucketize_2/quantiles/sort_1/TopKV2TopKV24transform/transform/bucketize_2/quantiles/sort_1/Neg>transform/transform/bucketize_2/quantiles/sort_1/strided_slice*
T0*(
_output_shapes
:	:	

6transform/transform/bucketize_2/quantiles/sort_1/Neg_1Neg7transform/transform/bucketize_2/quantiles/sort_1/TopKV2*
T0*
_output_shapes

:	
r
0transform/transform/bucketize_2/assert_rank/rankConst*
value	B :*
dtype0*
_output_shapes
: 

1transform/transform/bucketize_2/assert_rank/ShapeShape6transform/transform/bucketize_2/quantiles/sort_1/Neg_1*
_output_shapes
:*
T0
b
Ztransform/transform/bucketize_2/assert_rank/assert_type/statically_determined_correct_typeNoOp
S
Ktransform/transform/bucketize_2/assert_rank/static_checks_determined_all_okNoOp
й
Otransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/unstackUnpack9transform/transform/inputs/inputs/F_dropoff_latitude_copy*	
num*
T0*

axis*#
_output_shapes
:џџџџџџџџџ
Т
\transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ShapeShape6transform/transform/bucketize_2/quantiles/sort_1/Neg_1*
_output_shapes
:*
T0
Д
jtransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
Ж
ltransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ж
ltransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
р
dtransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_sliceStridedSlice\transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Shapejtransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackltransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1ltransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
љ
[transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastCastdtransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice*

SrcT0*
_output_shapes
: *

DstT0	
Т
Ztransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/NegNeg6transform/transform/bucketize_2/quantiles/sort_1/Neg_1*
_output_shapes

:	*
T0
И
etransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axisConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
й
`transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2	ReverseV2Ztransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Negetransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axis*
_output_shapes

:	*
T0
т
\transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1NegOtransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/unstack*#
_output_shapes
:џџџџџџџџџ*
T0
І
\transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ConstConst*
_output_shapes
:*
valueB: *
dtype0
О
Ztransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/MaxMax\transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1\transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Const*
_output_shapes
: *
T0
њ
htransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0PackZtransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Max*
N*
_output_shapes
:*
T0

ftransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Packhtransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0*
T0*
N*
_output_shapes

:
­
btransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axisConst*
_output_shapes
: *
valueB :
џџџџџџџџџ*
dtype0
Щ
]transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concatConcatV2`transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2ftransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1btransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axis*
T0*
N*
_output_shapes

:

т
\transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2NegOtransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/unstack*#
_output_shapes
:џџџџџџџџџ*
T0
ї
^transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstackUnpack]transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat*	
num*
T0*
_output_shapes
:

ќ
ltransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketizeBoostedTreesBucketize\transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2^transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstack*#
_output_shapes
:џџџџџџџџџ*
num_features

]transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1Castltransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketize*

SrcT0*#
_output_shapes
:џџџџџџџџџ*

DstT0	
Ы
Ztransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/SubSub[transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast]transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1*
T0	*#
_output_shapes
:џџџџџџџџџ
ђ
Stransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/transpose/aPackZtransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub*
T0	*
N*'
_output_shapes
:џџџџџџџџџ
Ї
Vtransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/transpose/permConst*
valueB"       *
dtype0*
_output_shapes
:
Н
Qtransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/transpose	TransposeStransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/transpose/aVtransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/transpose/perm*
T0	*'
_output_shapes
:џџџџџџџџџ
u
3transform/transform/bucketize_2/apply_buckets/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 

3transform/transform/bucketize_2/apply_buckets/ShapeShape6transform/transform/bucketize_2/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:

Atransform/transform/bucketize_2/apply_buckets/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

Ctransform/transform/bucketize_2/apply_buckets/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Ctransform/transform/bucketize_2/apply_buckets/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0

;transform/transform/bucketize_2/apply_buckets/strided_sliceStridedSlice3transform/transform/bucketize_2/apply_buckets/ShapeAtransform/transform/bucketize_2/apply_buckets/strided_slice/stackCtransform/transform/bucketize_2/apply_buckets/strided_slice/stack_1Ctransform/transform/bucketize_2/apply_buckets/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

5transform/transform/bucketize_3/quantiles/PlaceholderPlaceholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ
~
3transform/transform/bucketize_3/quantiles/sort/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
q
2transform/transform/bucketize_3/quantiles/sort/NegNegtransform/Const_2*
T0*
_output_shapes
:


4transform/transform/bucketize_3/quantiles/sort/ShapeShape2transform/transform/bucketize_3/quantiles/sort/Neg*
T0*
_output_shapes
:

Btransform/transform/bucketize_3/quantiles/sort/strided_slice/stackConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

Dtransform/transform/bucketize_3/quantiles/sort/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 

Dtransform/transform/bucketize_3/quantiles/sort/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0

<transform/transform/bucketize_3/quantiles/sort/strided_sliceStridedSlice4transform/transform/bucketize_3/quantiles/sort/ShapeBtransform/transform/bucketize_3/quantiles/sort/strided_slice/stackDtransform/transform/bucketize_3/quantiles/sort/strided_slice/stack_1Dtransform/transform/bucketize_3/quantiles/sort/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
u
3transform/transform/bucketize_3/quantiles/sort/RankConst*
value	B :*
dtype0*
_output_shapes
: 
м
5transform/transform/bucketize_3/quantiles/sort/TopKV2TopKV22transform/transform/bucketize_3/quantiles/sort/Neg<transform/transform/bucketize_3/quantiles/sort/strided_slice* 
_output_shapes
:
:
*
T0

4transform/transform/bucketize_3/quantiles/sort/Neg_1Neg5transform/transform/bucketize_3/quantiles/sort/TopKV2*
_output_shapes
:
*
T0
z
8transform/transform/bucketize_3/quantiles/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
л
4transform/transform/bucketize_3/quantiles/ExpandDims
ExpandDims4transform/transform/bucketize_3/quantiles/sort/Neg_18transform/transform/bucketize_3/quantiles/ExpandDims/dim*
T0*
_output_shapes

:


5transform/transform/bucketize_3/quantiles/sort_1/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

4transform/transform/bucketize_3/quantiles/sort_1/NegNeg4transform/transform/bucketize_3/quantiles/ExpandDims*
_output_shapes

:
*
T0

6transform/transform/bucketize_3/quantiles/sort_1/ShapeShape4transform/transform/bucketize_3/quantiles/sort_1/Neg*
_output_shapes
:*
T0

Dtransform/transform/bucketize_3/quantiles/sort_1/strided_slice/stackConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

Ftransform/transform/bucketize_3/quantiles/sort_1/strided_slice/stack_1Const*
_output_shapes
:*
valueB: *
dtype0

Ftransform/transform/bucketize_3/quantiles/sort_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ђ
>transform/transform/bucketize_3/quantiles/sort_1/strided_sliceStridedSlice6transform/transform/bucketize_3/quantiles/sort_1/ShapeDtransform/transform/bucketize_3/quantiles/sort_1/strided_slice/stackFtransform/transform/bucketize_3/quantiles/sort_1/strided_slice/stack_1Ftransform/transform/bucketize_3/quantiles/sort_1/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
w
5transform/transform/bucketize_3/quantiles/sort_1/RankConst*
value	B :*
dtype0*
_output_shapes
: 
ъ
7transform/transform/bucketize_3/quantiles/sort_1/TopKV2TopKV24transform/transform/bucketize_3/quantiles/sort_1/Neg>transform/transform/bucketize_3/quantiles/sort_1/strided_slice*(
_output_shapes
:
:
*
T0

6transform/transform/bucketize_3/quantiles/sort_1/Neg_1Neg7transform/transform/bucketize_3/quantiles/sort_1/TopKV2*
T0*
_output_shapes

:

r
0transform/transform/bucketize_3/assert_rank/rankConst*
value	B :*
dtype0*
_output_shapes
: 

1transform/transform/bucketize_3/assert_rank/ShapeShape6transform/transform/bucketize_3/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:
b
Ztransform/transform/bucketize_3/assert_rank/assert_type/statically_determined_correct_typeNoOp
S
Ktransform/transform/bucketize_3/assert_rank/static_checks_determined_all_okNoOp
к
Otransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/unstackUnpack:transform/transform/inputs/inputs/F_dropoff_longitude_copy*	
num*
T0*

axis*#
_output_shapes
:џџџџџџџџџ
Т
\transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ShapeShape6transform/transform/bucketize_3/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:
Д
jtransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackConst*
_output_shapes
:*
valueB:*
dtype0
Ж
ltransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ж
ltransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
р
dtransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_sliceStridedSlice\transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Shapejtransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackltransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1ltransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
љ
[transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastCastdtransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice*

SrcT0*
_output_shapes
: *

DstT0	
Т
Ztransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/NegNeg6transform/transform/bucketize_3/quantiles/sort_1/Neg_1*
_output_shapes

:
*
T0
И
etransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axisConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
й
`transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2	ReverseV2Ztransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Negetransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axis*
T0*
_output_shapes

:

т
\transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1NegOtransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/unstack*
T0*#
_output_shapes
:џџџџџџџџџ
І
\transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
О
Ztransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/MaxMax\transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1\transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Const*
T0*
_output_shapes
: 
њ
htransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0PackZtransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Max*
N*
_output_shapes
:*
T0

ftransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Packhtransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0*
T0*
N*
_output_shapes

:
­
btransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
Щ
]transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concatConcatV2`transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2ftransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1btransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axis*
N*
_output_shapes

:*
T0
т
\transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2NegOtransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/unstack*
T0*#
_output_shapes
:џџџџџџџџџ
ї
^transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstackUnpack]transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat*
_output_shapes
:*	
num*
T0
ќ
ltransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketizeBoostedTreesBucketize\transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2^transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstack*
num_features*#
_output_shapes
:џџџџџџџџџ

]transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1Castltransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketize*#
_output_shapes
:џџџџџџџџџ*

DstT0	*

SrcT0
Ы
Ztransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/SubSub[transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast]transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1*#
_output_shapes
:џџџџџџџџџ*
T0	
ђ
Stransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/transpose/aPackZtransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub*
N*'
_output_shapes
:џџџџџџџџџ*
T0	
Ї
Vtransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/transpose/permConst*
valueB"       *
dtype0*
_output_shapes
:
Н
Qtransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/transpose	TransposeStransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/transpose/aVtransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/transpose/perm*
T0	*'
_output_shapes
:џџџџџџџџџ
u
3transform/transform/bucketize_3/apply_buckets/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 

3transform/transform/bucketize_3/apply_buckets/ShapeShape6transform/transform/bucketize_3/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:

Atransform/transform/bucketize_3/apply_buckets/strided_slice/stackConst*
_output_shapes
:*
valueB:*
dtype0

Ctransform/transform/bucketize_3/apply_buckets/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Ctransform/transform/bucketize_3/apply_buckets/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0

;transform/transform/bucketize_3/apply_buckets/strided_sliceStridedSlice3transform/transform/bucketize_3/apply_buckets/ShapeAtransform/transform/bucketize_3/apply_buckets/strided_slice/stackCtransform/transform/bucketize_3/apply_buckets/strided_slice/stack_1Ctransform/transform/bucketize_3/apply_buckets/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 

transform/transform/IsNanIsNan+transform/transform/inputs/inputs/fare_copy*
T0*'
_output_shapes
:џџџџџџџџџ

transform/transform/zeros_like	ZerosLike+transform/transform/inputs/inputs/fare_copy*'
_output_shapes
:џџџџџџџџџ*
T0

transform/transform/CastCasttransform/transform/zeros_like*

SrcT0*'
_output_shapes
:џџџџџџџџџ*

DstT0	
^
transform/transform/ConstConst*
valueB
 *ЭЬL>*
dtype0*
_output_shapes
: 

transform/transform/MulMul+transform/transform/inputs/inputs/fare_copytransform/transform/Const*
T0*'
_output_shapes
:џџџџџџџџџ

transform/transform/GreaterGreater+transform/transform/inputs/inputs/tips_copytransform/transform/Mul*
T0*'
_output_shapes
:џџџџџџџџџ

transform/transform/Cast_1Casttransform/transform/Greater*

SrcT0
*'
_output_shapes
:џџџџџџџџџ*

DstT0	
Ї
transform/transform/SelectSelecttransform/transform/IsNantransform/transform/Casttransform/transform/Cast_1*
T0	*'
_output_shapes
:џџџџџџџџџ
 
transform/transform/initNoOp
"
transform/transform/init_1NoOp

transform/initNoOp
В
:dnn/input_from_feature_columns/input_layer/fare_xf_1/ShapeShapeHtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/SelectV2*
T0*
_output_shapes
:

Hdnn/input_from_feature_columns/input_layer/fare_xf_1/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Jdnn/input_from_feature_columns/input_layer/fare_xf_1/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Jdnn/input_from_feature_columns/input_layer/fare_xf_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ж
Bdnn/input_from_feature_columns/input_layer/fare_xf_1/strided_sliceStridedSlice:dnn/input_from_feature_columns/input_layer/fare_xf_1/ShapeHdnn/input_from_feature_columns/input_layer/fare_xf_1/strided_slice/stackJdnn/input_from_feature_columns/input_layer/fare_xf_1/strided_slice/stack_1Jdnn/input_from_feature_columns/input_layer/fare_xf_1/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0

Ddnn/input_from_feature_columns/input_layer/fare_xf_1/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 

Bdnn/input_from_feature_columns/input_layer/fare_xf_1/Reshape/shapePackBdnn/input_from_feature_columns/input_layer/fare_xf_1/strided_sliceDdnn/input_from_feature_columns/input_layer/fare_xf_1/Reshape/shape/1*
T0*
N*
_output_shapes
:

<dnn/input_from_feature_columns/input_layer/fare_xf_1/ReshapeReshapeHtransform/transform/scale_to_z_score_1/scale_to_z_score_per_key/SelectV2Bdnn/input_from_feature_columns/input_layer/fare_xf_1/Reshape/shape*'
_output_shapes
:џџџџџџџџџ*
T0
Ж
@dnn/input_from_feature_columns/input_layer/trip_miles_xf_1/ShapeShapeFtransform/transform/scale_to_z_score/scale_to_z_score_per_key/SelectV2*
T0*
_output_shapes
:

Ndnn/input_from_feature_columns/input_layer/trip_miles_xf_1/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Pdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Pdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
д
Hdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/strided_sliceStridedSlice@dnn/input_from_feature_columns/input_layer/trip_miles_xf_1/ShapeNdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/strided_slice/stackPdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/strided_slice/stack_1Pdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0

Jdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/Reshape/shape/1Const*
dtype0*
_output_shapes
: *
value	B :

Hdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/Reshape/shapePackHdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/strided_sliceJdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/Reshape/shape/1*
_output_shapes
:*
T0*
N

Bdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/ReshapeReshapeFtransform/transform/scale_to_z_score/scale_to_z_score_per_key/SelectV2Hdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/Reshape/shape*'
_output_shapes
:џџџџџџџџџ*
T0
К
Bdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/ShapeShapeHtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/SelectV2*
T0*
_output_shapes
:

Pdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Rdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Rdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
о
Jdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/strided_sliceStridedSliceBdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/ShapePdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/strided_slice/stackRdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/strided_slice/stack_1Rdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 

Ldnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 

Jdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/Reshape/shapePackJdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/strided_sliceLdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/Reshape/shape/1*
T0*
N*
_output_shapes
:

Ddnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/ReshapeReshapeHtransform/transform/scale_to_z_score_2/scale_to_z_score_per_key/SelectV2Jdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/Reshape/shape*
T0*'
_output_shapes
:џџџџџџџџџ

6dnn/input_from_feature_columns/input_layer/concat/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
ј
1dnn/input_from_feature_columns/input_layer/concatConcatV2<dnn/input_from_feature_columns/input_layer/fare_xf_1/ReshapeBdnn/input_from_feature_columns/input_layer/trip_miles_xf_1/ReshapeDdnn/input_from_feature_columns/input_layer/trip_seconds_xf_1/Reshape6dnn/input_from_feature_columns/input_layer/concat/axis*
T0*
N*'
_output_shapes
:џџџџџџџџџ
З
9dnn/hiddenlayer_0/kernel/Initializer/random_uniform/shapeConst*
valueB"   d   *+
_class!
loc:@dnn/hiddenlayer_0/kernel*
dtype0*
_output_shapes
:
Љ
7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/minConst*
valueB
 *о%wО*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
dtype0*
_output_shapes
: 
Љ
7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/maxConst*
valueB
 *о%w>*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
dtype0*
_output_shapes
: 
№
Adnn/hiddenlayer_0/kernel/Initializer/random_uniform/RandomUniformRandomUniform9dnn/hiddenlayer_0/kernel/Initializer/random_uniform/shape*
T0*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
dtype0*
_output_shapes

:d
ў
7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/subSub7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/max7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*+
_class!
loc:@dnn/hiddenlayer_0/kernel

7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/mulMulAdnn/hiddenlayer_0/kernel/Initializer/random_uniform/RandomUniform7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/sub*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
_output_shapes

:d*
T0

3dnn/hiddenlayer_0/kernel/Initializer/random_uniformAdd7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/mul7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/min*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
_output_shapes

:d*
T0
Й
dnn/hiddenlayer_0/kernelVarHandleOp*
dtype0*
_output_shapes
: *
shape
:d*)
shared_namednn/hiddenlayer_0/kernel*+
_class!
loc:@dnn/hiddenlayer_0/kernel

9dnn/hiddenlayer_0/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_0/kernel*
_output_shapes
: 

dnn/hiddenlayer_0/kernel/AssignAssignVariableOpdnn/hiddenlayer_0/kernel3dnn/hiddenlayer_0/kernel/Initializer/random_uniform*
dtype0

,dnn/hiddenlayer_0/kernel/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/kernel*
_output_shapes

:d*
dtype0
 
(dnn/hiddenlayer_0/bias/Initializer/zerosConst*
valueBd*    *)
_class
loc:@dnn/hiddenlayer_0/bias*
dtype0*
_output_shapes
:d
Џ
dnn/hiddenlayer_0/biasVarHandleOp*
_output_shapes
: *
shape:d*'
shared_namednn/hiddenlayer_0/bias*)
_class
loc:@dnn/hiddenlayer_0/bias*
dtype0
}
7dnn/hiddenlayer_0/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_0/bias*
_output_shapes
: 

dnn/hiddenlayer_0/bias/AssignAssignVariableOpdnn/hiddenlayer_0/bias(dnn/hiddenlayer_0/bias/Initializer/zeros*
dtype0
}
*dnn/hiddenlayer_0/bias/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/bias*
dtype0*
_output_shapes
:d

'dnn/hiddenlayer_0/MatMul/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/kernel*
dtype0*
_output_shapes

:d
А
dnn/hiddenlayer_0/MatMulMatMul1dnn/input_from_feature_columns/input_layer/concat'dnn/hiddenlayer_0/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd
{
(dnn/hiddenlayer_0/BiasAdd/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/bias*
dtype0*
_output_shapes
:d

dnn/hiddenlayer_0/BiasAddBiasAdddnn/hiddenlayer_0/MatMul(dnn/hiddenlayer_0/BiasAdd/ReadVariableOp*'
_output_shapes
:џџџџџџџџџd*
T0
k
dnn/hiddenlayer_0/ReluReludnn/hiddenlayer_0/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџd
g
dnn/zero_fraction/SizeSizednn/hiddenlayer_0/Relu*
_output_shapes
: *
T0*
out_type0	
c
dnn/zero_fraction/LessEqual/yConst*
valueB	 Rџџџџ*
dtype0	*
_output_shapes
: 

dnn/zero_fraction/LessEqual	LessEqualdnn/zero_fraction/Sizednn/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
и
dnn/zero_fraction/condStatelessIfdnn/zero_fraction/LessEqualdnn/hiddenlayer_0/Relu*
output_shapes
: : : : : : *
_lower_using_switch_merge(*
Tout

2	*3
then_branch$R"
 dnn_zero_fraction_cond_true_9884*
Tcond0
* 
_output_shapes
: : : : : : *
Tin
2*4
else_branch%R#
!dnn_zero_fraction_cond_false_9885
d
dnn/zero_fraction/cond/IdentityIdentitydnn/zero_fraction/cond*
T0	*
_output_shapes
: 
h
!dnn/zero_fraction/cond/Identity_1Identitydnn/zero_fraction/cond:1*
T0*
_output_shapes
: 
h
!dnn/zero_fraction/cond/Identity_2Identitydnn/zero_fraction/cond:2*
_output_shapes
: *
T0
h
!dnn/zero_fraction/cond/Identity_3Identitydnn/zero_fraction/cond:3*
T0*
_output_shapes
: 
h
!dnn/zero_fraction/cond/Identity_4Identitydnn/zero_fraction/cond:4*
T0*
_output_shapes
: 
h
!dnn/zero_fraction/cond/Identity_5Identitydnn/zero_fraction/cond:5*
T0*
_output_shapes
: 

(dnn/zero_fraction/counts_to_fraction/subSubdnn/zero_fraction/Sizednn/zero_fraction/cond/Identity*
_output_shapes
: *
T0	

)dnn/zero_fraction/counts_to_fraction/CastCast(dnn/zero_fraction/counts_to_fraction/sub*

SrcT0	*
_output_shapes
: *

DstT0
{
+dnn/zero_fraction/counts_to_fraction/Cast_1Castdnn/zero_fraction/Size*
_output_shapes
: *

DstT0*

SrcT0	
А
,dnn/zero_fraction/counts_to_fraction/truedivRealDiv)dnn/zero_fraction/counts_to_fraction/Cast+dnn/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
u
dnn/zero_fraction/fractionIdentity,dnn/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 

.dnn/hiddenlayer_0/fraction_of_zero_values/tagsConst*:
value1B/ B)dnn/hiddenlayer_0/fraction_of_zero_values*
dtype0*
_output_shapes
: 
Ї
)dnn/hiddenlayer_0/fraction_of_zero_valuesScalarSummary.dnn/hiddenlayer_0/fraction_of_zero_values/tagsdnn/zero_fraction/fraction*
T0*
_output_shapes
: 
}
 dnn/hiddenlayer_0/activation/tagConst*-
value$B" Bdnn/hiddenlayer_0/activation*
dtype0*
_output_shapes
: 

dnn/hiddenlayer_0/activationHistogramSummary dnn/hiddenlayer_0/activation/tagdnn/hiddenlayer_0/Relu*
_output_shapes
: 
З
9dnn/hiddenlayer_1/kernel/Initializer/random_uniform/shapeConst*
valueB"d   F   *+
_class!
loc:@dnn/hiddenlayer_1/kernel*
dtype0*
_output_shapes
:
Љ
7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/minConst*
valueB
 *H`@О*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
dtype0*
_output_shapes
: 
Љ
7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *H`@>*+
_class!
loc:@dnn/hiddenlayer_1/kernel
№
Adnn/hiddenlayer_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform9dnn/hiddenlayer_1/kernel/Initializer/random_uniform/shape*
_output_shapes

:dF*
T0*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
dtype0
ў
7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/subSub7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/max7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
_output_shapes
: 

7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/mulMulAdnn/hiddenlayer_1/kernel/Initializer/random_uniform/RandomUniform7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/sub*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
_output_shapes

:dF*
T0

3dnn/hiddenlayer_1/kernel/Initializer/random_uniformAdd7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/mul7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/min*
_output_shapes

:dF*
T0*+
_class!
loc:@dnn/hiddenlayer_1/kernel
Й
dnn/hiddenlayer_1/kernelVarHandleOp*
shape
:dF*)
shared_namednn/hiddenlayer_1/kernel*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
dtype0*
_output_shapes
: 

9dnn/hiddenlayer_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_1/kernel*
_output_shapes
: 

dnn/hiddenlayer_1/kernel/AssignAssignVariableOpdnn/hiddenlayer_1/kernel3dnn/hiddenlayer_1/kernel/Initializer/random_uniform*
dtype0

,dnn/hiddenlayer_1/kernel/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/kernel*
dtype0*
_output_shapes

:dF
 
(dnn/hiddenlayer_1/bias/Initializer/zerosConst*
valueBF*    *)
_class
loc:@dnn/hiddenlayer_1/bias*
dtype0*
_output_shapes
:F
Џ
dnn/hiddenlayer_1/biasVarHandleOp*
shape:F*'
shared_namednn/hiddenlayer_1/bias*)
_class
loc:@dnn/hiddenlayer_1/bias*
dtype0*
_output_shapes
: 
}
7dnn/hiddenlayer_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_1/bias*
_output_shapes
: 

dnn/hiddenlayer_1/bias/AssignAssignVariableOpdnn/hiddenlayer_1/bias(dnn/hiddenlayer_1/bias/Initializer/zeros*
dtype0
}
*dnn/hiddenlayer_1/bias/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/bias*
dtype0*
_output_shapes
:F

'dnn/hiddenlayer_1/MatMul/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/kernel*
dtype0*
_output_shapes

:dF

dnn/hiddenlayer_1/MatMulMatMuldnn/hiddenlayer_0/Relu'dnn/hiddenlayer_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџF
{
(dnn/hiddenlayer_1/BiasAdd/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/bias*
dtype0*
_output_shapes
:F

dnn/hiddenlayer_1/BiasAddBiasAdddnn/hiddenlayer_1/MatMul(dnn/hiddenlayer_1/BiasAdd/ReadVariableOp*'
_output_shapes
:џџџџџџџџџF*
T0
k
dnn/hiddenlayer_1/ReluReludnn/hiddenlayer_1/BiasAdd*'
_output_shapes
:џџџџџџџџџF*
T0
i
dnn/zero_fraction_1/SizeSizednn/hiddenlayer_1/Relu*
_output_shapes
: *
T0*
out_type0	
e
dnn/zero_fraction_1/LessEqual/yConst*
dtype0	*
_output_shapes
: *
valueB	 Rџџџџ

dnn/zero_fraction_1/LessEqual	LessEqualdnn/zero_fraction_1/Sizednn/zero_fraction_1/LessEqual/y*
T0	*
_output_shapes
: 
р
dnn/zero_fraction_1/condStatelessIfdnn/zero_fraction_1/LessEqualdnn/hiddenlayer_1/Relu*6
else_branch'R%
#dnn_zero_fraction_1_cond_false_9955*
output_shapes
: : : : : : *
_lower_using_switch_merge(*
Tout

2	*
Tcond0
*5
then_branch&R$
"dnn_zero_fraction_1_cond_true_9954*
Tin
2* 
_output_shapes
: : : : : : 
h
!dnn/zero_fraction_1/cond/IdentityIdentitydnn/zero_fraction_1/cond*
T0	*
_output_shapes
: 
l
#dnn/zero_fraction_1/cond/Identity_1Identitydnn/zero_fraction_1/cond:1*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_1/cond/Identity_2Identitydnn/zero_fraction_1/cond:2*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_1/cond/Identity_3Identitydnn/zero_fraction_1/cond:3*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_1/cond/Identity_4Identitydnn/zero_fraction_1/cond:4*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_1/cond/Identity_5Identitydnn/zero_fraction_1/cond:5*
_output_shapes
: *
T0

*dnn/zero_fraction_1/counts_to_fraction/subSubdnn/zero_fraction_1/Size!dnn/zero_fraction_1/cond/Identity*
T0	*
_output_shapes
: 

+dnn/zero_fraction_1/counts_to_fraction/CastCast*dnn/zero_fraction_1/counts_to_fraction/sub*

SrcT0	*
_output_shapes
: *

DstT0

-dnn/zero_fraction_1/counts_to_fraction/Cast_1Castdnn/zero_fraction_1/Size*
_output_shapes
: *

DstT0*

SrcT0	
Ж
.dnn/zero_fraction_1/counts_to_fraction/truedivRealDiv+dnn/zero_fraction_1/counts_to_fraction/Cast-dnn/zero_fraction_1/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
y
dnn/zero_fraction_1/fractionIdentity.dnn/zero_fraction_1/counts_to_fraction/truediv*
_output_shapes
: *
T0

.dnn/hiddenlayer_1/fraction_of_zero_values/tagsConst*:
value1B/ B)dnn/hiddenlayer_1/fraction_of_zero_values*
dtype0*
_output_shapes
: 
Љ
)dnn/hiddenlayer_1/fraction_of_zero_valuesScalarSummary.dnn/hiddenlayer_1/fraction_of_zero_values/tagsdnn/zero_fraction_1/fraction*
T0*
_output_shapes
: 
}
 dnn/hiddenlayer_1/activation/tagConst*-
value$B" Bdnn/hiddenlayer_1/activation*
dtype0*
_output_shapes
: 

dnn/hiddenlayer_1/activationHistogramSummary dnn/hiddenlayer_1/activation/tagdnn/hiddenlayer_1/Relu*
_output_shapes
: 
З
9dnn/hiddenlayer_2/kernel/Initializer/random_uniform/shapeConst*
valueB"F   0   *+
_class!
loc:@dnn/hiddenlayer_2/kernel*
dtype0*
_output_shapes
:
Љ
7dnn/hiddenlayer_2/kernel/Initializer/random_uniform/minConst*
valueB
 *йчfО*+
_class!
loc:@dnn/hiddenlayer_2/kernel*
dtype0*
_output_shapes
: 
Љ
7dnn/hiddenlayer_2/kernel/Initializer/random_uniform/maxConst*
valueB
 *йчf>*+
_class!
loc:@dnn/hiddenlayer_2/kernel*
dtype0*
_output_shapes
: 
№
Adnn/hiddenlayer_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform9dnn/hiddenlayer_2/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:F0*
T0*+
_class!
loc:@dnn/hiddenlayer_2/kernel
ў
7dnn/hiddenlayer_2/kernel/Initializer/random_uniform/subSub7dnn/hiddenlayer_2/kernel/Initializer/random_uniform/max7dnn/hiddenlayer_2/kernel/Initializer/random_uniform/min*+
_class!
loc:@dnn/hiddenlayer_2/kernel*
_output_shapes
: *
T0

7dnn/hiddenlayer_2/kernel/Initializer/random_uniform/mulMulAdnn/hiddenlayer_2/kernel/Initializer/random_uniform/RandomUniform7dnn/hiddenlayer_2/kernel/Initializer/random_uniform/sub*
T0*+
_class!
loc:@dnn/hiddenlayer_2/kernel*
_output_shapes

:F0

3dnn/hiddenlayer_2/kernel/Initializer/random_uniformAdd7dnn/hiddenlayer_2/kernel/Initializer/random_uniform/mul7dnn/hiddenlayer_2/kernel/Initializer/random_uniform/min*
_output_shapes

:F0*
T0*+
_class!
loc:@dnn/hiddenlayer_2/kernel
Й
dnn/hiddenlayer_2/kernelVarHandleOp*)
shared_namednn/hiddenlayer_2/kernel*+
_class!
loc:@dnn/hiddenlayer_2/kernel*
dtype0*
_output_shapes
: *
shape
:F0

9dnn/hiddenlayer_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_2/kernel*
_output_shapes
: 

dnn/hiddenlayer_2/kernel/AssignAssignVariableOpdnn/hiddenlayer_2/kernel3dnn/hiddenlayer_2/kernel/Initializer/random_uniform*
dtype0

,dnn/hiddenlayer_2/kernel/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/kernel*
dtype0*
_output_shapes

:F0
 
(dnn/hiddenlayer_2/bias/Initializer/zerosConst*
valueB0*    *)
_class
loc:@dnn/hiddenlayer_2/bias*
dtype0*
_output_shapes
:0
Џ
dnn/hiddenlayer_2/biasVarHandleOp*
dtype0*
_output_shapes
: *
shape:0*'
shared_namednn/hiddenlayer_2/bias*)
_class
loc:@dnn/hiddenlayer_2/bias
}
7dnn/hiddenlayer_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_2/bias*
_output_shapes
: 

dnn/hiddenlayer_2/bias/AssignAssignVariableOpdnn/hiddenlayer_2/bias(dnn/hiddenlayer_2/bias/Initializer/zeros*
dtype0
}
*dnn/hiddenlayer_2/bias/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/bias*
dtype0*
_output_shapes
:0

'dnn/hiddenlayer_2/MatMul/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/kernel*
dtype0*
_output_shapes

:F0

dnn/hiddenlayer_2/MatMulMatMuldnn/hiddenlayer_1/Relu'dnn/hiddenlayer_2/MatMul/ReadVariableOp*'
_output_shapes
:џџџџџџџџџ0*
T0
{
(dnn/hiddenlayer_2/BiasAdd/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/bias*
dtype0*
_output_shapes
:0

dnn/hiddenlayer_2/BiasAddBiasAdddnn/hiddenlayer_2/MatMul(dnn/hiddenlayer_2/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ0
k
dnn/hiddenlayer_2/ReluReludnn/hiddenlayer_2/BiasAdd*'
_output_shapes
:џџџџџџџџџ0*
T0
i
dnn/zero_fraction_2/SizeSizednn/hiddenlayer_2/Relu*
_output_shapes
: *
T0*
out_type0	
e
dnn/zero_fraction_2/LessEqual/yConst*
_output_shapes
: *
valueB	 Rџџџџ*
dtype0	

dnn/zero_fraction_2/LessEqual	LessEqualdnn/zero_fraction_2/Sizednn/zero_fraction_2/LessEqual/y*
T0	*
_output_shapes
: 
т
dnn/zero_fraction_2/condStatelessIfdnn/zero_fraction_2/LessEqualdnn/hiddenlayer_2/Relu*
Tcond0
*6
then_branch'R%
#dnn_zero_fraction_2_cond_true_10024*
Tin
2* 
_output_shapes
: : : : : : *7
else_branch(R&
$dnn_zero_fraction_2_cond_false_10025*
output_shapes
: : : : : : *
_lower_using_switch_merge(*
Tout

2	
h
!dnn/zero_fraction_2/cond/IdentityIdentitydnn/zero_fraction_2/cond*
T0	*
_output_shapes
: 
l
#dnn/zero_fraction_2/cond/Identity_1Identitydnn/zero_fraction_2/cond:1*
_output_shapes
: *
T0
l
#dnn/zero_fraction_2/cond/Identity_2Identitydnn/zero_fraction_2/cond:2*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_2/cond/Identity_3Identitydnn/zero_fraction_2/cond:3*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_2/cond/Identity_4Identitydnn/zero_fraction_2/cond:4*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_2/cond/Identity_5Identitydnn/zero_fraction_2/cond:5*
_output_shapes
: *
T0

*dnn/zero_fraction_2/counts_to_fraction/subSubdnn/zero_fraction_2/Size!dnn/zero_fraction_2/cond/Identity*
T0	*
_output_shapes
: 

+dnn/zero_fraction_2/counts_to_fraction/CastCast*dnn/zero_fraction_2/counts_to_fraction/sub*
_output_shapes
: *

DstT0*

SrcT0	

-dnn/zero_fraction_2/counts_to_fraction/Cast_1Castdnn/zero_fraction_2/Size*

SrcT0	*
_output_shapes
: *

DstT0
Ж
.dnn/zero_fraction_2/counts_to_fraction/truedivRealDiv+dnn/zero_fraction_2/counts_to_fraction/Cast-dnn/zero_fraction_2/counts_to_fraction/Cast_1*
_output_shapes
: *
T0
y
dnn/zero_fraction_2/fractionIdentity.dnn/zero_fraction_2/counts_to_fraction/truediv*
_output_shapes
: *
T0

.dnn/hiddenlayer_2/fraction_of_zero_values/tagsConst*
_output_shapes
: *:
value1B/ B)dnn/hiddenlayer_2/fraction_of_zero_values*
dtype0
Љ
)dnn/hiddenlayer_2/fraction_of_zero_valuesScalarSummary.dnn/hiddenlayer_2/fraction_of_zero_values/tagsdnn/zero_fraction_2/fraction*
T0*
_output_shapes
: 
}
 dnn/hiddenlayer_2/activation/tagConst*-
value$B" Bdnn/hiddenlayer_2/activation*
dtype0*
_output_shapes
: 

dnn/hiddenlayer_2/activationHistogramSummary dnn/hiddenlayer_2/activation/tagdnn/hiddenlayer_2/Relu*
_output_shapes
: 
З
9dnn/hiddenlayer_3/kernel/Initializer/random_uniform/shapeConst*
valueB"0   "   *+
_class!
loc:@dnn/hiddenlayer_3/kernel*
dtype0*
_output_shapes
:
Љ
7dnn/hiddenlayer_3/kernel/Initializer/random_uniform/minConst*
valueB
 *О*+
_class!
loc:@dnn/hiddenlayer_3/kernel*
dtype0*
_output_shapes
: 
Љ
7dnn/hiddenlayer_3/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *>*+
_class!
loc:@dnn/hiddenlayer_3/kernel
№
Adnn/hiddenlayer_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform9dnn/hiddenlayer_3/kernel/Initializer/random_uniform/shape*
T0*+
_class!
loc:@dnn/hiddenlayer_3/kernel*
dtype0*
_output_shapes

:0"
ў
7dnn/hiddenlayer_3/kernel/Initializer/random_uniform/subSub7dnn/hiddenlayer_3/kernel/Initializer/random_uniform/max7dnn/hiddenlayer_3/kernel/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/hiddenlayer_3/kernel*
_output_shapes
: 

7dnn/hiddenlayer_3/kernel/Initializer/random_uniform/mulMulAdnn/hiddenlayer_3/kernel/Initializer/random_uniform/RandomUniform7dnn/hiddenlayer_3/kernel/Initializer/random_uniform/sub*+
_class!
loc:@dnn/hiddenlayer_3/kernel*
_output_shapes

:0"*
T0

3dnn/hiddenlayer_3/kernel/Initializer/random_uniformAdd7dnn/hiddenlayer_3/kernel/Initializer/random_uniform/mul7dnn/hiddenlayer_3/kernel/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/hiddenlayer_3/kernel*
_output_shapes

:0"
Й
dnn/hiddenlayer_3/kernelVarHandleOp*+
_class!
loc:@dnn/hiddenlayer_3/kernel*
dtype0*
_output_shapes
: *
shape
:0"*)
shared_namednn/hiddenlayer_3/kernel

9dnn/hiddenlayer_3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_3/kernel*
_output_shapes
: 

dnn/hiddenlayer_3/kernel/AssignAssignVariableOpdnn/hiddenlayer_3/kernel3dnn/hiddenlayer_3/kernel/Initializer/random_uniform*
dtype0

,dnn/hiddenlayer_3/kernel/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/kernel*
dtype0*
_output_shapes

:0"
 
(dnn/hiddenlayer_3/bias/Initializer/zerosConst*
valueB"*    *)
_class
loc:@dnn/hiddenlayer_3/bias*
dtype0*
_output_shapes
:"
Џ
dnn/hiddenlayer_3/biasVarHandleOp*'
shared_namednn/hiddenlayer_3/bias*)
_class
loc:@dnn/hiddenlayer_3/bias*
dtype0*
_output_shapes
: *
shape:"
}
7dnn/hiddenlayer_3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_3/bias*
_output_shapes
: 

dnn/hiddenlayer_3/bias/AssignAssignVariableOpdnn/hiddenlayer_3/bias(dnn/hiddenlayer_3/bias/Initializer/zeros*
dtype0
}
*dnn/hiddenlayer_3/bias/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/bias*
dtype0*
_output_shapes
:"

'dnn/hiddenlayer_3/MatMul/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/kernel*
dtype0*
_output_shapes

:0"

dnn/hiddenlayer_3/MatMulMatMuldnn/hiddenlayer_2/Relu'dnn/hiddenlayer_3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ"
{
(dnn/hiddenlayer_3/BiasAdd/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/bias*
_output_shapes
:"*
dtype0

dnn/hiddenlayer_3/BiasAddBiasAdddnn/hiddenlayer_3/MatMul(dnn/hiddenlayer_3/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ"
k
dnn/hiddenlayer_3/ReluReludnn/hiddenlayer_3/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ"
i
dnn/zero_fraction_3/SizeSizednn/hiddenlayer_3/Relu*
T0*
out_type0	*
_output_shapes
: 
e
dnn/zero_fraction_3/LessEqual/yConst*
valueB	 Rџџџџ*
dtype0	*
_output_shapes
: 

dnn/zero_fraction_3/LessEqual	LessEqualdnn/zero_fraction_3/Sizednn/zero_fraction_3/LessEqual/y*
_output_shapes
: *
T0	
т
dnn/zero_fraction_3/condStatelessIfdnn/zero_fraction_3/LessEqualdnn/hiddenlayer_3/Relu*
Tout

2	*6
then_branch'R%
#dnn_zero_fraction_3_cond_true_10094*
Tcond0
*
Tin
2* 
_output_shapes
: : : : : : *7
else_branch(R&
$dnn_zero_fraction_3_cond_false_10095*
output_shapes
: : : : : : *
_lower_using_switch_merge(
h
!dnn/zero_fraction_3/cond/IdentityIdentitydnn/zero_fraction_3/cond*
T0	*
_output_shapes
: 
l
#dnn/zero_fraction_3/cond/Identity_1Identitydnn/zero_fraction_3/cond:1*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_3/cond/Identity_2Identitydnn/zero_fraction_3/cond:2*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_3/cond/Identity_3Identitydnn/zero_fraction_3/cond:3*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_3/cond/Identity_4Identitydnn/zero_fraction_3/cond:4*
_output_shapes
: *
T0
l
#dnn/zero_fraction_3/cond/Identity_5Identitydnn/zero_fraction_3/cond:5*
T0*
_output_shapes
: 

*dnn/zero_fraction_3/counts_to_fraction/subSubdnn/zero_fraction_3/Size!dnn/zero_fraction_3/cond/Identity*
T0	*
_output_shapes
: 

+dnn/zero_fraction_3/counts_to_fraction/CastCast*dnn/zero_fraction_3/counts_to_fraction/sub*

SrcT0	*
_output_shapes
: *

DstT0

-dnn/zero_fraction_3/counts_to_fraction/Cast_1Castdnn/zero_fraction_3/Size*

SrcT0	*
_output_shapes
: *

DstT0
Ж
.dnn/zero_fraction_3/counts_to_fraction/truedivRealDiv+dnn/zero_fraction_3/counts_to_fraction/Cast-dnn/zero_fraction_3/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
y
dnn/zero_fraction_3/fractionIdentity.dnn/zero_fraction_3/counts_to_fraction/truediv*
_output_shapes
: *
T0

.dnn/hiddenlayer_3/fraction_of_zero_values/tagsConst*:
value1B/ B)dnn/hiddenlayer_3/fraction_of_zero_values*
dtype0*
_output_shapes
: 
Љ
)dnn/hiddenlayer_3/fraction_of_zero_valuesScalarSummary.dnn/hiddenlayer_3/fraction_of_zero_values/tagsdnn/zero_fraction_3/fraction*
_output_shapes
: *
T0
}
 dnn/hiddenlayer_3/activation/tagConst*-
value$B" Bdnn/hiddenlayer_3/activation*
dtype0*
_output_shapes
: 

dnn/hiddenlayer_3/activationHistogramSummary dnn/hiddenlayer_3/activation/tagdnn/hiddenlayer_3/Relu*
_output_shapes
: 
Љ
2dnn/logits/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB""      *$
_class
loc:@dnn/logits/kernel

0dnn/logits/kernel/Initializer/random_uniform/minConst*
valueB
 *їќгО*$
_class
loc:@dnn/logits/kernel*
dtype0*
_output_shapes
: 

0dnn/logits/kernel/Initializer/random_uniform/maxConst*
valueB
 *їќг>*$
_class
loc:@dnn/logits/kernel*
dtype0*
_output_shapes
: 
л
:dnn/logits/kernel/Initializer/random_uniform/RandomUniformRandomUniform2dnn/logits/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:"*
T0*$
_class
loc:@dnn/logits/kernel
т
0dnn/logits/kernel/Initializer/random_uniform/subSub0dnn/logits/kernel/Initializer/random_uniform/max0dnn/logits/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@dnn/logits/kernel*
_output_shapes
: 
є
0dnn/logits/kernel/Initializer/random_uniform/mulMul:dnn/logits/kernel/Initializer/random_uniform/RandomUniform0dnn/logits/kernel/Initializer/random_uniform/sub*
T0*$
_class
loc:@dnn/logits/kernel*
_output_shapes

:"
ц
,dnn/logits/kernel/Initializer/random_uniformAdd0dnn/logits/kernel/Initializer/random_uniform/mul0dnn/logits/kernel/Initializer/random_uniform/min*$
_class
loc:@dnn/logits/kernel*
_output_shapes

:"*
T0
Є
dnn/logits/kernelVarHandleOp*"
shared_namednn/logits/kernel*$
_class
loc:@dnn/logits/kernel*
dtype0*
_output_shapes
: *
shape
:"
s
2dnn/logits/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/logits/kernel*
_output_shapes
: 
z
dnn/logits/kernel/AssignAssignVariableOpdnn/logits/kernel,dnn/logits/kernel/Initializer/random_uniform*
dtype0
w
%dnn/logits/kernel/Read/ReadVariableOpReadVariableOpdnn/logits/kernel*
dtype0*
_output_shapes

:"

!dnn/logits/bias/Initializer/zerosConst*
valueB*    *"
_class
loc:@dnn/logits/bias*
dtype0*
_output_shapes
:

dnn/logits/biasVarHandleOp*
shape:* 
shared_namednn/logits/bias*"
_class
loc:@dnn/logits/bias*
dtype0*
_output_shapes
: 
o
0dnn/logits/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/logits/bias*
_output_shapes
: 
k
dnn/logits/bias/AssignAssignVariableOpdnn/logits/bias!dnn/logits/bias/Initializer/zeros*
dtype0
o
#dnn/logits/bias/Read/ReadVariableOpReadVariableOpdnn/logits/bias*
dtype0*
_output_shapes
:
r
 dnn/logits/MatMul/ReadVariableOpReadVariableOpdnn/logits/kernel*
_output_shapes

:"*
dtype0

dnn/logits/MatMulMatMuldnn/hiddenlayer_3/Relu dnn/logits/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
m
!dnn/logits/BiasAdd/ReadVariableOpReadVariableOpdnn/logits/bias*
dtype0*
_output_shapes
:

dnn/logits/BiasAddBiasAdddnn/logits/MatMul!dnn/logits/BiasAdd/ReadVariableOp*'
_output_shapes
:џџџџџџџџџ*
T0
e
dnn/zero_fraction_4/SizeSizednn/logits/BiasAdd*
_output_shapes
: *
T0*
out_type0	
e
dnn/zero_fraction_4/LessEqual/yConst*
valueB	 Rџџџџ*
dtype0	*
_output_shapes
: 

dnn/zero_fraction_4/LessEqual	LessEqualdnn/zero_fraction_4/Sizednn/zero_fraction_4/LessEqual/y*
T0	*
_output_shapes
: 
о
dnn/zero_fraction_4/condStatelessIfdnn/zero_fraction_4/LessEqualdnn/logits/BiasAdd*
output_shapes
: : : : : : *
_lower_using_switch_merge(*
Tout

2	*6
then_branch'R%
#dnn_zero_fraction_4_cond_true_10163*
Tcond0
* 
_output_shapes
: : : : : : *
Tin
2*7
else_branch(R&
$dnn_zero_fraction_4_cond_false_10164
h
!dnn/zero_fraction_4/cond/IdentityIdentitydnn/zero_fraction_4/cond*
T0	*
_output_shapes
: 
l
#dnn/zero_fraction_4/cond/Identity_1Identitydnn/zero_fraction_4/cond:1*
_output_shapes
: *
T0
l
#dnn/zero_fraction_4/cond/Identity_2Identitydnn/zero_fraction_4/cond:2*
_output_shapes
: *
T0
l
#dnn/zero_fraction_4/cond/Identity_3Identitydnn/zero_fraction_4/cond:3*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_4/cond/Identity_4Identitydnn/zero_fraction_4/cond:4*
_output_shapes
: *
T0
l
#dnn/zero_fraction_4/cond/Identity_5Identitydnn/zero_fraction_4/cond:5*
T0*
_output_shapes
: 

*dnn/zero_fraction_4/counts_to_fraction/subSubdnn/zero_fraction_4/Size!dnn/zero_fraction_4/cond/Identity*
T0	*
_output_shapes
: 

+dnn/zero_fraction_4/counts_to_fraction/CastCast*dnn/zero_fraction_4/counts_to_fraction/sub*

SrcT0	*
_output_shapes
: *

DstT0

-dnn/zero_fraction_4/counts_to_fraction/Cast_1Castdnn/zero_fraction_4/Size*

SrcT0	*
_output_shapes
: *

DstT0
Ж
.dnn/zero_fraction_4/counts_to_fraction/truedivRealDiv+dnn/zero_fraction_4/counts_to_fraction/Cast-dnn/zero_fraction_4/counts_to_fraction/Cast_1*
_output_shapes
: *
T0
y
dnn/zero_fraction_4/fractionIdentity.dnn/zero_fraction_4/counts_to_fraction/truediv*
T0*
_output_shapes
: 

'dnn/logits/fraction_of_zero_values/tagsConst*3
value*B( B"dnn/logits/fraction_of_zero_values*
dtype0*
_output_shapes
: 

"dnn/logits/fraction_of_zero_valuesScalarSummary'dnn/logits/fraction_of_zero_values/tagsdnn/zero_fraction_4/fraction*
T0*
_output_shapes
: 
o
dnn/logits/activation/tagConst*&
valueB Bdnn/logits/activation*
dtype0*
_output_shapes
: 
p
dnn/logits/activationHistogramSummarydnn/logits/activation/tagdnn/logits/BiasAdd*
_output_shapes
: 
д
Hlinear/linear_model/company_xf/weights/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
valueB"ђ     *9
_class/
-+loc:@linear/linear_model/company_xf/weights*
dtype0
О
>linear/linear_model/company_xf/weights/Initializer/zeros/ConstConst*
valueB
 *    *9
_class/
-+loc:@linear/linear_model/company_xf/weights*
dtype0*
_output_shapes
: 
Џ
8linear/linear_model/company_xf/weights/Initializer/zerosFillHlinear/linear_model/company_xf/weights/Initializer/zeros/shape_as_tensor>linear/linear_model/company_xf/weights/Initializer/zeros/Const*
_output_shapes
:	ђ*
T0*9
_class/
-+loc:@linear/linear_model/company_xf/weights
ф
&linear/linear_model/company_xf/weightsVarHandleOp*
_output_shapes
: *
shape:	ђ*7
shared_name(&linear/linear_model/company_xf/weights*9
_class/
-+loc:@linear/linear_model/company_xf/weights*
dtype0

Glinear/linear_model/company_xf/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp&linear/linear_model/company_xf/weights*
_output_shapes
: 
А
-linear/linear_model/company_xf/weights/AssignAssignVariableOp&linear/linear_model/company_xf/weights8linear/linear_model/company_xf/weights/Initializer/zeros*
dtype0
Ђ
:linear/linear_model/company_xf/weights/Read/ReadVariableOpReadVariableOp&linear/linear_model/company_xf/weights*
_output_shapes
:	ђ*
dtype0
к
Alinear/linear_model/dropoff_latitude_xf/weights/Initializer/zerosConst*
valueB
*    *B
_class8
64loc:@linear/linear_model/dropoff_latitude_xf/weights*
dtype0*
_output_shapes

:

ў
/linear/linear_model/dropoff_latitude_xf/weightsVarHandleOp*
dtype0*
_output_shapes
: *
shape
:
*@
shared_name1/linear/linear_model/dropoff_latitude_xf/weights*B
_class8
64loc:@linear/linear_model/dropoff_latitude_xf/weights
Џ
Plinear/linear_model/dropoff_latitude_xf/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp/linear/linear_model/dropoff_latitude_xf/weights*
_output_shapes
: 
Ы
6linear/linear_model/dropoff_latitude_xf/weights/AssignAssignVariableOp/linear/linear_model/dropoff_latitude_xf/weightsAlinear/linear_model/dropoff_latitude_xf/weights/Initializer/zeros*
dtype0
Г
Clinear/linear_model/dropoff_latitude_xf/weights/Read/ReadVariableOpReadVariableOp/linear/linear_model/dropoff_latitude_xf/weights*
dtype0*
_output_shapes

:

м
Blinear/linear_model/dropoff_longitude_xf/weights/Initializer/zerosConst*
valueB
*    *C
_class9
75loc:@linear/linear_model/dropoff_longitude_xf/weights*
dtype0*
_output_shapes

:


0linear/linear_model/dropoff_longitude_xf/weightsVarHandleOp*C
_class9
75loc:@linear/linear_model/dropoff_longitude_xf/weights*
dtype0*
_output_shapes
: *
shape
:
*A
shared_name20linear/linear_model/dropoff_longitude_xf/weights
Б
Qlinear/linear_model/dropoff_longitude_xf/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp0linear/linear_model/dropoff_longitude_xf/weights*
_output_shapes
: 
Ю
7linear/linear_model/dropoff_longitude_xf/weights/AssignAssignVariableOp0linear/linear_model/dropoff_longitude_xf/weightsBlinear/linear_model/dropoff_longitude_xf/weights/Initializer/zeros*
dtype0
Е
Dlinear/linear_model/dropoff_longitude_xf/weights/Read/ReadVariableOpReadVariableOp0linear/linear_model/dropoff_longitude_xf/weights*
_output_shapes

:
*
dtype0
о
Mlinear/linear_model/payment_type_xf/weights/Initializer/zeros/shape_as_tensorConst*
valueB"ђ     *>
_class4
20loc:@linear/linear_model/payment_type_xf/weights*
dtype0*
_output_shapes
:
Ш
Clinear/linear_model/payment_type_xf/weights/Initializer/zeros/ConstConst*
valueB
 *    *>
_class4
20loc:@linear/linear_model/payment_type_xf/weights*
dtype0*
_output_shapes
: 
У
=linear/linear_model/payment_type_xf/weights/Initializer/zerosFillMlinear/linear_model/payment_type_xf/weights/Initializer/zeros/shape_as_tensorClinear/linear_model/payment_type_xf/weights/Initializer/zeros/Const*
_output_shapes
:	ђ*
T0*>
_class4
20loc:@linear/linear_model/payment_type_xf/weights
ѓ
+linear/linear_model/payment_type_xf/weightsVarHandleOp*>
_class4
20loc:@linear/linear_model/payment_type_xf/weights*
dtype0*
_output_shapes
: *
shape:	ђ*<
shared_name-+linear/linear_model/payment_type_xf/weights
Ї
Llinear/linear_model/payment_type_xf/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp+linear/linear_model/payment_type_xf/weights*
_output_shapes
: 
П
2linear/linear_model/payment_type_xf/weights/AssignAssignVariableOp+linear/linear_model/payment_type_xf/weights=linear/linear_model/payment_type_xf/weights/Initializer/zeros*
dtype0
Ќ
?linear/linear_model/payment_type_xf/weights/Read/ReadVariableOpReadVariableOp+linear/linear_model/payment_type_xf/weights*
dtype0*
_output_shapes
:	ђ
и
@linear/linear_model/pickup_latitude_xf/weights/Initializer/zerosConst*
valueB
*    *A
_class7
53loc:@linear/linear_model/pickup_latitude_xf/weights*
dtype0*
_output_shapes

:

ћ
.linear/linear_model/pickup_latitude_xf/weightsVarHandleOp*
_output_shapes
: *
shape
:
*?
shared_name0.linear/linear_model/pickup_latitude_xf/weights*A
_class7
53loc:@linear/linear_model/pickup_latitude_xf/weights*
dtype0
­
Olinear/linear_model/pickup_latitude_xf/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp.linear/linear_model/pickup_latitude_xf/weights*
_output_shapes
: 
Ш
5linear/linear_model/pickup_latitude_xf/weights/AssignAssignVariableOp.linear/linear_model/pickup_latitude_xf/weights@linear/linear_model/pickup_latitude_xf/weights/Initializer/zeros*
dtype0
Б
Blinear/linear_model/pickup_latitude_xf/weights/Read/ReadVariableOpReadVariableOp.linear/linear_model/pickup_latitude_xf/weights*
dtype0*
_output_shapes

:

к
Alinear/linear_model/pickup_longitude_xf/weights/Initializer/zerosConst*
_output_shapes

:
*
valueB
*    *B
_class8
64loc:@linear/linear_model/pickup_longitude_xf/weights*
dtype0
ў
/linear/linear_model/pickup_longitude_xf/weightsVarHandleOp*B
_class8
64loc:@linear/linear_model/pickup_longitude_xf/weights*
dtype0*
_output_shapes
: *
shape
:
*@
shared_name1/linear/linear_model/pickup_longitude_xf/weights
Џ
Plinear/linear_model/pickup_longitude_xf/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp/linear/linear_model/pickup_longitude_xf/weights*
_output_shapes
: 
Ы
6linear/linear_model/pickup_longitude_xf/weights/AssignAssignVariableOp/linear/linear_model/pickup_longitude_xf/weightsAlinear/linear_model/pickup_longitude_xf/weights/Initializer/zeros*
dtype0
Г
Clinear/linear_model/pickup_longitude_xf/weights/Read/ReadVariableOpReadVariableOp/linear/linear_model/pickup_longitude_xf/weights*
dtype0*
_output_shapes

:

ж
?linear/linear_model/trip_start_day_xf/weights/Initializer/zerosConst*
dtype0*
_output_shapes

:*
valueB*    *@
_class6
42loc:@linear/linear_model/trip_start_day_xf/weights
ј
-linear/linear_model/trip_start_day_xf/weightsVarHandleOp*@
_class6
42loc:@linear/linear_model/trip_start_day_xf/weights*
dtype0*
_output_shapes
: *
shape
:*>
shared_name/-linear/linear_model/trip_start_day_xf/weights
Ћ
Nlinear/linear_model/trip_start_day_xf/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp-linear/linear_model/trip_start_day_xf/weights*
_output_shapes
: 
Х
4linear/linear_model/trip_start_day_xf/weights/AssignAssignVariableOp-linear/linear_model/trip_start_day_xf/weights?linear/linear_model/trip_start_day_xf/weights/Initializer/zeros*
dtype0
Џ
Alinear/linear_model/trip_start_day_xf/weights/Read/ReadVariableOpReadVariableOp-linear/linear_model/trip_start_day_xf/weights*
dtype0*
_output_shapes

:
и
@linear/linear_model/trip_start_hour_xf/weights/Initializer/zerosConst*
valueB*    *A
_class7
53loc:@linear/linear_model/trip_start_hour_xf/weights*
dtype0*
_output_shapes

:
ћ
.linear/linear_model/trip_start_hour_xf/weightsVarHandleOp*?
shared_name0.linear/linear_model/trip_start_hour_xf/weights*A
_class7
53loc:@linear/linear_model/trip_start_hour_xf/weights*
dtype0*
_output_shapes
: *
shape
:
­
Olinear/linear_model/trip_start_hour_xf/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp.linear/linear_model/trip_start_hour_xf/weights*
_output_shapes
: 
Ш
5linear/linear_model/trip_start_hour_xf/weights/AssignAssignVariableOp.linear/linear_model/trip_start_hour_xf/weights@linear/linear_model/trip_start_hour_xf/weights/Initializer/zeros*
dtype0
Б
Blinear/linear_model/trip_start_hour_xf/weights/Read/ReadVariableOpReadVariableOp.linear/linear_model/trip_start_hour_xf/weights*
dtype0*
_output_shapes

:
к
Alinear/linear_model/trip_start_month_xf/weights/Initializer/zerosConst*
valueB*    *B
_class8
64loc:@linear/linear_model/trip_start_month_xf/weights*
dtype0*
_output_shapes

:
ў
/linear/linear_model/trip_start_month_xf/weightsVarHandleOp*
shape
:*@
shared_name1/linear/linear_model/trip_start_month_xf/weights*B
_class8
64loc:@linear/linear_model/trip_start_month_xf/weights*
dtype0*
_output_shapes
: 
Џ
Plinear/linear_model/trip_start_month_xf/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp/linear/linear_model/trip_start_month_xf/weights*
_output_shapes
: 
Ы
6linear/linear_model/trip_start_month_xf/weights/AssignAssignVariableOp/linear/linear_model/trip_start_month_xf/weightsAlinear/linear_model/trip_start_month_xf/weights/Initializer/zeros*
dtype0
Г
Clinear/linear_model/trip_start_month_xf/weights/Read/ReadVariableOpReadVariableOp/linear/linear_model/trip_start_month_xf/weights*
dtype0*
_output_shapes

:
Д
2linear/linear_model/bias_weights/Initializer/zerosConst*
valueB*    *3
_class)
'%loc:@linear/linear_model/bias_weights*
dtype0*
_output_shapes
:
Э
 linear/linear_model/bias_weightsVarHandleOp*3
_class)
'%loc:@linear/linear_model/bias_weights*
dtype0*
_output_shapes
: *
shape:*1
shared_name" linear/linear_model/bias_weights

Alinear/linear_model/bias_weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp linear/linear_model/bias_weights*
_output_shapes
: 

'linear/linear_model/bias_weights/AssignAssignVariableOp linear/linear_model/bias_weights2linear/linear_model/bias_weights/Initializer/zeros*
dtype0

4linear/linear_model/bias_weights/Read/ReadVariableOpReadVariableOp linear/linear_model/bias_weights*
dtype0*
_output_shapes
:
А
elinear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
valueB :
џџџџџџџџџ*
dtype0

clinear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/ignore_valueCastelinear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/ignore_value/x*

SrcT0*
_output_shapes
: *

DstT0	
н
_linear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/NotEqualNotEqualYtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/SelectV2clinear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:џџџџџџџџџ
ё
^linear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/indicesWhere_linear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
ш
]linear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/valuesGatherNdYtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/SelectV2^linear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
ћ
blinear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/dense_shapeShapeYtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/SelectV2*
T0	*
out_type0	*
_output_shapes
:

Tlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/num_buckets/xConst*
dtype0*
_output_shapes
: *
value
B :ђ
р
Rlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/num_bucketsCastTlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/num_buckets/x*
_output_shapes
: *

DstT0	*

SrcT0

Mlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/zero/xConst*
value	B : *
dtype0*
_output_shapes
: 
в
Klinear/linear_model/linear/linear_model/linear/linear_model/company_xf/zeroCastMlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/zero/x*

SrcT0*
_output_shapes
: *

DstT0	
­
Klinear/linear_model/linear/linear_model/linear/linear_model/company_xf/LessLess]linear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/valuesKlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/zero*
T0	*#
_output_shapes
:џџџџџџџџџ
Ф
Slinear/linear_model/linear/linear_model/linear/linear_model/company_xf/GreaterEqualGreaterEqual]linear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/valuesRlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/num_buckets*
T0	*#
_output_shapes
:џџџџџџџџџ
Ї
Slinear/linear_model/linear/linear_model/linear/linear_model/company_xf/out_of_range	LogicalOrKlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/LessSlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
й
Llinear/linear_model/linear/linear_model/linear/linear_model/company_xf/ShapeShape]linear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/values*
_output_shapes
:*
T0	

Mlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/Cast/xConst*
value	B : *
dtype0*
_output_shapes
: 
в
Klinear/linear_model/linear/linear_model/linear/linear_model/company_xf/CastCastMlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/Cast/x*
_output_shapes
: *

DstT0	*

SrcT0
І
Ulinear/linear_model/linear/linear_model/linear/linear_model/company_xf/default_valuesFillLlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/ShapeKlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/Cast*#
_output_shapes
:џџџџџџџџџ*
T0	

Olinear/linear_model/linear/linear_model/linear/linear_model/company_xf/SelectV2SelectV2Slinear/linear_model/linear/linear_model/linear/linear_model/company_xf/out_of_rangeUlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/default_values]linear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/values*#
_output_shapes
:џџџџџџџџџ*
T0	
ѓ
Slinear/linear_model/linear/linear_model/linear/linear_model/company_xf/Shape_1/CastCastblinear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/dense_shape*

SrcT0	*
_output_shapes
:*

DstT0
Є
Zlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
І
\linear/linear_model/linear/linear_model/linear/linear_model/company_xf/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
І
\linear/linear_model/linear/linear_model/linear/linear_model/company_xf/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

Tlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/strided_sliceStridedSliceSlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/Shape_1/CastZlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/strided_slice/stack\linear/linear_model/linear/linear_model/linear/linear_model/company_xf/strided_slice/stack_1\linear/linear_model/linear/linear_model/linear/linear_model/company_xf/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

Qlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/Cast_1/x/1Const*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
Ў
Olinear/linear_model/linear/linear_model/linear/linear_model/company_xf/Cast_1/xPackTlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/strided_sliceQlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/Cast_1/x/1*
T0*
N*
_output_shapes
:
к
Mlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/Cast_1CastOlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/Cast_1/x*

SrcT0*
_output_shapes
:*

DstT0	
Ї
Tlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/SparseReshapeSparseReshape^linear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/indicesblinear/linear_model/linear/linear_model/linear/linear_model/company_xf/to_sparse_input/dense_shapeMlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/Cast_1*-
_output_shapes
:џџџџџџџџџ:
ш
]linear/linear_model/linear/linear_model/linear/linear_model/company_xf/SparseReshape/IdentityIdentityOlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/SelectV2*
T0	*#
_output_shapes
:џџџџџџџџџ
Љ
_linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
Ј
^linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
­
Ylinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SliceSliceVlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/SparseReshape:1_linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice/begin^linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:
Ѓ
Ylinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:
З
Xlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/ProdProdYlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SliceYlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Const*
_output_shapes
: *
T0	
І
dlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2/indicesConst*
dtype0*
_output_shapes
: *
value	B :
Ѓ
alinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Э
\linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2GatherV2Vlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/SparseReshape:1dlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2/indicesalinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2/axis*
Tparams0	*
_output_shapes
: *
Taxis0*
Tindices0
Ш
Zlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Cast/xPackXlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Prod\linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2*
T0	*
N*
_output_shapes
:
Ћ
alinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SparseReshapeSparseReshapeTlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/SparseReshapeVlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/SparseReshape:1Zlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:

jlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SparseReshape/IdentityIdentity]linear/linear_model/linear/linear_model/linear/linear_model/company_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ
Є
blinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
ю
`linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GreaterEqualGreaterEqualjlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SparseReshape/Identityblinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
э
Ylinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/WhereWhere`linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
Д
alinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
в
[linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/ReshapeReshapeYlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Wherealinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Reshape/shape*#
_output_shapes
:џџџџџџџџџ*
T0	
Ѕ
clinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ф
^linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2_1GatherV2alinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SparseReshape[linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Reshapeclinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2_1/axis*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:џџџџџџџџџ
Ѕ
clinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2_2/axisConst*
_output_shapes
: *
value	B : *
dtype0
щ
^linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2_2GatherV2jlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SparseReshape/Identity[linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Reshapeclinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2_2/axis*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ*
Taxis0
ђ
\linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/IdentityIdentityclinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
Џ
mlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
ў
{linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows^linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2_1^linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/GatherV2_2\linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Identitymlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
а
linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
г
linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
г
linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
valueB"      *
dtype0

ylinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlice{linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowslinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stacklinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
shrink_axis_mask*

begin_mask*
end_mask*#
_output_shapes
:џџџџџџџџџ*
Index0*
T0	
А
plinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/CastCastylinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice*#
_output_shapes
:џџџџџџџџџ*

DstT0*

SrcT0	
И
rlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/UniqueUnique}linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Ћ
|linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather&linear/linear_model/company_xf/weightsrlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/Unique*9
_class/
-+loc:@linear/linear_model/company_xf/weights*
dtype0*'
_output_shapes
:џџџџџџџџџ*
Tindices0	
§
linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentity|linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*9
_class/
-+loc:@linear/linear_model/company_xf/weights*'
_output_shapes
:џџџџџџџџџ
Ю
linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identitylinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*'
_output_shapes
:џџџџџџџџџ*
T0
Ѓ
klinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1tlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/Unique:1plinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:џџџџџџџџџ
Д
clinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Reshape_1/shapeConst*
_output_shapes
:*
valueB"џџџџ   *
dtype0
ў
]linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Reshape_1Reshape}linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2clinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:џџџџџџџџџ
є
Ylinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/ShapeShapeklinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:
Б
glinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
Г
ilinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Г
ilinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
б
alinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/strided_sliceStridedSliceYlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Shapeglinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/strided_slice/stackilinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/strided_slice/stack_1ilinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 

[linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
Я
Ylinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/stackPack[linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/stack/0alinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/strided_slice*
_output_shapes
:*
T0*
N
е
Xlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/TileTile]linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Reshape_1Ylinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/stack*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

^linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/zeros_like	ZerosLikeklinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
Ж
Slinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sumSelectXlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Tile^linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/zeros_likeklinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
ю
Zlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Cast_1CastVlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/SparseReshape:1*
_output_shapes
:*

DstT0*

SrcT0	
Ћ
alinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice_1/beginConst*
dtype0*
_output_shapes
:*
valueB: 
Њ
`linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
З
[linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice_1SliceZlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Cast_1alinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice_1/begin`linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
о
[linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Shape_1ShapeSlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum*
T0*
_output_shapes
:
Ћ
alinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
Г
`linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice_2/sizeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
И
[linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice_2Slice[linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Shape_1alinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice_2/begin`linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice_2/size*
_output_shapes
:*
Index0*
T0
Ё
_linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Џ
Zlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/concatConcatV2[linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice_1[linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Slice_2_linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/concat/axis*
T0*
N*
_output_shapes
:
Ы
]linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Reshape_2ReshapeSlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sumZlinear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/concat*
T0*'
_output_shapes
:џџџџџџџџџ
Й
nlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/ignore_value/xConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

llinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/ignore_valueCastnlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/ignore_value/x*

SrcT0*
_output_shapes
: *

DstT0	
ч
hlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/NotEqualNotEqualQtransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/transposellinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:џџџџџџџџџ

glinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/indicesWherehlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
ђ
flinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/valuesGatherNdQtransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/transposeglinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/indices*#
_output_shapes
:џџџџџџџџџ*
Tindices0	*
Tparams0	
ќ
klinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/dense_shapeShapeQtransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/transpose*
out_type0	*
_output_shapes
:*
T0	

]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/num_buckets/xConst*
value	B :
*
dtype0*
_output_shapes
: 
ђ
[linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/num_bucketsCast]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/num_buckets/x*

SrcT0*
_output_shapes
: *

DstT0	

Vlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/zero/xConst*
value	B : *
dtype0*
_output_shapes
: 
ф
Tlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/zeroCastVlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/zero/x*
_output_shapes
: *

DstT0	*

SrcT0
Ш
Tlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/LessLessflinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/valuesTlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/zero*
T0	*#
_output_shapes
:џџџџџџџџџ
п
\linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/GreaterEqualGreaterEqualflinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/values[linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/num_buckets*
T0	*#
_output_shapes
:џџџџџџџџџ
Т
\linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/out_of_range	LogicalOrTlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/Less\linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
ы
Ulinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/ShapeShapeflinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/values*
T0	*
_output_shapes
:

Vlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/Cast/xConst*
value	B : *
dtype0*
_output_shapes
: 
ф
Tlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/CastCastVlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/Cast/x*

SrcT0*
_output_shapes
: *

DstT0	
С
^linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/default_valuesFillUlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/ShapeTlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/Cast*
T0	*#
_output_shapes
:џџџџџџџџџ
И
Xlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/SelectV2SelectV2\linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/out_of_range^linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/default_valuesflinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ

\linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/Shape_1/CastCastklinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/dense_shape*
_output_shapes
:*

DstT0*

SrcT0	
­
clinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Џ
elinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
Џ
elinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ф
]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/strided_sliceStridedSlice\linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/Shape_1/Castclinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/strided_slice/stackelinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/strided_slice/stack_1elinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
Ѕ
Zlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/Cast_1/x/1Const*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
Щ
Xlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/Cast_1/xPack]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/strided_sliceZlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/Cast_1/x/1*
T0*
N*
_output_shapes
:
ь
Vlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/Cast_1CastXlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/Cast_1/x*
_output_shapes
:*

DstT0	*

SrcT0
Ы
]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/SparseReshapeSparseReshapeglinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/indicesklinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/to_sparse_input/dense_shapeVlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/Cast_1*-
_output_shapes
:џџџџџџџџџ:
њ
flinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/SparseReshape/IdentityIdentityXlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/SelectV2*
T0	*#
_output_shapes
:џџџџџџџџџ
В
hlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
Б
glinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
б
blinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/SliceSlice_linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/SparseReshape:1hlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice/beginglinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:
Ќ
blinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:
в
alinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/ProdProdblinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Sliceblinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Const*
T0	*
_output_shapes
: 
Џ
mlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
Ќ
jlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ё
elinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2GatherV2_linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/SparseReshape:1mlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2/indicesjlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 
у
clinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Cast/xPackalinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Prodelinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2*
N*
_output_shapes
:*
T0	
Я
jlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/SparseReshapeSparseReshape]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/SparseReshape_linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/SparseReshape:1clinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:

slinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/SparseReshape/IdentityIdentityflinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ
­
klinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 

ilinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GreaterEqualGreaterEqualslinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/SparseReshape/Identityklinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GreaterEqual/y*#
_output_shapes
:џџџџџџџџџ*
T0	
џ
blinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/WhereWhereilinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
Н
jlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
э
dlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/ReshapeReshapeblinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Wherejlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:џџџџџџџџџ
Ў
llinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

glinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_1GatherV2jlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/SparseReshapedlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Reshapellinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_1/axis*
Tindices0	*
Tparams0	*'
_output_shapes
:џџџџџџџџџ*
Taxis0
Ў
llinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 

glinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_2GatherV2slinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/SparseReshape/Identitydlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Reshapellinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_2/axis*#
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	*
Tparams0	

elinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/IdentityIdentityllinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
И
vlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Ќ
linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsglinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_1glinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_2elinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Identityvlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
T0	
к
linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
м
linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
м
linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
Д
linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicelinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowslinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stacklinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
T0	*
shrink_axis_mask*

begin_mask*
end_mask*#
_output_shapes
:џџџџџџџџџ
У
ylinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/CastCastlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:џџџџџџџџџ*

DstT0
Ы
{linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/UniqueUniquelinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
а
linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather/linear/linear_model/dropoff_latitude_xf/weights{linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/Unique*
Tindices0	*B
_class8
64loc:@linear/linear_model/dropoff_latitude_xf/weights*
dtype0*'
_output_shapes
:џџџџџџџџџ

linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentitylinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*B
_class8
64loc:@linear/linear_model/dropoff_latitude_xf/weights*'
_output_shapes
:џџџџџџџџџ
р
linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identitylinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*'
_output_shapes
:џџџџџџџџџ*
T0
Ч
tlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1}linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/Unique:1ylinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/Cast*'
_output_shapes
:џџџџџџџџџ*
T0
Н
llinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Reshape_1/shapeConst*
valueB"џџџџ   *
dtype0*
_output_shapes
:

flinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Reshape_1Reshapelinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2llinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Reshape_1/shape*'
_output_shapes
:џџџџџџџџџ*
T0


blinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/ShapeShapetlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:
К
plinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
М
rlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
М
rlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ў
jlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/strided_sliceStridedSliceblinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Shapeplinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice/stackrlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice/stack_1rlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
І
dlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
ъ
blinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/stackPackdlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/stack/0jlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice*
T0*
N*
_output_shapes
:
№
alinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/TileTileflinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Reshape_1blinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/stack*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

glinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/zeros_like	ZerosLiketlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
к
\linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sumSelectalinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Tileglinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/zeros_liketlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ

clinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Cast_1Cast_linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/SparseReshape:1*

SrcT0	*
_output_shapes
:*

DstT0
Д
jlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
Г
ilinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice_1/sizeConst*
_output_shapes
:*
valueB:*
dtype0
л
dlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice_1Sliceclinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Cast_1jlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice_1/beginilinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
№
dlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Shape_1Shape\linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum*
T0*
_output_shapes
:
Д
jlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
М
ilinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice_2/sizeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
м
dlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice_2Slicedlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Shape_1jlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice_2/beginilinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
Њ
hlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
г
clinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/concatConcatV2dlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice_1dlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Slice_2hlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/concat/axis*
N*
_output_shapes
:*
T0
ц
flinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Reshape_2Reshape\linear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sumclinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/concat*
T0*'
_output_shapes
:џџџџџџџџџ
К
olinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/ignore_value/xConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

mlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/ignore_valueCastolinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/ignore_value/x*

SrcT0*
_output_shapes
: *

DstT0	
щ
ilinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/NotEqualNotEqualQtransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/transposemlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:џџџџџџџџџ

hlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/indicesWhereilinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
є
glinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/valuesGatherNdQtransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/transposehlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/indices*
Tparams0	*#
_output_shapes
:џџџџџџџџџ*
Tindices0	
§
llinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/dense_shapeShapeQtransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/transpose*
out_type0	*
_output_shapes
:*
T0	
 
^linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/num_buckets/xConst*
value	B :
*
dtype0*
_output_shapes
: 
є
\linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/num_bucketsCast^linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/num_buckets/x*

SrcT0*
_output_shapes
: *

DstT0	

Wlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/zero/xConst*
value	B : *
dtype0*
_output_shapes
: 
ц
Ulinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/zeroCastWlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/zero/x*
_output_shapes
: *

DstT0	*

SrcT0
Ы
Ulinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/LessLessglinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/valuesUlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/zero*#
_output_shapes
:џџџџџџџџџ*
T0	
т
]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/GreaterEqualGreaterEqualglinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/values\linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/num_buckets*
T0	*#
_output_shapes
:џџџџџџџџџ
Х
]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/out_of_range	LogicalOrUlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/Less]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
э
Vlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/ShapeShapeglinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/values*
T0	*
_output_shapes
:

Wlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/Cast/xConst*
value	B : *
dtype0*
_output_shapes
: 
ц
Ulinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/CastCastWlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/Cast/x*

SrcT0*
_output_shapes
: *

DstT0	
Ф
_linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/default_valuesFillVlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/ShapeUlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/Cast*
T0	*#
_output_shapes
:џџџџџџџџџ
М
Ylinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/SelectV2SelectV2]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/out_of_range_linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/default_valuesglinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ

]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/Shape_1/CastCastllinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/dense_shape*
_output_shapes
:*

DstT0*

SrcT0	
Ў
dlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
А
flinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
А
flinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Щ
^linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/strided_sliceStridedSlice]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/Shape_1/Castdlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/strided_slice/stackflinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/strided_slice/stack_1flinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
І
[linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/Cast_1/x/1Const*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
Ь
Ylinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/Cast_1/xPack^linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/strided_slice[linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/Cast_1/x/1*
T0*
N*
_output_shapes
:
ю
Wlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/Cast_1CastYlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/Cast_1/x*

SrcT0*
_output_shapes
:*

DstT0	
Я
^linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/SparseReshapeSparseReshapehlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/indicesllinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/to_sparse_input/dense_shapeWlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/Cast_1*-
_output_shapes
:џџџџџџџџџ:
ќ
glinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/SparseReshape/IdentityIdentityYlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/SelectV2*#
_output_shapes
:џџџџџџџџџ*
T0	
Г
ilinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
В
hlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
е
clinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/SliceSlice`linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/SparseReshape:1ilinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice/beginhlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:
­
clinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:
е
blinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/ProdProdclinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Sliceclinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Const*
T0	*
_output_shapes
: 
А
nlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
­
klinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
ѕ
flinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2GatherV2`linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/SparseReshape:1nlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2/indicesklinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2/axis*
Tindices0*
Tparams0	*
_output_shapes
: *
Taxis0
ц
dlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Cast/xPackblinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Prodflinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2*
T0	*
N*
_output_shapes
:
г
klinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/SparseReshapeSparseReshape^linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/SparseReshape`linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/SparseReshape:1dlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:

tlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/SparseReshape/IdentityIdentityglinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ
Ў
llinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 

jlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GreaterEqualGreaterEqualtlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/SparseReshape/Identityllinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GreaterEqual/y*#
_output_shapes
:џџџџџџџџџ*
T0	

clinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/WhereWherejlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
О
klinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Reshape/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
№
elinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/ReshapeReshapeclinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Whereklinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Reshape/shape*#
_output_shapes
:џџџџџџџџџ*
T0	
Џ
mlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

hlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_1GatherV2klinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/SparseReshapeelinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Reshapemlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_1/axis*
Tindices0	*
Tparams0	*'
_output_shapes
:џџџџџџџџџ*
Taxis0
Џ
mlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 

hlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_2GatherV2tlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/SparseReshape/Identityelinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Reshapemlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ

flinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/IdentityIdentitymlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
Й
wlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Б
linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowshlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_1hlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_2flinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Identitywlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
T0	
л
linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
н
linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
н
linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
Й
linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicelinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowslinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stacklinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
shrink_axis_mask*

begin_mask*
end_mask*#
_output_shapes
:џџџџџџџџџ*
T0	*
Index0
Х
zlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/CastCastlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:џџџџџџџџџ*

DstT0
Э
|linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/UniqueUniquelinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0	
д
linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather0linear/linear_model/dropoff_longitude_xf/weights|linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/Unique*C
_class9
75loc:@linear/linear_model/dropoff_longitude_xf/weights*
dtype0*'
_output_shapes
:џџџџџџџџџ*
Tindices0	

linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentitylinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*C
_class9
75loc:@linear/linear_model/dropoff_longitude_xf/weights*'
_output_shapes
:џџџџџџџџџ
т
linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identitylinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*
T0*'
_output_shapes
:џџџџџџџџџ
Ы
ulinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1~linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/Unique:1zlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:џџџџџџџџџ
О
mlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Reshape_1/shapeConst*
valueB"џџџџ   *
dtype0*
_output_shapes
:

glinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Reshape_1Reshapelinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2mlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Reshape_1/shape*'
_output_shapes
:џџџџџџџџџ*
T0


clinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/ShapeShapeulinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse*
_output_shapes
:*
T0
Л
qlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice/stackConst*
_output_shapes
:*
valueB:*
dtype0
Н
slinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Н
slinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

klinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/strided_sliceStridedSliceclinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Shapeqlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice/stackslinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice/stack_1slinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask
Ї
elinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
э
clinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/stackPackelinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/stack/0klinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice*
_output_shapes
:*
T0*
N
ѓ
blinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/TileTileglinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Reshape_1clinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/stack*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0


hlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/zeros_like	ZerosLikeulinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:џџџџџџџџџ*
T0
о
]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sumSelectblinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Tilehlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/zeros_likeulinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ

dlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Cast_1Cast`linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/SparseReshape:1*

SrcT0	*
_output_shapes
:*

DstT0
Е
klinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
Д
jlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
п
elinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice_1Slicedlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Cast_1klinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice_1/beginjlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
ђ
elinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Shape_1Shape]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum*
T0*
_output_shapes
:
Е
klinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
Н
jlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice_2/sizeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
р
elinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice_2Sliceelinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Shape_1klinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice_2/beginjlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice_2/size*
_output_shapes
:*
Index0*
T0
Ћ
ilinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
з
dlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/concatConcatV2elinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice_1elinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Slice_2ilinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/concat/axis*
T0*
N*
_output_shapes
:
щ
glinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Reshape_2Reshape]linear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sumdlinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/concat*'
_output_shapes
:џџџџџџџџџ*
T0
Е
jlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/ignore_value/xConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

hlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/ignore_valueCastjlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/ignore_value/x*

SrcT0*
_output_shapes
: *

DstT0	
х
dlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/NotEqualNotEqualWtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/SelectV2hlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/ignore_value*'
_output_shapes
:џџџџџџџџџ*
T0	
ћ
clinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/indicesWheredlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
№
blinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/valuesGatherNdWtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/SelectV2clinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/indices*#
_output_shapes
:џџџџџџџџџ*
Tindices0	*
Tparams0	
ў
glinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/dense_shapeShapeWtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/SelectV2*
T0	*
out_type0	*
_output_shapes
:

Ylinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/num_buckets/xConst*
_output_shapes
: *
value
B :ђ*
dtype0
ъ
Wlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/num_bucketsCastYlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/num_buckets/x*

SrcT0*
_output_shapes
: *

DstT0	

Rlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/zero/xConst*
_output_shapes
: *
value	B : *
dtype0
м
Plinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/zeroCastRlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/zero/x*
_output_shapes
: *

DstT0	*

SrcT0
М
Plinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/LessLessblinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/valuesPlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/zero*
T0	*#
_output_shapes
:џџџџџџџџџ
г
Xlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/GreaterEqualGreaterEqualblinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/valuesWlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/num_buckets*#
_output_shapes
:џџџџџџџџџ*
T0	
Ж
Xlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/out_of_range	LogicalOrPlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/LessXlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
у
Qlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/ShapeShapeblinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/values*
T0	*
_output_shapes
:

Rlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/Cast/xConst*
value	B : *
dtype0*
_output_shapes
: 
м
Plinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/CastCastRlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/Cast/x*

SrcT0*
_output_shapes
: *

DstT0	
Е
Zlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/default_valuesFillQlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/ShapePlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/Cast*
T0	*#
_output_shapes
:џџџџџџџџџ
Ј
Tlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/SelectV2SelectV2Xlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/out_of_rangeZlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/default_valuesblinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ
§
Xlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/Shape_1/CastCastglinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/dense_shape*

SrcT0	*
_output_shapes
:*

DstT0
Љ
_linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Ћ
alinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ћ
alinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
А
Ylinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/strided_sliceStridedSliceXlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/Shape_1/Cast_linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/strided_slice/stackalinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/strided_slice/stack_1alinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
Ё
Vlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/Cast_1/x/1Const*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
Н
Tlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/Cast_1/xPackYlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/strided_sliceVlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/Cast_1/x/1*
_output_shapes
:*
T0*
N
ф
Rlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/Cast_1CastTlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/Cast_1/x*
_output_shapes
:*

DstT0	*

SrcT0
Л
Ylinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/SparseReshapeSparseReshapeclinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/indicesglinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/to_sparse_input/dense_shapeRlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/Cast_1*-
_output_shapes
:џџџџџџџџџ:
ђ
blinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/SparseReshape/IdentityIdentityTlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/SelectV2*
T0	*#
_output_shapes
:џџџџџџџџџ
Ў
dlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
­
clinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
С
^linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/SliceSlice[linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/SparseReshape:1dlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice/beginclinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:
Ј
^linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Ц
]linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/ProdProd^linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice^linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Const*
T0	*
_output_shapes
: 
Ћ
ilinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
Ј
flinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
с
alinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2GatherV2[linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/SparseReshape:1ilinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2/indicesflinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2/axis*
Tparams0	*
_output_shapes
: *
Taxis0*
Tindices0
з
_linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Cast/xPack]linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Prodalinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2*
T0	*
N*
_output_shapes
:
П
flinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/SparseReshapeSparseReshapeYlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/SparseReshape[linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/SparseReshape:1_linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:

olinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/SparseReshape/IdentityIdentityblinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/SparseReshape/Identity*#
_output_shapes
:џџџџџџџџџ*
T0	
Љ
glinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
§
elinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GreaterEqualGreaterEqualolinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/SparseReshape/Identityglinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
ї
^linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/WhereWhereelinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
Й
flinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
с
`linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/ReshapeReshape^linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Whereflinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Reshape/shape*#
_output_shapes
:џџџџџџџџџ*
T0	
Њ
hlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2_1/axisConst*
_output_shapes
: *
value	B : *
dtype0
ј
clinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2_1GatherV2flinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/SparseReshape`linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Reshapehlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2_1/axis*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:џџџџџџџџџ
Њ
hlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2_2/axisConst*
_output_shapes
: *
value	B : *
dtype0
§
clinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2_2GatherV2olinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/SparseReshape/Identity`linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Reshapehlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2_2/axis*
Tparams0	*#
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	
ќ
alinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/IdentityIdentityhlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
Д
rlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
value	B	 R *
dtype0	

linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsclinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2_1clinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/GatherV2_2alinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Identityrlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
ж
linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
valueB"        *
dtype0
и
linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
и
linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:

~linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicelinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowslinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stacklinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
T0	*
Index0*
shrink_axis_mask*

begin_mask*
end_mask*#
_output_shapes
:џџџџџџџџџ
К
ulinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/CastCast~linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice*#
_output_shapes
:џџџџџџџџџ*

DstT0*

SrcT0	
У
wlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/UniqueUniquelinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0	
Р
linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather+linear/linear_model/payment_type_xf/weightswlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/Unique*
Tindices0	*>
_class4
20loc:@linear/linear_model/payment_type_xf/weights*
dtype0*'
_output_shapes
:џџџџџџџџџ

linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentitylinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*>
_class4
20loc:@linear/linear_model/payment_type_xf/weights*'
_output_shapes
:џџџџџџџџџ
и
linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identitylinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*'
_output_shapes
:џџџџџџџџџ*
T0
З
plinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1ylinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/Unique:1ulinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/Cast*'
_output_shapes
:џџџџџџџџџ*
T0
Й
hlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Reshape_1/shapeConst*
valueB"џџџџ   *
dtype0*
_output_shapes
:

blinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Reshape_1Reshapelinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2hlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:џџџџџџџџџ
ў
^linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/ShapeShapeplinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse*
_output_shapes
:*
T0
Ж
llinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
И
nlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
И
nlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ъ
flinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/strided_sliceStridedSlice^linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Shapellinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/strided_slice/stacknlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/strided_slice/stack_1nlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
Ђ
`linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
о
^linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/stackPack`linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/stack/0flinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/strided_slice*
_output_shapes
:*
T0*
N
ф
]linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/TileTileblinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Reshape_1^linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/stack*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

clinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/zeros_like	ZerosLikeplinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
Ъ
Xlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sumSelect]linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Tileclinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/zeros_likeplinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:џџџџџџџџџ*
T0
ј
_linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Cast_1Cast[linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/SparseReshape:1*

SrcT0	*
_output_shapes
:*

DstT0
А
flinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
Џ
elinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
Ы
`linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice_1Slice_linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Cast_1flinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice_1/beginelinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
ш
`linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Shape_1ShapeXlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum*
T0*
_output_shapes
:
А
flinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice_2/beginConst*
dtype0*
_output_shapes
:*
valueB:
И
elinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice_2/sizeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
Ь
`linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice_2Slice`linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Shape_1flinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice_2/beginelinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
І
dlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
У
_linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/concatConcatV2`linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice_1`linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Slice_2dlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/concat/axis*
_output_shapes
:*
T0*
N
к
blinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Reshape_2ReshapeXlinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum_linear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/concat*'
_output_shapes
:џџџџџџџџџ*
T0
И
mlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/ignore_value/xConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

klinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/ignore_valueCastmlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/ignore_value/x*

SrcT0*
_output_shapes
: *

DstT0	
у
glinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/NotEqualNotEqualOtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/transposeklinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/ignore_value*'
_output_shapes
:џџџџџџџџџ*
T0	

flinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/indicesWhereglinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
ю
elinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/valuesGatherNdOtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/transposeflinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
љ
jlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/dense_shapeShapeOtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/transpose*
T0	*
out_type0	*
_output_shapes
:

\linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/num_buckets/xConst*
value	B :
*
dtype0*
_output_shapes
: 
№
Zlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/num_bucketsCast\linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/num_buckets/x*

SrcT0*
_output_shapes
: *

DstT0	

Ulinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/zero/xConst*
dtype0*
_output_shapes
: *
value	B : 
т
Slinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/zeroCastUlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/zero/x*
_output_shapes
: *

DstT0	*

SrcT0
Х
Slinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/LessLesselinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/valuesSlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/zero*
T0	*#
_output_shapes
:џџџџџџџџџ
м
[linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/GreaterEqualGreaterEqualelinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/valuesZlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/num_buckets*#
_output_shapes
:џџџџџџџџџ*
T0	
П
[linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/out_of_range	LogicalOrSlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/Less[linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
щ
Tlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/ShapeShapeelinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/values*
T0	*
_output_shapes
:

Ulinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/Cast/xConst*
value	B : *
dtype0*
_output_shapes
: 
т
Slinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/CastCastUlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/Cast/x*

SrcT0*
_output_shapes
: *

DstT0	
О
]linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/default_valuesFillTlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/ShapeSlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/Cast*
T0	*#
_output_shapes
:џџџџџџџџџ
Д
Wlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/SelectV2SelectV2[linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/out_of_range]linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/default_valueselinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ

[linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/Shape_1/CastCastjlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/dense_shape*
_output_shapes
:*

DstT0*

SrcT0	
Ќ
blinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Ў
dlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ў
dlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
П
\linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/strided_sliceStridedSlice[linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/Shape_1/Castblinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/strided_slice/stackdlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/strided_slice/stack_1dlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
Є
Ylinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/Cast_1/x/1Const*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
Ц
Wlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/Cast_1/xPack\linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/strided_sliceYlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/Cast_1/x/1*
N*
_output_shapes
:*
T0
ъ
Ulinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/Cast_1CastWlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/Cast_1/x*
_output_shapes
:*

DstT0	*

SrcT0
Ч
\linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/SparseReshapeSparseReshapeflinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/indicesjlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/to_sparse_input/dense_shapeUlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/Cast_1*-
_output_shapes
:џџџџџџџџџ:
ј
elinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/SparseReshape/IdentityIdentityWlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/SelectV2*
T0	*#
_output_shapes
:џџџџџџџџџ
Б
glinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
А
flinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
Э
alinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/SliceSlice^linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/SparseReshape:1glinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice/beginflinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:
Ћ
alinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Я
`linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/ProdProdalinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slicealinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Const*
T0	*
_output_shapes
: 
Ў
llinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
Ћ
ilinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
э
dlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2GatherV2^linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/SparseReshape:1llinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2/indicesilinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2/axis*
_output_shapes
: *
Taxis0*
Tindices0*
Tparams0	
р
blinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Cast/xPack`linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Proddlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2*
N*
_output_shapes
:*
T0	
Ы
ilinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/SparseReshapeSparseReshape\linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/SparseReshape^linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/SparseReshape:1blinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:

rlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/SparseReshape/IdentityIdentityelinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ
Ќ
jlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 

hlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GreaterEqualGreaterEqualrlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/SparseReshape/Identityjlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
§
alinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/WhereWherehlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
М
ilinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
ъ
clinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/ReshapeReshapealinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Whereilinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:џџџџџџџџџ
­
klinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

flinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_1GatherV2ilinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/SparseReshapeclinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Reshapeklinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_1/axis*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:џџџџџџџџџ
­
klinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 

flinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_2GatherV2rlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/SparseReshape/Identityclinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Reshapeklinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_2/axis*#
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	*
Tparams0	

dlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/IdentityIdentityklinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	
З
ulinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Ї
linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsflinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_1flinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_2dlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Identityulinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
й
linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
л
linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
л
linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
Џ
linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicelinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowslinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stacklinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
shrink_axis_mask*

begin_mask*
end_mask*#
_output_shapes
:џџџџџџџџџ*
T0	*
Index0
С
xlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/CastCastlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:џџџџџџџџџ*

DstT0
Щ
zlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/UniqueUniquelinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0	
Ь
linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather.linear/linear_model/pickup_latitude_xf/weightszlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/Unique*A
_class7
53loc:@linear/linear_model/pickup_latitude_xf/weights*
dtype0*'
_output_shapes
:џџџџџџџџџ*
Tindices0	

linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentitylinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*'
_output_shapes
:џџџџџџџџџ*
T0*A
_class7
53loc:@linear/linear_model/pickup_latitude_xf/weights
о
linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identitylinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*
T0*'
_output_shapes
:џџџџџџџџџ
У
slinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1|linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/Unique:1xlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:џџџџџџџџџ
М
klinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Reshape_1/shapeConst*
_output_shapes
:*
valueB"џџџџ   *
dtype0

elinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Reshape_1Reshapelinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2klinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Reshape_1/shape*'
_output_shapes
:џџџџџџџџџ*
T0


alinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/ShapeShapeslinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:
Й
olinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
Л
qlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
Л
qlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
љ
ilinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/strided_sliceStridedSlicealinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Shapeolinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/strided_slice/stackqlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/strided_slice/stack_1qlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
Ѕ
clinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/stack/0Const*
_output_shapes
: *
value	B :*
dtype0
ч
alinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/stackPackclinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/stack/0ilinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/strided_slice*
T0*
N*
_output_shapes
:
э
`linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/TileTileelinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Reshape_1alinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/stack*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0


flinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/zeros_like	ZerosLikeslinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
ж
[linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sumSelect`linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Tileflinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/zeros_likeslinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
ў
blinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Cast_1Cast^linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/SparseReshape:1*

SrcT0	*
_output_shapes
:*

DstT0
Г
ilinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice_1/beginConst*
dtype0*
_output_shapes
:*
valueB: 
В
hlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
з
clinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice_1Sliceblinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Cast_1ilinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice_1/beginhlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
ю
clinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Shape_1Shape[linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum*
T0*
_output_shapes
:
Г
ilinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
Л
hlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice_2/sizeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
и
clinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice_2Sliceclinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Shape_1ilinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice_2/beginhlinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
Љ
glinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Я
blinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/concatConcatV2clinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice_1clinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Slice_2glinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/concat/axis*
N*
_output_shapes
:*
T0
у
elinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Reshape_2Reshape[linear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sumblinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/concat*
T0*'
_output_shapes
:џџџџџџџџџ
Й
nlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/ignore_value/xConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

llinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/ignore_valueCastnlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/ignore_value/x*

SrcT0*
_output_shapes
: *

DstT0	
ч
hlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/NotEqualNotEqualQtransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/transposellinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:џџџџџџџџџ

glinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/indicesWherehlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
ђ
flinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/valuesGatherNdQtransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/transposeglinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/indices*#
_output_shapes
:џџџџџџџџџ*
Tindices0	*
Tparams0	
ќ
klinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/dense_shapeShapeQtransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/transpose*
T0	*
out_type0	*
_output_shapes
:

]linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/num_buckets/xConst*
value	B :
*
dtype0*
_output_shapes
: 
ђ
[linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/num_bucketsCast]linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/num_buckets/x*
_output_shapes
: *

DstT0	*

SrcT0

Vlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/zero/xConst*
value	B : *
dtype0*
_output_shapes
: 
ф
Tlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/zeroCastVlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/zero/x*
_output_shapes
: *

DstT0	*

SrcT0
Ш
Tlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/LessLessflinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/valuesTlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/zero*
T0	*#
_output_shapes
:џџџџџџџџџ
п
\linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/GreaterEqualGreaterEqualflinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/values[linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/num_buckets*
T0	*#
_output_shapes
:џџџџџџџџџ
Т
\linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/out_of_range	LogicalOrTlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/Less\linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
ы
Ulinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/ShapeShapeflinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/values*
_output_shapes
:*
T0	

Vlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/Cast/xConst*
_output_shapes
: *
value	B : *
dtype0
ф
Tlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/CastCastVlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/Cast/x*

SrcT0*
_output_shapes
: *

DstT0	
С
^linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/default_valuesFillUlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/ShapeTlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/Cast*
T0	*#
_output_shapes
:џџџџџџџџџ
И
Xlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/SelectV2SelectV2\linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/out_of_range^linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/default_valuesflinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ

\linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/Shape_1/CastCastklinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/dense_shape*

SrcT0	*
_output_shapes
:*

DstT0
­
clinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Џ
elinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Џ
elinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ф
]linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/strided_sliceStridedSlice\linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/Shape_1/Castclinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/strided_slice/stackelinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/strided_slice/stack_1elinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
Ѕ
Zlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/Cast_1/x/1Const*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
Щ
Xlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/Cast_1/xPack]linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/strided_sliceZlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/Cast_1/x/1*
T0*
N*
_output_shapes
:
ь
Vlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/Cast_1CastXlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/Cast_1/x*

SrcT0*
_output_shapes
:*

DstT0	
Ы
]linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/SparseReshapeSparseReshapeglinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/indicesklinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/to_sparse_input/dense_shapeVlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/Cast_1*-
_output_shapes
:џџџџџџџџџ:
њ
flinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/SparseReshape/IdentityIdentityXlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/SelectV2*
T0	*#
_output_shapes
:џџџџџџџџџ
В
hlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
Б
glinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
б
blinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/SliceSlice_linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/SparseReshape:1hlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice/beginglinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:
Ќ
blinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:
в
alinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/ProdProdblinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Sliceblinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Const*
T0	*
_output_shapes
: 
Џ
mlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
Ќ
jlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2/axisConst*
_output_shapes
: *
value	B : *
dtype0
ё
elinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2GatherV2_linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/SparseReshape:1mlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2/indicesjlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2/axis*
_output_shapes
: *
Taxis0*
Tindices0*
Tparams0	
у
clinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Cast/xPackalinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Prodelinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2*
T0	*
N*
_output_shapes
:
Я
jlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/SparseReshapeSparseReshape]linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/SparseReshape_linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/SparseReshape:1clinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:

slinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/SparseReshape/IdentityIdentityflinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ
­
klinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GreaterEqual/yConst*
_output_shapes
: *
value	B	 R *
dtype0	

ilinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GreaterEqualGreaterEqualslinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/SparseReshape/Identityklinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
џ
blinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/WhereWhereilinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
Н
jlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
э
dlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/ReshapeReshapeblinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Wherejlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:џџџџџџџџџ
Ў
llinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

glinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_1GatherV2jlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/SparseReshapedlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Reshapellinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_1/axis*
Tindices0	*
Tparams0	*'
_output_shapes
:џџџџџџџџџ*
Taxis0
Ў
llinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 

glinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_2GatherV2slinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/SparseReshape/Identitydlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Reshapellinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_2/axis*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ*
Taxis0

elinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/IdentityIdentityllinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	
И
vlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Ќ
linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsglinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_1glinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_2elinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Identityvlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
к
linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
м
linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
м
linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
Д
linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicelinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowslinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stacklinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*#
_output_shapes
:џџџџџџџџџ*
T0	*
Index0*
shrink_axis_mask*

begin_mask*
end_mask
У
ylinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/CastCastlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice*#
_output_shapes
:џџџџџџџџџ*

DstT0*

SrcT0	
Ы
{linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/UniqueUniquelinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
а
linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather/linear/linear_model/pickup_longitude_xf/weights{linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/Unique*
dtype0*'
_output_shapes
:џџџџџџџџџ*
Tindices0	*B
_class8
64loc:@linear/linear_model/pickup_longitude_xf/weights

linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentitylinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*B
_class8
64loc:@linear/linear_model/pickup_longitude_xf/weights*'
_output_shapes
:џџџџџџџџџ
р
linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identitylinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*
T0*'
_output_shapes
:џџџџџџџџџ
Ч
tlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1}linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/Unique:1ylinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:џџџџџџџџџ
Н
llinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Reshape_1/shapeConst*
valueB"џџџџ   *
dtype0*
_output_shapes
:

flinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Reshape_1Reshapelinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2llinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Reshape_1/shape*'
_output_shapes
:џџџџџџџџџ*
T0


blinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/ShapeShapetlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:
К
plinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/strided_slice/stackConst*
_output_shapes
:*
valueB:*
dtype0
М
rlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
М
rlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ў
jlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/strided_sliceStridedSliceblinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Shapeplinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/strided_slice/stackrlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/strided_slice/stack_1rlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
І
dlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/stack/0Const*
dtype0*
_output_shapes
: *
value	B :
ъ
blinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/stackPackdlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/stack/0jlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/strided_slice*
T0*
N*
_output_shapes
:
№
alinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/TileTileflinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Reshape_1blinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/stack*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

glinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/zeros_like	ZerosLiketlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:џџџџџџџџџ*
T0
к
\linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sumSelectalinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Tileglinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/zeros_liketlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ

clinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Cast_1Cast_linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/SparseReshape:1*
_output_shapes
:*

DstT0*

SrcT0	
Д
jlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
Г
ilinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
л
dlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice_1Sliceclinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Cast_1jlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice_1/beginilinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice_1/size*
_output_shapes
:*
Index0*
T0
№
dlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Shape_1Shape\linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum*
_output_shapes
:*
T0
Д
jlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice_2/beginConst*
dtype0*
_output_shapes
:*
valueB:
М
ilinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice_2/sizeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
м
dlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice_2Slicedlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Shape_1jlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice_2/beginilinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
Њ
hlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
г
clinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/concatConcatV2dlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice_1dlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Slice_2hlinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/concat/axis*
T0*
N*
_output_shapes
:
ц
flinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Reshape_2Reshape\linear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sumclinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/concat*
T0*'
_output_shapes
:џџџџџџџџџ
З
llinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/ignore_value/xConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/ignore_valueCastllinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/ignore_value/x*

SrcT0*
_output_shapes
: *

DstT0	
Щ
flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/NotEqualNotEqual7transform/transform/inputs/inputs/F_trip_start_day_copyjlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/ignore_value*'
_output_shapes
:џџџџџџџџџ*
T0	
џ
elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/indicesWhereflinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
д
dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/valuesGatherNd7transform/transform/inputs/inputs/F_trip_start_day_copyelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
р
ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/dense_shapeShape7transform/transform/inputs/inputs/F_trip_start_day_copy*
_output_shapes
:*
T0	*
out_type0	

[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/num_buckets/xConst*
_output_shapes
: *
value	B :*
dtype0
ю
Ylinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/num_bucketsCast[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/num_buckets/x*
_output_shapes
: *

DstT0	*

SrcT0

Tlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/zero/xConst*
value	B : *
dtype0*
_output_shapes
: 
р
Rlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/zeroCastTlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/zero/x*

SrcT0*
_output_shapes
: *

DstT0	
Т
Rlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/LessLessdlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/valuesRlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/zero*
T0	*#
_output_shapes
:џџџџџџџџџ
й
Zlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/GreaterEqualGreaterEqualdlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/valuesYlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/num_buckets*
T0	*#
_output_shapes
:џџџџџџџџџ
М
Zlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/out_of_range	LogicalOrRlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/LessZlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
ч
Slinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/ShapeShapedlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/values*
_output_shapes
:*
T0	

Tlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/Cast/xConst*
dtype0*
_output_shapes
: *
value	B : 
р
Rlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/CastCastTlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/Cast/x*

SrcT0*
_output_shapes
: *

DstT0	
Л
\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/default_valuesFillSlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/ShapeRlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/Cast*#
_output_shapes
:џџџџџџџџџ*
T0	
А
Vlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/SelectV2SelectV2Zlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/out_of_range\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/default_valuesdlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ

Zlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/Shape_1/CastCastilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/dense_shape*

SrcT0	*
_output_shapes
:*

DstT0
Ћ
alinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
­
clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
­
clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
К
[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/strided_sliceStridedSliceZlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/Shape_1/Castalinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/strided_slice/stackclinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/strided_slice/stack_1clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
Ѓ
Xlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/Cast_1/x/1Const*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
У
Vlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/Cast_1/xPack[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/strided_sliceXlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/Cast_1/x/1*
T0*
N*
_output_shapes
:
ш
Tlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/Cast_1CastVlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/Cast_1/x*

SrcT0*
_output_shapes
:*

DstT0	
У
[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/SparseReshapeSparseReshapeelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/indicesilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/to_sparse_input/dense_shapeTlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/Cast_1*-
_output_shapes
:џџџџџџџџџ:
і
dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/SparseReshape/IdentityIdentityVlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/SelectV2*
T0	*#
_output_shapes
:џџџџџџџџџ
А
flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
Џ
elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice/sizeConst*
dtype0*
_output_shapes
:*
valueB:
Щ
`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/SliceSlice]linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/SparseReshape:1flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice/beginelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice/size*
_output_shapes
:*
Index0*
T0	
Њ
`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Ь
_linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/ProdProd`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Const*
T0	*
_output_shapes
: 
­
klinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2/indicesConst*
dtype0*
_output_shapes
: *
value	B :
Њ
hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
щ
clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2GatherV2]linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/SparseReshape:1klinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2/indiceshlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 
н
alinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Cast/xPack_linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Prodclinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2*
T0	*
N*
_output_shapes
:
Ч
hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/SparseReshapeSparseReshape[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/SparseReshape]linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/SparseReshape:1alinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:

qlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/SparseReshape/IdentityIdentitydlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ
Ћ
ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GreaterEqual/yConst*
dtype0	*
_output_shapes
: *
value	B	 R 

glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GreaterEqualGreaterEqualqlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/SparseReshape/Identityilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
ћ
`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/WhereWhereglinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
Л
hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
ч
blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/ReshapeReshape`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Wherehlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:џџџџџџџџџ
Ќ
jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2_1GatherV2hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/SparseReshapeblinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Reshapejlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2_1/axis*'
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	*
Tparams0	
Ќ
jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 

elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2_2GatherV2qlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/SparseReshape/Identityblinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Reshapejlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2_2/axis*#
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	*
Tparams0	

clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/IdentityIdentityjlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
Ж
tlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Ђ
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowselinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2_1elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/GatherV2_2clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Identitytlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
и
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB"        
к
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
valueB"       *
dtype0
к
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
Њ
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowslinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stacklinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
end_mask*#
_output_shapes
:џџџџџџџџџ*
T0	*
Index0*
shrink_axis_mask*

begin_mask
П
wlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/CastCastlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice*#
_output_shapes
:џџџџџџџџџ*

DstT0*

SrcT0	
Ч
ylinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/UniqueUniquelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Ш
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather-linear/linear_model/trip_start_day_xf/weightsylinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/Unique*
Tindices0	*@
_class6
42loc:@linear/linear_model/trip_start_day_xf/weights*
dtype0*'
_output_shapes
:џџџџџџџџџ

linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentitylinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*@
_class6
42loc:@linear/linear_model/trip_start_day_xf/weights*'
_output_shapes
:џџџџџџџџџ
м
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identitylinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*'
_output_shapes
:џџџџџџџџџ*
T0
П
rlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1{linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/Unique:1wlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:џџџџџџџџџ
Л
jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Reshape_1/shapeConst*
valueB"џџџџ   *
dtype0*
_output_shapes
:

dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Reshape_1Reshapelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:џџџџџџџџџ

`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/ShapeShaperlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse*
_output_shapes
:*
T0
И
nlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
К
plinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
К
plinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
є
hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/strided_sliceStridedSlice`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Shapenlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/strided_slice/stackplinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/strided_slice/stack_1plinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
Є
blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
ф
`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/stackPackblinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/stack/0hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/strided_slice*
N*
_output_shapes
:*
T0
ъ
_linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/TileTiledlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Reshape_1`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/stack*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/zeros_like	ZerosLikerlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:џџџџџџџџџ*
T0
в
Zlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sumSelect_linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Tileelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/zeros_likerlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
ќ
alinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Cast_1Cast]linear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/SparseReshape:1*

SrcT0	*
_output_shapes
:*

DstT0
В
hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice_1/beginConst*
dtype0*
_output_shapes
:*
valueB: 
Б
glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
г
blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice_1Slicealinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Cast_1hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice_1/beginglinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
ь
blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Shape_1ShapeZlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum*
T0*
_output_shapes
:
В
hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice_2/beginConst*
dtype0*
_output_shapes
:*
valueB:
К
glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice_2/sizeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
д
blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice_2Sliceblinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Shape_1hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice_2/beginglinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice_2/size*
_output_shapes
:*
Index0*
T0
Ј
flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/concat/axisConst*
_output_shapes
: *
value	B : *
dtype0
Ы
alinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/concatConcatV2blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice_1blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Slice_2flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/concat/axis*
T0*
N*
_output_shapes
:
р
dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Reshape_2ReshapeZlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sumalinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/concat*
T0*'
_output_shapes
:џџџџџџџџџ
И
mlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/ignore_value/xConst*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ

klinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/ignore_valueCastmlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/ignore_value/x*
_output_shapes
: *

DstT0	*

SrcT0
Ь
glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/NotEqualNotEqual8transform/transform/inputs/inputs/F_trip_start_hour_copyklinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:џџџџџџџџџ

flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/indicesWhereglinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
з
elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/valuesGatherNd8transform/transform/inputs/inputs/F_trip_start_hour_copyflinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
т
jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/dense_shapeShape8transform/transform/inputs/inputs/F_trip_start_hour_copy*
T0	*
out_type0	*
_output_shapes
:

\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/num_buckets/xConst*
value	B :*
dtype0*
_output_shapes
: 
№
Zlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/num_bucketsCast\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/num_buckets/x*

SrcT0*
_output_shapes
: *

DstT0	

Ulinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/zero/xConst*
_output_shapes
: *
value	B : *
dtype0
т
Slinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/zeroCastUlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/zero/x*

SrcT0*
_output_shapes
: *

DstT0	
Х
Slinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/LessLesselinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/valuesSlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/zero*
T0	*#
_output_shapes
:џџџџџџџџџ
м
[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/GreaterEqualGreaterEqualelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/valuesZlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/num_buckets*#
_output_shapes
:џџџџџџџџџ*
T0	
П
[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/out_of_range	LogicalOrSlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/Less[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
щ
Tlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/ShapeShapeelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/values*
T0	*
_output_shapes
:

Ulinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/Cast/xConst*
_output_shapes
: *
value	B : *
dtype0
т
Slinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/CastCastUlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/Cast/x*

SrcT0*
_output_shapes
: *

DstT0	
О
]linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/default_valuesFillTlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/ShapeSlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/Cast*#
_output_shapes
:џџџџџџџџџ*
T0	
Д
Wlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/SelectV2SelectV2[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/out_of_range]linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/default_valueselinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ

[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/Shape_1/CastCastjlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/dense_shape*

SrcT0	*
_output_shapes
:*

DstT0
Ќ
blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
Ў
dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ў
dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
П
\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/strided_sliceStridedSlice[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/Shape_1/Castblinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/strided_slice/stackdlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/strided_slice/stack_1dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
Є
Ylinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/Cast_1/x/1Const*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
Ц
Wlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/Cast_1/xPack\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/strided_sliceYlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/Cast_1/x/1*
N*
_output_shapes
:*
T0
ъ
Ulinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/Cast_1CastWlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/Cast_1/x*

SrcT0*
_output_shapes
:*

DstT0	
Ч
\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/SparseReshapeSparseReshapeflinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/indicesjlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/to_sparse_input/dense_shapeUlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/Cast_1*-
_output_shapes
:џџџџџџџџџ:
ј
elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/SparseReshape/IdentityIdentityWlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/SelectV2*
T0	*#
_output_shapes
:џџџџџџџџџ
Б
glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice/beginConst*
dtype0*
_output_shapes
:*
valueB: 
А
flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice/sizeConst*
dtype0*
_output_shapes
:*
valueB:
Э
alinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/SliceSlice^linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/SparseReshape:1glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice/beginflinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:
Ћ
alinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Я
`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/ProdProdalinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slicealinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Const*
_output_shapes
: *
T0	
Ў
llinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
Ћ
ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
э
dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2GatherV2^linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/SparseReshape:1llinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2/indicesilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2/axis*
_output_shapes
: *
Taxis0*
Tindices0*
Tparams0	
р
blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Cast/xPack`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Proddlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2*
T0	*
N*
_output_shapes
:
Ы
ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/SparseReshapeSparseReshape\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/SparseReshape^linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/SparseReshape:1blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:

rlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/SparseReshape/IdentityIdentityelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/SparseReshape/Identity*#
_output_shapes
:џџџџџџџџџ*
T0	
Ќ
jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 

hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GreaterEqualGreaterEqualrlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/SparseReshape/Identityjlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
§
alinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/WhereWherehlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
М
ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Reshape/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
ъ
clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/ReshapeReshapealinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Whereilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:џџџџџџџџџ
­
klinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_1GatherV2ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/SparseReshapeclinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Reshapeklinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_1/axis*
Tparams0	*'
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0	
­
klinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 

flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_2GatherV2rlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/SparseReshape/Identityclinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Reshapeklinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_2/axis*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ*
Taxis0

dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/IdentityIdentityklinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	
З
ulinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Ї
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsflinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_1flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_2dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Identityulinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
T0	
й
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
л
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
л
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
Џ
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowslinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stacklinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
T0	*
Index0*
shrink_axis_mask*

begin_mask*
end_mask*#
_output_shapes
:џџџџџџџџџ
С
xlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/CastCastlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice*#
_output_shapes
:џџџџџџџџџ*

DstT0*

SrcT0	
Щ
zlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/UniqueUniquelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0	
Ь
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather.linear/linear_model/trip_start_hour_xf/weightszlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/Unique*A
_class7
53loc:@linear/linear_model/trip_start_hour_xf/weights*
dtype0*'
_output_shapes
:џџџџџџџџџ*
Tindices0	

linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentitylinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*A
_class7
53loc:@linear/linear_model/trip_start_hour_xf/weights*'
_output_shapes
:џџџџџџџџџ*
T0
о
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identitylinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*
T0*'
_output_shapes
:џџџџџџџџџ
У
slinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1|linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/Unique:1xlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:џџџџџџџџџ
М
klinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB"џџџџ   

elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Reshape_1Reshapelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2klinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:џџџџџџџџџ

alinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/ShapeShapeslinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse*
_output_shapes
:*
T0
Й
olinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
Л
qlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Л
qlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
љ
ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/strided_sliceStridedSlicealinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Shapeolinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/strided_slice/stackqlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/strided_slice/stack_1qlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
Ѕ
clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
ч
alinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/stackPackclinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/stack/0ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/strided_slice*
T0*
N*
_output_shapes
:
э
`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/TileTileelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Reshape_1alinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/stack*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/zeros_like	ZerosLikeslinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
ж
[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sumSelect`linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Tileflinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/zeros_likeslinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
ў
blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Cast_1Cast^linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/SparseReshape:1*
_output_shapes
:*

DstT0*

SrcT0	
Г
ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
В
hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
з
clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice_1Sliceblinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Cast_1ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice_1/beginhlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
ю
clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Shape_1Shape[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum*
T0*
_output_shapes
:
Г
ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
Л
hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice_2/sizeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
и
clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice_2Sliceclinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Shape_1ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice_2/beginhlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
Љ
glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Я
blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/concatConcatV2clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice_1clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Slice_2glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/concat/axis*
N*
_output_shapes
:*
T0
у
elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Reshape_2Reshape[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sumblinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/concat*
T0*'
_output_shapes
:џџџџџџџџџ
Й
nlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
valueB :
џџџџџџџџџ*
dtype0

llinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/ignore_valueCastnlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/ignore_value/x*
_output_shapes
: *

DstT0	*

SrcT0
Я
hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/NotEqualNotEqual9transform/transform/inputs/inputs/F_trip_start_month_copyllinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:џџџџџџџџџ

glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/indicesWherehlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
к
flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/valuesGatherNd9transform/transform/inputs/inputs/F_trip_start_month_copyglinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
ф
klinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/dense_shapeShape9transform/transform/inputs/inputs/F_trip_start_month_copy*
T0	*
out_type0	*
_output_shapes
:

]linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/num_buckets/xConst*
value	B :*
dtype0*
_output_shapes
: 
ђ
[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/num_bucketsCast]linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/num_buckets/x*
_output_shapes
: *

DstT0	*

SrcT0

Vlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/zero/xConst*
value	B : *
dtype0*
_output_shapes
: 
ф
Tlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/zeroCastVlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/zero/x*

SrcT0*
_output_shapes
: *

DstT0	
Ш
Tlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/LessLessflinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/valuesTlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/zero*#
_output_shapes
:џџџџџџџџџ*
T0	
п
\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/GreaterEqualGreaterEqualflinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/values[linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/num_buckets*
T0	*#
_output_shapes
:џџџџџџџџџ
Т
\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/out_of_range	LogicalOrTlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/Less\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
ы
Ulinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/ShapeShapeflinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/values*
T0	*
_output_shapes
:

Vlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/Cast/xConst*
value	B : *
dtype0*
_output_shapes
: 
ф
Tlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/CastCastVlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/Cast/x*
_output_shapes
: *

DstT0	*

SrcT0
С
^linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/default_valuesFillUlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/ShapeTlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/Cast*#
_output_shapes
:џџџџџџџџџ*
T0	
И
Xlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/SelectV2SelectV2\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/out_of_range^linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/default_valuesflinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/values*#
_output_shapes
:џџџџџџџџџ*
T0	

\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/Shape_1/CastCastklinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/dense_shape*

SrcT0	*
_output_shapes
:*

DstT0
­
clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Џ
elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Џ
elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ф
]linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/strided_sliceStridedSlice\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/Shape_1/Castclinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/strided_slice/stackelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/strided_slice/stack_1elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Ѕ
Zlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/Cast_1/x/1Const*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
Щ
Xlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/Cast_1/xPack]linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/strided_sliceZlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/Cast_1/x/1*
T0*
N*
_output_shapes
:
ь
Vlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/Cast_1CastXlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/Cast_1/x*
_output_shapes
:*

DstT0	*

SrcT0
Ы
]linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/SparseReshapeSparseReshapeglinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/indicesklinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/to_sparse_input/dense_shapeVlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/Cast_1*-
_output_shapes
:џџџџџџџџџ:
њ
flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/SparseReshape/IdentityIdentityXlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/SelectV2*
T0	*#
_output_shapes
:џџџџџџџџџ
В
hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
Б
glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
б
blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/SliceSlice_linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/SparseReshape:1hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice/beginglinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:
Ќ
blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:
в
alinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/ProdProdblinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Sliceblinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Const*
T0	*
_output_shapes
: 
Џ
mlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
Ќ
jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ё
elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2GatherV2_linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/SparseReshape:1mlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2/indicesjlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2/axis*
Tparams0	*
_output_shapes
: *
Taxis0*
Tindices0
у
clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Cast/xPackalinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Prodelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2*
T0	*
N*
_output_shapes
:
Я
jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/SparseReshapeSparseReshape]linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/SparseReshape_linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/SparseReshape:1clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:

slinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/SparseReshape/IdentityIdentityflinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/SparseReshape/Identity*#
_output_shapes
:џџџџџџџџџ*
T0	
­
klinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GreaterEqual/yConst*
_output_shapes
: *
value	B	 R *
dtype0	

ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GreaterEqualGreaterEqualslinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/SparseReshape/Identityklinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
џ
blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/WhereWhereilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
Н
jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
э
dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/ReshapeReshapeblinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Wherejlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:џџџџџџџџџ
Ў
llinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2_1GatherV2jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/SparseReshapedlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Reshapellinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2_1/axis*
Tindices0	*
Tparams0	*'
_output_shapes
:џџџџџџџџџ*
Taxis0
Ў
llinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 

glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2_2GatherV2slinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/SparseReshape/Identitydlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Reshapellinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ

elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/IdentityIdentityllinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
И
vlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Ќ
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsglinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2_1glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/GatherV2_2elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Identityvlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
T0	
к
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
м
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
м
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
Д
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowslinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stacklinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
T0	*
Index0*
shrink_axis_mask*

begin_mask*
end_mask*#
_output_shapes
:џџџџџџџџџ
У
ylinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/CastCastlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:џџџџџџџџџ*

DstT0
Ы
{linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/UniqueUniquelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
а
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather/linear/linear_model/trip_start_month_xf/weights{linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/Unique*
Tindices0	*B
_class8
64loc:@linear/linear_model/trip_start_month_xf/weights*
dtype0*'
_output_shapes
:џџџџџџџџџ

linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentitylinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*B
_class8
64loc:@linear/linear_model/trip_start_month_xf/weights*'
_output_shapes
:џџџџџџџџџ*
T0
р
linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identitylinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*
T0*'
_output_shapes
:џџџџџџџџџ
Ч
tlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1}linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/Unique:1ylinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:џџџџџџџџџ
Н
llinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Reshape_1/shapeConst*
valueB"џџџџ   *
dtype0*
_output_shapes
:

flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Reshape_1Reshapelinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2llinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:џџџџџџџџџ

blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/ShapeShapetlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:
К
plinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
М
rlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
М
rlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ў
jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/strided_sliceStridedSliceblinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Shapeplinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/strided_slice/stackrlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/strided_slice/stack_1rlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
І
dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
ъ
blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/stackPackdlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/stack/0jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/strided_slice*
_output_shapes
:*
T0*
N
№
alinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/TileTileflinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Reshape_1blinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/stack*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

glinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/zeros_like	ZerosLiketlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
к
\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sumSelectalinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Tileglinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/zeros_liketlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ

clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Cast_1Cast_linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/SparseReshape:1*
_output_shapes
:*

DstT0*

SrcT0	
Д
jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice_1/beginConst*
_output_shapes
:*
valueB: *
dtype0
Г
ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
л
dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice_1Sliceclinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Cast_1jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice_1/beginilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice_1/size*
_output_shapes
:*
Index0*
T0
№
dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Shape_1Shape\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum*
T0*
_output_shapes
:
Д
jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
М
ilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice_2/sizeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
м
dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice_2Slicedlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Shape_1jlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice_2/beginilinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice_2/size*
_output_shapes
:*
Index0*
T0
Њ
hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
г
clinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/concatConcatV2dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice_1dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Slice_2hlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/concat/axis*
T0*
N*
_output_shapes
:
ц
flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Reshape_2Reshape\linear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sumclinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/concat*
T0*'
_output_shapes
:џџџџџџџџџ
Ћ
Plinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum_no_biasAddN]linear/linear_model/linear/linear_model/linear/linear_model/company_xf/weighted_sum/Reshape_2flinear/linear_model/linear/linear_model/linear/linear_model/dropoff_latitude_xf/weighted_sum/Reshape_2glinear/linear_model/linear/linear_model/linear/linear_model/dropoff_longitude_xf/weighted_sum/Reshape_2blinear/linear_model/linear/linear_model/linear/linear_model/payment_type_xf/weighted_sum/Reshape_2elinear/linear_model/linear/linear_model/linear/linear_model/pickup_latitude_xf/weighted_sum/Reshape_2flinear/linear_model/linear/linear_model/linear/linear_model/pickup_longitude_xf/weighted_sum/Reshape_2dlinear/linear_model/linear/linear_model/linear/linear_model/trip_start_day_xf/weighted_sum/Reshape_2elinear/linear_model/linear/linear_model/linear/linear_model/trip_start_hour_xf/weighted_sum/Reshape_2flinear/linear_model/linear/linear_model/linear/linear_model/trip_start_month_xf/weighted_sum/Reshape_2*
T0*
N	*'
_output_shapes
:џџџџџџџџџ
Д
Wlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum/ReadVariableOpReadVariableOp linear/linear_model/bias_weights*
dtype0*
_output_shapes
:
А
Hlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sumBiasAddPlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum_no_biasWlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
k
ReadVariableOpReadVariableOp linear/linear_model/bias_weights*
dtype0*
_output_shapes
:
]
strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
_
strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
_
strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ж
strided_sliceStridedSliceReadVariableOpstrided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
N
	bias/tagsConst*
_output_shapes
: *
valueB
 Bbias*
dtype0
P
biasScalarSummary	bias/tagsstrided_slice*
_output_shapes
: *
T0

,zero_fraction/total_size/Size/ReadVariableOpReadVariableOp&linear/linear_model/company_xf/weights*
dtype0*
_output_shapes
:	ђ
`
zero_fraction/total_size/SizeConst*
value
B	 Rђ*
dtype0	*
_output_shapes
: 

.zero_fraction/total_size/Size_1/ReadVariableOpReadVariableOp/linear/linear_model/dropoff_latitude_xf/weights*
dtype0*
_output_shapes

:

a
zero_fraction/total_size/Size_1Const*
value	B	 R
*
dtype0	*
_output_shapes
: 

.zero_fraction/total_size/Size_2/ReadVariableOpReadVariableOp0linear/linear_model/dropoff_longitude_xf/weights*
dtype0*
_output_shapes

:

a
zero_fraction/total_size/Size_2Const*
_output_shapes
: *
value	B	 R
*
dtype0	

.zero_fraction/total_size/Size_3/ReadVariableOpReadVariableOp+linear/linear_model/payment_type_xf/weights*
dtype0*
_output_shapes
:	ђ
b
zero_fraction/total_size/Size_3Const*
_output_shapes
: *
value
B	 Rђ*
dtype0	

.zero_fraction/total_size/Size_4/ReadVariableOpReadVariableOp.linear/linear_model/pickup_latitude_xf/weights*
dtype0*
_output_shapes

:

a
zero_fraction/total_size/Size_4Const*
value	B	 R
*
dtype0	*
_output_shapes
: 

.zero_fraction/total_size/Size_5/ReadVariableOpReadVariableOp/linear/linear_model/pickup_longitude_xf/weights*
dtype0*
_output_shapes

:

a
zero_fraction/total_size/Size_5Const*
value	B	 R
*
dtype0	*
_output_shapes
: 

.zero_fraction/total_size/Size_6/ReadVariableOpReadVariableOp-linear/linear_model/trip_start_day_xf/weights*
dtype0*
_output_shapes

:
a
zero_fraction/total_size/Size_6Const*
_output_shapes
: *
value	B	 R*
dtype0	

.zero_fraction/total_size/Size_7/ReadVariableOpReadVariableOp.linear/linear_model/trip_start_hour_xf/weights*
dtype0*
_output_shapes

:
a
zero_fraction/total_size/Size_7Const*
value	B	 R*
dtype0	*
_output_shapes
: 

.zero_fraction/total_size/Size_8/ReadVariableOpReadVariableOp/linear/linear_model/trip_start_month_xf/weights*
dtype0*
_output_shapes

:
a
zero_fraction/total_size/Size_8Const*
value	B	 R*
dtype0	*
_output_shapes
: 
і
zero_fraction/total_size/AddNAddNzero_fraction/total_size/Sizezero_fraction/total_size/Size_1zero_fraction/total_size/Size_2zero_fraction/total_size/Size_3zero_fraction/total_size/Size_4zero_fraction/total_size/Size_5zero_fraction/total_size/Size_6zero_fraction/total_size/Size_7zero_fraction/total_size/Size_8*
N	*
_output_shapes
: *
T0	
`
zero_fraction/total_zero/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 

zero_fraction/total_zero/EqualEqualzero_fraction/total_size/Sizezero_fraction/total_zero/Const*
T0	*
_output_shapes
: 

#zero_fraction/total_zero/zero_countIfzero_fraction/total_zero/Equal&linear/linear_model/company_xf/weightszero_fraction/total_size/Size*A
then_branch2R0
.zero_fraction_total_zero_zero_count_true_11096*
Tcond0
*
_output_shapes
: *
Tin
2	*B
else_branch3R1
/zero_fraction_total_zero_zero_count_false_11097*
output_shapes
: *
_lower_using_switch_merge(*
Tout
2
~
,zero_fraction/total_zero/zero_count/IdentityIdentity#zero_fraction/total_zero/zero_count*
T0*
_output_shapes
: 
b
 zero_fraction/total_zero/Const_1Const*
value	B	 R *
dtype0	*
_output_shapes
: 

 zero_fraction/total_zero/Equal_1Equalzero_fraction/total_size/Size_1 zero_fraction/total_zero/Const_1*
_output_shapes
: *
T0	
Ѕ
%zero_fraction/total_zero/zero_count_1If zero_fraction/total_zero/Equal_1/linear/linear_model/dropoff_latitude_xf/weightszero_fraction/total_size/Size_1*
Tout
2*
Tcond0
*C
then_branch4R2
0zero_fraction_total_zero_zero_count_1_true_11139*
_output_shapes
: *
Tin
2	*D
else_branch5R3
1zero_fraction_total_zero_zero_count_1_false_11140*
output_shapes
: *
_lower_using_switch_merge(

.zero_fraction/total_zero/zero_count_1/IdentityIdentity%zero_fraction/total_zero/zero_count_1*
_output_shapes
: *
T0
b
 zero_fraction/total_zero/Const_2Const*
value	B	 R *
dtype0	*
_output_shapes
: 

 zero_fraction/total_zero/Equal_2Equalzero_fraction/total_size/Size_2 zero_fraction/total_zero/Const_2*
_output_shapes
: *
T0	
І
%zero_fraction/total_zero/zero_count_2If zero_fraction/total_zero/Equal_20linear/linear_model/dropoff_longitude_xf/weightszero_fraction/total_size/Size_2*
Tcond0
*C
then_branch4R2
0zero_fraction_total_zero_zero_count_2_true_11182*
_output_shapes
: *
Tin
2	*D
else_branch5R3
1zero_fraction_total_zero_zero_count_2_false_11183*
output_shapes
: *
_lower_using_switch_merge(*
Tout
2

.zero_fraction/total_zero/zero_count_2/IdentityIdentity%zero_fraction/total_zero/zero_count_2*
T0*
_output_shapes
: 
b
 zero_fraction/total_zero/Const_3Const*
value	B	 R *
dtype0	*
_output_shapes
: 

 zero_fraction/total_zero/Equal_3Equalzero_fraction/total_size/Size_3 zero_fraction/total_zero/Const_3*
T0	*
_output_shapes
: 
Ё
%zero_fraction/total_zero/zero_count_3If zero_fraction/total_zero/Equal_3+linear/linear_model/payment_type_xf/weightszero_fraction/total_size/Size_3*C
then_branch4R2
0zero_fraction_total_zero_zero_count_3_true_11225*
Tcond0
*
_output_shapes
: *
Tin
2	*D
else_branch5R3
1zero_fraction_total_zero_zero_count_3_false_11226*
output_shapes
: *
_lower_using_switch_merge(*
Tout
2

.zero_fraction/total_zero/zero_count_3/IdentityIdentity%zero_fraction/total_zero/zero_count_3*
_output_shapes
: *
T0
b
 zero_fraction/total_zero/Const_4Const*
value	B	 R *
dtype0	*
_output_shapes
: 

 zero_fraction/total_zero/Equal_4Equalzero_fraction/total_size/Size_4 zero_fraction/total_zero/Const_4*
T0	*
_output_shapes
: 
Є
%zero_fraction/total_zero/zero_count_4If zero_fraction/total_zero/Equal_4.linear/linear_model/pickup_latitude_xf/weightszero_fraction/total_size/Size_4*
output_shapes
: *
_lower_using_switch_merge(*
Tout
2*
Tcond0
*C
then_branch4R2
0zero_fraction_total_zero_zero_count_4_true_11268*
_output_shapes
: *
Tin
2	*D
else_branch5R3
1zero_fraction_total_zero_zero_count_4_false_11269

.zero_fraction/total_zero/zero_count_4/IdentityIdentity%zero_fraction/total_zero/zero_count_4*
_output_shapes
: *
T0
b
 zero_fraction/total_zero/Const_5Const*
value	B	 R *
dtype0	*
_output_shapes
: 

 zero_fraction/total_zero/Equal_5Equalzero_fraction/total_size/Size_5 zero_fraction/total_zero/Const_5*
_output_shapes
: *
T0	
Ѕ
%zero_fraction/total_zero/zero_count_5If zero_fraction/total_zero/Equal_5/linear/linear_model/pickup_longitude_xf/weightszero_fraction/total_size/Size_5*C
then_branch4R2
0zero_fraction_total_zero_zero_count_5_true_11311*
Tcond0
*
_output_shapes
: *
Tin
2	*D
else_branch5R3
1zero_fraction_total_zero_zero_count_5_false_11312*
output_shapes
: *
_lower_using_switch_merge(*
Tout
2

.zero_fraction/total_zero/zero_count_5/IdentityIdentity%zero_fraction/total_zero/zero_count_5*
T0*
_output_shapes
: 
b
 zero_fraction/total_zero/Const_6Const*
value	B	 R *
dtype0	*
_output_shapes
: 

 zero_fraction/total_zero/Equal_6Equalzero_fraction/total_size/Size_6 zero_fraction/total_zero/Const_6*
T0	*
_output_shapes
: 
Ѓ
%zero_fraction/total_zero/zero_count_6If zero_fraction/total_zero/Equal_6-linear/linear_model/trip_start_day_xf/weightszero_fraction/total_size/Size_6*
Tout
2*C
then_branch4R2
0zero_fraction_total_zero_zero_count_6_true_11354*
Tcond0
*
Tin
2	*
_output_shapes
: *D
else_branch5R3
1zero_fraction_total_zero_zero_count_6_false_11355*
output_shapes
: *
_lower_using_switch_merge(

.zero_fraction/total_zero/zero_count_6/IdentityIdentity%zero_fraction/total_zero/zero_count_6*
T0*
_output_shapes
: 
b
 zero_fraction/total_zero/Const_7Const*
_output_shapes
: *
value	B	 R *
dtype0	

 zero_fraction/total_zero/Equal_7Equalzero_fraction/total_size/Size_7 zero_fraction/total_zero/Const_7*
T0	*
_output_shapes
: 
Є
%zero_fraction/total_zero/zero_count_7If zero_fraction/total_zero/Equal_7.linear/linear_model/trip_start_hour_xf/weightszero_fraction/total_size/Size_7*
output_shapes
: *
_lower_using_switch_merge(*
Tout
2*
Tcond0
*C
then_branch4R2
0zero_fraction_total_zero_zero_count_7_true_11397*
Tin
2	*
_output_shapes
: *D
else_branch5R3
1zero_fraction_total_zero_zero_count_7_false_11398

.zero_fraction/total_zero/zero_count_7/IdentityIdentity%zero_fraction/total_zero/zero_count_7*
_output_shapes
: *
T0
b
 zero_fraction/total_zero/Const_8Const*
value	B	 R *
dtype0	*
_output_shapes
: 

 zero_fraction/total_zero/Equal_8Equalzero_fraction/total_size/Size_8 zero_fraction/total_zero/Const_8*
_output_shapes
: *
T0	
Ѕ
%zero_fraction/total_zero/zero_count_8If zero_fraction/total_zero/Equal_8/linear/linear_model/trip_start_month_xf/weightszero_fraction/total_size/Size_8*
Tout
2*
Tcond0
*C
then_branch4R2
0zero_fraction_total_zero_zero_count_8_true_11440*
_output_shapes
: *
Tin
2	*D
else_branch5R3
1zero_fraction_total_zero_zero_count_8_false_11441*
output_shapes
: *
_lower_using_switch_merge(

.zero_fraction/total_zero/zero_count_8/IdentityIdentity%zero_fraction/total_zero/zero_count_8*
T0*
_output_shapes
: 
§
zero_fraction/total_zero/AddNAddN,zero_fraction/total_zero/zero_count/Identity.zero_fraction/total_zero/zero_count_1/Identity.zero_fraction/total_zero/zero_count_2/Identity.zero_fraction/total_zero/zero_count_3/Identity.zero_fraction/total_zero/zero_count_4/Identity.zero_fraction/total_zero/zero_count_5/Identity.zero_fraction/total_zero/zero_count_6/Identity.zero_fraction/total_zero/zero_count_7/Identity.zero_fraction/total_zero/zero_count_8/Identity*
T0*
N	*
_output_shapes
: 
y
"zero_fraction/compute/float32_sizeCastzero_fraction/total_size/AddN*
_output_shapes
: *

DstT0*

SrcT0	

zero_fraction/compute/truedivRealDivzero_fraction/total_zero/AddN"zero_fraction/compute/float32_size*
_output_shapes
: *
T0
n
"zero_fraction/zero_fraction_or_nanIdentityzero_fraction/compute/truediv*
_output_shapes
: *
T0
v
fraction_of_zero_weights/tagsConst*
dtype0*
_output_shapes
: *)
value B Bfraction_of_zero_weights

fraction_of_zero_weightsScalarSummaryfraction_of_zero_weights/tags"zero_fraction/zero_fraction_or_nan*
T0*
_output_shapes
: 

zero_fraction_1/SizeSizeHlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum*
_output_shapes
: *
T0*
out_type0	
a
zero_fraction_1/LessEqual/yConst*
valueB	 Rџџџџ*
dtype0	*
_output_shapes
: 
z
zero_fraction_1/LessEqual	LessEqualzero_fraction_1/Sizezero_fraction_1/LessEqual/y*
T0	*
_output_shapes
: 
ы
zero_fraction_1/condStatelessIfzero_fraction_1/LessEqualHlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum*
Tin
2*
_output_shapes
: *3
else_branch$R"
 zero_fraction_1_cond_false_11491*
output_shapes
: *
_lower_using_switch_merge(*
Tout
2	*
Tcond0
*2
then_branch#R!
zero_fraction_1_cond_true_11490
`
zero_fraction_1/cond/IdentityIdentityzero_fraction_1/cond*
T0	*
_output_shapes
: 

&zero_fraction_1/counts_to_fraction/subSubzero_fraction_1/Sizezero_fraction_1/cond/Identity*
_output_shapes
: *
T0	

'zero_fraction_1/counts_to_fraction/CastCast&zero_fraction_1/counts_to_fraction/sub*
_output_shapes
: *

DstT0*

SrcT0	
w
)zero_fraction_1/counts_to_fraction/Cast_1Castzero_fraction_1/Size*
_output_shapes
: *

DstT0*

SrcT0	
Њ
*zero_fraction_1/counts_to_fraction/truedivRealDiv'zero_fraction_1/counts_to_fraction/Cast)zero_fraction_1/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
q
zero_fraction_1/fractionIdentity*zero_fraction_1/counts_to_fraction/truediv*
_output_shapes
: *
T0

#linear/fraction_of_zero_values/tagsConst*/
value&B$ Blinear/fraction_of_zero_values*
dtype0*
_output_shapes
: 

linear/fraction_of_zero_valuesScalarSummary#linear/fraction_of_zero_values/tagszero_fraction_1/fraction*
T0*
_output_shapes
: 
g
linear/activation/tagConst*
dtype0*
_output_shapes
: *"
valueB Blinear/activation

linear/activationHistogramSummarylinear/activation/tagHlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum*
_output_shapes
: 

addAddV2dnn/logits/BiasAddHlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum*'
_output_shapes
:џџџџџџџџџ*
T0
D
head/logits/ShapeShapeadd*
_output_shapes
:*
T0
g
%head/logits/assert_rank_at_least/rankConst*
value	B :*
dtype0*
_output_shapes
: 
W
Ohead/logits/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
H
@head/logits/assert_rank_at_least/static_checks_determined_all_okNoOp
[
head/predictions/logisticSigmoidadd*'
_output_shapes
:џџџџџџџџџ*
T0
_
head/predictions/zeros_like	ZerosLikeadd*'
_output_shapes
:џџџџџџџџџ*
T0
q
&head/predictions/two_class_logits/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
В
!head/predictions/two_class_logitsConcatV2head/predictions/zeros_likeadd&head/predictions/two_class_logits/axis*
T0*
N*'
_output_shapes
:џџџџџџџџџ
~
head/predictions/probabilitiesSoftmax!head/predictions/two_class_logits*'
_output_shapes
:џџџџџџџџџ*
T0
o
$head/predictions/class_ids/dimensionConst*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ

head/predictions/class_idsArgMax!head/predictions/two_class_logits$head/predictions/class_ids/dimension*#
_output_shapes
:џџџџџџџџџ*
T0
j
head/predictions/ExpandDims/dimConst*
_output_shapes
: *
valueB :
џџџџџџџџџ*
dtype0

head/predictions/ExpandDims
ExpandDimshead/predictions/class_idshead/predictions/ExpandDims/dim*'
_output_shapes
:џџџџџџџџџ*
T0	
w
head/predictions/str_classesAsStringhead/predictions/ExpandDims*'
_output_shapes
:џџџџџџџџџ*
T0	
I
head/predictions/ShapeShapeadd*
T0*
_output_shapes
:
n
$head/predictions/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
p
&head/predictions/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
p
&head/predictions/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0

head/predictions/strided_sliceStridedSlicehead/predictions/Shape$head/predictions/strided_slice/stack&head/predictions/strided_slice/stack_1&head/predictions/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
^
head/predictions/range/startConst*
dtype0*
_output_shapes
: *
value	B : 
^
head/predictions/range/limitConst*
value	B :*
dtype0*
_output_shapes
: 
^
head/predictions/range/deltaConst*
_output_shapes
: *
value	B :*
dtype0

head/predictions/rangeRangehead/predictions/range/starthead/predictions/range/limithead/predictions/range/delta*
_output_shapes
:
c
!head/predictions/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 

head/predictions/ExpandDims_1
ExpandDimshead/predictions/range!head/predictions/ExpandDims_1/dim*
T0*
_output_shapes

:
c
!head/predictions/Tile/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 

head/predictions/Tile/multiplesPackhead/predictions/strided_slice!head/predictions/Tile/multiples/1*
T0*
N*
_output_shapes
:

head/predictions/TileTilehead/predictions/ExpandDims_1head/predictions/Tile/multiples*'
_output_shapes
:џџџџџџџџџ*
T0
K
head/predictions/Shape_1Shapeadd*
_output_shapes
:*
T0
p
&head/predictions/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
r
(head/predictions/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
r
(head/predictions/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

 head/predictions/strided_slice_1StridedSlicehead/predictions/Shape_1&head/predictions/strided_slice_1/stack(head/predictions/strided_slice_1/stack_1(head/predictions/strided_slice_1/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
`
head/predictions/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
`
head/predictions/range_1/limitConst*
value	B :*
dtype0*
_output_shapes
: 
`
head/predictions/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 

head/predictions/range_1Rangehead/predictions/range_1/starthead/predictions/range_1/limithead/predictions/range_1/delta*
_output_shapes
:
d
head/predictions/AsStringAsStringhead/predictions/range_1*
_output_shapes
:*
T0
c
!head/predictions/ExpandDims_2/dimConst*
_output_shapes
: *
value	B : *
dtype0

head/predictions/ExpandDims_2
ExpandDimshead/predictions/AsString!head/predictions/ExpandDims_2/dim*
T0*
_output_shapes

:
e
#head/predictions/Tile_1/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 

!head/predictions/Tile_1/multiplesPack head/predictions/strided_slice_1#head/predictions/Tile_1/multiples/1*
N*
_output_shapes
:*
T0

head/predictions/Tile_1Tilehead/predictions/ExpandDims_2!head/predictions/Tile_1/multiples*
T0*'
_output_shapes
:џџџџџџџџџ
X

head/ShapeShapehead/predictions/probabilities*
T0*
_output_shapes
:
b
head/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
d
head/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
d
head/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ц
head/strided_sliceStridedSlice
head/Shapehead/strided_slice/stackhead/strided_slice/stack_1head/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
R
head/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
R
head/range/limitConst*
_output_shapes
: *
value	B :*
dtype0
R
head/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
e

head/rangeRangehead/range/starthead/range/limithead/range/delta*
_output_shapes
:
J
head/AsStringAsString
head/range*
_output_shapes
:*
T0
U
head/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
j
head/ExpandDims
ExpandDimshead/AsStringhead/ExpandDims/dim*
T0*
_output_shapes

:
W
head/Tile/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
t
head/Tile/multiplesPackhead/strided_slicehead/Tile/multiples/1*
N*
_output_shapes
:*
T0
i
	head/TileTilehead/ExpandDimshead/Tile/multiples*'
_output_shapes
:џџџџџџџџџ*
T0

initNoOp
ё
init_all_tablesNoOpj^transform/transform/compute_and_apply_vocabulary/apply_vocab/text_file_init/InitializeTableFromTextFileV2l^transform/transform/compute_and_apply_vocabulary_1/apply_vocab/text_file_init/InitializeTableFromTextFileV2

init_1NoOp
4

group_depsNoOp^init^init_1^init_all_tables
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
shape: *
dtype0
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
_output_shapes
: *
shape: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_28e777efdb164384a4e913281a801637/part*
dtype0*
_output_shapes
: 
d
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
Е
save/SaveV2/tensor_namesConst"/device:CPU:0*й
valueЯBЬBdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/hiddenlayer_1/biasBdnn/hiddenlayer_1/kernelBdnn/hiddenlayer_2/biasBdnn/hiddenlayer_2/kernelBdnn/hiddenlayer_3/biasBdnn/hiddenlayer_3/kernelBdnn/logits/biasBdnn/logits/kernelBglobal_stepB linear/linear_model/bias_weightsB&linear/linear_model/company_xf/weightsB/linear/linear_model/dropoff_latitude_xf/weightsB0linear/linear_model/dropoff_longitude_xf/weightsB+linear/linear_model/payment_type_xf/weightsB.linear/linear_model/pickup_latitude_xf/weightsB/linear/linear_model/pickup_longitude_xf/weightsB-linear/linear_model/trip_start_day_xf/weightsB.linear/linear_model/trip_start_hour_xf/weightsB/linear/linear_model/trip_start_month_xf/weights*
dtype0*
_output_shapes
:

save/SaveV2/shape_and_slicesConst"/device:CPU:0*=
value4B2B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
џ	
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slices*dnn/hiddenlayer_0/bias/Read/ReadVariableOp,dnn/hiddenlayer_0/kernel/Read/ReadVariableOp*dnn/hiddenlayer_1/bias/Read/ReadVariableOp,dnn/hiddenlayer_1/kernel/Read/ReadVariableOp*dnn/hiddenlayer_2/bias/Read/ReadVariableOp,dnn/hiddenlayer_2/kernel/Read/ReadVariableOp*dnn/hiddenlayer_3/bias/Read/ReadVariableOp,dnn/hiddenlayer_3/kernel/Read/ReadVariableOp#dnn/logits/bias/Read/ReadVariableOp%dnn/logits/kernel/Read/ReadVariableOpglobal_step/Read/ReadVariableOp4linear/linear_model/bias_weights/Read/ReadVariableOp:linear/linear_model/company_xf/weights/Read/ReadVariableOpClinear/linear_model/dropoff_latitude_xf/weights/Read/ReadVariableOpDlinear/linear_model/dropoff_longitude_xf/weights/Read/ReadVariableOp?linear/linear_model/payment_type_xf/weights/Read/ReadVariableOpBlinear/linear_model/pickup_latitude_xf/weights/Read/ReadVariableOpClinear/linear_model/pickup_longitude_xf/weights/Read/ReadVariableOpAlinear/linear_model/trip_start_day_xf/weights/Read/ReadVariableOpBlinear/linear_model/trip_start_hour_xf/weights/Read/ReadVariableOpClinear/linear_model/trip_start_month_xf/weights/Read/ReadVariableOp"/device:CPU:0*#
dtypes
2	
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
 
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
T0*
N*
_output_shapes
:
u
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0

save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
И
save/RestoreV2/tensor_namesConst"/device:CPU:0*й
valueЯBЬBdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/hiddenlayer_1/biasBdnn/hiddenlayer_1/kernelBdnn/hiddenlayer_2/biasBdnn/hiddenlayer_2/kernelBdnn/hiddenlayer_3/biasBdnn/hiddenlayer_3/kernelBdnn/logits/biasBdnn/logits/kernelBglobal_stepB linear/linear_model/bias_weightsB&linear/linear_model/company_xf/weightsB/linear/linear_model/dropoff_latitude_xf/weightsB0linear/linear_model/dropoff_longitude_xf/weightsB+linear/linear_model/payment_type_xf/weightsB.linear/linear_model/pickup_latitude_xf/weightsB/linear/linear_model/pickup_longitude_xf/weightsB-linear/linear_model/trip_start_day_xf/weightsB.linear/linear_model/trip_start_hour_xf/weightsB/linear/linear_model/trip_start_month_xf/weights*
dtype0*
_output_shapes
:

save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*=
value4B2B B B B B B B B B B B B B B B B B B B B B *
dtype0

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*h
_output_shapesV
T:::::::::::::::::::::*#
dtypes
2	
N
save/Identity_1Identitysave/RestoreV2*
_output_shapes
:*
T0
_
save/AssignVariableOpAssignVariableOpdnn/hiddenlayer_0/biassave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:1*
_output_shapes
:*
T0
c
save/AssignVariableOp_1AssignVariableOpdnn/hiddenlayer_0/kernelsave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:2*
_output_shapes
:*
T0
a
save/AssignVariableOp_2AssignVariableOpdnn/hiddenlayer_1/biassave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:3*
T0*
_output_shapes
:
c
save/AssignVariableOp_3AssignVariableOpdnn/hiddenlayer_1/kernelsave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:4*
T0*
_output_shapes
:
a
save/AssignVariableOp_4AssignVariableOpdnn/hiddenlayer_2/biassave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:5*
_output_shapes
:*
T0
c
save/AssignVariableOp_5AssignVariableOpdnn/hiddenlayer_2/kernelsave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:6*
T0*
_output_shapes
:
a
save/AssignVariableOp_6AssignVariableOpdnn/hiddenlayer_3/biassave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:7*
T0*
_output_shapes
:
c
save/AssignVariableOp_7AssignVariableOpdnn/hiddenlayer_3/kernelsave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:8*
T0*
_output_shapes
:
Z
save/AssignVariableOp_8AssignVariableOpdnn/logits/biassave/Identity_9*
dtype0
Q
save/Identity_10Identitysave/RestoreV2:9*
T0*
_output_shapes
:
]
save/AssignVariableOp_9AssignVariableOpdnn/logits/kernelsave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:10*
T0	*
_output_shapes
:
X
save/AssignVariableOp_10AssignVariableOpglobal_stepsave/Identity_11*
dtype0	
R
save/Identity_12Identitysave/RestoreV2:11*
T0*
_output_shapes
:
m
save/AssignVariableOp_11AssignVariableOp linear/linear_model/bias_weightssave/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:12*
_output_shapes
:*
T0
s
save/AssignVariableOp_12AssignVariableOp&linear/linear_model/company_xf/weightssave/Identity_13*
dtype0
R
save/Identity_14Identitysave/RestoreV2:13*
_output_shapes
:*
T0
|
save/AssignVariableOp_13AssignVariableOp/linear/linear_model/dropoff_latitude_xf/weightssave/Identity_14*
dtype0
R
save/Identity_15Identitysave/RestoreV2:14*
T0*
_output_shapes
:
}
save/AssignVariableOp_14AssignVariableOp0linear/linear_model/dropoff_longitude_xf/weightssave/Identity_15*
dtype0
R
save/Identity_16Identitysave/RestoreV2:15*
T0*
_output_shapes
:
x
save/AssignVariableOp_15AssignVariableOp+linear/linear_model/payment_type_xf/weightssave/Identity_16*
dtype0
R
save/Identity_17Identitysave/RestoreV2:16*
_output_shapes
:*
T0
{
save/AssignVariableOp_16AssignVariableOp.linear/linear_model/pickup_latitude_xf/weightssave/Identity_17*
dtype0
R
save/Identity_18Identitysave/RestoreV2:17*
T0*
_output_shapes
:
|
save/AssignVariableOp_17AssignVariableOp/linear/linear_model/pickup_longitude_xf/weightssave/Identity_18*
dtype0
R
save/Identity_19Identitysave/RestoreV2:18*
T0*
_output_shapes
:
z
save/AssignVariableOp_18AssignVariableOp-linear/linear_model/trip_start_day_xf/weightssave/Identity_19*
dtype0
R
save/Identity_20Identitysave/RestoreV2:19*
_output_shapes
:*
T0
{
save/AssignVariableOp_19AssignVariableOp.linear/linear_model/trip_start_hour_xf/weightssave/Identity_20*
dtype0
R
save/Identity_21Identitysave/RestoreV2:20*
T0*
_output_shapes
:
|
save/AssignVariableOp_20AssignVariableOp/linear/linear_model/trip_start_month_xf/weightssave/Identity_21*
dtype0
Х
save/restore_shardNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_20^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9
-
save/restore_allNoOp^save/restore_shardЕБ
В
z
zero_fraction_cond_false_111507
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
_output_shapes

:
*
T0n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

SrcT0
*
_output_shapes

:
*

DstT0	d
count_nonzero/ConstConst*
valueB"       *
dtype0*
_output_shapes
:y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

:
:  
Ш
э
#dnn_zero_fraction_1_cond_false_99551
-count_nonzero_notequal_dnn_hiddenlayer_1_relu
count_nonzero_nonzero_count	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalnoneX
count_nonzero/zerosConst*
_output_shapes
: *
valueB
 *    *
dtype0Ё
count_nonzero/NotEqualNotEqual-count_nonzero_notequal_dnn_hiddenlayer_1_relucount_nonzero/zeros:output:0*'
_output_shapes
:џџџџџџџџџF*
T0w
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

SrcT0
*'
_output_shapes
:џџџџџџџџџF*

DstT0	d
count_nonzero/ConstConst*
valueB"       *
dtype0*
_output_shapes
:y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: t
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: t
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: p
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2	*
_output_shapes
: v
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: 4
OptionalNoneOptionalNone*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"'
optionalnoneOptionalNone:optional:0"1
optionalfromvalueOptionalFromValue:optional:0*&
_input_shapes
:џџџџџџџџџF:  
Р
м
"dnn_zero_fraction_1_cond_true_99541
-count_nonzero_notequal_dnn_hiddenlayer_1_relu
cast	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4X
count_nonzero/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: Ё
count_nonzero/NotEqualNotEqual-count_nonzero_notequal_dnn_hiddenlayer_1_relucount_nonzero/zeros:output:0*'
_output_shapes
:џџџџџџџџџF*
T0w
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

SrcT0
*'
_output_shapes
:џџџџџџџџџF*

DstT0d
count_nonzero/ConstConst*
valueB"       *
dtype0*
_output_shapes
:y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
_output_shapes
: *
T0b
CastCast$count_nonzero/nonzero_count:output:0*
_output_shapes
: *

DstT0	*

SrcT0t
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: t
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: p
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2*
_output_shapes
: v
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
_output_shapes
: *
Toutput_types
2~
OptionalFromValue_4OptionalFromValue$count_nonzero/nonzero_count:output:0*
Toutput_types
2*
_output_shapes
: "5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0"1
optionalfromvalueOptionalFromValue:optional:0"
castCast:y:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0*&
_input_shapes
:џџџџџџџџџF:  
Й
й
#dnn_zero_fraction_4_cond_true_10163-
)count_nonzero_notequal_dnn_logits_biasadd
cast	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4X
count_nonzero/zerosConst*
_output_shapes
: *
valueB
 *    *
dtype0
count_nonzero/NotEqualNotEqual)count_nonzero_notequal_dnn_logits_biasaddcount_nonzero/zeros:output:0*
T0*'
_output_shapes
:џџџџџџџџџw
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*'
_output_shapes
:џџџџџџџџџ*

DstT0*

SrcT0
d
count_nonzero/ConstConst*
valueB"       *
dtype0*
_output_shapes
:y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

SrcT0*
_output_shapes
: *

DstT0	t
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: t
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: p
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2*
_output_shapes
: v
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: ~
OptionalFromValue_4OptionalFromValue$count_nonzero/nonzero_count:output:0*
_output_shapes
: *
Toutput_types
2"5
optionalfromvalue_4OptionalFromValue_4:optional:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"
castCast:y:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0*&
_input_shapes
:џџџџџџџџџ:  
С
н
#dnn_zero_fraction_2_cond_true_100241
-count_nonzero_notequal_dnn_hiddenlayer_2_relu
cast	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4X
count_nonzero/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: Ё
count_nonzero/NotEqualNotEqual-count_nonzero_notequal_dnn_hiddenlayer_2_relucount_nonzero/zeros:output:0*
T0*'
_output_shapes
:џџџџџџџџџ0w
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ0*

DstT0d
count_nonzero/ConstConst*
dtype0*
_output_shapes
:*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

SrcT0*
_output_shapes
: *

DstT0	t
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: t
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: p
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2*
_output_shapes
: v
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: ~
OptionalFromValue_4OptionalFromValue$count_nonzero/nonzero_count:output:0*
Toutput_types
2*
_output_shapes
: "1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"
castCast:y:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0*&
_input_shapes
:џџџџџџџџџ0:  
В
z
zero_fraction_cond_false_112797
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:
n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

SrcT0
*
_output_shapes

:
*

DstT0	d
count_nonzero/ConstConst*
valueB"       *
dtype0*
_output_shapes
:y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
_output_shapes
: *
T0	"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

:
:  
я
a
0zero_fraction_total_zero_zero_count_1_true_11139
placeholder
placeholder_1		
constJ
ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: "
constConst:output:0*
_input_shapes
:: :  : 
я
a
0zero_fraction_total_zero_zero_count_6_true_11354
placeholder
placeholder_1		
constJ
ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: "
constConst:output:0*
_input_shapes
:: :  : 
ј
К
1zero_fraction_total_zero_zero_count_3_false_11226L
Hzero_fraction_readvariableop_linear_linear_model_payment_type_xf_weights+
'tofloat_zero_fraction_total_size_size_3	
mulІ
zero_fraction/ReadVariableOpReadVariableOpHzero_fraction_readvariableop_linear_linear_model_payment_type_xf_weights*
dtype0*
_output_shapes
:	ђU
zero_fraction/SizeConst*
value
B	 Rђ*
dtype0	*
_output_shapes
: _
zero_fraction/LessEqual/yConst*
valueB	 Rџџџџ*
dtype0	*
_output_shapes
: 
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
_output_shapes
: *
T0	У
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*0
then_branch!R
zero_fraction_cond_true_11235*
Tcond0
*
_output_shapes
: *
Tin
2*1
else_branch"R 
zero_fraction_cond_false_11236*
output_shapes
: *
_lower_using_switch_merge(*
Tout
2	e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
_output_shapes
: *
T0	
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: 
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

SrcT0	*
_output_shapes
: *

DstT0|
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*
_output_shapes
: *

DstT0*

SrcT0	Ќ
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
_output_shapes
: *
T0h
ToFloatCast'tofloat_zero_fraction_total_size_size_3*

SrcT0	*
_output_shapes
: *

DstT0C
mul_0Mulzero_fraction/fraction:output:0ToFloat:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
:: :  : 
Щ
ю
$dnn_zero_fraction_2_cond_false_100251
-count_nonzero_notequal_dnn_hiddenlayer_2_relu
count_nonzero_nonzero_count	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalnoneX
count_nonzero/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: Ё
count_nonzero/NotEqualNotEqual-count_nonzero_notequal_dnn_hiddenlayer_2_relucount_nonzero/zeros:output:0*
T0*'
_output_shapes
:џџџџџџџџџ0w
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ0*

DstT0	d
count_nonzero/ConstConst*
_output_shapes
:*
valueB"       *
dtype0y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: t
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
_output_shapes
: *
Toutput_types
2t
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: p
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2	*
_output_shapes
: v
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
_output_shapes
: *
Toutput_types
24
OptionalNoneOptionalNone*
_output_shapes
: "5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"'
optionalnoneOptionalNone:optional:0"1
optionalfromvalueOptionalFromValue:optional:0"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*&
_input_shapes
:џџџџџџџџџ0:  
В
z
zero_fraction_cond_false_114517
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*
_output_shapes

:*

DstT0	*

SrcT0
d
count_nonzero/ConstConst*
valueB"       *
dtype0*
_output_shapes
:y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
_output_shapes
: *
T0	"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::  
њ
М
1zero_fraction_total_zero_zero_count_6_false_11355N
Jzero_fraction_readvariableop_linear_linear_model_trip_start_day_xf_weights+
'tofloat_zero_fraction_total_size_size_6	
mulЇ
zero_fraction/ReadVariableOpReadVariableOpJzero_fraction_readvariableop_linear_linear_model_trip_start_day_xf_weights*
_output_shapes

:*
dtype0T
zero_fraction/SizeConst*
value	B	 R*
dtype0	*
_output_shapes
: _
zero_fraction/LessEqual/yConst*
valueB	 Rџџџџ*
dtype0	*
_output_shapes
: 
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
_output_shapes
: *
T0	У
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*1
else_branch"R 
zero_fraction_cond_false_11365*
output_shapes
: *
_lower_using_switch_merge(*
Tout
2	*0
then_branch!R
zero_fraction_cond_true_11364*
Tcond0
*
_output_shapes
: *
Tin
2e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: 
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: 
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

SrcT0	*
_output_shapes
: *

DstT0|
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

SrcT0	*
_output_shapes
: *

DstT0Ќ
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: h
ToFloatCast'tofloat_zero_fraction_total_size_size_6*

SrcT0	*
_output_shapes
: *

DstT0C
mul_0Mulzero_fraction/fraction:output:0ToFloat:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
:: :  : 
я
a
0zero_fraction_total_zero_zero_count_5_true_11311
placeholder
placeholder_1		
constJ
ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    "
constConst:output:0*
_input_shapes
:: : :  
В
z
zero_fraction_cond_false_113227
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
_output_shapes

:
*
T0n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

SrcT0
*
_output_shapes

:
*

DstT0	d
count_nonzero/ConstConst*
valueB"       *
dtype0*
_output_shapes
:y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
_output_shapes
: *
T0	"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

:
:  
Ц
ы
!dnn_zero_fraction_cond_false_98851
-count_nonzero_notequal_dnn_hiddenlayer_0_relu
count_nonzero_nonzero_count	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalnoneX
count_nonzero/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: Ё
count_nonzero/NotEqualNotEqual-count_nonzero_notequal_dnn_hiddenlayer_0_relucount_nonzero/zeros:output:0*
T0*'
_output_shapes
:џџџџџџџџџdw
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd*

DstT0	d
count_nonzero/ConstConst*
_output_shapes
:*
valueB"       *
dtype0y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: t
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: t
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: p
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2	*
_output_shapes
: v
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: 4
OptionalNoneOptionalNone*
_output_shapes
: "'
optionalnoneOptionalNone:optional:0"1
optionalfromvalueOptionalFromValue:optional:0"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0*&
_input_shapes
:џџџџџџџџџd:  
В
z
zero_fraction_cond_false_111937
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:
n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*
_output_shapes

:
*

DstT0	*

SrcT0
d
count_nonzero/ConstConst*
valueB"       *
dtype0*
_output_shapes
:y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

:
:  
я
a
0zero_fraction_total_zero_zero_count_4_true_11268
placeholder
placeholder_1		
constJ
ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    "
constConst:output:0*
_input_shapes
:: : :  
В
z
zero_fraction_cond_false_114087
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

SrcT0
*
_output_shapes

:*

DstT0	d
count_nonzero/ConstConst*
valueB"       *
dtype0*
_output_shapes
:y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
_output_shapes
: *
T0	"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::  
Ы
b
zero_fraction_cond_true_113647
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
dtype0*
_output_shapes
: *
valueB
 *    
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

SrcT0
*
_output_shapes

:*

DstT0d
count_nonzero/ConstConst*
dtype0*
_output_shapes
:*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*
_output_shapes
: *

DstT0	*

SrcT0"
castCast:y:0*
_input_shapes

::  
ў
О
1zero_fraction_total_zero_zero_count_8_false_11441P
Lzero_fraction_readvariableop_linear_linear_model_trip_start_month_xf_weights+
'tofloat_zero_fraction_total_size_size_8	
mulЉ
zero_fraction/ReadVariableOpReadVariableOpLzero_fraction_readvariableop_linear_linear_model_trip_start_month_xf_weights*
dtype0*
_output_shapes

:T
zero_fraction/SizeConst*
value	B	 R*
dtype0	*
_output_shapes
: _
zero_fraction/LessEqual/yConst*
valueB	 Rџџџџ*
dtype0	*
_output_shapes
: 
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
_output_shapes
: *
T0	У
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tin
2*
_output_shapes
: *1
else_branch"R 
zero_fraction_cond_false_11451*
output_shapes
: *
_lower_using_switch_merge(*
Tout
2	*
Tcond0
*0
then_branch!R
zero_fraction_cond_true_11450e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: 
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: 
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

SrcT0	*
_output_shapes
: *

DstT0|
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

SrcT0	*
_output_shapes
: *

DstT0Ќ
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: h
ToFloatCast'tofloat_zero_fraction_total_size_size_8*
_output_shapes
: *

DstT0*

SrcT0	C
mul_0Mulzero_fraction/fraction:output:0ToFloat:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
:: :  : 
О
к
 dnn_zero_fraction_cond_true_98841
-count_nonzero_notequal_dnn_hiddenlayer_0_relu
cast	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4X
count_nonzero/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: Ё
count_nonzero/NotEqualNotEqual-count_nonzero_notequal_dnn_hiddenlayer_0_relucount_nonzero/zeros:output:0*
T0*'
_output_shapes
:џџџџџџџџџdw
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*'
_output_shapes
:џџџџџџџџџd*

DstT0*

SrcT0
d
count_nonzero/ConstConst*
valueB"       *
dtype0*
_output_shapes
:y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

SrcT0*
_output_shapes
: *

DstT0	t
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: t
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: p
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2*
_output_shapes
: v
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: ~
OptionalFromValue_4OptionalFromValue$count_nonzero/nonzero_count:output:0*
Toutput_types
2*
_output_shapes
: "
castCast:y:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0"1
optionalfromvalueOptionalFromValue:optional:0*&
_input_shapes
:џџџџџџџџџd:  
Е
z
zero_fraction_cond_false_111077
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes
:	ђo
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

SrcT0
*
_output_shapes
:	ђ*

DstT0	d
count_nonzero/ConstConst*
valueB"       *
dtype0*
_output_shapes
:y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
_output_shapes
: *
T0	"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes
:	ђ:  
Ы
b
zero_fraction_cond_true_114077
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*
_output_shapes

:*

DstT0*

SrcT0
d
count_nonzero/ConstConst*
valueB"       *
dtype0*
_output_shapes
:y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
_output_shapes
: *
T0b
CastCast$count_nonzero/nonzero_count:output:0*

SrcT0*
_output_shapes
: *

DstT0	"
castCast:y:0*
_input_shapes

::  
ш
Б
/zero_fraction_total_zero_zero_count_false_11097G
Czero_fraction_readvariableop_linear_linear_model_company_xf_weights)
%tofloat_zero_fraction_total_size_size	
mulЁ
zero_fraction/ReadVariableOpReadVariableOpCzero_fraction_readvariableop_linear_linear_model_company_xf_weights*
dtype0*
_output_shapes
:	ђU
zero_fraction/SizeConst*
value
B	 Rђ*
dtype0	*
_output_shapes
: _
zero_fraction/LessEqual/yConst*
_output_shapes
: *
valueB	 Rџџџџ*
dtype0	
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: У
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
output_shapes
: *
_lower_using_switch_merge(*
Tout
2	*0
then_branch!R
zero_fraction_cond_true_11106*
Tcond0
*
_output_shapes
: *
Tin
2*1
else_branch"R 
zero_fraction_cond_false_11107e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: 
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
_output_shapes
: *
T0	
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

SrcT0	*
_output_shapes
: *

DstT0|
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*
_output_shapes
: *

DstT0*

SrcT0	Ќ
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: f
ToFloatCast%tofloat_zero_fraction_total_size_size*
_output_shapes
: *

DstT0*

SrcT0	C
mul_0Mulzero_fraction/fraction:output:0ToFloat:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
:: :  : 
Щ
ю
$dnn_zero_fraction_3_cond_false_100951
-count_nonzero_notequal_dnn_hiddenlayer_3_relu
count_nonzero_nonzero_count	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalnoneX
count_nonzero/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: Ё
count_nonzero/NotEqualNotEqual-count_nonzero_notequal_dnn_hiddenlayer_3_relucount_nonzero/zeros:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"w
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ"*

DstT0	d
count_nonzero/ConstConst*
valueB"       *
dtype0*
_output_shapes
:y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: t
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: t
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: p
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2	*
_output_shapes
: v
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: 4
OptionalNoneOptionalNone*
_output_shapes
: "1
optionalfromvalueOptionalFromValue:optional:0"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"'
optionalnoneOptionalNone:optional:0*&
_input_shapes
:џџџџџџџџџ":  
Ј
Ј
 zero_fraction_1_cond_false_11491c
_count_nonzero_notequal_linear_linear_model_linear_linear_model_linear_linear_model_weighted_sum
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: г
count_nonzero/NotEqualNotEqual_count_nonzero_notequal_linear_linear_model_linear_linear_model_linear_linear_model_weighted_sumcount_nonzero/zeros:output:0*
T0*'
_output_shapes
:џџџџџџџџџw
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ*

DstT0	d
count_nonzero/ConstConst*
valueB"       *
dtype0*
_output_shapes
:y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
_output_shapes
: *
T0	"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*&
_input_shapes
:џџџџџџџџџ:  
С

zero_fraction_1_cond_true_11490c
_count_nonzero_notequal_linear_linear_model_linear_linear_model_linear_linear_model_weighted_sum
cast	X
count_nonzero/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: г
count_nonzero/NotEqualNotEqual_count_nonzero_notequal_linear_linear_model_linear_linear_model_linear_linear_model_weighted_sumcount_nonzero/zeros:output:0*
T0*'
_output_shapes
:џџџџџџџџџw
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ*

DstT0d
count_nonzero/ConstConst*
_output_shapes
:*
valueB"       *
dtype0y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

SrcT0*
_output_shapes
: *

DstT0	"
castCast:y:0*&
_input_shapes
:џџџџџџџџџ:  
я
a
0zero_fraction_total_zero_zero_count_2_true_11182
placeholder
placeholder_1		
constJ
ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: "
constConst:output:0*
_input_shapes
:: :  : 
Е
z
zero_fraction_cond_false_112367
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes
:	ђo
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*
_output_shapes
:	ђ*

DstT0	*

SrcT0
d
count_nonzero/ConstConst*
_output_shapes
:*
valueB"       *
dtype0y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes
:	ђ:  
Ю
b
zero_fraction_cond_true_112357
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes
:	ђo
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

SrcT0
*
_output_shapes
:	ђ*

DstT0d
count_nonzero/ConstConst*
valueB"       *
dtype0*
_output_shapes
:y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

SrcT0*
_output_shapes
: *

DstT0	"
castCast:y:0*
_input_shapes
:	ђ:  
ў
О
1zero_fraction_total_zero_zero_count_5_false_11312P
Lzero_fraction_readvariableop_linear_linear_model_pickup_longitude_xf_weights+
'tofloat_zero_fraction_total_size_size_5	
mulЉ
zero_fraction/ReadVariableOpReadVariableOpLzero_fraction_readvariableop_linear_linear_model_pickup_longitude_xf_weights*
dtype0*
_output_shapes

:
T
zero_fraction/SizeConst*
value	B	 R
*
dtype0	*
_output_shapes
: _
zero_fraction/LessEqual/yConst*
valueB	 Rџџџџ*
dtype0	*
_output_shapes
: 
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
_output_shapes
: *
T0	У
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tin
2*
_output_shapes
: *1
else_branch"R 
zero_fraction_cond_false_11322*
output_shapes
: *
_lower_using_switch_merge(*
Tout
2	*
Tcond0
*0
then_branch!R
zero_fraction_cond_true_11321e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
_output_shapes
: *
T0	
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: 
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

SrcT0	*
_output_shapes
: *

DstT0|
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*
_output_shapes
: *

DstT0*

SrcT0	Ќ
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: h
ToFloatCast'tofloat_zero_fraction_total_size_size_5*

SrcT0	*
_output_shapes
: *

DstT0C
mul_0Mulzero_fraction/fraction:output:0ToFloat:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
:: :  : 
С
н
#dnn_zero_fraction_3_cond_true_100941
-count_nonzero_notequal_dnn_hiddenlayer_3_relu
cast	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4X
count_nonzero/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: Ё
count_nonzero/NotEqualNotEqual-count_nonzero_notequal_dnn_hiddenlayer_3_relucount_nonzero/zeros:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"w
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*'
_output_shapes
:џџџџџџџџџ"*

DstT0*

SrcT0
d
count_nonzero/ConstConst*
valueB"       *
dtype0*
_output_shapes
:y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

SrcT0*
_output_shapes
: *

DstT0	t
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
_output_shapes
: *
Toutput_types
2t
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: p
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2*
_output_shapes
: v
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: ~
OptionalFromValue_4OptionalFromValue$count_nonzero/nonzero_count:output:0*
Toutput_types
2*
_output_shapes
: "5
optionalfromvalue_4OptionalFromValue_4:optional:0"1
optionalfromvalueOptionalFromValue:optional:0"
castCast:y:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0*&
_input_shapes
:џџџџџџџџџ":  
Ю
b
zero_fraction_cond_true_111067
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes
:	ђo
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

SrcT0
*
_output_shapes
:	ђ*

DstT0d
count_nonzero/ConstConst*
valueB"       *
dtype0*
_output_shapes
:y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
_output_shapes
: *
T0b
CastCast$count_nonzero/nonzero_count:output:0*
_output_shapes
: *

DstT0	*

SrcT0"
castCast:y:0*
_input_shapes
:	ђ:  
Ы
b
zero_fraction_cond_true_111497
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
_output_shapes
: *
valueB
 *    *
dtype0
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:
n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*
_output_shapes

:
*

DstT0*

SrcT0
d
count_nonzero/ConstConst*
valueB"       *
dtype0*
_output_shapes
:y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

SrcT0*
_output_shapes
: *

DstT0	"
castCast:y:0*
_input_shapes

:
:  
ў
О
1zero_fraction_total_zero_zero_count_1_false_11140P
Lzero_fraction_readvariableop_linear_linear_model_dropoff_latitude_xf_weights+
'tofloat_zero_fraction_total_size_size_1	
mulЉ
zero_fraction/ReadVariableOpReadVariableOpLzero_fraction_readvariableop_linear_linear_model_dropoff_latitude_xf_weights*
dtype0*
_output_shapes

:
T
zero_fraction/SizeConst*
value	B	 R
*
dtype0	*
_output_shapes
: _
zero_fraction/LessEqual/yConst*
dtype0	*
_output_shapes
: *
valueB	 Rџџџџ
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: У
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*0
then_branch!R
zero_fraction_cond_true_11149*
_output_shapes
: *
Tin
2*1
else_branch"R 
zero_fraction_cond_false_11150*
output_shapes
: *
_lower_using_switch_merge(*
Tout
2	e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
_output_shapes
: *
T0	
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: 
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

SrcT0	*
_output_shapes
: *

DstT0|
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

SrcT0	*
_output_shapes
: *

DstT0Ќ
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
_output_shapes
: *
T0q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: h
ToFloatCast'tofloat_zero_fraction_total_size_size_1*
_output_shapes
: *

DstT0*

SrcT0	C
mul_0Mulzero_fraction/fraction:output:0ToFloat:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
:: :  : 
ќ
Н
1zero_fraction_total_zero_zero_count_7_false_11398O
Kzero_fraction_readvariableop_linear_linear_model_trip_start_hour_xf_weights+
'tofloat_zero_fraction_total_size_size_7	
mulЈ
zero_fraction/ReadVariableOpReadVariableOpKzero_fraction_readvariableop_linear_linear_model_trip_start_hour_xf_weights*
dtype0*
_output_shapes

:T
zero_fraction/SizeConst*
_output_shapes
: *
value	B	 R*
dtype0	_
zero_fraction/LessEqual/yConst*
valueB	 Rџџџџ*
dtype0	*
_output_shapes
: 
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: У
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tin
2*
_output_shapes
: *1
else_branch"R 
zero_fraction_cond_false_11408*
output_shapes
: *
_lower_using_switch_merge(*
Tout
2	*
Tcond0
*0
then_branch!R
zero_fraction_cond_true_11407e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: 
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: 
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

SrcT0	*
_output_shapes
: *

DstT0|
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*
_output_shapes
: *

DstT0*

SrcT0	Ќ
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: h
ToFloatCast'tofloat_zero_fraction_total_size_size_7*

SrcT0	*
_output_shapes
: *

DstT0C
mul_0Mulzero_fraction/fraction:output:0ToFloat:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
:: :  : 

П
1zero_fraction_total_zero_zero_count_2_false_11183Q
Mzero_fraction_readvariableop_linear_linear_model_dropoff_longitude_xf_weights+
'tofloat_zero_fraction_total_size_size_2	
mulЊ
zero_fraction/ReadVariableOpReadVariableOpMzero_fraction_readvariableop_linear_linear_model_dropoff_longitude_xf_weights*
dtype0*
_output_shapes

:
T
zero_fraction/SizeConst*
value	B	 R
*
dtype0	*
_output_shapes
: _
zero_fraction/LessEqual/yConst*
valueB	 Rџџџџ*
dtype0	*
_output_shapes
: 
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
_output_shapes
: *
T0	У
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*1
else_branch"R 
zero_fraction_cond_false_11193*
output_shapes
: *
_lower_using_switch_merge(*
Tout
2	*
Tcond0
*0
then_branch!R
zero_fraction_cond_true_11192*
_output_shapes
: *
Tin
2e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: 
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
_output_shapes
: *
T0	
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

SrcT0	*
_output_shapes
: *

DstT0|
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*
_output_shapes
: *

DstT0*

SrcT0	Ќ
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
_output_shapes
: *
T0q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: h
ToFloatCast'tofloat_zero_fraction_total_size_size_2*
_output_shapes
: *

DstT0*

SrcT0	C
mul_0Mulzero_fraction/fraction:output:0ToFloat:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
:: : :  
ќ
Н
1zero_fraction_total_zero_zero_count_4_false_11269O
Kzero_fraction_readvariableop_linear_linear_model_pickup_latitude_xf_weights+
'tofloat_zero_fraction_total_size_size_4	
mulЈ
zero_fraction/ReadVariableOpReadVariableOpKzero_fraction_readvariableop_linear_linear_model_pickup_latitude_xf_weights*
dtype0*
_output_shapes

:
T
zero_fraction/SizeConst*
value	B	 R
*
dtype0	*
_output_shapes
: _
zero_fraction/LessEqual/yConst*
valueB	 Rџџџџ*
dtype0	*
_output_shapes
: 
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: У
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tout
2	*
Tcond0
*0
then_branch!R
zero_fraction_cond_true_11278*
Tin
2*
_output_shapes
: *1
else_branch"R 
zero_fraction_cond_false_11279*
output_shapes
: *
_lower_using_switch_merge(e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
_output_shapes
: *
T0	
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: 
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

SrcT0	*
_output_shapes
: *

DstT0|
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

SrcT0	*
_output_shapes
: *

DstT0Ќ
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: h
ToFloatCast'tofloat_zero_fraction_total_size_size_4*

SrcT0	*
_output_shapes
: *

DstT0C
mul_0Mulzero_fraction/fraction:output:0ToFloat:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
:: :  : 
Ы
b
zero_fraction_cond_true_113217
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:
n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*
_output_shapes

:
*

DstT0*

SrcT0
d
count_nonzero/ConstConst*
valueB"       *
dtype0*
_output_shapes
:y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

SrcT0*
_output_shapes
: *

DstT0	"
castCast:y:0*
_input_shapes

:
:  
я
a
0zero_fraction_total_zero_zero_count_7_true_11397
placeholder
placeholder_1		
constJ
ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: "
constConst:output:0*
_input_shapes
:: :  : 
С
ъ
$dnn_zero_fraction_4_cond_false_10164-
)count_nonzero_notequal_dnn_logits_biasadd
count_nonzero_nonzero_count	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalnoneX
count_nonzero/zerosConst*
_output_shapes
: *
valueB
 *    *
dtype0
count_nonzero/NotEqualNotEqual)count_nonzero_notequal_dnn_logits_biasaddcount_nonzero/zeros:output:0*
T0*'
_output_shapes
:џџџџџџџџџw
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ*

DstT0	d
count_nonzero/ConstConst*
valueB"       *
dtype0*
_output_shapes
:y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: t
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
_output_shapes
: *
Toutput_types
2t
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: p
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2	*
_output_shapes
: v
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
_output_shapes
: *
Toutput_types
24
OptionalNoneOptionalNone*
_output_shapes
: "5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"'
optionalnoneOptionalNone:optional:0"1
optionalfromvalueOptionalFromValue:optional:0"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*&
_input_shapes
:џџџџџџџџџ:  
Ы
b
zero_fraction_cond_true_111927
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:
n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*
_output_shapes

:
*

DstT0*

SrcT0
d
count_nonzero/ConstConst*
valueB"       *
dtype0*
_output_shapes
:y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

SrcT0*
_output_shapes
: *

DstT0	"
castCast:y:0*
_input_shapes

:
:  
э
_
.zero_fraction_total_zero_zero_count_true_11096
placeholder
placeholder_1		
constJ
ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: "
constConst:output:0*
_input_shapes
:: :  : 
В
z
zero_fraction_cond_false_113657
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
_output_shapes

:*
T0n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

SrcT0
*
_output_shapes

:*

DstT0	d
count_nonzero/ConstConst*
_output_shapes
:*
valueB"       *
dtype0y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::  
я
a
0zero_fraction_total_zero_zero_count_3_true_11225
placeholder
placeholder_1		
constJ
ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: "
constConst:output:0*
_input_shapes
:: : :  
Ы
b
zero_fraction_cond_true_114507
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
_output_shapes

:*
T0n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

SrcT0
*
_output_shapes

:*

DstT0d
count_nonzero/ConstConst*
valueB"       *
dtype0*
_output_shapes
:y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

SrcT0*
_output_shapes
: *

DstT0	"
castCast:y:0*
_input_shapes

::  
я
a
0zero_fraction_total_zero_zero_count_8_true_11440
placeholder
placeholder_1		
constJ
ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0"
constConst:output:0*
_input_shapes
:: :  : 
Ы
b
zero_fraction_cond_true_112787
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:
n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*
_output_shapes

:
*

DstT0*

SrcT0
d
count_nonzero/ConstConst*
valueB"       *
dtype0*
_output_shapes
:y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
_output_shapes
: *
T0b
CastCast$count_nonzero/nonzero_count:output:0*
_output_shapes
: *

DstT0	*

SrcT0"
castCast:y:0*
_input_shapes

:
:  "w<
save/Const:0save/Identity:0save/restore_all (5 @F8"~
global_stepom
k
global_step:0global_step/Assign!global_step/Read/ReadVariableOp:0(2global_step/Initializer/zeros:0H"є
saved_model_assetsн*к
i
+type.googleapis.com/tensorflow.AssetFileDef:
	
Const:0-vocab_compute_and_apply_vocabulary_vocabulary
m
+type.googleapis.com/tensorflow.AssetFileDef>

	Const_1:0/vocab_compute_and_apply_vocabulary_1_vocabulary"%
saved_model_main_op


group_deps"
tft_schema_override_minя
ь
Ftransform/transform/compute_and_apply_vocabulary/apply_vocab/Const_1:0
Htransform/transform/compute_and_apply_vocabulary_1/apply_vocab/Const_1:0
3transform/transform/bucketize/apply_buckets/Const:0
5transform/transform/bucketize_1/apply_buckets/Const:0
5transform/transform/bucketize_2/apply_buckets/Const:0
5transform/transform/bucketize_3/apply_buckets/Const:0"Ѓ
tft_schema_override_max

Btransform/transform/compute_and_apply_vocabulary/apply_vocab/sub:0
Dtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/sub:0
;transform/transform/bucketize/apply_buckets/strided_slice:0
=transform/transform/bucketize_1/apply_buckets/strided_slice:0
=transform/transform/bucketize_2/apply_buckets/strided_slice:0
=transform/transform/bucketize_3/apply_buckets/strided_slice:0"Ћ
trainable_variables
Ј
dnn/hiddenlayer_0/kernel:0dnn/hiddenlayer_0/kernel/Assign.dnn/hiddenlayer_0/kernel/Read/ReadVariableOp:0(25dnn/hiddenlayer_0/kernel/Initializer/random_uniform:08

dnn/hiddenlayer_0/bias:0dnn/hiddenlayer_0/bias/Assign,dnn/hiddenlayer_0/bias/Read/ReadVariableOp:0(2*dnn/hiddenlayer_0/bias/Initializer/zeros:08
Ј
dnn/hiddenlayer_1/kernel:0dnn/hiddenlayer_1/kernel/Assign.dnn/hiddenlayer_1/kernel/Read/ReadVariableOp:0(25dnn/hiddenlayer_1/kernel/Initializer/random_uniform:08

dnn/hiddenlayer_1/bias:0dnn/hiddenlayer_1/bias/Assign,dnn/hiddenlayer_1/bias/Read/ReadVariableOp:0(2*dnn/hiddenlayer_1/bias/Initializer/zeros:08
Ј
dnn/hiddenlayer_2/kernel:0dnn/hiddenlayer_2/kernel/Assign.dnn/hiddenlayer_2/kernel/Read/ReadVariableOp:0(25dnn/hiddenlayer_2/kernel/Initializer/random_uniform:08

dnn/hiddenlayer_2/bias:0dnn/hiddenlayer_2/bias/Assign,dnn/hiddenlayer_2/bias/Read/ReadVariableOp:0(2*dnn/hiddenlayer_2/bias/Initializer/zeros:08
Ј
dnn/hiddenlayer_3/kernel:0dnn/hiddenlayer_3/kernel/Assign.dnn/hiddenlayer_3/kernel/Read/ReadVariableOp:0(25dnn/hiddenlayer_3/kernel/Initializer/random_uniform:08

dnn/hiddenlayer_3/bias:0dnn/hiddenlayer_3/bias/Assign,dnn/hiddenlayer_3/bias/Read/ReadVariableOp:0(2*dnn/hiddenlayer_3/bias/Initializer/zeros:08

dnn/logits/kernel:0dnn/logits/kernel/Assign'dnn/logits/kernel/Read/ReadVariableOp:0(2.dnn/logits/kernel/Initializer/random_uniform:08
{
dnn/logits/bias:0dnn/logits/bias/Assign%dnn/logits/bias/Read/ReadVariableOp:0(2#dnn/logits/bias/Initializer/zeros:08
з
(linear/linear_model/company_xf/weights:0-linear/linear_model/company_xf/weights/Assign<linear/linear_model/company_xf/weights/Read/ReadVariableOp:0(2:linear/linear_model/company_xf/weights/Initializer/zeros:08
ћ
1linear/linear_model/dropoff_latitude_xf/weights:06linear/linear_model/dropoff_latitude_xf/weights/AssignElinear/linear_model/dropoff_latitude_xf/weights/Read/ReadVariableOp:0(2Clinear/linear_model/dropoff_latitude_xf/weights/Initializer/zeros:08
џ
2linear/linear_model/dropoff_longitude_xf/weights:07linear/linear_model/dropoff_longitude_xf/weights/AssignFlinear/linear_model/dropoff_longitude_xf/weights/Read/ReadVariableOp:0(2Dlinear/linear_model/dropoff_longitude_xf/weights/Initializer/zeros:08
ы
-linear/linear_model/payment_type_xf/weights:02linear/linear_model/payment_type_xf/weights/AssignAlinear/linear_model/payment_type_xf/weights/Read/ReadVariableOp:0(2?linear/linear_model/payment_type_xf/weights/Initializer/zeros:08
ї
0linear/linear_model/pickup_latitude_xf/weights:05linear/linear_model/pickup_latitude_xf/weights/AssignDlinear/linear_model/pickup_latitude_xf/weights/Read/ReadVariableOp:0(2Blinear/linear_model/pickup_latitude_xf/weights/Initializer/zeros:08
ћ
1linear/linear_model/pickup_longitude_xf/weights:06linear/linear_model/pickup_longitude_xf/weights/AssignElinear/linear_model/pickup_longitude_xf/weights/Read/ReadVariableOp:0(2Clinear/linear_model/pickup_longitude_xf/weights/Initializer/zeros:08
ѓ
/linear/linear_model/trip_start_day_xf/weights:04linear/linear_model/trip_start_day_xf/weights/AssignClinear/linear_model/trip_start_day_xf/weights/Read/ReadVariableOp:0(2Alinear/linear_model/trip_start_day_xf/weights/Initializer/zeros:08
ї
0linear/linear_model/trip_start_hour_xf/weights:05linear/linear_model/trip_start_hour_xf/weights/AssignDlinear/linear_model/trip_start_hour_xf/weights/Read/ReadVariableOp:0(2Blinear/linear_model/trip_start_hour_xf/weights/Initializer/zeros:08
ћ
1linear/linear_model/trip_start_month_xf/weights:06linear/linear_model/trip_start_month_xf/weights/AssignElinear/linear_model/trip_start_month_xf/weights/Read/ReadVariableOp:0(2Clinear/linear_model/trip_start_month_xf/weights/Initializer/zeros:08
П
"linear/linear_model/bias_weights:0'linear/linear_model/bias_weights/Assign6linear/linear_model/bias_weights/Read/ReadVariableOp:0(24linear/linear_model/bias_weights/Initializer/zeros:08"п
	summariesб
Ю
+dnn/hiddenlayer_0/fraction_of_zero_values:0
dnn/hiddenlayer_0/activation:0
+dnn/hiddenlayer_1/fraction_of_zero_values:0
dnn/hiddenlayer_1/activation:0
+dnn/hiddenlayer_2/fraction_of_zero_values:0
dnn/hiddenlayer_2/activation:0
+dnn/hiddenlayer_3/fraction_of_zero_values:0
dnn/hiddenlayer_3/activation:0
$dnn/logits/fraction_of_zero_values:0
dnn/logits/activation:0
bias:0
fraction_of_zero_weights:0
 linear/fraction_of_zero_values:0
linear/activation:0" 
	variables §
k
global_step:0global_step/Assign!global_step/Read/ReadVariableOp:0(2global_step/Initializer/zeros:0H
Ј
dnn/hiddenlayer_0/kernel:0dnn/hiddenlayer_0/kernel/Assign.dnn/hiddenlayer_0/kernel/Read/ReadVariableOp:0(25dnn/hiddenlayer_0/kernel/Initializer/random_uniform:08

dnn/hiddenlayer_0/bias:0dnn/hiddenlayer_0/bias/Assign,dnn/hiddenlayer_0/bias/Read/ReadVariableOp:0(2*dnn/hiddenlayer_0/bias/Initializer/zeros:08
Ј
dnn/hiddenlayer_1/kernel:0dnn/hiddenlayer_1/kernel/Assign.dnn/hiddenlayer_1/kernel/Read/ReadVariableOp:0(25dnn/hiddenlayer_1/kernel/Initializer/random_uniform:08

dnn/hiddenlayer_1/bias:0dnn/hiddenlayer_1/bias/Assign,dnn/hiddenlayer_1/bias/Read/ReadVariableOp:0(2*dnn/hiddenlayer_1/bias/Initializer/zeros:08
Ј
dnn/hiddenlayer_2/kernel:0dnn/hiddenlayer_2/kernel/Assign.dnn/hiddenlayer_2/kernel/Read/ReadVariableOp:0(25dnn/hiddenlayer_2/kernel/Initializer/random_uniform:08

dnn/hiddenlayer_2/bias:0dnn/hiddenlayer_2/bias/Assign,dnn/hiddenlayer_2/bias/Read/ReadVariableOp:0(2*dnn/hiddenlayer_2/bias/Initializer/zeros:08
Ј
dnn/hiddenlayer_3/kernel:0dnn/hiddenlayer_3/kernel/Assign.dnn/hiddenlayer_3/kernel/Read/ReadVariableOp:0(25dnn/hiddenlayer_3/kernel/Initializer/random_uniform:08

dnn/hiddenlayer_3/bias:0dnn/hiddenlayer_3/bias/Assign,dnn/hiddenlayer_3/bias/Read/ReadVariableOp:0(2*dnn/hiddenlayer_3/bias/Initializer/zeros:08

dnn/logits/kernel:0dnn/logits/kernel/Assign'dnn/logits/kernel/Read/ReadVariableOp:0(2.dnn/logits/kernel/Initializer/random_uniform:08
{
dnn/logits/bias:0dnn/logits/bias/Assign%dnn/logits/bias/Read/ReadVariableOp:0(2#dnn/logits/bias/Initializer/zeros:08
з
(linear/linear_model/company_xf/weights:0-linear/linear_model/company_xf/weights/Assign<linear/linear_model/company_xf/weights/Read/ReadVariableOp:0(2:linear/linear_model/company_xf/weights/Initializer/zeros:08
ћ
1linear/linear_model/dropoff_latitude_xf/weights:06linear/linear_model/dropoff_latitude_xf/weights/AssignElinear/linear_model/dropoff_latitude_xf/weights/Read/ReadVariableOp:0(2Clinear/linear_model/dropoff_latitude_xf/weights/Initializer/zeros:08
џ
2linear/linear_model/dropoff_longitude_xf/weights:07linear/linear_model/dropoff_longitude_xf/weights/AssignFlinear/linear_model/dropoff_longitude_xf/weights/Read/ReadVariableOp:0(2Dlinear/linear_model/dropoff_longitude_xf/weights/Initializer/zeros:08
ы
-linear/linear_model/payment_type_xf/weights:02linear/linear_model/payment_type_xf/weights/AssignAlinear/linear_model/payment_type_xf/weights/Read/ReadVariableOp:0(2?linear/linear_model/payment_type_xf/weights/Initializer/zeros:08
ї
0linear/linear_model/pickup_latitude_xf/weights:05linear/linear_model/pickup_latitude_xf/weights/AssignDlinear/linear_model/pickup_latitude_xf/weights/Read/ReadVariableOp:0(2Blinear/linear_model/pickup_latitude_xf/weights/Initializer/zeros:08
ћ
1linear/linear_model/pickup_longitude_xf/weights:06linear/linear_model/pickup_longitude_xf/weights/AssignElinear/linear_model/pickup_longitude_xf/weights/Read/ReadVariableOp:0(2Clinear/linear_model/pickup_longitude_xf/weights/Initializer/zeros:08
ѓ
/linear/linear_model/trip_start_day_xf/weights:04linear/linear_model/trip_start_day_xf/weights/AssignClinear/linear_model/trip_start_day_xf/weights/Read/ReadVariableOp:0(2Alinear/linear_model/trip_start_day_xf/weights/Initializer/zeros:08
ї
0linear/linear_model/trip_start_hour_xf/weights:05linear/linear_model/trip_start_hour_xf/weights/AssignDlinear/linear_model/trip_start_hour_xf/weights/Read/ReadVariableOp:0(2Blinear/linear_model/trip_start_hour_xf/weights/Initializer/zeros:08
ћ
1linear/linear_model/trip_start_month_xf/weights:06linear/linear_model/trip_start_month_xf/weights/AssignElinear/linear_model/trip_start_month_xf/weights/Read/ReadVariableOp:0(2Clinear/linear_model/trip_start_month_xf/weights/Initializer/zeros:08
П
"linear/linear_model/bias_weights:0'linear/linear_model/bias_weights/Assign6linear/linear_model/bias_weights/Read/ReadVariableOp:0(24linear/linear_model/bias_weights/Initializer/zeros:08")
asset_filepaths

Const:0
	Const_1:0"Ќ
tft_schema_override_tensor

Ytransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/SelectV2:0
[transform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/SelectV2:0
Qtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/transpose:0
Stransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/transpose:0
Stransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/transpose:0
Stransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/transpose:0"ё
table_initializerл
и
itransform/transform/compute_and_apply_vocabulary/apply_vocab/text_file_init/InitializeTableFromTextFileV2
ktransform/transform/compute_and_apply_vocabulary_1/apply_vocab/text_file_init/InitializeTableFromTextFileV2* 
predict
=
company2
ParseExample/ParseExample:0џџџџџџџџџ
A

trip_miles3
ParseExample/ParseExample:11џџџџџџџџџ
K
pickup_community_area2
ParseExample/ParseExample:8	џџџџџџџџџ
J
dropoff_census_tract2
ParseExample/ParseExample:1	џџџџџџџџџ
G
dropoff_longitude2
ParseExample/ParseExample:4џџџџџџџџџ
:
fare2
ParseExample/ParseExample:5џџџџџџџџџ
E
pickup_latitude2
ParseExample/ParseExample:9џџџџџџџџџ
K
trip_start_timestamp3
ParseExample/ParseExample:16	џџџџџџџџџ
G
pickup_longitude3
ParseExample/ParseExample:10џџџџџџџџџ
F
trip_start_hour3
ParseExample/ParseExample:14	џџџџџџџџџ
B
payment_type2
ParseExample/ParseExample:6џџџџџџџџџ
L
dropoff_community_area2
ParseExample/ParseExample:2	џџџџџџџџџ
F
dropoff_latitude2
ParseExample/ParseExample:3џџџџџџџџџ
C
trip_seconds3
ParseExample/ParseExample:12	џџџџџџџџџ
I
pickup_census_tract2
ParseExample/ParseExample:7	џџџџџџџџџ
E
trip_start_day3
ParseExample/ParseExample:13	џџџџџџџџџ
G
trip_start_month3
ParseExample/ParseExample:15	џџџџџџџџџA
	class_ids4
head/predictions/ExpandDims:0	џџџџџџџџџ@
classes5
head/predictions/str_classes:0џџџџџџџџџ?
all_class_ids.
head/predictions/Tile:0џџџџџџџџџ?
all_classes0
head/predictions/Tile_1:0џџџџџџџџџ>
logistic2
head/predictions/logistic:0џџџџџџџџџH
probabilities7
 head/predictions/probabilities:0џџџџџџџџџ&
logits
add:0џџџџџџџџџtensorflow/serving/predict