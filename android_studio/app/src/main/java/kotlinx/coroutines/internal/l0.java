package kotlinx.coroutines.internal;

import androidx.exifinterface.media.ExifInterface;
import io.sentry.protocol.t;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.JvmField;
import kotlinx.coroutines.j2;

/* compiled from: Scopes.kt */
@Metadata(bv = {}, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0010\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\b\u0012\u0004\u0012\u00028\u00000\u00022\u00060\u0003j\u0002`\u0004B\u001d\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\f¢\u0006\u0004\b\u001d\u0010\u001eJ\u000e\u0010\u0007\u001a\n\u0018\u00010\u0005j\u0004\u0018\u0001`\u0006J\u0012\u0010\u0001\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0014J\u0012\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0014R\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\f8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0019\u0010\u0012\u001a\n\u0018\u00010\u0003j\u0004\u0018\u0001`\u00048F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0016\u001a\u00020\u00138DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u0016\u0010\u001a\u001a\u0004\u0018\u00010\u00178@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019¨\u0006\u001f"}, d2 = {"Lkotlinx/coroutines/internal/l0;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/a;", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Lkotlinx/coroutines/internal/CoroutineStackFrame;", "Ljava/lang/StackTraceElement;", "Lkotlinx/coroutines/internal/StackTraceElement;", "getStackTraceElement", "", t.b.f83859d, "", "k1", "Lkotlin/coroutines/Continuation;", "c", "Lkotlin/coroutines/Continuation;", "uCont", "getCallerFrame", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "callerFrame", "", "E0", "()Z", "isScopedCoroutine", "Lkotlinx/coroutines/j2;", "p1", "()Lkotlinx/coroutines/j2;", "parent", "Lkotlin/coroutines/CoroutineContext;", "context", "<init>", "(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public class l0<T> extends kotlinx.coroutines.a<T> implements CoroutineStackFrame {
    @JvmField
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    public final Continuation<T> f86274c;

    /* JADX WARN: Multi-variable type inference failed */
    public l0(@m8.g CoroutineContext coroutineContext, @m8.g Continuation<? super T> continuation) {
        super(coroutineContext, true, true);
        this.f86274c = continuation;
    }

    @Override // kotlinx.coroutines.q2
    protected final boolean E0() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.q2
    public void T(@m8.h Object obj) {
        Continuation intercepted;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(this.f86274c);
        m.g(intercepted, kotlinx.coroutines.j0.a(obj, this.f86274c), null, 2, null);
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    @m8.h
    public final CoroutineStackFrame getCallerFrame() {
        Continuation<T> continuation = this.f86274c;
        if (continuation instanceof CoroutineStackFrame) {
            return (CoroutineStackFrame) continuation;
        }
        return null;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    @m8.h
    public final StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override // kotlinx.coroutines.a
    protected void k1(@m8.h Object obj) {
        Continuation<T> continuation = this.f86274c;
        continuation.resumeWith(kotlinx.coroutines.j0.a(obj, continuation));
    }

    @m8.h
    public final j2 p1() {
        kotlinx.coroutines.w x02 = x0();
        if (x02 == null) {
            return null;
        }
        return x02.getParent();
    }
}
