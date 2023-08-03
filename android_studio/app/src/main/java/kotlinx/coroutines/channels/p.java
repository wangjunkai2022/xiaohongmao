package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import io.sentry.h4;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.channels.q;

/* compiled from: Channel.kt */
@Metadata(bv = {}, d1 = {"\u00004\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001aX\u0010\b\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012#\u0010\u0007\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00028\u00000\u0002H\u0086\bø\u0001\u0000ø\u0001\u0001\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0000¢\u0006\u0004\b\b\u0010\t\u001a\\\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012!\u0010\f\u001a\u001d\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000b0\u0002H\u0086\bø\u0001\u0000ø\u0001\u0001\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0000¢\u0006\u0004\b\r\u0010\t\u001a^\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012#\u0010\f\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u000b0\u0002H\u0086\bø\u0001\u0000ø\u0001\u0001\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0000¢\u0006\u0004\b\u000e\u0010\t\u001a^\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012#\u0010\f\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u000b0\u0002H\u0086\bø\u0001\u0000ø\u0001\u0001\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0000¢\u0006\u0004\b\u000f\u0010\t\u001a>\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u0016\"\u0004\b\u0000\u0010\u00102\b\b\u0002\u0010\u0012\u001a\u00020\u00112\b\b\u0002\u0010\u0014\u001a\u00020\u00132\u0016\b\u0002\u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0002\u001a\u001e\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00000\u0016\"\u0004\b\u0000\u0010\u00102\b\b\u0002\u0010\u0012\u001a\u00020\u0011H\u0007\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006\u0019"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/channels/q;", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", h4.b.f83287e, "onFailure", "e", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "value", "", com.alipay.sdk.packet.d.f6907q, "h", "g", "f", ExifInterface.LONGITUDE_EAST, "", "capacity", "Lkotlinx/coroutines/channels/BufferOverflow;", "onBufferOverflow", "onUndeliveredElement", "Lkotlinx/coroutines/channels/m;", "b", "a", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class p {
    @m8.g
    public static final <E> m<E> b(int i4, @m8.g BufferOverflow bufferOverflow, @m8.h Function1<? super E, Unit> function1) {
        if (i4 == -2) {
            return new h(bufferOverflow == BufferOverflow.SUSPEND ? m.f84876l2.a() : 1, bufferOverflow, function1);
        } else if (i4 == -1) {
            if ((bufferOverflow != BufferOverflow.SUSPEND ? 0 : 1) != 0) {
                return new x(function1);
            }
            throw new IllegalArgumentException("CONFLATED capacity cannot be used with non-default onBufferOverflow".toString());
        } else if (i4 == 0) {
            if (bufferOverflow == BufferOverflow.SUSPEND) {
                return new h0(function1);
            }
            return new h(1, bufferOverflow, function1);
        } else if (i4 != Integer.MAX_VALUE) {
            if (i4 == 1 && bufferOverflow == BufferOverflow.DROP_OLDEST) {
                return new x(function1);
            }
            return new h(i4, bufferOverflow, function1);
        } else {
            return new a0(function1);
        }
    }

    public static /* synthetic */ m c(int i4, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i4 = 0;
        }
        return d(i4, null, null, 6, null);
    }

    public static /* synthetic */ m d(int i4, BufferOverflow bufferOverflow, Function1 function1, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i4 = 0;
        }
        if ((i10 & 2) != 0) {
            bufferOverflow = BufferOverflow.SUSPEND;
        }
        if ((i10 & 4) != 0) {
            function1 = null;
        }
        return b(i4, bufferOverflow, function1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> T e(@m8.g Object obj, @m8.g Function1<? super Throwable, ? extends T> function1) {
        return obj instanceof q.c ? function1.invoke(q.f(obj)) : obj;
    }

    @m8.g
    public static final <T> Object f(@m8.g Object obj, @m8.g Function1<? super Throwable, Unit> function1) {
        if (obj instanceof q.a) {
            function1.invoke(q.f(obj));
        }
        return obj;
    }

    @m8.g
    public static final <T> Object g(@m8.g Object obj, @m8.g Function1<? super Throwable, Unit> function1) {
        if (obj instanceof q.c) {
            function1.invoke(q.f(obj));
        }
        return obj;
    }

    @m8.g
    public static final <T> Object h(@m8.g Object obj, @m8.g Function1<? super T, Unit> function1) {
        if (!(obj instanceof q.c)) {
            function1.invoke(obj);
        }
        return obj;
    }
}
