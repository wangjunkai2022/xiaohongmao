package androidx.paging;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.i;
import kotlinx.coroutines.flow.j;
import kotlinx.coroutines.flow.k;
import m8.g;
import m8.h;

/* compiled from: FlowExt.kt */
@Metadata(bv = {}, d1 = {"\u0000F\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a~\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\u0003\u001a\u00028\u00012F\u0010\u000b\u001aB\b\u0001\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\b\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0004H\u0000ø\u0001\u0000¢\u0006\u0004\b\f\u0010\r\u001ap\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00022F\u0010\u000b\u001aB\b\u0001\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\b\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0004H\u0000ø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u000f\u001ar\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022B\u0010\u0013\u001a>\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0010\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0004¢\u0006\u0002\b\u0012H\u0000ø\u0001\u0000¢\u0006\u0004\b\u0014\u0010\u000f\u001aj\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u000229\b\u0004\u0010\u0013\u001a3\b\u0001\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\b\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0015H\u0080\bø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\u0017\u001ad\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u000223\b\u0004\u0010\u0013\u001a-\b\u0001\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\b\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0015H\u0080\bø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u0017\u001a\u0084\u0001\u0010\u001f\u001a\b\u0012\u0004\u0012\u00028\u00020\u0002\"\u0004\b\u0000\u0010\u0019\"\u0004\b\u0001\u0010\u001a\"\u0004\b\u0002\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028\u00010\u00022?\b\u0004\u0010\u0013\u001a9\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0013\u0012\u00110\u001d¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\u001cH\u0080Hø\u0001\u0000¢\u0006\u0004\b\u001f\u0010 \"\u0014\u0010!\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006#"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlinx/coroutines/flow/i;", "initial", "Lkotlin/Function3;", "Lkotlin/ParameterName;", "name", "accumulator", "value", "Lkotlin/coroutines/Continuation;", "", "operation", "simpleScan", "(Lkotlinx/coroutines/flow/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/i;", "simpleRunningReduce", "(Lkotlinx/coroutines/flow/i;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/i;", "Lkotlinx/coroutines/flow/j;", "", "Lkotlin/ExtensionFunctionType;", "transform", "simpleTransformLatest", "Lkotlin/Function2;", "simpleFlatMapLatest", "(Lkotlinx/coroutines/flow/i;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/i;", "simpleMapLatest", "T1", "T2", "otherFlow", "Lkotlin/Function4;", "Landroidx/paging/CombineSource;", "updateFrom", "combineWithoutBatching", "(Lkotlinx/coroutines/flow/i;Lkotlinx/coroutines/flow/i;Lkotlin/jvm/functions/Function4;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "NULL", "Ljava/lang/Object;", "paging-common"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class FlowExtKt {
    @g
    private static final Object NULL = new Object();

    @h
    public static final <T1, T2, R> Object combineWithoutBatching(@g i<? extends T1> iVar, @g i<? extends T2> iVar2, @g Function4<? super T1, ? super T2, ? super CombineSource, ? super Continuation<? super R>, ? extends Object> function4, @g Continuation<? super i<? extends R>> continuation) {
        return SimpleChannelFlowKt.simpleChannelFlow(new FlowExtKt$combineWithoutBatching$2(iVar, iVar2, function4, null));
    }

    @g
    public static final <T, R> i<R> simpleFlatMapLatest(@g i<? extends T> iVar, @g Function2<? super T, ? super Continuation<? super i<? extends R>>, ? extends Object> transform) {
        Intrinsics.checkNotNullParameter(iVar, "<this>");
        Intrinsics.checkNotNullParameter(transform, "transform");
        return simpleTransformLatest(iVar, new FlowExtKt$simpleFlatMapLatest$1(transform, null));
    }

    @g
    public static final <T, R> i<R> simpleMapLatest(@g i<? extends T> iVar, @g Function2<? super T, ? super Continuation<? super R>, ? extends Object> transform) {
        Intrinsics.checkNotNullParameter(iVar, "<this>");
        Intrinsics.checkNotNullParameter(transform, "transform");
        return simpleTransformLatest(iVar, new FlowExtKt$simpleMapLatest$1(transform, null));
    }

    @g
    public static final <T> i<T> simpleRunningReduce(@g i<? extends T> iVar, @g Function3<? super T, ? super T, ? super Continuation<? super T>, ? extends Object> operation) {
        Intrinsics.checkNotNullParameter(iVar, "<this>");
        Intrinsics.checkNotNullParameter(operation, "operation");
        return k.I0(new FlowExtKt$simpleRunningReduce$1(iVar, operation, null));
    }

    @g
    public static final <T, R> i<R> simpleScan(@g i<? extends T> iVar, R r9, @g Function3<? super R, ? super T, ? super Continuation<? super R>, ? extends Object> operation) {
        Intrinsics.checkNotNullParameter(iVar, "<this>");
        Intrinsics.checkNotNullParameter(operation, "operation");
        return k.I0(new FlowExtKt$simpleScan$1(r9, iVar, operation, null));
    }

    @g
    public static final <T, R> i<R> simpleTransformLatest(@g i<? extends T> iVar, @g Function3<? super j<? super R>, ? super T, ? super Continuation<? super Unit>, ? extends Object> transform) {
        Intrinsics.checkNotNullParameter(iVar, "<this>");
        Intrinsics.checkNotNullParameter(transform, "transform");
        return SimpleChannelFlowKt.simpleChannelFlow(new FlowExtKt$simpleTransformLatest$1(iVar, transform, null));
    }
}
