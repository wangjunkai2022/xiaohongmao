package kotlinx.coroutines.sync;

import kotlin.Metadata;
import kotlin.jvm.JvmField;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Mutex.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0006\u001a\u00020\u0001¢\u0006\u0004\b\u0007\u0010\bJ\b\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\u0006\u001a\u00020\u00018\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005¨\u0006\t"}, d2 = {"Lkotlinx/coroutines/sync/b;", "", "", "toString", "a", "Ljava/lang/Object;", "locked", "<init>", "(Ljava/lang/Object;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class b {
    @JvmField
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    public final Object f86747a;

    public b(@m8.g Object obj) {
        this.f86747a = obj;
    }

    @m8.g
    public String toString() {
        return "Empty[" + this.f86747a + ']';
    }
}
