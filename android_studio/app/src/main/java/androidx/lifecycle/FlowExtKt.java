package androidx.lifecycle;

import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.Lifecycle;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.k;

/* compiled from: FlowExt.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a.\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0004¨\u0006\u0007"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/i;", "Landroidx/lifecycle/Lifecycle;", "lifecycle", "Landroidx/lifecycle/Lifecycle$State;", "minActiveState", "flowWithLifecycle", "lifecycle-runtime-ktx_release"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes.dex */
public final class FlowExtKt {
    @m8.g
    public static final <T> kotlinx.coroutines.flow.i<T> flowWithLifecycle(@m8.g kotlinx.coroutines.flow.i<? extends T> iVar, @m8.g Lifecycle lifecycle, @m8.g Lifecycle.State minActiveState) {
        Intrinsics.checkNotNullParameter(iVar, "<this>");
        Intrinsics.checkNotNullParameter(lifecycle, "lifecycle");
        Intrinsics.checkNotNullParameter(minActiveState, "minActiveState");
        return k.s(new FlowExtKt$flowWithLifecycle$1(lifecycle, minActiveState, iVar, null));
    }

    public static /* synthetic */ kotlinx.coroutines.flow.i flowWithLifecycle$default(kotlinx.coroutines.flow.i iVar, Lifecycle lifecycle, Lifecycle.State state, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            state = Lifecycle.State.STARTED;
        }
        return flowWithLifecycle(iVar, lifecycle, state);
    }
}
