package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import io.sentry.protocol.f;
import java.util.concurrent.CancellationException;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.JobCancellationException;
import kotlinx.coroutines.channels.j0;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.p0;
import kotlinx.coroutines.q2;
import kotlinx.coroutines.y1;

/* compiled from: Broadcast.kt */
@Metadata(bv = {}, d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0012\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00020\u00030\u00022\b\u0012\u0004\u0012\u00028\u00000\u00042\b\u0012\u0004\u0012\u00028\u00000\u0005B%\u0012\u0006\u00106\u001a\u000205\u0012\f\u0010(\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u00107\u001a\u00020\u000e¢\u0006\u0004\b8\u00109J.\u0010\f\u001a\u00020\u00032#\u0010\u000b\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00030\u0006H\u0097\u0001J\u0018\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00028\u0000H\u0097\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011H\u0096\u0001J\u001b\u0010\u0013\u001a\u00020\u00032\u0006\u0010\r\u001a\u00028\u0000H\u0096Aø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\u0014J'\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00030\u00152\u0006\u0010\r\u001a\u00028\u0000H\u0096\u0001ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0012\u0010\u0019\u001a\u00020\u000e2\b\u0010\n\u001a\u0004\u0018\u00010\u0007H\u0007J\u0016\u0010\u001c\u001a\u00020\u00032\u000e\u0010\n\u001a\n\u0018\u00010\u001aj\u0004\u0018\u0001`\u001bJ\u0010\u0010\u001d\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0007H\u0016J\u0017\u0010\u001f\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u0003H\u0014¢\u0006\u0004\b\u001f\u0010 J\u0018\u0010\"\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010!\u001a\u00020\u000eH\u0014J\u0012\u0010#\u001a\u00020\u000e2\b\u0010\n\u001a\u0004\u0018\u00010\u0007H\u0016R \u0010(\u001a\b\u0012\u0004\u0012\u00028\u00000\u00058\u0004X\u0084\u0004¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'R\u0014\u0010)\u001a\u00020\u000e8\u0016X\u0097\u0005¢\u0006\u0006\u001a\u0004\b)\u0010*R&\u0010/\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000,0+8\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\b-\u0010.R\u0014\u00101\u001a\u00020\u000e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b0\u0010*R\u001a\u00104\u001a\b\u0012\u0004\u0012\u00028\u00000,8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b2\u00103\u0082\u0002\u000f\n\u0002\b\u0019\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u0006:"}, d2 = {"Lkotlinx/coroutines/channels/k;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/a;", "", "Lkotlinx/coroutines/channels/d0;", "Lkotlinx/coroutines/channels/i;", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "cause", "handler", "invokeOnClose", "element", "", "offer", "(Ljava/lang/Object;)Z", "Lkotlinx/coroutines/channels/f0;", "g", "send", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/channels/q;", "trySend-JP2dKIU", "(Ljava/lang/Object;)Ljava/lang/Object;", "trySend", "b", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "d", "a0", "value", "q1", "(Lkotlin/Unit;)V", f.b.f83682d, "m1", "close", "c", "Lkotlinx/coroutines/channels/i;", "p1", "()Lkotlinx/coroutines/channels/i;", "_channel", "isClosedForSend", "()Z", "Lkotlinx/coroutines/selects/e;", "Lkotlinx/coroutines/channels/j0;", "getOnSend", "()Lkotlinx/coroutines/selects/e;", "onSend", "a", "isActive", "getChannel", "()Lkotlinx/coroutines/channels/j0;", "channel", "Lkotlin/coroutines/CoroutineContext;", "parentContext", "active", "<init>", "(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/i;Z)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
class k<E> extends kotlinx.coroutines.a<Unit> implements d0<E>, i<E> {
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final i<E> f84867c;

    public k(@m8.g CoroutineContext coroutineContext, @m8.g i<E> iVar, boolean z9) {
        super(coroutineContext, false, z9);
        this.f84867c = iVar;
        B0((j2) coroutineContext.get(j2.f86331k2));
    }

    @Override // kotlinx.coroutines.a, kotlinx.coroutines.q2, kotlinx.coroutines.j2
    public boolean a() {
        return super.a();
    }

    @Override // kotlinx.coroutines.q2
    public void a0(@m8.g Throwable th) {
        CancellationException d12 = q2.d1(this, th, null, 1, null);
        this.f84867c.d(d12);
        Y(d12);
    }

    @Override // kotlinx.coroutines.q2, kotlinx.coroutines.j2, kotlinx.coroutines.channels.i
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    public final /* synthetic */ boolean b(Throwable th) {
        if (th == null) {
            th = new JobCancellationException(d0(), null, this);
        }
        a0(th);
        return true;
    }

    @Override // kotlinx.coroutines.channels.j0
    public boolean close(@m8.h Throwable th) {
        boolean close = this.f84867c.close(th);
        start();
        return close;
    }

    @Override // kotlinx.coroutines.q2, kotlinx.coroutines.j2, kotlinx.coroutines.channels.i
    public final void d(@m8.h CancellationException cancellationException) {
        if (cancellationException == null) {
            cancellationException = new JobCancellationException(d0(), null, this);
        }
        a0(cancellationException);
    }

    @Override // kotlinx.coroutines.channels.i
    @m8.g
    public f0<E> g() {
        return this.f84867c.g();
    }

    @Override // kotlinx.coroutines.channels.d0
    @m8.g
    public j0<E> getChannel() {
        return this;
    }

    @Override // kotlinx.coroutines.channels.j0
    @m8.g
    public kotlinx.coroutines.selects.e<E, j0<E>> getOnSend() {
        return this.f84867c.getOnSend();
    }

    @Override // kotlinx.coroutines.channels.j0
    @y1
    public void invokeOnClose(@m8.g Function1<? super Throwable, Unit> function1) {
        this.f84867c.invokeOnClose(function1);
    }

    @Override // kotlinx.coroutines.channels.j0
    public boolean isClosedForSend() {
        return this.f84867c.isClosedForSend();
    }

    @Override // kotlinx.coroutines.a
    protected void m1(@m8.g Throwable th, boolean z9) {
        if (this.f84867c.close(th) || z9) {
            return;
        }
        p0.b(getContext(), th);
    }

    @Override // kotlinx.coroutines.channels.j0
    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in the favour of 'trySend' method", replaceWith = @ReplaceWith(expression = "trySend(element).isSuccess", imports = {}))
    public boolean offer(E e4) {
        return this.f84867c.offer(e4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @m8.g
    public final i<E> p1() {
        return this.f84867c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.a
    /* renamed from: q1 */
    public void n1(@m8.g Unit unit) {
        j0.a.a(this.f84867c, null, 1, null);
    }

    @Override // kotlinx.coroutines.channels.j0
    @m8.h
    public Object send(E e4, @m8.g Continuation<? super Unit> continuation) {
        return this.f84867c.send(e4, continuation);
    }

    @Override // kotlinx.coroutines.channels.j0
    @m8.g
    /* renamed from: trySend-JP2dKIU */
    public Object mo51trySendJP2dKIU(E e4) {
        return this.f84867c.mo51trySendJP2dKIU(e4);
    }
}
