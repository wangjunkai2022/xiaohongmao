package kotlinx.coroutines.internal;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LimitedDispatcher.kt */
@Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0002\b\u0002\u001a\f\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0000¨\u0006\u0003"}, d2 = {"", "", "a", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class s {
    public static final void a(int i4) {
        if (!(i4 >= 1)) {
            throw new IllegalArgumentException(Intrinsics.stringPlus("Expected positive parallelism level, but got ", Integer.valueOf(i4)).toString());
        }
    }
}
