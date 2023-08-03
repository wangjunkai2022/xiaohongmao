package androidx.lifecycle;

import androidx.annotation.RequiresApi;
import androidx.exifinterface.media.ExifInterface;
import java.time.Duration;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.k;

/* compiled from: FlowLiveData.kt */
@Metadata(bv = {}, d1 = {"\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a2\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0004H\u0007\u001a\u001c\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0006\u001a0\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\b\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0007¨\u0006\u000b"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/i;", "Lkotlin/coroutines/CoroutineContext;", "context", "", "timeoutInMs", "Landroidx/lifecycle/LiveData;", "asLiveData", "asFlow", "Ljava/time/Duration;", "timeout", "lifecycle-livedata-ktx_release"}, k = 2, mv = {1, 6, 0})
@JvmName(name = "FlowLiveDataConversions")
/* loaded from: classes.dex */
public final class FlowLiveDataConversions {
    @m8.g
    public static final <T> kotlinx.coroutines.flow.i<T> asFlow(@m8.g LiveData<T> liveData) {
        Intrinsics.checkNotNullParameter(liveData, "<this>");
        return k.I0(new FlowLiveDataConversions$asFlow$1(liveData, null));
    }

    @JvmOverloads
    @m8.g
    public static final <T> LiveData<T> asLiveData(@m8.g kotlinx.coroutines.flow.i<? extends T> iVar) {
        Intrinsics.checkNotNullParameter(iVar, "<this>");
        return asLiveData$default(iVar, (CoroutineContext) null, 0L, 3, (Object) null);
    }

    @JvmOverloads
    @m8.g
    public static final <T> LiveData<T> asLiveData(@m8.g kotlinx.coroutines.flow.i<? extends T> iVar, @m8.g CoroutineContext context) {
        Intrinsics.checkNotNullParameter(iVar, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        return asLiveData$default(iVar, context, 0L, 2, (Object) null);
    }

    @JvmOverloads
    @m8.g
    public static final <T> LiveData<T> asLiveData(@m8.g kotlinx.coroutines.flow.i<? extends T> iVar, @m8.g CoroutineContext context, long j4) {
        Intrinsics.checkNotNullParameter(iVar, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        return CoroutineLiveDataKt.liveData(context, j4, new FlowLiveDataConversions$asLiveData$1(iVar, null));
    }

    public static /* synthetic */ LiveData asLiveData$default(kotlinx.coroutines.flow.i iVar, CoroutineContext coroutineContext, long j4, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        if ((i4 & 2) != 0) {
            j4 = 5000;
        }
        return asLiveData(iVar, coroutineContext, j4);
    }

    @RequiresApi(26)
    @m8.g
    public static final <T> LiveData<T> asLiveData(@m8.g kotlinx.coroutines.flow.i<? extends T> iVar, @m8.g CoroutineContext context, @m8.g Duration timeout) {
        Intrinsics.checkNotNullParameter(iVar, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(timeout, "timeout");
        return asLiveData(iVar, context, Api26Impl.INSTANCE.toMillis(timeout));
    }

    public static /* synthetic */ LiveData asLiveData$default(kotlinx.coroutines.flow.i iVar, CoroutineContext coroutineContext, Duration duration, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        return asLiveData(iVar, coroutineContext, duration);
    }
}
