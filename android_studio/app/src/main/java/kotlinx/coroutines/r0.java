package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CoroutineName.kt */
@Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\b\u0086\b\u0018\u0000 \u00132\u00020\u0001:\u0001\rB\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\u0013\u0010\u0006\u001a\u00020\u00002\b\b\u0002\u0010\u0005\u001a\u00020\u0002HÆ\u0001J\t\u0010\b\u001a\u00020\u0007HÖ\u0001J\u0013\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\tHÖ\u0003R\u0017\u0010\u0005\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, d2 = {"Lkotlinx/coroutines/r0;", "Lkotlin/coroutines/AbstractCoroutineContextElement;", "", "toString", "p0", "name", "q0", "", "hashCode", "", "other", "", "equals", "a", "Ljava/lang/String;", "getName", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;)V", "b", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class r0 extends AbstractCoroutineContextElement {
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    public static final a f86391b = new a(null);
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final String f86392a;

    /* compiled from: CoroutineName.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lkotlinx/coroutines/r0$a;", "Lkotlin/coroutines/CoroutineContext$Key;", "Lkotlinx/coroutines/r0;", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class a implements CoroutineContext.Key<r0> {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public r0(@m8.g String str) {
        super(f86391b);
        this.f86392a = str;
    }

    public static /* synthetic */ r0 r0(r0 r0Var, String str, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = r0Var.f86392a;
        }
        return r0Var.q0(str);
    }

    public boolean equals(@m8.h Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof r0) && Intrinsics.areEqual(this.f86392a, ((r0) obj).f86392a);
    }

    @m8.g
    public final String getName() {
        return this.f86392a;
    }

    public int hashCode() {
        return this.f86392a.hashCode();
    }

    @m8.g
    public final String p0() {
        return this.f86392a;
    }

    @m8.g
    public final r0 q0(@m8.g String str) {
        return new r0(str);
    }

    @m8.g
    public String toString() {
        return "CoroutineName(" + this.f86392a + ')';
    }
}
