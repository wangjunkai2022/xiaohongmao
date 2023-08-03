package kotlinx.coroutines.internal;

import com.facebook.common.callercontext.ContextChain;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n3;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ThreadContext.kt */
@Metadata(bv = {}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0007\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\u0015\u001a\u00020\u0011¢\u0006\u0004\b\u0016\u0010\u0017J\u001c\u0010\u0006\u001a\u00020\u00052\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u0001J\u000e\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007R\u0014\u0010\b\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\nR\u001c\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\fR$\u0010\u0010\u001a\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0018"}, d2 = {"Lkotlinx/coroutines/internal/a1;", "", "Lkotlinx/coroutines/n3;", "element", "value", "", "a", "Lkotlin/coroutines/CoroutineContext;", "context", "b", "Lkotlin/coroutines/CoroutineContext;", "", "[Ljava/lang/Object;", "values", "c", "[Lkotlinx/coroutines/n3;", "elements", "", "d", "I", ContextChain.TAG_INFRA, "n", "<init>", "(Lkotlin/coroutines/CoroutineContext;I)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class a1 {
    @JvmField
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    public final CoroutineContext f86238a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final Object[] f86239b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final n3<Object>[] f86240c;

    /* renamed from: d  reason: collision with root package name */
    private int f86241d;

    public a1(@m8.g CoroutineContext coroutineContext, int i4) {
        this.f86238a = coroutineContext;
        this.f86239b = new Object[i4];
        this.f86240c = new n3[i4];
    }

    public final void a(@m8.g n3<?> n3Var, @m8.h Object obj) {
        Object[] objArr = this.f86239b;
        int i4 = this.f86241d;
        objArr[i4] = obj;
        n3<Object>[] n3VarArr = this.f86240c;
        this.f86241d = i4 + 1;
        n3VarArr[i4] = n3Var;
    }

    public final void b(@m8.g CoroutineContext coroutineContext) {
        int length = this.f86240c.length - 1;
        if (length < 0) {
            return;
        }
        while (true) {
            int i4 = length - 1;
            n3<Object> n3Var = this.f86240c[length];
            Intrinsics.checkNotNull(n3Var);
            n3Var.K(coroutineContext, this.f86239b[length]);
            if (i4 < 0) {
                return;
            }
            length = i4;
        }
    }
}
