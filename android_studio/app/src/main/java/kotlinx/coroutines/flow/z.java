package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.internal.p0;

/* compiled from: SharedFlow.kt */
@Metadata(bv = {}, d1 = {"\u0000H\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a0\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006\"\u0004\b\u0000\u0010\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012\b\b\u0002\u0010\u0003\u001a\u00020\u00012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u001a%\u0010\f\u001a\u0004\u0018\u00010\t*\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\f\u0010\r\u001a-\u0010\u0010\u001a\u00020\u000f*\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\b2\u0006\u0010\u000b\u001a\u00020\n2\b\u0010\u000e\u001a\u0004\u0018\u00010\tH\u0002¢\u0006\u0004\b\u0010\u0010\u0011\u001a6\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u0016\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00122\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0004H\u0000\"\u001a\u0010\u001c\u001a\u00020\u00188\u0000X\u0081\u0004¢\u0006\f\n\u0004\b\u0007\u0010\u0019\u0012\u0004\b\u001a\u0010\u001b¨\u0006\u001d"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "", "replay", "extraBufferCapacity", "Lkotlinx/coroutines/channels/BufferOverflow;", "onBufferOverflow", "Lkotlinx/coroutines/flow/s;", "a", "", "", "", "index", "f", "([Ljava/lang/Object;J)Ljava/lang/Object;", "item", "", "h", "([Ljava/lang/Object;JLjava/lang/Object;)V", "Lkotlinx/coroutines/flow/x;", "Lkotlin/coroutines/CoroutineContext;", "context", "capacity", "Lkotlinx/coroutines/flow/i;", "e", "Lkotlinx/coroutines/internal/p0;", "Lkotlinx/coroutines/internal/p0;", "getNO_VALUE$annotations", "()V", "NO_VALUE", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class z {
    @JvmField
    @m8.g

    /* renamed from: a */
    public static final p0 f86181a = new p0("NO_VALUE");

    @m8.g
    public static final <T> s<T> a(int i4, int i10, @m8.g BufferOverflow bufferOverflow) {
        boolean z9 = true;
        if (i4 >= 0) {
            if (i10 >= 0) {
                if (i4 <= 0 && i10 <= 0 && bufferOverflow != BufferOverflow.SUSPEND) {
                    z9 = false;
                }
                if (z9) {
                    int i11 = i10 + i4;
                    if (i11 < 0) {
                        i11 = Integer.MAX_VALUE;
                    }
                    return new y(i4, i11, bufferOverflow);
                }
                throw new IllegalArgumentException(Intrinsics.stringPlus("replay or extraBufferCapacity must be positive with non-default onBufferOverflow strategy ", bufferOverflow).toString());
            }
            throw new IllegalArgumentException(Intrinsics.stringPlus("extraBufferCapacity cannot be negative, but was ", Integer.valueOf(i10)).toString());
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("replay cannot be negative, but was ", Integer.valueOf(i4)).toString());
    }

    public static /* synthetic */ s b(int i4, int i10, BufferOverflow bufferOverflow, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i4 = 0;
        }
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        if ((i11 & 4) != 0) {
            bufferOverflow = BufferOverflow.SUSPEND;
        }
        return a(i4, i10, bufferOverflow);
    }

    public static final /* synthetic */ Object c(Object[] objArr, long j4) {
        return f(objArr, j4);
    }

    public static final /* synthetic */ void d(Object[] objArr, long j4, Object obj) {
        h(objArr, j4, obj);
    }

    @m8.g
    public static final <T> i<T> e(@m8.g x<? extends T> xVar, @m8.g CoroutineContext coroutineContext, int i4, @m8.g BufferOverflow bufferOverflow) {
        return ((i4 == 0 || i4 == -3) && bufferOverflow == BufferOverflow.SUSPEND) ? xVar : new kotlinx.coroutines.flow.internal.h(xVar, coroutineContext, i4, bufferOverflow);
    }

    public static final Object f(Object[] objArr, long j4) {
        return objArr[(objArr.length - 1) & ((int) j4)];
    }

    public static /* synthetic */ void g() {
    }

    public static final void h(Object[] objArr, long j4, Object obj) {
        objArr[(objArr.length - 1) & ((int) j4)] = obj;
    }
}
