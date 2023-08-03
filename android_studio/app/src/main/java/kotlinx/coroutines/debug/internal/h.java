package kotlinx.coroutines.debug.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;

/* compiled from: DebugProbes.kt */
@Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\u001a\u0014\u0010\u0003\u001a\u00020\u00022\n\u0010\u0001\u001a\u0006\u0012\u0002\b\u00030\u0000H\u0000\u001a\u0014\u0010\u0004\u001a\u00020\u00022\n\u0010\u0001\u001a\u0006\u0012\u0002\b\u00030\u0000H\u0000\u001a\"\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000\"\u0004\b\u0000\u0010\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000H\u0000¨\u0006\b"}, d2 = {"Lkotlin/coroutines/Continuation;", TypedValues.Attributes.S_FRAME, "", "b", "c", ExifInterface.GPS_DIRECTION_TRUE, "completion", "a", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class h {
    @m8.g
    public static final <T> Continuation<T> a(@m8.g Continuation<? super T> continuation) {
        return DebugProbesImpl.f85154a.F(continuation);
    }

    public static final void b(@m8.g Continuation<?> continuation) {
        DebugProbesImpl.f85154a.G(continuation);
    }

    public static final void c(@m8.g Continuation<?> continuation) {
        DebugProbesImpl.f85154a.H(continuation);
    }
}
