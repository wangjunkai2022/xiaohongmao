package kotlinx.coroutines;

import com.facebook.common.callercontext.ContextChain;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;

/* compiled from: Dispatchers.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0018\u0010\nJ\b\u0010\u0003\u001a\u00020\u0002H\u0007R \u0010\u000b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0012\n\u0004\b\u0005\u0010\u0006\u0012\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\bR \u0010\u000f\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0012\n\u0004\b\f\u0010\u0006\u0012\u0004\b\u000e\u0010\n\u001a\u0004\b\r\u0010\bR \u0010\u0012\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0012\n\u0004\b\u0010\u0010\u0006\u0012\u0004\b\u0011\u0010\n\u001a\u0004\b\f\u0010\bR\u001a\u0010\u0017\u001a\u00020\u00138FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0016\u0010\n\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0019"}, d2 = {"Lkotlinx/coroutines/i1;", "", "", ContextChain.TAG_INFRA, "Lkotlinx/coroutines/n0;", "b", "Lkotlinx/coroutines/n0;", "a", "()Lkotlinx/coroutines/n0;", "getDefault$annotations", "()V", "Default", "c", "g", "getUnconfined$annotations", "Unconfined", "d", "getIO$annotations", "IO", "Lkotlinx/coroutines/u2;", "e", "()Lkotlinx/coroutines/u2;", "getMain$annotations", "Main", "<init>", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class i1 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    public static final i1 f86196a = new i1();
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private static final n0 f86197b = kotlinx.coroutines.scheduling.c.f86667g;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private static final n0 f86198c = v3.f86845a;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private static final n0 f86199d = kotlinx.coroutines.scheduling.b.f86665b;

    private i1() {
    }

    @m8.g
    public static final n0 a() {
        return f86197b;
    }

    @JvmStatic
    public static /* synthetic */ void b() {
    }

    @m8.g
    public static final n0 c() {
        return f86199d;
    }

    @JvmStatic
    public static /* synthetic */ void d() {
    }

    @m8.g
    public static final u2 e() {
        return kotlinx.coroutines.internal.c0.f86250c;
    }

    @JvmStatic
    public static /* synthetic */ void f() {
    }

    @m8.g
    public static final n0 g() {
        return f86198c;
    }

    @JvmStatic
    public static /* synthetic */ void h() {
    }

    @c1
    public final void i() {
        w0.f86846f.shutdown();
        kotlinx.coroutines.scheduling.c.f86667g.v0();
    }
}
