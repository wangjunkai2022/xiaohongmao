package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.internal.InlineMarker;

/* compiled from: ThreadContextElement.kt */
@Metadata(bv = {}, d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u001a-\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\b\b\u0002\u0010\u0002\u001a\u00028\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u001b\u0010\u0007\u001a\u00020\u0006*\u0006\u0012\u0002\b\u00030\u0001H\u0086Hø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\b\u001a\u001b\u0010\n\u001a\u00020\t*\u0006\u0012\u0002\b\u00030\u0001H\u0086Hø\u0001\u0000¢\u0006\u0004\b\n\u0010\b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000b"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Ljava/lang/ThreadLocal;", "value", "Lkotlinx/coroutines/n3;", "a", "(Ljava/lang/ThreadLocal;Ljava/lang/Object;)Lkotlinx/coroutines/n3;", "", "e", "(Ljava/lang/ThreadLocal;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "c", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class o3 {
    @m8.g
    public static final <T> n3<T> a(@m8.g ThreadLocal<T> threadLocal, T t9) {
        return new kotlinx.coroutines.internal.v0(t9, threadLocal);
    }

    public static /* synthetic */ n3 b(ThreadLocal threadLocal, Object obj, int i4, Object obj2) {
        if ((i4 & 1) != 0) {
            obj = threadLocal.get();
        }
        return a(threadLocal, obj);
    }

    @m8.h
    public static final Object c(@m8.g ThreadLocal<?> threadLocal, @m8.g Continuation<? super Unit> continuation) {
        if (continuation.getContext().get(new kotlinx.coroutines.internal.w0(threadLocal)) != null) {
            return Unit.INSTANCE;
        }
        throw new IllegalStateException(("ThreadLocal " + threadLocal + " is missing from context " + continuation.getContext()).toString());
    }

    private static final Object d(ThreadLocal<?> threadLocal, Continuation<? super Unit> continuation) {
        InlineMarker.mark(3);
        throw null;
    }

    @m8.h
    public static final Object e(@m8.g ThreadLocal<?> threadLocal, @m8.g Continuation<? super Boolean> continuation) {
        return Boxing.boxBoolean(continuation.getContext().get(new kotlinx.coroutines.internal.w0(threadLocal)) != null);
    }

    private static final Object f(ThreadLocal<?> threadLocal, Continuation<? super Boolean> continuation) {
        InlineMarker.mark(3);
        throw null;
    }
}
