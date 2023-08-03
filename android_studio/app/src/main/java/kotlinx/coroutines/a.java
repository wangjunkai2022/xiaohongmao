package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import io.sentry.h4;
import io.sentry.protocol.f;
import io.sentry.protocol.t;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AbstractCoroutine.kt */
@Metadata(bv = {}, d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0012\b'\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\u00020\u00022\u00020\u00032\b\u0012\u0004\u0012\u00028\u00000\u00042\u00020\u0005B\u001f\u0012\u0006\u00103\u001a\u00020&\u0012\u0006\u00104\u001a\u00020\f\u0012\u0006\u00105\u001a\u00020\f¢\u0006\u0004\b6\u00107J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00028\u0000H\u0014¢\u0006\u0004\b\b\u0010\tJ\u0018\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0014J\b\u0010\u0010\u001a\u00020\u000fH\u0014J\u0012\u0010\u0013\u001a\u00020\u00072\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0004J\u001e\u0010\u0016\u001a\u00020\u00072\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\u0014ø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\tJ\u0012\u0010\u0017\u001a\u00020\u00072\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0014J\u0017\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\nH\u0000¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u000fH\u0010¢\u0006\u0004\b\u001b\u0010\u001cJO\u0010$\u001a\u00020\u0007\"\u0004\b\u0001\u0010\u001d2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010 \u001a\u00028\u00012'\u0010#\u001a#\b\u0001\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00110!¢\u0006\u0002\b\"ø\u0001\u0000¢\u0006\u0004\b$\u0010%R\u001d\u0010-\u001a\u00020&8\u0006¢\u0006\u0012\n\u0004\b'\u0010(\u0012\u0004\b+\u0010,\u001a\u0004\b)\u0010*R\u0014\u0010/\u001a\u00020&8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b.\u0010*R\u0014\u00102\u001a\u00020\f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b0\u00101\u0082\u0002\u0004\n\u0002\b\u0019¨\u00068"}, d2 = {"Lkotlinx/coroutines/a;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/q2;", "Lkotlinx/coroutines/j2;", "Lkotlin/coroutines/Continuation;", "Lkotlinx/coroutines/s0;", "value", "", "n1", "(Ljava/lang/Object;)V", "", "cause", "", f.b.f83682d, "m1", "", "d0", "", t.b.f83859d, "S0", "Lkotlin/Result;", "result", "resumeWith", "k1", h4.b.f83287e, "A0", "(Ljava/lang/Throwable;)V", "M0", "()Ljava/lang/String;", "R", "Lkotlinx/coroutines/CoroutineStart;", com.google.android.exoplayer2.text.ttml.d.f25725o0, "receiver", "Lkotlin/Function2;", "Lkotlin/ExtensionFunctionType;", "block", "o1", "(Lkotlinx/coroutines/CoroutineStart;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V", "Lkotlin/coroutines/CoroutineContext;", "b", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "getContext$annotations", "()V", "context", "getCoroutineContext", "coroutineContext", "a", "()Z", "isActive", "parentContext", "initParentJob", "active", "<init>", "(Lkotlin/coroutines/CoroutineContext;ZZ)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
@e2
/* loaded from: classes4.dex */
public abstract class a<T> extends q2 implements j2, Continuation<T>, s0 {
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final CoroutineContext f84780b;

    public a(@m8.g CoroutineContext coroutineContext, boolean z9, boolean z10) {
        super(z10);
        if (z9) {
            B0((j2) coroutineContext.get(j2.f86331k2));
        }
        this.f84780b = coroutineContext.plus(this);
    }

    public static /* synthetic */ void l1() {
    }

    @Override // kotlinx.coroutines.q2
    public final void A0(@m8.g Throwable th) {
        p0.b(this.f84780b, th);
    }

    @Override // kotlinx.coroutines.q2
    @m8.g
    public String M0() {
        String b10 = m0.b(this.f84780b);
        if (b10 == null) {
            return super.M0();
        }
        return '\"' + b10 + "\":" + super.M0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.q2
    protected final void S0(@m8.h Object obj) {
        if (obj instanceof e0) {
            e0 e0Var = (e0) obj;
            m1(e0Var.f85246a, e0Var.a());
            return;
        }
        n1(obj);
    }

    @Override // kotlinx.coroutines.q2, kotlinx.coroutines.j2
    public boolean a() {
        return super.a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.q2
    @m8.g
    public String d0() {
        return Intrinsics.stringPlus(v0.a(this), " was cancelled");
    }

    @Override // kotlin.coroutines.Continuation
    @m8.g
    public final CoroutineContext getContext() {
        return this.f84780b;
    }

    @Override // kotlinx.coroutines.s0
    @m8.g
    public CoroutineContext getCoroutineContext() {
        return this.f84780b;
    }

    protected void k1(@m8.h Object obj) {
        T(obj);
    }

    protected void m1(@m8.g Throwable th, boolean z9) {
    }

    protected void n1(T t9) {
    }

    public final <R> void o1(@m8.g CoroutineStart coroutineStart, R r9, @m8.g Function2<? super R, ? super Continuation<? super T>, ? extends Object> function2) {
        coroutineStart.invoke(function2, r9, this);
    }

    @Override // kotlin.coroutines.Continuation
    public final void resumeWith(@m8.g Object obj) {
        Object K0 = K0(j0.d(obj, null, 1, null));
        if (K0 == r2.f86394b) {
            return;
        }
        k1(K0);
    }
}
