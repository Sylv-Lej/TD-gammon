
C
global_step/initial_valueConst*
dtype0*
value	B : 
U
global_stepVariable*
dtype0*
shape: *
	container *
shared_name 
�
global_step/AssignAssignglobal_stepglobal_step/initial_value*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0
R
global_step/readIdentityglobal_step*
_class
loc:@global_step*
T0
K
ExponentialDecay/learning_rateConst*
dtype0*
valueB
 *fff?
G
ExponentialDecay/CastCastglobal_step/read*

DstT0*

SrcT0
E
ExponentialDecay/Cast_1/xConst*
dtype0*
valueB	 :��
R
ExponentialDecay/Cast_1CastExponentialDecay/Cast_1/x*

DstT0*

SrcT0
F
ExponentialDecay/Cast_2/xConst*
dtype0*
valueB
 *��u?
X
ExponentialDecay/truedivDivExponentialDecay/CastExponentialDecay/Cast_1*
T0
B
ExponentialDecay/FloorFloorExponentialDecay/truediv*
T0
W
ExponentialDecay/PowPowExponentialDecay/Cast_2/xExponentialDecay/Floor*
T0
V
ExponentialDecayMulExponentialDecay/learning_rateExponentialDecay/Pow*
T0
5
lambda/xConst*
dtype0*
valueB
 *333?
6
lambdaMaximumlambda/xExponentialDecay*
T0
M
 ExponentialDecay_1/learning_rateConst*
dtype0*
valueB
 *���=
I
ExponentialDecay_1/CastCastglobal_step/read*

DstT0*

SrcT0
G
ExponentialDecay_1/Cast_1/xConst*
dtype0*
valueB	 :��
V
ExponentialDecay_1/Cast_1CastExponentialDecay_1/Cast_1/x*

DstT0*

SrcT0
H
ExponentialDecay_1/Cast_2/xConst*
dtype0*
valueB
 *��u?
^
ExponentialDecay_1/truedivDivExponentialDecay_1/CastExponentialDecay_1/Cast_1*
T0
F
ExponentialDecay_1/FloorFloorExponentialDecay_1/truediv*
T0
]
ExponentialDecay_1/PowPowExponentialDecay_1/Cast_2/xExponentialDecay_1/Floor*
T0
\
ExponentialDecay_1Mul ExponentialDecay_1/learning_rateExponentialDecay_1/Pow*
T0
4
alpha/xConst*
dtype0*
valueB
 *
�#<
6
alphaMaximumalpha/xExponentialDecay_1*
T0
3
xPlaceholder*
dtype0*
shape:	�
;

Value_nextPlaceholder*
dtype0*
shape
:
R
layer1/truncated_normal/shapeConst*
dtype0*
valueB"�   <   
I
layer1/truncated_normal/meanConst*
dtype0*
valueB
 *    
K
layer1/truncated_normal/stddevConst*
dtype0*
valueB
 *���=
�
'layer1/truncated_normal/TruncatedNormalTruncatedNormallayer1/truncated_normal/shape*
dtype0*
seed2 *

