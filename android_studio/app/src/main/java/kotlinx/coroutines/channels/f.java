package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.coroutines.Continuation;
import kotlin.internal.LowPriorityInOverloadResolution;
import kotlinx.coroutines.channels.f0;
import kotlinx.coroutines.s0;
import kotlinx.coroutines.z2;

/* compiled from: Actor.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bg\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003R\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u00048&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Lkotlinx/coroutines/channels/f;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/s0;", "Lkotlinx/coroutines/channels/f0;", "Lkotlinx/coroutines/channels/m;", "getChannel", "()Lkotlinx/coroutines/channels/m;", "channel", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
@z2
/* loaded from: classes4.dex */
public interface f<E> extends s0, f0<E> {

    /* compiled from: Actor.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class a {
        @m8.g
        public static <E> kotlinx.coroutines.selects.d<E> b(@m8.g f<E> fVar) {
            return f0.a.d(fVar);
        }

        @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in the favour of 'tryReceive'. Please note that the provided replacement does not rethrow channel's close cause as 'poll' did, for the precise replacement please refer to the 'poll' documentation", replaceWith = @ReplaceWith(expression = "tryReceive().getOrNull()", imports = {}))
        @m8.h
        public static <E> E c(@m8.g f<E> fVar) {
            return (E) f0.a.h(fVar);
        }

        @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in favor of 'receiveCatching'. Please note that the provided replacement does not rethrow channel's close cause as 'receiveOrNull' did, for the detailed replacement please refer to the 'receiveOrNull' documentation", replaceWith = @ReplaceWith(expression = "receiveCatching().getOrNull()", imports = {}))
        @LowPriorityInOverloadResolution
        @m8.h
        public static <E> Object d(@m8.g f<E> fVar, @m8.g Continuation<? super E> continuation) {
            return f0.a.i(fVar, continuation);
        }
    }

    @m8.g
    m<E> getChannel();
}
