package androidx.paging;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.i;
import kotlinx.coroutines.flow.k;
import kotlinx.coroutines.flow.n;
import m8.g;

/* compiled from: SimpleChannelFlow.kt */
@Metadata(bv = {}, d1 = {"\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001aM\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\b\"\u0004\b\u0000\u0010\u00002-\u0010\u0007\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0001¢\u0006\u0002\b\u0006H\u0000ø\u0001\u0000¢\u0006\u0004\b\t\u0010\n\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000b"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/Function2;", "Landroidx/paging/SimpleProducerScope;", "Lkotlin/coroutines/Continuation;", "", "", "Lkotlin/ExtensionFunctionType;", "block", "Lkotlinx/coroutines/flow/i;", "simpleChannelFlow", "(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/i;", "paging-common"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class SimpleChannelFlowKt {
    @g
    public static final <T> i<T> simpleChannelFlow(@g Function2<? super SimpleProducerScope<T>, ? super Continuation<? super Unit>, ? extends Object> block) {
        i<T> d4;
        Intrinsics.checkNotNullParameter(block, "block");
        d4 = n.d(k.I0(new SimpleChannelFlowKt$simpleChannelFlow$1(block, null)), -2, null, 2, null);
        return d4;
    }
}