seed *
T0
t
layer1/truncated_normal/mulMul'layer1/truncated_normal/TruncatedNormallayer1/truncated_normal/stddev*
T0
b
layer1/truncated_normalAddlayer1/truncated_normal/mullayer1/truncated_normal/mean*
T0
`
layer1/weightVariable*
dtype0*
shape:	�<*
	container *
shared_name 
�
layer1/weight/AssignAssignlayer1/weightlayer1/truncated_normal*
validate_shape(* 
_class
loc:@layer1/weight*
use_locking(*
T0
X
layer1/weight/readIdentitylayer1/weight* 
_class
loc:@layer1/weight*
T0
=
layer1/ConstConst*
dtype0*
valueB<*���=
Y
layer1/biasVariable*
dtype0*
shape:<*
	container *
shared_name 
�
layer1/bias/AssignAssignlayer1/biaslayer1/Const*
validate_shape(*
_class
loc:@layer1/bias*
use_locking(*
T0
R
layer1/bias/readIdentitylayer1/bias*
_class
loc:@layer1/bias*
T0
]
layer1/MatMulMatMulxlayer1/weight/read*
transpose_b( *
transpose_a( *
T0
;

layer1/addAddlayer1/MatMullayer1/bias/read*
T0
1
layer1/activationSigmoid
layer1/add*
T0
R
layer2/truncated_normal/shapeConst*
dtype0*
valueB"<      
I
layer2/truncated_normal/meanConst*
dtype0*
valueB
 *    
K
layer2/truncated_normal/stddevConst*
dtype0*
valueB
 *���=
�
'layer2/truncated_normal/TruncatedNormalTruncatedNormallayer2/truncated_normal/shape*
dtype0*
seed2 *

seed *
T0
t
layer2/truncated_normal/mulMul'layer2/truncated_normal/TruncatedNormallayer2/truncated_normal/stddev*
T0
b
layer2/truncated_normalAddlayer2/truncated_normal/mullayer2/truncated_normal/mean*
T0
_
layer2/weightVariable*
dtype0*
shape
:<*
	container *
shared_name 
�
layer2/weight/AssignAssignlayer2/weightlayer2/truncated_normal*
validate_shape(* 
_class
loc:@layer2/weight*
use_locking(*
T0
X
layer2/weight/readIdentitylayer2/weight* 
_class
loc:@layer2/weight*
T0
=
layer2/ConstConst*
dtype0*
valueB*���=
Y
layer2/biasVariable*
dtype0*
shape:*
	container *
shared_name 
�
layer2/bias/AssignAssignlayer2/biaslayer2/Const*
validate_shape(*
_class
loc:@layer2/bias*
use_locking(*
T0
R
layer2/bias/readIdentitylayer2/bias*
_class
loc:@layer2/bias*
T0
m
layer2/MatMulMatMullayer1/activationlayer2/weight/read*
transpose_b( *
transpose_a( *
T0
;

layer2/addAddlayer2/MatMullayer2/bias/read*
T0
1
layer2/activationSigmoid
layer2/add*
T0
:
ConstConst*
dtype0*
valueB"       
C
SumSum
Value_nextConst*
T0*
	keep_dims( *

Tidx0
E
ScalarSummary/tagsConst*
dtype0*
valueB B
Value_next
@
ScalarSummaryScalarSummaryScalarSummary/tagsSum*
T0
<
Const_1Const*
dtype0*
valueB"       
N
Sum_1Sumlayer2/activationConst_1*
T0*
	keep_dims( *

Tidx0
B
ScalarSummary_1/tagsConst*
dtype0*
valueB BValue
F
ScalarSummary_1ScalarSummaryScalarSummary_1/tagsSum_1*
T0
2
subSub
Value_nextlayer2/activation*
T0
<
Const_2Const*
dtype0*
valueB"       
@
deltaSumsubConst_2*
T0*
	keep_dims( *

Tidx0
4
sub_1Sub
Value_nextlayer2/activation*
T0
 
SquareSquaresub_1*
T0
<
Const_3Const*
dtype0*
valueB"       
C
lossMeanSquareConst_3*
T0*
	keep_dims( *

Tidx0
#
RoundRound
Value_next*
T0
,
Round_1Roundlayer2/activation*
T0
'
EqualEqualRoundRound_1*
T0
+
CastCastEqual*

DstT0*

SrcT0

<
Const_4Const*
dtype0*
valueB"       
D
accuracySumCastConst_4*
T0*
	keep_dims( *

Tidx0
7

game/ConstConst*
dtype0*
valueB
 *    
\
game/one_game_stepVariable*
dtype0*
shape: *
	container *
shared_name 
�
game/one_game_step/AssignAssigngame/one_game_step
game/Const*
validate_shape(*%
_class
loc:@game/one_game_step*
use_locking(*
T0
g
game/one_game_step/readIdentitygame/one_game_step*%
_class
loc:@game/one_game_step*
T0
A
game/AssignAdd/valueConst*
dtype0*
valueB
 *  �?
�
game/AssignAdd	AssignAddgame/one_game_stepgame/AssignAdd/value*%
_class
loc:@game/one_game_step*
use_locking( *
T0
9
game/Const_1Const*
dtype0*
valueB
 *    
W
game/loss_sumVariable*
dtype0*
shape: *
	container *
shared_name 
�
game/loss_sum/AssignAssigngame/loss_sumgame/Const_1*
validate_shape(* 
_class
loc:@game/loss_sum*
use_locking(*
T0
X
game/loss_sum/readIdentitygame/loss_sum* 
_class
loc:@game/loss_sum*
T0
p
game/AssignAdd_1	AssignAddgame/loss_sumloss* 
_class
loc:@game/loss_sum*
use_locking( *
T0
;
game/Maximum/yConst*
dtype0*
valueB
 *  �?
I
game/MaximumMaximumgame/one_game_step/readgame/Maximum/y*
T0
>
game/truedivDivgame/loss_sum/readgame/Maximum*
T0
>
game/Assign/valueConst*
dtype0*
valueB
 *    
�
game/AssignAssigngame/one_game_stepgame/Assign/value*
validate_shape(*%
_class
loc:@game/one_game_step*
use_locking( *
T0
@
game/Assign_1/valueConst*
dtype0*
valueB
 *    
�
game/Assign_1Assigngame/loss_sumgame/Assign_1/value*
validate_shape(* 
_class
loc:@game/loss_sum*
use_locking( *
T0
5
game/group_depsNoOp^game/Assign_1^game/Assign
9
AssignAdd/valueConst*
dtype0*
value	B :
p
	AssignAdd	AssignAddglobal_stepAssignAdd/value*
_class
loc:@global_step*
use_locking( *
T0
D
gradients/ShapeConst*
dtype0*
valueB"      
<
gradients/ConstConst*
dtype0*
valueB
 *  �?
A
gradients/FillFillgradients/Shapegradients/Const*
T0
g
,gradients/layer2/activation_grad/SigmoidGradSigmoidGradlayer2/activationgradients/Fill*
T0
T
gradients/layer2/add_grad/ShapeConst*
dtype0*
valueB"      
O
!gradients/layer2/add_grad/Shape_1Const*
dtype0*
valueB:
�
/gradients/layer2/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/layer2/add_grad/Shape!gradients/layer2/add_grad/Shape_1*
T0
�
gradients/layer2/add_grad/SumSum,gradients/layer2/activation_grad/SigmoidGrad/gradients/layer2/add_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
�
!gradients/layer2/add_grad/ReshapeReshapegradients/layer2/add_grad/Sumgradients/layer2/add_grad/Shape*
T0*
Tshape0
�
gradients/layer2/add_grad/Sum_1Sum,gradients/layer2/activation_grad/SigmoidGrad1gradients/layer2/add_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
�
#gradients/layer2/add_grad/Reshape_1Reshapegradients/layer2/add_grad/Sum_1!gradients/layer2/add_grad/Shape_1*
T0*
Tshape0
�
#gradients/layer2/MatMul_grad/MatMulMatMul!gradients/layer2/add_grad/Reshapelayer2/weight/read*
transpose_b(*
transpose_a( *
T0
�
%gradients/layer2/MatMul_grad/MatMul_1MatMullayer1/activation!gradients/layer2/add_grad/Reshape*
transpose_b( *
transpose_a(*
T0
|
,gradients/layer1/activation_grad/SigmoidGradSigmoidGradlayer1/activation#gradients/layer2/MatMul_grad/MatMul*
T0
T
gradients/layer1/add_grad/ShapeConst*
dtype0*
valueB"   <   
O
!gradients/layer1/add_grad/Shape_1Const*
dtype0*
valueB:<
�
/gradients/layer1/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/layer1/add_grad/Shape!gradients/layer1/add_grad/Shape_1*
T0
�
gradients/layer1/add_grad/SumSum,gradients/layer1/activation_grad/SigmoidGrad/gradients/layer1/add_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
�
!gradients/layer1/add_grad/ReshapeReshapegradients/layer1/add_grad/Sumgradients/layer1/add_grad/Shape*
T0*
Tshape0
�
gradients/layer1/add_grad/Sum_1Sum,gradients/layer1/activation_grad/SigmoidGrad1gradients/layer1/add_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
�
#gradients/layer1/add_grad/Reshape_1Reshapegradients/layer1/add_grad/Sum_1!gradients/layer1/add_grad/Shape_1*
T0*
Tshape0
�
#gradients/layer1/MatMul_grad/MatMulMatMul!gradients/layer1/add_grad/Reshapelayer1/weight/read*
transpose_b(*
transpose_a( *
T0
�
%gradients/layer1/MatMul_grad/MatMul_1MatMulx!gradients/layer1/add_grad/Reshape*
transpose_b( *
transpose_a(*
T0
Q
apply_gradients/trace/zerosConst*
dtype0*
valueB	�<*    
n
apply_gradients/trace/traceVariable*
dtype0*
shape:	�<*
	container *
shared_name 
�
"apply_gradients/trace/trace/AssignAssignapply_gradients/trace/traceapply_gradients/trace/zeros*
validate_shape(*.
_class$
" loc:@apply_gradients/trace/trace*
use_locking(*
T0
�
 apply_gradients/trace/trace/readIdentityapply_gradients/trace/trace*.
_class$
" loc:@apply_gradients/trace/trace*
T0
S
apply_gradients/trace/mulMullambda apply_gradients/trace/trace/read*
T0
k
apply_gradients/trace/addAddapply_gradients/trace/mul%gradients/layer1/MatMul_grad/MatMul_1*
T0
�
apply_gradients/trace/AssignAssignapply_gradients/trace/traceapply_gradients/trace/add*
validate_shape(*.
_class$
" loc:@apply_gradients/trace/trace*
use_locking( *
T0
1
apply_gradients/mulMulalphadelta*
T0
X
apply_gradients/mul_1Mulapply_gradients/mulapply_gradients/trace/Assign*
T0
�
apply_gradients/AssignAdd	AssignAddlayer1/weightapply_gradients/mul_1* 
_class
loc:@layer1/weight*
use_locking( *
T0
N
apply_gradients/trace_1/zerosConst*
dtype0*
valueB<*    
k
apply_gradients/trace_1/traceVariable*
dtype0*
shape:<*
	container *
shared_name 
�
$apply_gradients/trace_1/trace/AssignAssignapply_gradients/trace_1/traceapply_gradients/trace_1/zeros*
validate_shape(*0
_class&
$"loc:@apply_gradients/trace_1/trace*
use_locking(*
T0
�
"apply_gradients/trace_1/trace/readIdentityapply_gradients/trace_1/trace*0
_class&
$"loc:@apply_gradients/trace_1/trace*
T0
W
apply_gradients/trace_1/mulMullambda"apply_gradients/trace_1/trace/read*
T0
m
apply_gradients/trace_1/addAddapply_gradients/trace_1/mul#gradients/layer1/add_grad/Reshape_1*
T0
�
apply_gradients/trace_1/AssignAssignapply_gradients/trace_1/traceapply_gradients/trace_1/add*
validate_shape(*0
_class&
$"loc:@apply_gradients/trace_1/trace*
use_locking( *
T0
3
apply_gradients/mul_2Mulalphadelta*
T0
\
apply_gradients/mul_3Mulapply_gradients/mul_2apply_gradients/trace_1/Assign*
T0
�
apply_gradients/AssignAdd_1	AssignAddlayer1/biasapply_gradients/mul_3*
_class
loc:@layer1/bias*
use_locking( *
T0
R
apply_gradients/trace_2/zerosConst*
dtype0*
valueB<*    
o
apply_gradients/trace_2/traceVariable*
dtype0*
shape
:<*
	container *
shared_name 
�
$apply_gradients/trace_2/trace/AssignAssignapply_gradients/trace_2/traceapply_gradients/trace_2/zeros*
validate_shape(*0
_class&
$"loc:@apply_gradients/trace_2/trace*
use_locking(*
T0
�
"apply_gradients/trace_2/trace/readIdentityapply_gradients/trace_2/trace*0
_class&
$"loc:@apply_gradients/trace_2/trace*
T0
W
apply_gradients/trace_2/mulMullambda"apply_gradients/trace_2/trace/read*
T0
o
apply_gradients/trace_2/addAddapply_gradients/trace_2/mul%gradients/layer2/MatMul_grad/MatMul_1*
T0
�
apply_gradients/trace_2/AssignAssignapply_gradients/trace_2/traceapply_gradients/trace_2/add*
validate_shape(*0
_class&
$"loc:@apply_gradients/trace_2/trace*
use_locking( *
T0
3
apply_gradients/mul_4Mulalphadelta*
T0
\
apply_gradients/mul_5Mulapply_gradients/mul_4apply_gradients/trace_2/Assign*
T0
�
apply_gradients/AssignAdd_2	AssignAddlayer2/weightapply_gradients/mul_5* 
_class
loc:@layer2/weight*
use_locking( *
T0
N
apply_gradients/trace_3/zerosConst*
dtype0*
valueB*    
k
apply_gradients/trace_3/traceVariable*
dtype0*
shape:*
	container *
shared_name 
�
$apply_gradients/trace_3/trace/AssignAssignapply_gradients/trace_3/traceapply_gradients/trace_3/zeros*
validate_shape(*0
_class&
$"loc:@apply_gradients/trace_3/trace*
use_locking(*
T0
�
"apply_gradients/trace_3/trace/readIdentityapply_gradients/trace_3/trace*0
_class&
$"loc:@apply_gradients/trace_3/trace*
T0
W
apply_gradients/trace_3/mulMullambda"apply_gradients/trace_3/trace/read*
T0
m
apply_gradients/trace_3/addAddapply_gradients/trace_3/mul#gradients/layer2/add_grad/Reshape_1*
T0
�
apply_gradients/trace_3/AssignAssignapply_gradients/trace_3/traceapply_gradients/trace_3/add*
validate_shape(*0
_class&
$"loc:@apply_gradients/trace_3/trace*
use_locking( *
T0
3
apply_gradients/mul_6Mulalphadelta*
T0
\
apply_gradients/mul_7Mulapply_gradients/mul_6apply_gradients/trace_3/Assign*
T0
�
apply_gradients/AssignAdd_3	AssignAddlayer2/biasapply_gradients/mul_7*
_class
loc:@layer2/bias*
use_locking( *
T0
�
trainNoOp
^AssignAdd^game/AssignAdd^game/AssignAdd_1^game/truediv^apply_gradients/AssignAdd^apply_gradients/AssignAdd_1^apply_gradients/AssignAdd_2^apply_gradients/AssignAdd_3
8

save/ConstConst*
dtype0*
valueB Bmodel
�
save/SaveV2/tensor_namesConst*
dtype0*�
value�B�Bapply_gradients/trace/traceBapply_gradients/trace_1/traceBapply_gradients/trace_2/traceBapply_gradients/trace_3/traceBgame/loss_sumBgame/one_game_stepBglobal_stepBlayer1/biasBlayer1/weightBlayer2/biasBlayer2/weight
]
save/SaveV2/shape_and_slicesConst*
dtype0*)
value BB B B B B B B B B B B 
�
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesapply_gradients/trace/traceapply_gradients/trace_1/traceapply_gradients/trace_2/traceapply_gradients/trace_3/tracegame/loss_sumgame/one_game_stepglobal_steplayer1/biaslayer1/weightlayer2/biaslayer2/weight*
dtypes
2
e
save/control_dependencyIdentity
save/Const^save/SaveV2*
_class
loc:@save/Const*
T0
c
save/RestoreV2/tensor_namesConst*
dtype0*0
value'B%Bapply_gradients/trace/trace
L
save/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
v
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2
�
save/AssignAssignapply_gradients/trace/tracesave/RestoreV2*
validate_shape(*.
_class$
" loc:@apply_gradients/trace/trace*
use_locking(*
T0
g
save/RestoreV2_1/tensor_namesConst*
dtype0*2
value)B'Bapply_gradients/trace_1/trace
N
!save/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
|
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2
�
save/Assign_1Assignapply_gradients/trace_1/tracesave/RestoreV2_1*
validate_shape(*0
_class&
$"loc:@apply_gradients/trace_1/trace*
use_locking(*
T0
g
save/RestoreV2_2/tensor_namesConst*
dtype0*2
value)B'Bapply_gradients/trace_2/trace
N
!save/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
|
save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2
�
save/Assign_2Assignapply_gradients/trace_2/tracesave/RestoreV2_2*
validate_shape(*0
_class&
$"loc:@apply_gradients/trace_2/trace*
use_locking(*
T0
g
save/RestoreV2_3/tensor_namesConst*
dtype0*2
value)B'Bapply_gradients/trace_3/trace
N
!save/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
|
save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
dtypes
2
�
save/Assign_3Assignapply_gradients/trace_3/tracesave/RestoreV2_3*
validate_shape(*0
_class&
$"loc:@apply_gradients/trace_3/trace*
use_locking(*
T0
W
save/RestoreV2_4/tensor_namesConst*
dtype0*"
valueBBgame/loss_sum
N
!save/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
|
save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
dtypes
2
�
save/Assign_4Assigngame/loss_sumsave/RestoreV2_4*
validate_shape(* 
_class
loc:@game/loss_sum*
use_locking(*
T0
\
save/RestoreV2_5/tensor_namesConst*
dtype0*'
valueBBgame/one_game_step
N
!save/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B 
|
save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
dtypes
2
�
save/Assign_5Assigngame/one_game_stepsave/RestoreV2_5*
validate_shape(*%
_class
loc:@game/one_game_step*
use_locking(*
T0
U
save/RestoreV2_6/tensor_namesConst*
dtype0* 
valueBBglobal_step
N
!save/RestoreV2_6/shape_and_slicesConst*
dtype0*
valueB
B 
|
save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2
�
save/Assign_6Assignglobal_stepsave/RestoreV2_6*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0
U
save/RestoreV2_7/tensor_namesConst*
dtype0* 
valueBBlayer1/bias
N
!save/RestoreV2_7/shape_and_slicesConst*
dtype0*
valueB
B 
|
save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
dtypes
2
�
save/Assign_7Assignlayer1/biassave/RestoreV2_7*
validate_shape(*
_class
loc:@layer1/bias*
use_locking(*
T0
W
save/RestoreV2_8/tensor_namesConst*
dtype0*"
valueBBlayer1/weight
N
!save/RestoreV2_8/shape_and_slicesConst*
dtype0*
valueB
B 
|
save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
dtypes
2
�
save/Assign_8Assignlayer1/weightsave/RestoreV2_8*
validate_shape(* 
_class
loc:@layer1/weight*
use_locking(*
T0
U
save/RestoreV2_9/tensor_namesConst*
dtype0* 
valueBBlayer2/bias
N
!save/RestoreV2_9/shape_and_slicesConst*
dtype0*
valueB
B 
|
save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
dtypes
2
�
save/Assign_9Assignlayer2/biassave/RestoreV2_9*
validate_shape(*
_class
loc:@layer2/bias*
use_locking(*
T0
X
save/RestoreV2_10/tensor_namesConst*
dtype0*"
valueBBlayer2/weight
O
"save/RestoreV2_10/shape_and_slicesConst*
dtype0*
valueB
B 

save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
dtypes
2
�
save/Assign_10Assignlayer2/weightsave/RestoreV2_10*
validate_shape(* 
_class
loc:@layer2/weight*
use_locking(*
T0
�
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10
�
initNoOp^global_step/Assign^layer1/weight/Assign^layer1/bias/Assign^layer2/weight/Assign^layer2/bias/Assign^game/one_game_step/Assign^game/loss_sum/Assign#^apply_gradients/trace/trace/Assign%^apply_gradients/trace_1/trace/Assign%^apply_gradients/trace_2/trace/Assign%^apply_gradients/trace_3/trace/Assign"