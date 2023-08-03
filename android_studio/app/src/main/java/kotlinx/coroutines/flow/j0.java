package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import io.sentry.protocol.r;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.internal.p0;

/* compiled from: StateFlow.kt */
@Metadata(bv = {}, d1 = {"\u0000>\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u001a!\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0001\u001a\u00028\u0000¢\u0006\u0004\b\u0003\u0010\u0004\u001a4\u0010\u0007\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00022\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00000\u0005H\u0086\b¢\u0006\u0004\b\u0007\u0010\b\u001a4\u0010\t\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00022\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00000\u0005H\u0086\b¢\u0006\u0004\b\t\u0010\b\u001a-\u0010\u000b\u001a\u00020\n\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00022\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00000\u0005H\u0086\b\u001a6\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\u0013\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\f2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0000\"\u001a\u0010\u0019\u001a\u00020\u00158\u0002X\u0083\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u0016\u0012\u0004\b\u0017\u0010\u0018\"\u001a\u0010\u001c\u001a\u00020\u00158\u0002X\u0083\u0004¢\u0006\f\n\u0004\b\u001a\u0010\u0016\u0012\u0004\b\u001b\u0010\u0018¨\u0006\u001d"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "value", "Lkotlinx/coroutines/flow/t;", "a", "(Ljava/lang/Object;)Lkotlinx/coroutines/flow/t;", "Lkotlin/Function1;", r.b.f83826b, ContextChain.TAG_INFRA, "(Lkotlinx/coroutines/flow/t;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "e", "", "h", "Lkotlinx/coroutines/flow/h0;", "Lkotlin/coroutines/CoroutineContext;", "context", "", "capacity", "Lkotlinx/coroutines/channels/BufferOverflow;", "onBufferOverflow", "Lkotlinx/coroutines/flow/i;", "d", "Lkotlinx/coroutines/internal/p0;", "Lkotlinx/coroutines/internal/p0;", "getNONE$annotations", "()V", "NONE", "b", "getPENDING$annotations", "PENDING", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class j0 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private static final p0 f86045a = new p0("NONE");
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private static final p0 f86046b = new p0("PENDING");

    @m8.g
    public static final <T> t<T> a(T t9) {
        if (t9 == null) {
            t9 = (T) kotlinx.coroutines.flow.internal.s.f86031a;
        }
        return new i0(t9);
    }

    @m8.g
    public static final <T> i<T> d(@m8.g h0<? extends T> h0Var, @m8.g CoroutineContext coroutineContext, int i4, @m8.g BufferOverflow bufferOverflow) {
        boolean z9 = false;
        if (i4 >= 0 && i4 < 2) {
            z9 = true;
        }
        return ((z9 || i4 == -2) && bufferOverflow == BufferOverflow.DROP_OLDEST) ? h0Var : z.e(h0Var, coroutineContext, i4, bufferOverflow);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [T, java.lang.Object] */
    public static final <T> T e(@m8.g t<T> tVar, @m8.g Function1<? super T, ? extends T> function1) {
        ?? r02;
        do {
            r02 = (Object) tVar.getValue();
        } while (!tVar.compareAndSet(r02, function1.invoke(r02)));
        return r02;
    }

    private static /* synthetic */ void f() {
    }

    private static /* synthetic */ void g() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> void h(@m8.g t<T> tVar, @m8.g Function1<? super T, ? extends T> function1) {
        Object obj;
        do {
            obj = (Object) tVar.getValue();
        } while (!tVar.compareAndSet(obj, function1.invoke(obj)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> T i(@m8.g t<T> tVar, @m8.g Function1<? super T, ? extends T> function1) {
        Object obj;
        T invoke;
        do {
            obj = (Object) tVar.getValue();
            invoke = function1.invoke(obj);
        } while (!tVar.compareAndSet(obj, invoke));
        return invoke;
    }
}
