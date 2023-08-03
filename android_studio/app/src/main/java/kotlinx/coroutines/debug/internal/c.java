package kotlinx.coroutines.debug.internal;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.internal.p0;

/* compiled from: ConcurrentWeakMap.kt */
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\u001a\u000e\u0010\u0002\u001a\u00020\u0001*\u0004\u0018\u00010\u0000H\u0002\u001a\b\u0010\u0004\u001a\u00020\u0003H\u0002\"\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007\"\u0014\u0010\n\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\u0007\"\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r\"\u0014\u0010\u0010\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0002\u0010\u000f\"\u0014\u0010\u0011\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u000f¨\u0006\u0012"}, d2 = {"", "Lkotlinx/coroutines/debug/internal/j;", "d", "", "e", "", "a", "I", "MAGIC", "b", "MIN_CAPACITY", "Lkotlinx/coroutines/internal/p0;", "c", "Lkotlinx/coroutines/internal/p0;", "REHASH", "Lkotlinx/coroutines/debug/internal/j;", "MARKED_NULL", "MARKED_TRUE", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final int f85202a = -1640531527;

    /* renamed from: b  reason: collision with root package name */
    private static final int f85203b = 16;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private static final p0 f85204c = new p0("REHASH");
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private static final j f85205d = new j(null);
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private static final j f85206e = new j(Boolean.TRUE);

    /* JADX INFO: Access modifiers changed from: private */
    public static final j d(Object obj) {
        if (obj == null) {
            return f85205d;
        }
        return Intrinsics.areEqual(obj, Boolean.TRUE) ? f85206e : new j(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Void e() {
        throw new UnsupportedOperationException("not implemented");
    }
}
