package kotlinx.coroutines.flow;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.BuilderInference;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.OverloadResolutionByLambdaReturnType;
import kotlin.PublishedApi;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.collections.IndexedValue;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.functions.Function6;
import kotlin.jvm.functions.Function7;
import kotlin.ranges.IntRange;
import kotlin.ranges.LongRange;
import kotlin.sequences.Sequence;
import kotlin.time.Duration;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.s0;
import kotlinx.coroutines.y1;
import kotlinx.coroutines.z1;

@Metadata(bv = {}, d1 = {"kotlinx/coroutines/flow/FlowKt__BuildersKt", "kotlinx/coroutines/flow/l", "kotlinx/coroutines/flow/FlowKt__CollectKt", "kotlinx/coroutines/flow/m", "kotlinx/coroutines/flow/n", "kotlinx/coroutines/flow/o", "kotlinx/coroutines/flow/p", "kotlinx/coroutines/flow/q", "kotlinx/coroutines/flow/FlowKt__EmittersKt", "kotlinx/coroutines/flow/FlowKt__ErrorsKt", "kotlinx/coroutines/flow/FlowKt__LimitKt", "kotlinx/coroutines/flow/FlowKt__MergeKt", "kotlinx/coroutines/flow/FlowKt__MigrationKt", "kotlinx/coroutines/flow/FlowKt__ReduceKt", "kotlinx/coroutines/flow/r", "kotlinx/coroutines/flow/FlowKt__TransformKt", "kotlinx/coroutines/flow/FlowKt__ZipKt"}, d2 = {}, k = 4, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class k {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    public static final String f86047a = "kotlinx.coroutines.flow.defaultConcurrency";

    @m8.h
    public static final <T> Object A(@m8.g i<? extends T> iVar, @m8.g Function2<? super T, ? super Continuation<? super Unit>, ? extends Object> function2, @m8.g Continuation<? super Unit> continuation) {
        return FlowKt__CollectKt.f(iVar, function2, continuation);
    }

    @z1
    @m8.g
    public static final <T, R> i<R> A0(@m8.g i<? extends T> iVar, @m8.g Function2<? super T, ? super Continuation<? super i<? extends R>>, ? extends Object> function2) {
        return FlowKt__MergeKt.a(iVar, function2);
    }

    @z1
    @m8.g
    public static final <T> i<T> A1(@m8.g i<? extends T> iVar, long j4) {
        return p.h(iVar, j4);
    }

    @m8.h
    public static final <T> Object B(@m8.g i<? extends T> iVar, @m8.g Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2, @m8.g Continuation<? super Unit> continuation) {
        return FlowKt__LimitKt.b(iVar, function2, continuation);
    }

    @y1
    @m8.g
    public static final <T, R> i<R> B0(@m8.g i<? extends T> iVar, @BuilderInference @m8.g Function2<? super T, ? super Continuation<? super i<? extends R>>, ? extends Object> function2) {
        return FlowKt__MergeKt.b(iVar, function2);
    }

    @z1
    @m8.g
    public static final <T> i<T> B1(@m8.g i<? extends T> iVar, long j4) {
        return p.i(iVar, j4);
    }

    @z1
    @m8.g
    public static final <T, R> i<R> C0(@m8.g i<? extends T> iVar, int i4, @m8.g Function2<? super T, ? super Continuation<? super i<? extends R>>, ? extends Object> function2) {
        return FlowKt__MergeKt.c(iVar, i4, function2);
    }

    @m8.g
    public static final <T, R> i<R> C1(@m8.g i<? extends T> iVar, R r9, @BuilderInference @m8.g Function3<? super R, ? super T, ? super Continuation<? super R>, ? extends Object> function3) {
        return FlowKt__TransformKt.j(iVar, r9, function3);
    }

    @m8.g
    public static final <T1, T2, R> i<R> D(@m8.g i<? extends T1> iVar, @m8.g i<? extends T2> iVar2, @m8.g Function3<? super T1, ? super T2, ? super Continuation<? super R>, ? extends Object> function3) {
        return FlowKt__ZipKt.c(iVar, iVar2, function3);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow has less verbose 'scan' shortcut", replaceWith = @ReplaceWith(expression = "scan(initial, operation)", imports = {}))
    @m8.g
    public static final <T, R> i<R> D1(@m8.g i<? extends T> iVar, R r9, @BuilderInference @m8.g Function3<? super R, ? super T, ? super Continuation<? super R>, ? extends Object> function3) {
        return FlowKt__MigrationKt.B(iVar, r9, function3);
    }

    @m8.g
    public static final <T1, T2, T3, R> i<R> E(@m8.g i<? extends T1> iVar, @m8.g i<? extends T2> iVar2, @m8.g i<? extends T3> iVar3, @BuilderInference @m8.g Function4<? super T1, ? super T2, ? super T3, ? super Continuation<? super R>, ? extends Object> function4) {
        return FlowKt__ZipKt.d(iVar, iVar2, iVar3, function4);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'flatten' is 'flattenConcat'", replaceWith = @ReplaceWith(expression = "flattenConcat()", imports = {}))
    @m8.g
    public static final <T> i<T> E0(@m8.g i<? extends i<? extends T>> iVar) {
        return FlowKt__MigrationKt.m(iVar);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "'scanReduce' was renamed to 'runningReduce' to be consistent with Kotlin standard library", replaceWith = @ReplaceWith(expression = "runningReduce(operation)", imports = {}))
    @m8.g
    public static final <T> i<T> E1(@m8.g i<? extends T> iVar, @m8.g Function3<? super T, ? super T, ? super Continuation<? super T>, ? extends Object> function3) {
        return FlowKt__MigrationKt.C(iVar, function3);
    }

    @m8.g
    public static final <T1, T2, T3, T4, R> i<R> F(@m8.g i<? extends T1> iVar, @m8.g i<? extends T2> iVar2, @m8.g i<? extends T3> iVar3, @m8.g i<? extends T4> iVar4, @m8.g Function5<? super T1, ? super T2, ? super T3, ? super T4, ? super Continuation<? super R>, ? extends Object> function5) {
        return FlowKt__ZipKt.e(iVar, iVar2, iVar3, iVar4, function5);
    }

    @z1
    @m8.g
    public static final <T> i<T> F0(@m8.g i<? extends i<? extends T>> iVar) {
        return FlowKt__MergeKt.e(iVar);
    }

    @m8.g
    public static final <T> x<T> F1(@m8.g i<? extends T> iVar, @m8.g s0 s0Var, @m8.g c0 c0Var, int i4) {
        return r.g(iVar, s0Var, c0Var, i4);
    }

    @m8.g
    public static final <T1, T2, T3, T4, T5, R> i<R> G(@m8.g i<? extends T1> iVar, @m8.g i<? extends T2> iVar2, @m8.g i<? extends T3> iVar3, @m8.g i<? extends T4> iVar4, @m8.g i<? extends T5> iVar5, @m8.g Function6<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super Continuation<? super R>, ? extends Object> function6) {
        return FlowKt__ZipKt.f(iVar, iVar2, iVar3, iVar4, iVar5, function6);
    }

    @z1
    @m8.g
    public static final <T> i<T> G0(@m8.g i<? extends i<? extends T>> iVar, int i4) {
        return FlowKt__MergeKt.f(iVar, i4);
    }

    @m8.h
    public static final <T> Object H1(@m8.g i<? extends T> iVar, @m8.g Continuation<? super T> continuation) {
        return FlowKt__ReduceKt.j(iVar, continuation);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'combineLatest' is 'combine'", replaceWith = @ReplaceWith(expression = "this.combine(other, transform)", imports = {}))
    @m8.g
    public static final <T1, T2, R> i<R> I(@m8.g i<? extends T1> iVar, @m8.g i<? extends T2> iVar2, @m8.g Function3<? super T1, ? super T2, ? super Continuation<? super R>, ? extends Object> function3) {
        return FlowKt__MigrationKt.b(iVar, iVar2, function3);
    }

    @m8.g
    public static final <T> i<T> I0(@BuilderInference @m8.g Function2<? super j<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return FlowKt__BuildersKt.n(function2);
    }

    @m8.h
    public static final <T> Object I1(@m8.g i<? extends T> iVar, @m8.g Continuation<? super T> continuation) {
        return FlowKt__ReduceKt.k(iVar, continuation);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'combineLatest' is 'combine'", replaceWith = @ReplaceWith(expression = "combine(this, other, other2, transform)", imports = {}))
    @m8.g
    public static final <T1, T2, T3, R> i<R> J(@m8.g i<? extends T1> iVar, @m8.g i<? extends T2> iVar2, @m8.g i<? extends T3> iVar3, @m8.g Function4<? super T1, ? super T2, ? super T3, ? super Continuation<? super R>, ? extends Object> function4) {
        return FlowKt__MigrationKt.c(iVar, iVar2, iVar3, function4);
    }

    @m8.g
    @JvmName(name = "flowCombine")
    public static final <T1, T2, R> i<R> J0(@m8.g i<? extends T1> iVar, @m8.g i<? extends T2> iVar2, @m8.g Function3<? super T1, ? super T2, ? super Continuation<? super R>, ? extends Object> function3) {
        return FlowKt__ZipKt.p(iVar, iVar2, function3);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'skip' is 'drop'", replaceWith = @ReplaceWith(expression = "drop(count)", imports = {}))
    @m8.g
    public static final <T> i<T> J1(@m8.g i<? extends T> iVar, int i4) {
        return FlowKt__MigrationKt.D(iVar, i4);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'combineLatest' is 'combine'", replaceWith = @ReplaceWith(expression = "combine(this, other, other2, other3, transform)", imports = {}))
    @m8.g
    public static final <T1, T2, T3, T4, R> i<R> K(@m8.g i<? extends T1> iVar, @m8.g i<? extends T2> iVar2, @m8.g i<? extends T3> iVar3, @m8.g i<? extends T4> iVar4, @m8.g Function5<? super T1, ? super T2, ? super T3, ? super T4, ? super Continuation<? super R>, ? extends Object> function5) {
        return FlowKt__MigrationKt.d(iVar, iVar2, iVar3, iVar4, function5);
    }

    @m8.g
    @JvmName(name = "flowCombineTransform")
    public static final <T1, T2, R> i<R> K0(@m8.g i<? extends T1> iVar, @m8.g i<? extends T2> iVar2, @BuilderInference @m8.g Function4<? super j<? super R>, ? super T1, ? super T2, ? super Continuation<? super Unit>, ? extends Object> function4) {
        return FlowKt__ZipKt.q(iVar, iVar2, function4);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'startWith' is 'onStart'. Use 'onStart { emit(value) }'", replaceWith = @ReplaceWith(expression = "onStart { emit(value) }", imports = {}))
    @m8.g
    public static final <T> i<T> K1(@m8.g i<? extends T> iVar, T t9) {
        return FlowKt__MigrationKt.E(iVar, t9);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'combineLatest' is 'combine'", replaceWith = @ReplaceWith(expression = "combine(this, other, other2, other3, transform)", imports = {}))
    @m8.g
    public static final <T1, T2, T3, T4, T5, R> i<R> L(@m8.g i<? extends T1> iVar, @m8.g i<? extends T2> iVar2, @m8.g i<? extends T3> iVar3, @m8.g i<? extends T4> iVar4, @m8.g i<? extends T5> iVar5, @m8.g Function6<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super Continuation<? super R>, ? extends Object> function6) {
        return FlowKt__MigrationKt.e(iVar, iVar2, iVar3, iVar4, iVar5, function6);
    }

    @m8.g
    public static final <T> i<T> L0(T t9) {
        return FlowKt__BuildersKt.o(t9);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'startWith' is 'onStart'. Use 'onStart { emitAll(other) }'", replaceWith = @ReplaceWith(expression = "onStart { emitAll(other) }", imports = {}))
    @m8.g
    public static final <T> i<T> L1(@m8.g i<? extends T> iVar, @m8.g i<? extends T> iVar2) {
        return FlowKt__MigrationKt.F(iVar, iVar2);
    }

    @m8.g
    public static final <T> i<T> M0(@m8.g T... tArr) {
        return FlowKt__BuildersKt.p(tArr);
    }

    @m8.h
    public static final <T> Object M1(@m8.g i<? extends T> iVar, @m8.g s0 s0Var, @m8.g Continuation<? super h0<? extends T>> continuation) {
        return r.i(iVar, s0Var, continuation);
    }

    @m8.g
    public static final <T1, T2, R> i<R> N(@m8.g i<? extends T1> iVar, @m8.g i<? extends T2> iVar2, @BuilderInference @m8.g Function4<? super j<? super R>, ? super T1, ? super T2, ? super Continuation<? super Unit>, ? extends Object> function4) {
        return FlowKt__ZipKt.i(iVar, iVar2, function4);
    }

    @m8.g
    public static final <T> i<T> N0(@m8.g i<? extends T> iVar, @m8.g CoroutineContext coroutineContext) {
        return n.h(iVar, coroutineContext);
    }

    @m8.g
    public static final <T> h0<T> N1(@m8.g i<? extends T> iVar, @m8.g s0 s0Var, @m8.g c0 c0Var, T t9) {
        return r.j(iVar, s0Var, c0Var, t9);
    }

    @m8.g
    public static final <T1, T2, T3, R> i<R> O(@m8.g i<? extends T1> iVar, @m8.g i<? extends T2> iVar2, @m8.g i<? extends T3> iVar3, @BuilderInference @m8.g Function5<? super j<? super R>, ? super T1, ? super T2, ? super T3, ? super Continuation<? super Unit>, ? extends Object> function5) {
        return FlowKt__ZipKt.j(iVar, iVar2, iVar3, function5);
    }

    @m8.h
    public static final <T, R> Object O0(@m8.g i<? extends T> iVar, R r9, @m8.g Function3<? super R, ? super T, ? super Continuation<? super R>, ? extends Object> function3, @m8.g Continuation<? super R> continuation) {
        return FlowKt__ReduceKt.e(iVar, r9, function3, continuation);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Use 'launchIn' with 'onEach', 'onCompletion' and 'catch' instead")
    public static final <T> void O1(@m8.g i<? extends T> iVar) {
        FlowKt__MigrationKt.G(iVar);
    }

    @m8.g
    public static final <T1, T2, T3, T4, R> i<R> P(@m8.g i<? extends T1> iVar, @m8.g i<? extends T2> iVar2, @m8.g i<? extends T3> iVar3, @m8.g i<? extends T4> iVar4, @BuilderInference @m8.g Function6<? super j<? super R>, ? super T1, ? super T2, ? super T3, ? super T4, ? super Continuation<? super Unit>, ? extends Object> function6) {
        return FlowKt__ZipKt.k(iVar, iVar2, iVar3, iVar4, function6);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'forEach' is 'collect'", replaceWith = @ReplaceWith(expression = "collect(action)", imports = {}))
    public static final <T> void P0(@m8.g i<? extends T> iVar, @m8.g Function2<? super T, ? super Continuation<? super Unit>, ? extends Object> function2) {
        FlowKt__MigrationKt.n(iVar, function2);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Use 'launchIn' with 'onEach', 'onCompletion' and 'catch' instead")
    public static final <T> void P1(@m8.g i<? extends T> iVar, @m8.g Function2<? super T, ? super Continuation<? super Unit>, ? extends Object> function2) {
        FlowKt__MigrationKt.H(iVar, function2);
    }

    @m8.g
    public static final <T1, T2, T3, T4, T5, R> i<R> Q(@m8.g i<? extends T1> iVar, @m8.g i<? extends T2> iVar2, @m8.g i<? extends T3> iVar3, @m8.g i<? extends T4> iVar4, @m8.g i<? extends T5> iVar5, @BuilderInference @m8.g Function7<? super j<? super R>, ? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super Continuation<? super Unit>, ? extends Object> function7) {
        return FlowKt__ZipKt.l(iVar, iVar2, iVar3, iVar4, iVar5, function7);
    }

    public static final int Q0() {
        return FlowKt__MergeKt.h();
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Use 'launchIn' with 'onEach', 'onCompletion' and 'catch' instead")
    public static final <T> void Q1(@m8.g i<? extends T> iVar, @m8.g Function2<? super T, ? super Continuation<? super Unit>, ? extends Object> function2, @m8.g Function2<? super Throwable, ? super Continuation<? super Unit>, ? extends Object> function22) {
        FlowKt__MigrationKt.I(iVar, function2, function22);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Use 'flowOn' instead")
    @m8.g
    public static final <T> i<T> R1(@m8.g i<? extends T> iVar, @m8.g CoroutineContext coroutineContext) {
        return FlowKt__MigrationKt.J(iVar, coroutineContext);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'compose' is 'let'", replaceWith = @ReplaceWith(expression = "let(transformer)", imports = {}))
    @m8.g
    public static final <T, R> i<R> S(@m8.g i<? extends T> iVar, @m8.g Function1<? super i<? extends T>, ? extends i<? extends R>> function1) {
        return FlowKt__MigrationKt.f(iVar, function1);
    }

    @m8.h
    public static final <T> Object S0(@m8.g i<? extends T> iVar, @m8.g Continuation<? super T> continuation) {
        return FlowKt__ReduceKt.g(iVar, continuation);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogues of 'switchMap' are 'transformLatest', 'flatMapLatest' and 'mapLatest'", replaceWith = @ReplaceWith(expression = "this.flatMapLatest(transform)", imports = {}))
    @m8.g
    public static final <T, R> i<R> S1(@m8.g i<? extends T> iVar, @m8.g Function2<? super T, ? super Continuation<? super i<? extends R>>, ? extends Object> function2) {
        return FlowKt__MigrationKt.K(iVar, function2);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'concatMap' is 'flatMapConcat'", replaceWith = @ReplaceWith(expression = "flatMapConcat(mapper)", imports = {}))
    @m8.g
    public static final <T, R> i<R> T(@m8.g i<? extends T> iVar, @m8.g Function1<? super T, ? extends i<? extends R>> function1) {
        return FlowKt__MigrationKt.g(iVar, function1);
    }

    @m8.h
    public static final <T> Object T0(@m8.g i<? extends T> iVar, @m8.g Continuation<? super T> continuation) {
        return FlowKt__ReduceKt.h(iVar, continuation);
    }

    @m8.g
    public static final <T> i<T> T1(@m8.g i<? extends T> iVar, int i4) {
        return FlowKt__LimitKt.g(iVar, i4);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'concatWith' is 'onCompletion'. Use 'onCompletion { emit(value) }'", replaceWith = @ReplaceWith(expression = "onCompletion { emit(value) }", imports = {}))
    @m8.g
    public static final <T> i<T> U(@m8.g i<? extends T> iVar, T t9) {
        return FlowKt__MigrationKt.h(iVar, t9);
    }

    @m8.g
    public static final <T> j2 U0(@m8.g i<? extends T> iVar, @m8.g s0 s0Var) {
        return FlowKt__CollectKt.h(iVar, s0Var);
    }

    @m8.g
    public static final <T> i<T> U1(@m8.g i<? extends T> iVar, @m8.g Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2) {
        return FlowKt__LimitKt.h(iVar, function2);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'concatWith' is 'onCompletion'. Use 'onCompletion { if (it == null) emitAll(other) }'", replaceWith = @ReplaceWith(expression = "onCompletion { if (it == null) emitAll(other) }", imports = {}))
    @m8.g
    public static final <T> i<T> V(@m8.g i<? extends T> iVar, @m8.g i<? extends T> iVar2) {
        return FlowKt__MigrationKt.i(iVar, iVar2);
    }

    @m8.g
    public static final <T, R> i<R> V0(@m8.g i<? extends T> iVar, @m8.g Function2<? super T, ? super Continuation<? super R>, ? extends Object> function2) {
        return FlowKt__TransformKt.e(iVar, function2);
    }

    @m8.h
    public static final <T, C extends Collection<? super T>> Object V1(@m8.g i<? extends T> iVar, @m8.g C c10, @m8.g Continuation<? super C> continuation) {
        return m.a(iVar, c10, continuation);
    }

    @m8.g
    public static final <T> i<T> W(@m8.g i<? extends T> iVar) {
        return n.g(iVar);
    }

    @y1
    @m8.g
    public static final <T, R> i<R> W0(@m8.g i<? extends T> iVar, @BuilderInference @m8.g Function2<? super T, ? super Continuation<? super R>, ? extends Object> function2) {
        return FlowKt__MergeKt.k(iVar, function2);
    }

    @m8.h
    public static final <T> Object W1(@m8.g i<? extends T> iVar, @m8.g List<T> list, @m8.g Continuation<? super List<? extends T>> continuation) {
        return m.b(iVar, list, continuation);
    }

    @m8.g
    public static final <T> i<T> X(@m8.g kotlinx.coroutines.channels.f0<? extends T> f0Var) {
        return l.c(f0Var);
    }

    @m8.g
    public static final <T, R> i<R> X0(@m8.g i<? extends T> iVar, @m8.g Function2<? super T, ? super Continuation<? super R>, ? extends Object> function2) {
        return FlowKt__TransformKt.f(iVar, function2);
    }

    @m8.h
    public static final <T> Object Y(@m8.g i<? extends T> iVar, @m8.g Continuation<? super Integer> continuation) {
        return o.a(iVar, continuation);
    }

    @m8.g
    public static final <T> i<T> Y0(@m8.g Iterable<? extends i<? extends T>> iterable) {
        return FlowKt__MergeKt.l(iterable);
    }

    @m8.h
    public static final <T> Object Y1(@m8.g i<? extends T> iVar, @m8.g Set<T> set, @m8.g Continuation<? super Set<? extends T>> continuation) {
        return m.d(iVar, set, continuation);
    }

    @m8.h
    public static final <T> Object Z(@m8.g i<? extends T> iVar, @m8.g Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2, @m8.g Continuation<? super Integer> continuation) {
        return o.b(iVar, function2, continuation);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'merge' is 'flattenConcat'", replaceWith = @ReplaceWith(expression = "flattenConcat()", imports = {}))
    @m8.g
    public static final <T> i<T> Z0(@m8.g i<? extends i<? extends T>> iVar) {
        return FlowKt__MigrationKt.o(iVar);
    }

    @m8.g
    public static final <T> i<T> a(@m8.g Iterable<? extends T> iterable) {
        return FlowKt__BuildersKt.a(iterable);
    }

    @z1
    @m8.g
    public static final <T> i<T> a0(@m8.g i<? extends T> iVar, long j4) {
        return p.a(iVar, j4);
    }

    @m8.g
    public static final <T> i<T> a1(@m8.g i<? extends T>... iVarArr) {
        return FlowKt__MergeKt.m(iVarArr);
    }

    @m8.g
    public static final <T, R> i<R> a2(@m8.g i<? extends T> iVar, @BuilderInference @m8.g Function3<? super j<? super R>, ? super T, ? super Continuation<? super Unit>, ? extends Object> function3) {
        return FlowKt__EmittersKt.g(iVar, function3);
    }

    @m8.g
    public static final <T> i<T> b(@m8.g Iterator<? extends T> it) {
        return FlowKt__BuildersKt.b(it);
    }

    @z1
    @m8.g
    @OverloadResolutionByLambdaReturnType
    public static final <T> i<T> b0(@m8.g i<? extends T> iVar, @m8.g Function1<? super T, Long> function1) {
        return p.b(iVar, function1);
    }

    @m8.g
    public static final Void b1() {
        return FlowKt__MigrationKt.p();
    }

    @y1
    @m8.g
    public static final <T, R> i<R> b2(@m8.g i<? extends T> iVar, @BuilderInference @m8.g Function3<? super j<? super R>, ? super T, ? super Continuation<? super Unit>, ? extends Object> function3) {
        return FlowKt__MergeKt.n(iVar, function3);
    }

    @z1
    @m8.g
    public static final <T> i<T> c(@m8.g Function0<? extends T> function0) {
        return FlowKt__BuildersKt.c(function0);
    }

    @z1
    @m8.g
    public static final <T> i<T> c0(@m8.g i<? extends T> iVar, long j4) {
        return p.c(iVar, j4);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Collect flow in the desired context instead")
    @m8.g
    public static final <T> i<T> c1(@m8.g i<? extends T> iVar, @m8.g CoroutineContext coroutineContext) {
        return FlowKt__MigrationKt.q(iVar, coroutineContext);
    }

    @m8.g
    public static final <T, R> i<R> c2(@m8.g i<? extends T> iVar, @BuilderInference @m8.g Function3<? super j<? super R>, ? super T, ? super Continuation<? super Boolean>, ? extends Object> function3) {
        return FlowKt__LimitKt.i(iVar, function3);
    }

    @z1
    @m8.g
    public static final <T> i<T> d(@m8.g Function1<? super Continuation<? super T>, ? extends Object> function1) {
        return FlowKt__BuildersKt.d(function1);
    }

    @z1
    @JvmName(name = "debounceDuration")
    @m8.g
    @OverloadResolutionByLambdaReturnType
    public static final <T> i<T> d0(@m8.g i<? extends T> iVar, @m8.g Function1<? super T, Duration> function1) {
        return p.d(iVar, function1);
    }

    @m8.g
    public static final <T> i<T> d1(@m8.g i<? extends T> iVar, @m8.g Function3<? super j<? super T>, ? super Throwable, ? super Continuation<? super Unit>, ? extends Object> function3) {
        return FlowKt__EmittersKt.d(iVar, function3);
    }

    @PublishedApi
    @m8.g
    public static final <T, R> i<R> d2(@m8.g i<? extends T> iVar, @BuilderInference @m8.g Function3<? super j<? super R>, ? super T, ? super Continuation<? super Unit>, ? extends Object> function3) {
        return FlowKt__EmittersKt.h(iVar, function3);
    }

    @m8.g
    public static final i<Integer> e(@m8.g IntRange intRange) {
        return FlowKt__BuildersKt.e(intRange);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Use 'onEach { delay(timeMillis) }'", replaceWith = @ReplaceWith(expression = "onEach { delay(timeMillis) }", imports = {}))
    @m8.g
    public static final <T> i<T> e0(@m8.g i<? extends T> iVar, long j4) {
        return FlowKt__MigrationKt.j(iVar, j4);
    }

    @m8.g
    public static final <T> i<T> e1(@m8.g i<? extends T> iVar, @m8.g Function2<? super T, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return FlowKt__TransformKt.g(iVar, function2);
    }

    @m8.g
    public static final <T> i<IndexedValue<T>> e2(@m8.g i<? extends T> iVar) {
        return FlowKt__TransformKt.k(iVar);
    }

    @m8.g
    public static final i<Long> f(@m8.g LongRange longRange) {
        return FlowKt__BuildersKt.f(longRange);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Use 'onStart { delay(timeMillis) }'", replaceWith = @ReplaceWith(expression = "onStart { delay(timeMillis) }", imports = {}))
    @m8.g
    public static final <T> i<T> f0(@m8.g i<? extends T> iVar, long j4) {
        return FlowKt__MigrationKt.k(iVar, j4);
    }

    @m8.g
    public static final <T> i<T> f1(@m8.g i<? extends T> iVar, @m8.g Function2<? super j<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return FlowKt__EmittersKt.e(iVar, function2);
    }

    @m8.g
    public static final <T1, T2, R> i<R> f2(@m8.g i<? extends T1> iVar, @m8.g i<? extends T2> iVar2, @m8.g Function3<? super T1, ? super T2, ? super Continuation<? super R>, ? extends Object> function3) {
        return FlowKt__ZipKt.s(iVar, iVar2, function3);
    }

    @m8.g
    public static final <T> i<T> g(@m8.g Sequence<? extends T> sequence) {
        return FlowKt__BuildersKt.g(sequence);
    }

    @m8.g
    public static final <T> i<T> g0(@m8.g i<? extends T> iVar) {
        return q.a(iVar);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'onErrorXxx' is 'catch'. Use 'catch { emitAll(fallback) }'", replaceWith = @ReplaceWith(expression = "catch { emitAll(fallback) }", imports = {}))
    @m8.g
    public static final <T> i<T> g1(@m8.g i<? extends T> iVar, @m8.g i<? extends T> iVar2) {
        return FlowKt__MigrationKt.r(iVar, iVar2);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "'BroadcastChannel' is obsolete and all corresponding operators are deprecated in the favour of StateFlow and SharedFlow")
    @m8.g
    public static final <T> i<T> h(@m8.g kotlinx.coroutines.channels.i<T> iVar) {
        return l.b(iVar);
    }

    @m8.g
    public static final <T> i<T> h0(@m8.g i<? extends T> iVar, @m8.g Function2<? super T, ? super T, Boolean> function2) {
        return q.b(iVar, function2);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'onErrorXxx' is 'catch'. Use 'catch { emitAll(fallback) }'", replaceWith = @ReplaceWith(expression = "catch { emitAll(fallback) }", imports = {}))
    @m8.g
    public static final <T> i<T> h1(@m8.g i<? extends T> iVar, @m8.g i<? extends T> iVar2) {
        return FlowKt__MigrationKt.s(iVar, iVar2);
    }

    @m8.g
    public static final i<Integer> i(@m8.g int[] iArr) {
        return FlowKt__BuildersKt.h(iArr);
    }

    @m8.g
    public static final <T, K> i<T> i0(@m8.g i<? extends T> iVar, @m8.g Function1<? super T, ? extends K> function1) {
        return q.c(iVar, function1);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'onErrorXxx' is 'catch'. Use 'catch { emit(fallback) }'", replaceWith = @ReplaceWith(expression = "catch { emit(fallback) }", imports = {}))
    @m8.g
    public static final <T> i<T> i1(@m8.g i<? extends T> iVar, T t9) {
        return FlowKt__MigrationKt.t(iVar, t9);
    }

    @m8.g
    public static final i<Long> j(@m8.g long[] jArr) {
        return FlowKt__BuildersKt.i(jArr);
    }

    @m8.g
    public static final <T> i<T> j0(@m8.g i<? extends T> iVar, int i4) {
        return FlowKt__LimitKt.d(iVar, i4);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'onErrorXxx' is 'catch'. Use 'catch { e -> if (predicate(e)) emit(fallback) else throw e }'", replaceWith = @ReplaceWith(expression = "catch { e -> if (predicate(e)) emit(fallback) else throw e }", imports = {}))
    @m8.g
    public static final <T> i<T> j1(@m8.g i<? extends T> iVar, T t9, @m8.g Function1<? super Throwable, Boolean> function1) {
        return FlowKt__MigrationKt.u(iVar, t9, function1);
    }

    @m8.g
    public static final <T> i<T> k(@m8.g T[] tArr) {
        return FlowKt__BuildersKt.j(tArr);
    }

    @m8.g
    public static final <T> i<T> k0(@m8.g i<? extends T> iVar, @m8.g Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2) {
        return FlowKt__LimitKt.e(iVar, function2);
    }

    @m8.g
    public static final <T> x<T> l(@m8.g s<T> sVar) {
        return r.a(sVar);
    }

    @m8.h
    public static final <T> Object l0(@m8.g j<? super T> jVar, @m8.g kotlinx.coroutines.channels.f0<? extends T> f0Var, @m8.g Continuation<? super Unit> continuation) {
        return l.d(jVar, f0Var, continuation);
    }

    @m8.g
    public static final <T> i<T> l1(@m8.g i<? extends T> iVar, @m8.g Function2<? super j<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return FlowKt__EmittersKt.f(iVar, function2);
    }

    @m8.g
    public static final <T> h0<T> m(@m8.g t<T> tVar) {
        return r.b(tVar);
    }

    @m8.h
    public static final <T> Object m0(@m8.g j<? super T> jVar, @m8.g i<? extends T> iVar, @m8.g Continuation<? super Unit> continuation) {
        return FlowKt__CollectKt.g(jVar, iVar, continuation);
    }

    @m8.g
    public static final <T> x<T> m1(@m8.g x<? extends T> xVar, @m8.g Function2<? super j<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return r.f(xVar, function2);
    }

    @m8.g
    public static final <T> i<T> n0() {
        return FlowKt__BuildersKt.m();
    }

    @z1
    @m8.g
    public static final <T> kotlinx.coroutines.channels.f0<T> n1(@m8.g i<? extends T> iVar, @m8.g s0 s0Var) {
        return l.f(iVar, s0Var);
    }

    @m8.g
    public static final <T> i<T> o(@m8.g i<? extends T> iVar, int i4, @m8.g BufferOverflow bufferOverflow) {
        return n.b(iVar, i4, bufferOverflow);
    }

    public static final void o0(@m8.g j<?> jVar) {
        FlowKt__EmittersKt.b(jVar);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'publish()' is 'shareIn'. \npublish().connect() is the default strategy (no extra call is needed), \npublish().autoConnect() translates to 'started = SharingStared.Lazily' argument, \npublish().refCount() translates to 'started = SharingStared.WhileSubscribed()' argument.", replaceWith = @ReplaceWith(expression = "this.shareIn(scope, 0)", imports = {}))
    @m8.g
    public static final <T> i<T> o1(@m8.g i<? extends T> iVar) {
        return FlowKt__MigrationKt.w(iVar);
    }

    @m8.g
    public static final <T> i<T> p0(@m8.g i<? extends T> iVar, @m8.g Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2) {
        return FlowKt__TransformKt.a(iVar, function2);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'publish(bufferSize)' is 'buffer' followed by 'shareIn'. \npublish().connect() is the default strategy (no extra call is needed), \npublish().autoConnect() translates to 'started = SharingStared.Lazily' argument, \npublish().refCount() translates to 'started = SharingStared.WhileSubscribed()' argument.", replaceWith = @ReplaceWith(expression = "this.buffer(bufferSize).shareIn(scope, 0)", imports = {}))
    @m8.g
    public static final <T> i<T> p1(@m8.g i<? extends T> iVar, int i4) {
        return FlowKt__MigrationKt.x(iVar, i4);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Collect flow in the desired context instead")
    @m8.g
    public static final <T> i<T> q1(@m8.g i<? extends T> iVar, @m8.g CoroutineContext coroutineContext) {
        return FlowKt__MigrationKt.y(iVar, coroutineContext);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'cache()' is 'shareIn' with unlimited replay and 'started = SharingStared.Lazily' argument'", replaceWith = @ReplaceWith(expression = "this.shareIn(scope, Int.MAX_VALUE, started = SharingStared.Lazily)", imports = {}))
    @m8.g
    public static final <T> i<T> r(@m8.g i<? extends T> iVar) {
        return FlowKt__MigrationKt.a(iVar);
    }

    @m8.g
    public static final <T> i<T> r0(@m8.g i<? extends T> iVar, @m8.g Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2) {
        return FlowKt__TransformKt.c(iVar, function2);
    }

    @m8.g
    public static final <T> i<T> r1(@m8.g kotlinx.coroutines.channels.f0<? extends T> f0Var) {
        return l.g(f0Var);
    }

    @m8.g
    public static final <T> i<T> s(@BuilderInference @m8.g Function2<? super kotlinx.coroutines.channels.d0<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return FlowKt__BuildersKt.k(function2);
    }

    @m8.g
    public static final <T> i<T> s0(@m8.g i<? extends T> iVar) {
        return FlowKt__TransformKt.d(iVar);
    }

    @m8.h
    public static final <S, T extends S> Object s1(@m8.g i<? extends T> iVar, @m8.g Function3<? super S, ? super T, ? super Continuation<? super S>, ? extends Object> function3, @m8.g Continuation<? super S> continuation) {
        return FlowKt__ReduceKt.i(iVar, function3, continuation);
    }

    @m8.g
    public static final <T> i<T> t(@m8.g i<? extends T> iVar) {
        return n.e(iVar);
    }

    @m8.h
    public static final <T> Object t0(@m8.g i<? extends T> iVar, @m8.g Continuation<? super T> continuation) {
        return FlowKt__ReduceKt.a(iVar, continuation);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'replay()' is 'shareIn' with unlimited replay. \nreplay().connect() is the default strategy (no extra call is needed), \nreplay().autoConnect() translates to 'started = SharingStared.Lazily' argument, \nreplay().refCount() translates to 'started = SharingStared.WhileSubscribed()' argument.", replaceWith = @ReplaceWith(expression = "this.shareIn(scope, Int.MAX_VALUE)", imports = {}))
    @m8.g
    public static final <T> i<T> t1(@m8.g i<? extends T> iVar) {
        return FlowKt__MigrationKt.z(iVar);
    }

    @m8.g
    public static final <T> i<T> u(@m8.g i<? extends T> iVar, @m8.g Function3<? super j<? super T>, ? super Throwable, ? super Continuation<? super Unit>, ? extends Object> function3) {
        return FlowKt__ErrorsKt.a(iVar, function3);
    }

    @m8.h
    public static final <T> Object u0(@m8.g i<? extends T> iVar, @m8.g Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2, @m8.g Continuation<? super T> continuation) {
        return FlowKt__ReduceKt.b(iVar, function2, continuation);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'replay(bufferSize)' is 'shareIn' with the specified replay parameter. \nreplay().connect() is the default strategy (no extra call is needed), \nreplay().autoConnect() translates to 'started = SharingStared.Lazily' argument, \nreplay().refCount() translates to 'started = SharingStared.WhileSubscribed()' argument.", replaceWith = @ReplaceWith(expression = "this.shareIn(scope, bufferSize)", imports = {}))
    @m8.g
    public static final <T> i<T> u1(@m8.g i<? extends T> iVar, int i4) {
        return FlowKt__MigrationKt.A(iVar, i4);
    }

    @m8.h
    public static final <T> Object v(@m8.g i<? extends T> iVar, @m8.g j<? super T> jVar, @m8.g Continuation<? super Throwable> continuation) {
        return FlowKt__ErrorsKt.b(iVar, jVar, continuation);
    }

    @m8.h
    public static final <T> Object v0(@m8.g i<? extends T> iVar, @m8.g Continuation<? super T> continuation) {
        return FlowKt__ReduceKt.c(iVar, continuation);
    }

    @m8.g
    public static final <T> i<T> v1(@m8.g i<? extends T> iVar, long j4, @m8.g Function2<? super Throwable, ? super Continuation<? super Boolean>, ? extends Object> function2) {
        return FlowKt__ErrorsKt.e(iVar, j4, function2);
    }

    @m8.g
    public static final <T> i<T> w(@BuilderInference @m8.g Function2<? super kotlinx.coroutines.channels.d0<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return FlowKt__BuildersKt.l(function2);
    }

    @m8.h
    public static final <T> Object w0(@m8.g i<? extends T> iVar, @m8.g Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2, @m8.g Continuation<? super T> continuation) {
        return FlowKt__ReduceKt.d(iVar, function2, continuation);
    }

    @m8.h
    public static final Object x(@m8.g i<?> iVar, @m8.g Continuation<? super Unit> continuation) {
        return FlowKt__CollectKt.a(iVar, continuation);
    }

    @m8.g
    public static final kotlinx.coroutines.channels.f0<Unit> x0(@m8.g s0 s0Var, long j4, long j10) {
        return p.f(s0Var, j4, j10);
    }

    @m8.g
    public static final <T> i<T> x1(@m8.g i<? extends T> iVar, @m8.g Function4<? super j<? super T>, ? super Throwable, ? super Long, ? super Continuation<? super Boolean>, ? extends Object> function4) {
        return FlowKt__ErrorsKt.g(iVar, function4);
    }

    @m8.g
    public static final <T, R> i<R> y1(@m8.g i<? extends T> iVar, R r9, @BuilderInference @m8.g Function3<? super R, ? super T, ? super Continuation<? super R>, ? extends Object> function3) {
        return FlowKt__TransformKt.h(iVar, r9, function3);
    }

    @m8.h
    public static final <T> Object z(@m8.g i<? extends T> iVar, @m8.g Function3<? super Integer, ? super T, ? super Continuation<? super Unit>, ? extends Object> function3, @m8.g Continuation<? super Unit> continuation) {
        return FlowKt__CollectKt.d(iVar, function3, continuation);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue is 'flatMapConcat'", replaceWith = @ReplaceWith(expression = "flatMapConcat(mapper)", imports = {}))
    @m8.g
    public static final <T, R> i<R> z0(@m8.g i<? extends T> iVar, @m8.g Function2<? super T, ? super Continuation<? super i<? extends R>>, ? extends Object> function2) {
        return FlowKt__MigrationKt.l(iVar, function2);
    }

    @m8.g
    public static final <T> i<T> z1(@m8.g i<? extends T> iVar, @m8.g Function3<? super T, ? super T, ? super Continuation<? super T>, ? extends Object> function3) {
        return FlowKt__TransformKt.i(iVar, function3);
    }
}
