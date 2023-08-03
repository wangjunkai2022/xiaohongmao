package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

/* compiled from: CoroutineContext.kt */
@Metadata(bv = {}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\b\u0081\b\u0018\u0000 \u001b2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\u0015B\u000f\u0012\u0006\u0010\r\u001a\u00020\u000b¢\u0006\u0004\b\u0019\u0010\u001aJ\b\u0010\u0004\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0002H\u0016J\t\u0010\f\u001a\u00020\u000bHÆ\u0003J\u0013\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\r\u001a\u00020\u000bHÆ\u0001J\t\u0010\u0010\u001a\u00020\u000fHÖ\u0001J\u0013\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011HÖ\u0003R\u0017\u0010\r\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001c"}, d2 = {"Lkotlinx/coroutines/q0;", "Lkotlinx/coroutines/n3;", "", "Lkotlin/coroutines/AbstractCoroutineContextElement;", "toString", "Lkotlin/coroutines/CoroutineContext;", "context", "u0", "oldState", "", "t0", "", "p0", "id", "q0", "", "hashCode", "", "other", "", "equals", "a", "J", "s0", "()J", "<init>", "(J)V", "b", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
@IgnoreJRERequirement
/* loaded from: classes4.dex */
public final class q0 extends AbstractCoroutineContextElement implements n3<String> {
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    public static final a f86357b = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final long f86358a;

    /* compiled from: CoroutineContext.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lkotlinx/coroutines/q0$a;", "Lkotlin/coroutines/CoroutineContext$Key;", "Lkotlinx/coroutines/q0;", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class a implements CoroutineContext.Key<q0> {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public q0(long j4) {
        super(f86357b);
        this.f86358a = j4;
    }

    public static /* synthetic */ q0 r0(q0 q0Var, long j4, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            j4 = q0Var.f86358a;
        }
        return q0Var.q0(j4);
    }

    public boolean equals(@m8.h Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof q0) && this.f86358a == ((q0) obj).f86358a;
    }

    public int hashCode() {
        return a5.a.a(this.f86358a);
    }

    public final long p0() {
        return this.f86358a;
    }

    @m8.g
    public final q0 q0(long j4) {
        return new q0(j4);
    }

    public final long s0() {
        return this.f86358a;
    }

    @Override // kotlinx.coroutines.n3
    /* renamed from: t0 */
    public void K(@m8.g CoroutineContext coroutineContext, @m8.g String str) {
        Thread.currentThread().setName(str);
    }

    @m8.g
    public String toString() {
        return "CoroutineId(" + this.f86358a + ')';
    }

    @Override // kotlinx.coroutines.n3
    @m8.g
    /* renamed from: u0 */
    public String l0(@m8.g CoroutineContext coroutineContext) {
        int lastIndexOf$default;
        String name;
        r0 r0Var = (r0) coroutineContext.get(r0.f86391b);
        String str = "coroutine";
        if (r0Var != null && (name = r0Var.getName()) != null) {
            str = name;
        }
        Thread currentThread = Thread.currentThread();
        String name2 = currentThread.getName();
        lastIndexOf$default = StringsKt__StringsKt.lastIndexOf$default((CharSequence) name2, " @", 0, false, 6, (Object) null);
        if (lastIndexOf$default < 0) {
            lastIndexOf$default = name2.length();
        }
        StringBuilder sb = new StringBuilder(str.length() + lastIndexOf$default + 10);
        String substring = name2.substring(0, lastIndexOf$default);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        sb.append(substring);
        sb.append(" @");
        sb.append(str);
        sb.append('#');
        sb.append(s0());
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder(capacity).…builderAction).toString()");
        currentThread.setName(sb2);
        return name2;
    }
}
