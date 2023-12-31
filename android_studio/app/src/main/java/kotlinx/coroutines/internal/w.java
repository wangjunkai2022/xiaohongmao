package kotlinx.coroutines.internal;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.PublishedApi;

/* compiled from: LockFreeLinkedList.kt */
@Metadata(bv = {}, d1 = {"\u00004\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0010\u0010\u0003\u001a\u00060\u0001j\u0002`\u0002*\u00020\u0000H\u0001\"\u001a\u0010\t\u001a\u00020\u00048\u0000X\u0081T¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u0012\u0004\b\u0007\u0010\b\"\u001a\u0010\f\u001a\u00020\u00048\u0000X\u0081T¢\u0006\f\n\u0004\b\n\u0010\u0006\u0012\u0004\b\u000b\u0010\b\"\u001a\u0010\u000f\u001a\u00020\u00048\u0000X\u0081T¢\u0006\f\n\u0004\b\r\u0010\u0006\u0012\u0004\b\u000e\u0010\b\" \u0010\u0014\u001a\u00020\u00008\u0000X\u0081\u0004¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u0012\u0004\b\u0013\u0010\b\u001a\u0004\b\u0005\u0010\u0012\" \u0010\u0017\u001a\u00020\u00008\u0000X\u0081\u0004¢\u0006\u0012\n\u0004\b\u0015\u0010\u0011\u0012\u0004\b\u0016\u0010\b\u001a\u0004\b\u0010\u0010\u0012*\n\u0010\u0019\"\u00020\u00182\u00020\u0018*\u001c\u0010\u001c\u001a\u0004\b\u0000\u0010\u001a\"\b\u0012\u0004\u0012\u00028\u00000\u001b2\b\u0012\u0004\u0012\u00028\u00000\u001b*\f\b\u0002\u0010\u001d\"\u00020\u00012\u00020\u0001*\n\u0010\u001f\"\u00020\u001e2\u00020\u001e*\u001c\u0010!\u001a\u0004\b\u0000\u0010\u001a\"\b\u0012\u0004\u0012\u00028\u00000 2\b\u0012\u0004\u0012\u00028\u00000 ¨\u0006\""}, d2 = {"", "Lkotlinx/coroutines/internal/x;", "Lkotlinx/coroutines/internal/Node;", "h", "", "a", "I", "getUNDECIDED$annotations", "()V", "UNDECIDED", "b", "getSUCCESS$annotations", "SUCCESS", "c", "getFAILURE$annotations", "FAILURE", "d", "Ljava/lang/Object;", "()Ljava/lang/Object;", "getCONDITION_FALSE$annotations", "CONDITION_FALSE", "e", "getLIST_EMPTY$annotations", "LIST_EMPTY", "Lkotlinx/coroutines/internal/x$a;", "AbstractAtomicDesc", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/internal/x$b;", "AddLastDesc", "Node", "Lkotlinx/coroutines/internal/x$d;", "PrepareOp", "Lkotlinx/coroutines/internal/x$e;", "RemoveFirstDesc", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class w {

    /* renamed from: a  reason: collision with root package name */
    public static final int f86305a = 0;

    /* renamed from: b  reason: collision with root package name */
    public static final int f86306b = 1;

    /* renamed from: c  reason: collision with root package name */
    public static final int f86307c = 2;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private static final Object f86308d = new p0("CONDITION_FALSE");
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private static final Object f86309e = new p0("LIST_EMPTY");

    @m8.g
    public static final Object a() {
        return f86308d;
    }

    @PublishedApi
    public static /* synthetic */ void b() {
    }

    @PublishedApi
    public static /* synthetic */ void c() {
    }

    @m8.g
    public static final Object d() {
        return f86309e;
    }

    @PublishedApi
    public static /* synthetic */ void e() {
    }

    @PublishedApi
    public static /* synthetic */ void f() {
    }

    @PublishedApi
    public static /* synthetic */ void g() {
    }

    @PublishedApi
    @m8.g
    public static final x h(@m8.g Object obj) {
        j0 j0Var = obj instanceof j0 ? (j0) obj : null;
        x xVar = j0Var != null ? j0Var.f86268a : null;
        return xVar == null ? (x) obj : xVar;
    }
}
