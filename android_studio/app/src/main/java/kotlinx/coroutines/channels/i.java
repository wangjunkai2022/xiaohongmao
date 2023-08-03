package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import java.util.concurrent.CancellationException;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlinx.coroutines.channels.j0;
import kotlinx.coroutines.z2;

/* compiled from: BroadcastChannel.kt */
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\bg\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H&J\u001a\u0010\t\u001a\u00020\b2\u0010\b\u0002\u0010\u0007\u001a\n\u0018\u00010\u0005j\u0004\u0018\u0001`\u0006H&J\u0014\u0010\f\u001a\u00020\u000b2\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\nH'¨\u0006\r"}, d2 = {"Lkotlinx/coroutines/channels/i;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/j0;", "Lkotlinx/coroutines/channels/f0;", "g", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "cause", "", "d", "", "", "b", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
@z2
/* loaded from: classes4.dex */
public interface i<E> extends j0<E> {

    /* compiled from: BroadcastChannel.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class a {
        public static /* synthetic */ void a(i iVar, CancellationException cancellationException, int i4, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
            }
            if ((i4 & 1) != 0) {
                cancellationException = null;
            }
            iVar.d(cancellationException);
        }

        public static /* synthetic */ boolean b(i iVar, Throwable th, int i4, Object obj) {
            if (obj == null) {
                if ((i4 & 1) != 0) {
                    th = null;
                }
                return iVar.b(th);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
        }

        @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in the favour of 'trySend' method", replaceWith = @ReplaceWith(expression = "trySend(element).isSuccess", imports = {}))
        public static <E> boolean c(@m8.g i<E> iVar, E e4) {
            return j0.a.c(iVar, e4);
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility only")
    /* synthetic */ boolean b(Throwable th);

    void d(@m8.h CancellationException cancellationException);

    @m8.g
    f0<E> g();
}
