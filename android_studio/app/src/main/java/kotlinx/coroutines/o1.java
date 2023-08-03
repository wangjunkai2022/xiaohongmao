package kotlinx.coroutines;

import kotlin.Metadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: JobSupport.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\b\u001a\u00020\u0004¢\u0006\u0004\b\r\u0010\u000eJ\b\u0010\u0003\u001a\u00020\u0002H\u0016R\u001a\u0010\b\u001a\u00020\u00048\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0005\u0010\u0007R\u0016\u0010\f\u001a\u0004\u0018\u00010\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b¨\u0006\u000f"}, d2 = {"Lkotlinx/coroutines/o1;", "Lkotlinx/coroutines/c2;", "", "toString", "", "a", "Z", "()Z", "isActive", "Lkotlinx/coroutines/v2;", "f", "()Lkotlinx/coroutines/v2;", "list", "<init>", "(Z)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class o1 implements c2 {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f86349a;

    public o1(boolean z9) {
        this.f86349a = z9;
    }

    @Override // kotlinx.coroutines.c2
    public boolean a() {
        return this.f86349a;
    }

    @Override // kotlinx.coroutines.c2
    @m8.h
    public v2 f() {
        return null;
    }

    @m8.g
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Empty{");
        sb.append(a() ? "Active" : "New");
        sb.append('}');
        return sb.toString();
    }
}
