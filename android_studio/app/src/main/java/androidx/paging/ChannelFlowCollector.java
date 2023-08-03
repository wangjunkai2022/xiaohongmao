package androidx.paging;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.j0;
import kotlinx.coroutines.flow.j;
import m8.g;
import m8.h;

/* compiled from: FlowExt.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u0015\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007¢\u0006\u0004\b\f\u0010\rJ\u001b\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006R\u001d\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000e"}, d2 = {"Landroidx/paging/ChannelFlowCollector;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/j;", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/channels/j0;", "channel", "Lkotlinx/coroutines/channels/j0;", "getChannel", "()Lkotlinx/coroutines/channels/j0;", "<init>", "(Lkotlinx/coroutines/channels/j0;)V", "paging-common"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class ChannelFlowCollector<T> implements j<T> {
    @g
    private final j0<T> channel;

    /* JADX WARN: Multi-variable type inference failed */
    public ChannelFlowCollector(@g j0<? super T> channel) {
        Intrinsics.checkNotNullParameter(channel, "channel");
        this.channel = channel;
    }

    @Override // kotlinx.coroutines.flow.j
    @h
    public Object emit(T t9, @g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object send = getChannel().send(t9, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return send == coroutine_suspended ? send : Unit.INSTANCE;
    }

    @g
    public final j0<T> getChannel() {
        return this.channel;
    }
}
