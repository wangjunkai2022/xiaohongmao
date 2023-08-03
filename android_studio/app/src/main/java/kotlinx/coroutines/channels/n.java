package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import io.sentry.protocol.y;
import java.util.concurrent.CancellationException;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.internal.LowPriorityInOverloadResolution;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.JobCancellationException;
import kotlinx.coroutines.q2;
import kotlinx.coroutines.y1;

/* compiled from: ChannelCoroutine.kt */
@Metadata(bv = {}, d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0010\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00020\u00030\u00022\b\u0012\u0004\u0012\u00028\u00000\u0004B-\u0012\u0006\u0010@\u001a\u00020?\u0012\f\u0010*\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0010A\u001a\u00020\u0007\u0012\u0006\u0010B\u001a\u00020\u0007¢\u0006\u0004\bC\u0010DJ\u0013\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0096\u0001J.\u0010\r\u001a\u00020\u00032#\u0010\f\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0005¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00030\tH\u0097\u0001J\u000f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000eH\u0096\u0003J\u0018\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00028\u0000H\u0097\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u0012\u0010\u0013\u001a\u0004\u0018\u00018\u0000H\u0097\u0001¢\u0006\u0004\b\u0013\u0010\u0014J\u0013\u0010\u0015\u001a\u00028\u0000H\u0096Aø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0016J\"\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00000\u0017H\u0096Aø\u0001\u0000ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u0018\u0010\u0016J\u0015\u0010\u0019\u001a\u0004\u0018\u00018\u0000H\u0097Aø\u0001\u0000¢\u0006\u0004\b\u0019\u0010\u0016J\u001b\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00028\u0000H\u0096Aø\u0001\u0000¢\u0006\u0004\b\u001a\u0010\u001bJ\u001f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00000\u0017H\u0096\u0001ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u001c\u0010\u0014J'\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00030\u00172\u0006\u0010\u0010\u001a\u00028\u0000H\u0096\u0001ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\b\u0010 \u001a\u00020\u0003H\u0016J\u0012\u0010!\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0007J\u0016\u0010$\u001a\u00020\u00032\u000e\u0010\u0006\u001a\n\u0018\u00010\"j\u0004\u0018\u0001`#J\u0010\u0010%\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016R \u0010*\u001a\b\u0012\u0004\u0012\u00028\u00000\u00048\u0004X\u0084\u0004¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)R\u0014\u0010-\u001a\u00020\u00078\u0016X\u0097\u0005¢\u0006\u0006\u001a\u0004\b+\u0010,R\u0014\u0010.\u001a\u00020\u00078\u0016X\u0097\u0005¢\u0006\u0006\u001a\u0004\b.\u0010,R\u0014\u0010/\u001a\u00020\u00078\u0016X\u0097\u0005¢\u0006\u0006\u001a\u0004\b/\u0010,R\u001a\u00103\u001a\b\u0012\u0004\u0012\u00028\u0000008\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\b1\u00102R#\u00105\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0017008\u0016X\u0096\u0005ø\u0001\u0000¢\u0006\u0006\u001a\u0004\b4\u00102R\u001c\u00107\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u0000008VX\u0097\u0005¢\u0006\u0006\u001a\u0004\b6\u00102R&\u0010<\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u000009088\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\b:\u0010;R\u0017\u0010>\u001a\b\u0012\u0004\u0012\u00028\u00000\u00048F¢\u0006\u0006\u001a\u0004\b=\u0010)\u0082\u0002\u000f\n\u0002\b\u0019\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u0006E"}, d2 = {"Lkotlinx/coroutines/channels/n;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/a;", "", "Lkotlinx/coroutines/channels/m;", "", "cause", "", "close", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "handler", "invokeOnClose", "Lkotlinx/coroutines/channels/o;", "iterator", "element", "offer", "(Ljava/lang/Object;)Z", "poll", "()Ljava/lang/Object;", "F", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/channels/q;", y.b.f83919g, "w", "send", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "v", "trySend-JP2dKIU", "(Ljava/lang/Object;)Ljava/lang/Object;", "trySend", "cancel", "b", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "d", "a0", "c", "Lkotlinx/coroutines/channels/m;", "p1", "()Lkotlinx/coroutines/channels/m;", "_channel", "e", "()Z", "isClosedForReceive", "isClosedForSend", "isEmpty", "Lkotlinx/coroutines/selects/d;", "o", "()Lkotlinx/coroutines/selects/d;", "onReceive", "t", "onReceiveCatching", "u", "onReceiveOrNull", "Lkotlinx/coroutines/selects/e;", "Lkotlinx/coroutines/channels/j0;", "getOnSend", "()Lkotlinx/coroutines/selects/e;", "onSend", "getChannel", "channel", "Lkotlin/coroutines/CoroutineContext;", "parentContext", "initParentJob", "active", "<init>", "(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/m;ZZ)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public class n<E> extends kotlinx.coroutines.a<Unit> implements m<E> {
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final m<E> f84905c;

    public n(@m8.g CoroutineContext coroutineContext, @m8.g m<E> mVar, boolean z9, boolean z10) {
        super(coroutineContext, z9, z10);
        this.f84905c = mVar;
    }

    @Override // kotlinx.coroutines.channels.f0
    @m8.h
    public Object F(@m8.g Continuation<? super E> continuation) {
        return this.f84905c.F(continuation);
    }

    @Override // kotlinx.coroutines.q2
    public void a0(@m8.g Throwable th) {
        CancellationException d12 = q2.d1(this, th, null, 1, null);
        this.f84905c.d(d12);
        Y(d12);
    }

    @Override // kotlinx.coroutines.q2, kotlinx.coroutines.j2, kotlinx.coroutines.channels.i
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    public final /* synthetic */ boolean b(Throwable th) {
        a0(new JobCancellationException(d0(), null, this));
        return true;
    }

    @Override // kotlinx.coroutines.q2, kotlinx.coroutines.j2, kotlinx.coroutines.channels.f0
    public /* synthetic */ void cancel() {
        a0(new JobCancellationException(d0(), null, this));
    }

    @Override // kotlinx.coroutines.channels.j0
    public boolean close(@m8.h Throwable th) {
        return this.f84905c.close(th);
    }

    @Override // kotlinx.coroutines.q2, kotlinx.coroutines.j2, kotlinx.coroutines.channels.i
    public final void d(@m8.h CancellationException cancellationException) {
        if (isCancelled()) {
            return;
        }
        if (cancellationException == null) {
            cancellationException = new JobCancellationException(d0(), null, this);
        }
        a0(cancellationException);
    }

    @Override // kotlinx.coroutines.channels.f0
    public boolean e() {
        return this.f84905c.e();
    }

    @m8.g
    public final m<E> getChannel() {
        return this;
    }

    @Override // kotlinx.coroutines.channels.j0
    @m8.g
    public kotlinx.coroutines.selects.e<E, j0<E>> getOnSend() {
        return this.f84905c.getOnSend();
    }

    @Override // kotlinx.coroutines.channels.j0
    @y1
    public void invokeOnClose(@m8.g Function1<? super Throwable, Unit> function1) {
        this.f84905c.invokeOnClose(function1);
    }

    @Override // kotlinx.coroutines.channels.j0
    public boolean isClosedForSend() {
        return this.f84905c.isClosedForSend();
    }

    @Override // kotlinx.coroutines.channels.f0
    public boolean isEmpty() {
        return this.f84905c.isEmpty();
    }

    @Override // kotlinx.coroutines.channels.f0
    @m8.g
    public o<E> iterator() {
        return this.f84905c.iterator();
    }

    @Override // kotlinx.coroutines.channels.f0
    @m8.g
    public kotlinx.coroutines.selects.d<E> o() {
        return this.f84905c.o();
    }

    @Override // kotlinx.coroutines.channels.j0
    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in the favour of 'trySend' method", replaceWith = @ReplaceWith(expression = "trySend(element).isSuccess", imports = {}))
    public boolean offer(E e4) {
        return this.f84905c.offer(e4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @m8.g
    public final m<E> p1() {
        return this.f84905c;
    }

    @Override // kotlinx.coroutines.channels.f0
    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in the favour of 'tryReceive'. Please note that the provided replacement does not rethrow channel's close cause as 'poll' did, for the precise replacement please refer to the 'poll' documentation", replaceWith = @ReplaceWith(expression = "tryReceive().getOrNull()", imports = {}))
    @m8.h
    public E poll() {
        return this.f84905c.poll();
    }

    @Override // kotlinx.coroutines.channels.j0
    @m8.h
    public Object send(E e4, @m8.g Continuation<? super Unit> continuation) {
        return this.f84905c.send(e4, continuation);
    }

    @Override // kotlinx.coroutines.channels.f0
    @m8.g
    public kotlinx.coroutines.selects.d<q<E>> t() {
        return this.f84905c.t();
    }

    @Override // kotlinx.coroutines.channels.j0
    @m8.g
    /* renamed from: trySend-JP2dKIU */
    public Object mo51trySendJP2dKIU(E e4) {
        return this.f84905c.mo51trySendJP2dKIU(e4);
    }

    @Override // kotlinx.coroutines.channels.f0
    @m8.g
    public kotlinx.coroutines.selects.d<E> u() {
        return this.f84905c.u();
    }

    @Override // kotlinx.coroutines.channels.f0
    @m8.g
    public Object v() {
        return this.f84905c.v();
    }

    @Override // kotlinx.coroutines.channels.f0
    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in favor of 'receiveCatching'. Please note that the provided replacement does not rethrow channel's close cause as 'receiveOrNull' did, for the detailed replacement please refer to the 'receiveOrNull' documentation", replaceWith = @ReplaceWith(expression = "receiveCatching().getOrNull()", imports = {}))
    @LowPriorityInOverloadResolution
    @m8.h
    public Object w(@m8.g Continuation<? super E> continuation) {
        return this.f84905c.w(continuation);
    }

    @Override // kotlinx.coroutines.channels.f0
    @m8.h
    public Object x(@m8.g Continuation<? super q<? extends E>> continuation) {
        Object x9 = this.f84905c.x(continuation);
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return x9;
    }
}
