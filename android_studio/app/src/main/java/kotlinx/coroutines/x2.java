package kotlinx.coroutines;

import kotlin.Metadata;

/* compiled from: Job.kt */
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\bÇ\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\t\b\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\b\u0010\n\u001a\u00020\tH\u0016R\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\r¨\u0006\u0011"}, d2 = {"Lkotlinx/coroutines/x2;", "Lkotlinx/coroutines/l1;", "Lkotlinx/coroutines/w;", "", "dispose", "", "cause", "", "e", "", "toString", "Lkotlinx/coroutines/j2;", "getParent", "()Lkotlinx/coroutines/j2;", "parent", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
@e2
/* loaded from: classes4.dex */
public final class x2 implements l1, w {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    public static final x2 f86862a = new x2();

    private x2() {
    }

    @Override // kotlinx.coroutines.l1
    public void dispose() {
    }

    @Override // kotlinx.coroutines.w
    public boolean e(@m8.g Throwable th) {
        return false;
    }

    @Override // kotlinx.coroutines.w
    @m8.h
    public j2 getParent() {
        return null;
    }

    @m8.g
    public String toString() {
        return "NonDisposableHandle";
    }
}
