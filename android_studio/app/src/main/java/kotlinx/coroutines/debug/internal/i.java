package kotlinx.coroutines.debug.internal;

import androidx.exifinterface.media.ExifInterface;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.JvmField;

/* compiled from: ConcurrentWeakMap.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u001f\u0012\u0006\u0010\u0007\u001a\u00028\u0000\u0012\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000bR\u0014\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005¨\u0006\f"}, d2 = {"Lkotlinx/coroutines/debug/internal/i;", ExifInterface.GPS_DIRECTION_TRUE, "Ljava/lang/ref/WeakReference;", "", "a", "I", "hash", "ref", "Ljava/lang/ref/ReferenceQueue;", "queue", "<init>", "(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class i<T> extends WeakReference<T> {
    @JvmField

    /* renamed from: a  reason: collision with root package name */
    public final int f85234a;

    public i(T t9, @m8.h ReferenceQueue<T> referenceQueue) {
        super(t9, referenceQueue);
        this.f85234a = t9 == null ? 0 : t9.hashCode();
    }
}
