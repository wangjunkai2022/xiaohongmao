package kotlinx.coroutines;

import com.facebook.common.callercontext.ContextChain;
import kotlin.Metadata;
import kotlin.jvm.JvmField;

/* compiled from: JobSupport.kt */
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\b\u001a\u0010\u0010\u0001\u001a\u0004\u0018\u00010\u0000*\u0004\u0018\u00010\u0000H\u0000\u001a\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0000*\u0004\u0018\u00010\u0000H\u0000\"\u001a\u0010\b\u001a\u00020\u00038\u0002X\u0083\u0004¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u0012\u0004\b\u0006\u0010\u0007\"\u001a\u0010\u000b\u001a\u00020\u00038\u0000X\u0081\u0004¢\u0006\f\n\u0004\b\t\u0010\u0005\u0012\u0004\b\n\u0010\u0007\"\u001a\u0010\u000e\u001a\u00020\u00038\u0002X\u0083\u0004¢\u0006\f\n\u0004\b\f\u0010\u0005\u0012\u0004\b\r\u0010\u0007\"\u001a\u0010\u0011\u001a\u00020\u00038\u0002X\u0083\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u0005\u0012\u0004\b\u0010\u0010\u0007\"\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014\"\u0014\u0010\u0017\u001a\u00020\u00128\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0016\u0010\u0014\"\u0014\u0010\u0018\u001a\u00020\u00128\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0001\u0010\u0014\"\u001a\u0010\u001b\u001a\u00020\u00038\u0002X\u0083\u0004¢\u0006\f\n\u0004\b\u0019\u0010\u0005\u0012\u0004\b\u001a\u0010\u0007\"\u001a\u0010 \u001a\u00020\u001c8\u0002X\u0083\u0004¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u0012\u0004\b\u001f\u0010\u0007\"\u001a\u0010#\u001a\u00020\u001c8\u0002X\u0083\u0004¢\u0006\f\n\u0004\b!\u0010\u001e\u0012\u0004\b\"\u0010\u0007¨\u0006$"}, d2 = {"", "g", "o", "Lkotlinx/coroutines/internal/p0;", "a", "Lkotlinx/coroutines/internal/p0;", "getCOMPLETING_ALREADY$annotations", "()V", "COMPLETING_ALREADY", "b", "getCOMPLETING_WAITING_CHILDREN$annotations", "COMPLETING_WAITING_CHILDREN", "c", "getCOMPLETING_RETRY$annotations", "COMPLETING_RETRY", "d", "getTOO_LATE_TO_CANCEL$annotations", "TOO_LATE_TO_CANCEL", "", "e", "I", "RETRY", "f", "FALSE", "TRUE", "h", "getSEALED$annotations", "SEALED", "Lkotlinx/coroutines/o1;", ContextChain.TAG_INFRA, "Lkotlinx/coroutines/o1;", "getEMPTY_NEW$annotations", "EMPTY_NEW", "j", "getEMPTY_ACTIVE$annotations", "EMPTY_ACTIVE", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class r2 {

    /* renamed from: e  reason: collision with root package name */
    private static final int f86397e = -1;

    /* renamed from: f  reason: collision with root package name */
    private static final int f86398f = 0;

    /* renamed from: g  reason: collision with root package name */
    private static final int f86399g = 1;
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private static final kotlinx.coroutines.internal.p0 f86393a = new kotlinx.coroutines.internal.p0("COMPLETING_ALREADY");
    @JvmField
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    public static final kotlinx.coroutines.internal.p0 f86394b = new kotlinx.coroutines.internal.p0("COMPLETING_WAITING_CHILDREN");
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private static final kotlinx.coroutines.internal.p0 f86395c = new kotlinx.coroutines.internal.p0("COMPLETING_RETRY");
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private static final kotlinx.coroutines.internal.p0 f86396d = new kotlinx.coroutines.internal.p0("TOO_LATE_TO_CANCEL");
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private static final kotlinx.coroutines.internal.p0 f86400h = new kotlinx.coroutines.internal.p0("SEALED");
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    private static final o1 f86401i = new o1(false);
    @m8.g

    /* renamed from: j  reason: collision with root package name */
    private static final o1 f86402j = new o1(true);

    @m8.h
    public static final Object g(@m8.h Object obj) {
        return obj instanceof c2 ? new d2((c2) obj) : obj;
    }

    private static /* synthetic */ void h() {
    }

    private static /* synthetic */ void i() {
    }

    public static /* synthetic */ void j() {
    }

    private static /* synthetic */ void k() {
    }

    private static /* synthetic */ void l() {
    }

    private static /* synthetic */ void m() {
    }

    private static /* synthetic */ void n() {
    }

    @m8.h
    public static final Object o(@m8.h Object obj) {
        c2 c2Var;
        d2 d2Var = obj instanceof d2 ? (d2) obj : null;
        return (d2Var == null || (c2Var = d2Var.f85152a) == null) ? obj : c2Var;
    }
}
