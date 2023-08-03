package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.JvmField;
import kotlinx.coroutines.internal.p0;
import kotlinx.coroutines.internal.x;
import kotlinx.coroutines.v0;

/* compiled from: AbstractChannel.kt */
@Metadata(bv = {}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0010\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u001d\u0012\u0006\u0010\u0012\u001a\u00028\u0000\u0012\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00070\u0013¢\u0006\u0004\b\u0017\u0010\u0018J\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016J\b\u0010\b\u001a\u00020\u0007H\u0016J\u0014\u0010\u000b\u001a\u00020\u00072\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\tH\u0016J\b\u0010\r\u001a\u00020\fH\u0016R\u001a\u0010\u0012\u001a\u00028\u00008\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00070\u00138\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0019"}, d2 = {"Lkotlinx/coroutines/channels/k0;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/i0;", "Lkotlinx/coroutines/internal/x$d;", "otherOp", "Lkotlinx/coroutines/internal/p0;", "j0", "", "g0", "Lkotlinx/coroutines/channels/v;", "closed", "i0", "", "toString", "d", "Ljava/lang/Object;", "h0", "()Ljava/lang/Object;", "pollResult", "Lkotlinx/coroutines/q;", "e", "Lkotlinx/coroutines/q;", "cont", "<init>", "(Ljava/lang/Object;Lkotlinx/coroutines/q;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public class k0<E> extends i0 {

    /* renamed from: d  reason: collision with root package name */
    private final E f84868d;
    @JvmField
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    public final kotlinx.coroutines.q<Unit> f84869e;

    /* JADX WARN: Multi-variable type inference failed */
    public k0(E e4, @m8.g kotlinx.coroutines.q<? super Unit> qVar) {
        this.f84868d = e4;
        this.f84869e = qVar;
    }

    @Override // kotlinx.coroutines.channels.i0
    public void g0() {
        this.f84869e.I(kotlinx.coroutines.s.f86625d);
    }

    @Override // kotlinx.coroutines.channels.i0
    public E h0() {
        return this.f84868d;
    }

    @Override // kotlinx.coroutines.channels.i0
    public void i0(@m8.g v<?> vVar) {
        kotlinx.coroutines.q<Unit> qVar = this.f84869e;
        Result.Companion companion = Result.Companion;
        qVar.resumeWith(Result.m70constructorimpl(ResultKt.createFailure(vVar.o0())));
    }

    @Override // kotlinx.coroutines.channels.i0
    @m8.h
    public p0 j0(@m8.h x.d dVar) {
        if (this.f84869e.j(Unit.INSTANCE, dVar == null ? null : dVar.f86321c) == null) {
            return null;
        }
        if (dVar != null) {
            dVar.d();
        }
        return kotlinx.coroutines.s.f86625d;
    }

    @Override // kotlinx.coroutines.internal.x
    @m8.g
    public String toString() {
        return v0.a(this) + '@' + v0.b(this) + '(' + h0() + ')';
    }
}
