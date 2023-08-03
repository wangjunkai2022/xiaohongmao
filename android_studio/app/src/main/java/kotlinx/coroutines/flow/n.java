package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.internal.p;
import kotlinx.coroutines.j2;

/* compiled from: Context.kt */
@Metadata(bv = {}, d1 = {"\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\u001a0\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u001a(\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\b\b\u0002\u0010\u0003\u001a\u00020\u0002H\u0007\u001a\u001c\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001\u001a$\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\n\u001a\u00020\t\u001a\u001c\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001\u001a\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/i;", "", "capacity", "Lkotlinx/coroutines/channels/BufferOverflow;", "onBufferOverflow", "b", "a", "g", "Lkotlin/coroutines/CoroutineContext;", "context", "h", "e", "", "f", "(Lkotlin/coroutines/CoroutineContext;)V", "kotlinx-coroutines-core"}, k = 5, mv = {1, 6, 0}, xs = "kotlinx/coroutines/flow/FlowKt")
/* loaded from: classes4.dex */
public final /* synthetic */ class n {
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.4.0, binary compatibility with earlier versions")
    public static final /* synthetic */ i a(i iVar, int i4) {
        i d4;
        d4 = d(iVar, i4, null, 2, null);
        return d4;
    }

    @m8.g
    public static final <T> i<T> b(@m8.g i<? extends T> iVar, int i4, @m8.g BufferOverflow bufferOverflow) {
        int i10;
        BufferOverflow bufferOverflow2;
        boolean z9 = true;
        if (i4 >= 0 || i4 == -2 || i4 == -1) {
            if (i4 == -1 && bufferOverflow != BufferOverflow.SUSPEND) {
                z9 = false;
            }
            if (z9) {
                if (i4 == -1) {
                    bufferOverflow2 = BufferOverflow.DROP_OLDEST;
                    i10 = 0;
                } else {
                    i10 = i4;
                    bufferOverflow2 = bufferOverflow;
                }
                return iVar instanceof kotlinx.coroutines.flow.internal.p ? p.a.a((kotlinx.coroutines.flow.internal.p) iVar, null, i10, bufferOverflow2, 1, null) : new kotlinx.coroutines.flow.internal.h(iVar, null, i10, bufferOverflow2, 2, null);
            }
            throw new IllegalArgumentException("CONFLATED capacity cannot be used with non-default onBufferOverflow".toString());
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("Buffer size should be non-negative, BUFFERED, or CONFLATED, but was ", Integer.valueOf(i4)).toString());
    }

    public static /* synthetic */ i c(i iVar, int i4, int i10, Object obj) {
        i a10;
        if ((i10 & 1) != 0) {
            i4 = -2;
        }
        a10 = a(iVar, i4);
        return a10;
    }

    public static /* synthetic */ i d(i iVar, int i4, BufferOverflow bufferOverflow, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i4 = -2;
        }
        if ((i10 & 2) != 0) {
            bufferOverflow = BufferOverflow.SUSPEND;
        }
        return k.o(iVar, i4, bufferOverflow);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @m8.g
    public static final <T> i<T> e(@m8.g i<? extends T> iVar) {
        return iVar instanceof c ? iVar : new d(iVar);
    }

    private static final void f(CoroutineContext coroutineContext) {
        if (!(coroutineContext.get(j2.f86331k2) == null)) {
            throw new IllegalArgumentException(Intrinsics.stringPlus("Flow context cannot contain job in it. Had ", coroutineContext).toString());
        }
    }

    @m8.g
    public static final <T> i<T> g(@m8.g i<? extends T> iVar) {
        i<T> d4;
        d4 = d(iVar, -1, null, 2, null);
        return d4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @m8.g
    public static final <T> i<T> h(@m8.g i<? extends T> iVar, @m8.g CoroutineContext coroutineContext) {
        f(coroutineContext);
        return Intrinsics.areEqual(coroutineContext, EmptyCoroutineContext.INSTANCE) ? iVar : iVar instanceof kotlinx.coroutines.flow.internal.p ? p.a.a((kotlinx.coroutines.flow.internal.p) iVar, coroutineContext, 0, null, 6, null) : new kotlinx.coroutines.flow.internal.h(iVar, coroutineContext, 0, null, 12, null);
    }
}
