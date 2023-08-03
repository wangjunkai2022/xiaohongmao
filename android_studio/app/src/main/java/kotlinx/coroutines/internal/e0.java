package kotlinx.coroutines.internal;

import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.l1;
import kotlinx.coroutines.u2;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MainDispatchers.kt */
@Metadata(bv = {}, d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\b\f\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u001d\u0012\b\u0010!\u001a\u0004\u0018\u00010\u001e\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u001c¢\u0006\u0004\b(\u0010)J\b\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0010\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0016J\u001b\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\rH\u0096@ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0010J$\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020\r2\n\u0010\u0014\u001a\u00060\u0012j\u0002`\u00132\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u001c\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\n\u0010\u0014\u001a\u00060\u0012j\u0002`\u0013H\u0016J\u001e\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\r2\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00190\u0018H\u0016J\b\u0010\u001d\u001a\u00020\u001cH\u0016R\u0016\u0010!\u001a\u0004\u0018\u00010\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010$\u001a\u0004\u0018\u00010\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0014\u0010'\u001a\u00020\u00018VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b%\u0010&\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006*"}, d2 = {"Lkotlinx/coroutines/internal/e0;", "Lkotlinx/coroutines/u2;", "Lkotlinx/coroutines/a1;", "", "s0", "Lkotlin/coroutines/CoroutineContext;", "context", "", "isDispatchNeeded", "", "parallelism", "Lkotlinx/coroutines/n0;", "limitedParallelism", "", com.qennnsad.aknkaksd.domain.usecase.anchor.j.f47980a, "g0", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "timeMillis", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "block", "Lkotlinx/coroutines/l1;", "I", "r0", "Lkotlinx/coroutines/q;", "", "continuation", "t0", "", "toString", "", "a", "Ljava/lang/Throwable;", "cause", "b", "Ljava/lang/String;", "errorHint", "p0", "()Lkotlinx/coroutines/u2;", "immediate", "<init>", "(Ljava/lang/Throwable;Ljava/lang/String;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class e0 extends u2 implements kotlinx.coroutines.a1 {
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private final Throwable f86256a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private final String f86257b;

    public /* synthetic */ e0(Throwable th, String str, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(th, (i4 & 2) != 0 ? null : str);
    }

    private final Void s0() {
        String stringPlus;
        if (this.f86256a != null) {
            String str = this.f86257b;
            String str2 = "";
            if (str != null && (stringPlus = Intrinsics.stringPlus(". ", str)) != null) {
                str2 = stringPlus;
            }
            throw new IllegalStateException(Intrinsics.stringPlus("Module with the Main dispatcher had failed to initialize", str2), this.f86256a);
        }
        d0.e();
        throw new KotlinNothingValueException();
    }

    @Override // kotlinx.coroutines.a1
    @m8.g
    public l1 I(long j4, @m8.g Runnable runnable, @m8.g CoroutineContext coroutineContext) {
        s0();
        throw new KotlinNothingValueException();
    }

    @Override // kotlinx.coroutines.a1
    @m8.h
    public Object g0(long j4, @m8.g Continuation<?> continuation) {
        s0();
        throw new KotlinNothingValueException();
    }

    @Override // kotlinx.coroutines.n0
    public boolean isDispatchNeeded(@m8.g CoroutineContext coroutineContext) {
        s0();
        throw new KotlinNothingValueException();
    }

    @Override // kotlinx.coroutines.u2, kotlinx.coroutines.n0
    @m8.g
    public kotlinx.coroutines.n0 limitedParallelism(int i4) {
        s0();
        throw new KotlinNothingValueException();
    }

    @Override // kotlinx.coroutines.u2
    @m8.g
    public u2 p0() {
        return this;
    }

    @Override // kotlinx.coroutines.n0
    @m8.g
    /* renamed from: r0 */
    public Void dispatch(@m8.g CoroutineContext coroutineContext, @m8.g Runnable runnable) {
        s0();
        throw new KotlinNothingValueException();
    }

    @Override // kotlinx.coroutines.a1
    @m8.g
    /* renamed from: t0 */
    public Void r(long j4, @m8.g kotlinx.coroutines.q<? super Unit> qVar) {
        s0();
        throw new KotlinNothingValueException();
    }

    @Override // kotlinx.coroutines.u2, kotlinx.coroutines.n0
    @m8.g
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Dispatchers.Main[missing");
        Throwable th = this.f86256a;
        sb.append(th != null ? Intrinsics.stringPlus(", cause=", th) : "");
        sb.append(']');
        return sb.toString();
    }

    public e0(@m8.h Throwable th, @m8.h String str) {
        this.f86256a = th;
        this.f86257b = str;
    }
}
