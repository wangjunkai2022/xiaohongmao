package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.s0;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Channels.kt */
@Metadata(bv = {}, d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B;\u0012\f\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000\u0016\u0012\u0006\u0010&\u001a\u00020#\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b'\u0010(J\u000f\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0004\u0010\u0005J-\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0014¢\u0006\u0004\b\f\u0010\rJ\u0015\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J!\u0010\u0013\u001a\u00020\u00032\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011H\u0094@ø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\u0014J\u001d\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u00162\u0006\u0010\u0012\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J!\u0010\u001b\u001a\u00020\u00032\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028\u00000\u0019H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001e\u001a\u00020\u001dH\u0014¢\u0006\u0004\b\u001e\u0010\u001fR\u001a\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u0014\u0010&\u001a\u00020#8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006)"}, d2 = {"Lkotlinx/coroutines/flow/e;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/internal/d;", "", "n", "()V", "Lkotlin/coroutines/CoroutineContext;", "context", "", "capacity", "Lkotlinx/coroutines/channels/BufferOverflow;", "onBufferOverflow", ContextChain.TAG_INFRA, "(Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/internal/d;", "Lkotlinx/coroutines/flow/i;", "j", "()Lkotlinx/coroutines/flow/i;", "Lkotlinx/coroutines/channels/d0;", "scope", "h", "(Lkotlinx/coroutines/channels/d0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/s0;", "Lkotlinx/coroutines/channels/f0;", "m", "(Lkotlinx/coroutines/s0;)Lkotlinx/coroutines/channels/f0;", "Lkotlinx/coroutines/flow/j;", "collector", "collect", "(Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "f", "()Ljava/lang/String;", "d", "Lkotlinx/coroutines/channels/f0;", "channel", "", "e", "Z", "consume", "<init>", "(Lkotlinx/coroutines/channels/f0;ZLkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class e<T> extends kotlinx.coroutines.flow.internal.d<T> {

    /* renamed from: f  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f85857f = AtomicIntegerFieldUpdater.newUpdater(e.class, "consumed");
    @m8.g
    private volatile /* synthetic */ int consumed;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final kotlinx.coroutines.channels.f0<T> f85858d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f85859e;

    public /* synthetic */ e(kotlinx.coroutines.channels.f0 f0Var, boolean z9, CoroutineContext coroutineContext, int i4, BufferOverflow bufferOverflow, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(f0Var, z9, (i10 & 4) != 0 ? EmptyCoroutineContext.INSTANCE : coroutineContext, (i10 & 8) != 0 ? -3 : i4, (i10 & 16) != 0 ? BufferOverflow.SUSPEND : bufferOverflow);
    }

    private final void n() {
        if (this.f85859e) {
            if (!(f85857f.getAndSet(this, 1) == 0)) {
                throw new IllegalStateException("ReceiveChannel.consumeAsFlow can be collected just once".toString());
            }
        }
    }

    @Override // kotlinx.coroutines.flow.internal.d, kotlinx.coroutines.flow.i
    @m8.h
    public Object collect(@m8.g j<? super T> jVar, @m8.g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object coroutine_suspended2;
        if (this.f85911b == -3) {
            n();
            Object e4 = l.e(jVar, this.f85858d, this.f85859e, continuation);
            coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return e4 == coroutine_suspended2 ? e4 : Unit.INSTANCE;
        }
        Object collect = super.collect(jVar, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return collect == coroutine_suspended ? collect : Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.flow.internal.d
    @m8.g
    protected String f() {
        return Intrinsics.stringPlus("channel=", this.f85858d);
    }

    @Override // kotlinx.coroutines.flow.internal.d
    @m8.h
    protected Object h(@m8.g kotlinx.coroutines.channels.d0<? super T> d0Var, @m8.g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object e4 = l.e(new kotlinx.coroutines.flow.internal.u(d0Var), this.f85858d, this.f85859e, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return e4 == coroutine_suspended ? e4 : Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.flow.internal.d
    @m8.g
    protected kotlinx.coroutines.flow.internal.d<T> i(@m8.g CoroutineContext coroutineContext, int i4, @m8.g BufferOverflow bufferOverflow) {
        return new e(this.f85858d, this.f85859e, coroutineContext, i4, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.internal.d
    @m8.g
    public i<T> j() {
        return new e(this.f85858d, this.f85859e, null, 0, null, 28, null);
    }

    @Override // kotlinx.coroutines.flow.internal.d
    @m8.g
    public kotlinx.coroutines.channels.f0<T> m(@m8.g s0 s0Var) {
        n();
        if (this.f85911b == -3) {
            return this.f85858d;
        }
        return super.m(s0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public e(@m8.g kotlinx.coroutines.channels.f0<? extends T> f0Var, boolean z9, @m8.g CoroutineContext coroutineContext, int i4, @m8.g BufferOverflow bufferOverflow) {
        super(coroutineContext, i4, bufferOverflow);
        this.f85858d = f0Var;
        this.f85859e = z9;
        this.consumed = 0;
    }
}
