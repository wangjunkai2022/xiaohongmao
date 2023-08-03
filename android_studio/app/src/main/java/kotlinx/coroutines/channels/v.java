package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import io.sentry.protocol.y;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlinx.coroutines.internal.p0;
import kotlinx.coroutines.internal.x;
import kotlinx.coroutines.v0;

/* compiled from: AbstractChannel.kt */
@Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0010\b\u0000\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\u00020\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003B\u0011\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0013¢\u0006\u0004\b!\u0010\"J\u0012\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J\b\u0010\t\u001a\u00020\bH\u0016J!\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00028\u00002\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\r\u001a\u00020\b2\u0006\u0010\n\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0014\u0010\u0010\u001a\u00020\b2\n\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\u0000H\u0016J\b\u0010\u0012\u001a\u00020\u0011H\u0016R\u0016\u0010\u0016\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0019\u001a\u00020\u00138F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R\u0011\u0010\u001b\u001a\u00020\u00138F¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u0018R\u001a\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028\u00000\u00008VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001dR\u001a\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00000\u00008VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001f\u0010\u001d¨\u0006#"}, d2 = {"Lkotlinx/coroutines/channels/v;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/i0;", "Lkotlinx/coroutines/channels/g0;", "Lkotlinx/coroutines/internal/x$d;", "otherOp", "Lkotlinx/coroutines/internal/p0;", "j0", "", "g0", "value", y.b.f83919g, "(Ljava/lang/Object;Lkotlinx/coroutines/internal/x$d;)Lkotlinx/coroutines/internal/p0;", "o", "(Ljava/lang/Object;)V", "closed", "i0", "", "toString", "", "d", "Ljava/lang/Throwable;", "closeCause", "o0", "()Ljava/lang/Throwable;", "sendException", "n0", "receiveException", "l0", "()Lkotlinx/coroutines/channels/v;", "offerResult", "m0", "pollResult", "<init>", "(Ljava/lang/Throwable;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class v<E> extends i0 implements g0<E> {
    @m8.h
    @JvmField

    /* renamed from: d  reason: collision with root package name */
    public final Throwable f85128d;

    public v(@m8.h Throwable th) {
        this.f85128d = th;
    }

    @Override // kotlinx.coroutines.channels.i0
    public void g0() {
    }

    @Override // kotlinx.coroutines.channels.i0
    public void i0(@m8.g v<?> vVar) {
    }

    @Override // kotlinx.coroutines.channels.i0
    @m8.g
    public p0 j0(@m8.h x.d dVar) {
        p0 p0Var = kotlinx.coroutines.s.f86625d;
        if (dVar != null) {
            dVar.d();
        }
        return p0Var;
    }

    @Override // kotlinx.coroutines.channels.g0
    @m8.g
    /* renamed from: l0 */
    public v<E> d() {
        return this;
    }

    @Override // kotlinx.coroutines.channels.i0
    @m8.g
    /* renamed from: m0 */
    public v<E> h0() {
        return this;
    }

    @m8.g
    public final Throwable n0() {
        Throwable th = this.f85128d;
        return th == null ? new ClosedReceiveChannelException(r.f84913a) : th;
    }

    @Override // kotlinx.coroutines.channels.g0
    public void o(E e4) {
    }

    @m8.g
    public final Throwable o0() {
        Throwable th = this.f85128d;
        return th == null ? new ClosedSendChannelException(r.f84913a) : th;
    }

    @Override // kotlinx.coroutines.internal.x
    @m8.g
    public String toString() {
        return "Closed@" + v0.b(this) + '[' + this.f85128d + ']';
    }

    @Override // kotlinx.coroutines.channels.g0
    @m8.g
    public p0 x(E e4, @m8.h x.d dVar) {
        p0 p0Var = kotlinx.coroutines.s.f86625d;
        if (dVar != null) {
            dVar.d();
        }
        return p0Var;
    }
}
