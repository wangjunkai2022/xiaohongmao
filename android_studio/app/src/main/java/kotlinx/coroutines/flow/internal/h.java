package kotlinx.coroutines.flow.internal;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.channels.BufferOverflow;

/* compiled from: ChannelFlow.kt */
@Metadata(bv = {}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00000\u0002B3\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u000b\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u0013\u0010\u0014J&\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\t2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0014J\u000e\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000bH\u0016J!\u0010\u0010\u001a\u00020\u000f2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\rH\u0094@ø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0015"}, d2 = {"Lkotlinx/coroutines/flow/internal/h;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/internal/g;", "Lkotlin/coroutines/CoroutineContext;", "context", "", "capacity", "Lkotlinx/coroutines/channels/BufferOverflow;", "onBufferOverflow", "Lkotlinx/coroutines/flow/internal/d;", ContextChain.TAG_INFRA, "Lkotlinx/coroutines/flow/i;", "j", "Lkotlinx/coroutines/flow/j;", "collector", "", "r", "(Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "flow", "<init>", "(Lkotlinx/coroutines/flow/i;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class h<T> extends g<T, T> {
    public /* synthetic */ h(kotlinx.coroutines.flow.i iVar, CoroutineContext coroutineContext, int i4, BufferOverflow bufferOverflow, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(iVar, (i10 & 2) != 0 ? EmptyCoroutineContext.INSTANCE : coroutineContext, (i10 & 4) != 0 ? -3 : i4, (i10 & 8) != 0 ? BufferOverflow.SUSPEND : bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.internal.d
    @m8.g
    protected d<T> i(@m8.g CoroutineContext coroutineContext, int i4, @m8.g BufferOverflow bufferOverflow) {
        return new h(this.f85935d, coroutineContext, i4, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.internal.d
    @m8.g
    public kotlinx.coroutines.flow.i<T> j() {
        return (kotlinx.coroutines.flow.i<T>) this.f85935d;
    }

    @Override // kotlinx.coroutines.flow.internal.g
    @m8.h
    protected Object r(@m8.g kotlinx.coroutines.flow.j<? super T> jVar, @m8.g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object collect = this.f85935d.collect(jVar, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return collect == coroutine_suspended ? collect : Unit.INSTANCE;
    }

    public h(@m8.g kotlinx.coroutines.flow.i<? extends T> iVar, @m8.g CoroutineContext coroutineContext, int i4, @m8.g BufferOverflow bufferOverflow) {
        super(iVar, coroutineContext, i4, bufferOverflow);
    }
}
