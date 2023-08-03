package kotlinx.coroutines.internal;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import io.sentry.protocol.t;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference0Impl;
import kotlinx.coroutines.e2;

/* compiled from: LockFreeLinkedList.kt */
@Metadata(bv = {}, d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0010\b\u0017\u0018\u00002\u00020\u0001:\u0005IJKLMB\u0007¢\u0006\u0004\bH\u00102J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J \u0010\u0007\u001a\u00060\u0000j\u0002`\u00052\n\u0010\u0006\u001a\u00060\u0000j\u0002`\u0005H\u0082\u0010¢\u0006\u0004\b\u0007\u0010\bJ\u001b\u0010\u000b\u001a\u00020\n2\n\u0010\t\u001a\u00060\u0000j\u0002`\u0005H\u0002¢\u0006\u0004\b\u000b\u0010\fJ\"\u0010\u000f\u001a\n\u0018\u00010\u0000j\u0004\u0018\u0001`\u00052\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0082\u0010¢\u0006\u0004\b\u000f\u0010\u0010J,\u0010\u0016\u001a\u00020\u00152\n\u0010\u0011\u001a\u00060\u0000j\u0002`\u00052\u000e\b\u0004\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012H\u0081\b¢\u0006\u0004\b\u0016\u0010\u0017J\u0019\u0010\u0018\u001a\u00020\u00132\n\u0010\u0011\u001a\u00060\u0000j\u0002`\u0005¢\u0006\u0004\b\u0018\u0010\u0019J\u0019\u0010\u001a\u001a\u00020\n2\n\u0010\u0011\u001a\u00060\u0000j\u0002`\u0005¢\u0006\u0004\b\u001a\u0010\fJ)\u0010\u001d\u001a\b\u0012\u0004\u0012\u00028\u00000\u001c\"\f\b\u0000\u0010\u001b*\u00060\u0000j\u0002`\u00052\u0006\u0010\u0011\u001a\u00028\u0000¢\u0006\u0004\b\u001d\u0010\u001eJ,\u0010\u001f\u001a\u00020\u00132\n\u0010\u0011\u001a\u00060\u0000j\u0002`\u00052\u000e\b\u0004\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012H\u0086\b¢\u0006\u0004\b\u001f\u0010 J4\u0010#\u001a\u00020\u00132\n\u0010\u0011\u001a\u00060\u0000j\u0002`\u00052\u0016\u0010\"\u001a\u0012\u0012\b\u0012\u00060\u0000j\u0002`\u0005\u0012\u0004\u0012\u00020\u00130!H\u0086\b¢\u0006\u0004\b#\u0010$JD\u0010%\u001a\u00020\u00132\n\u0010\u0011\u001a\u00060\u0000j\u0002`\u00052\u0016\u0010\"\u001a\u0012\u0012\b\u0012\u00060\u0000j\u0002`\u0005\u0012\u0004\u0012\u00020\u00130!2\u000e\b\u0004\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012H\u0086\b¢\u0006\u0004\b%\u0010&J'\u0010'\u001a\u00020\u00132\n\u0010\u0011\u001a\u00060\u0000j\u0002`\u00052\n\u0010\t\u001a\u00060\u0000j\u0002`\u0005H\u0001¢\u0006\u0004\b'\u0010(J/\u0010+\u001a\u00020*2\n\u0010\u0011\u001a\u00060\u0000j\u0002`\u00052\n\u0010\t\u001a\u00060\u0000j\u0002`\u00052\u0006\u0010)\u001a\u00020\u0015H\u0001¢\u0006\u0004\b+\u0010,J\u000f\u0010-\u001a\u00020\u0013H\u0016¢\u0006\u0004\b-\u0010.J\u0017\u0010/\u001a\n\u0018\u00010\u0000j\u0004\u0018\u0001`\u0005H\u0001¢\u0006\u0004\b/\u00100J\r\u00101\u001a\u00020\n¢\u0006\u0004\b1\u00102J\u000f\u00103\u001a\u00020\nH\u0001¢\u0006\u0004\b3\u00102J\u0015\u00104\u001a\n\u0018\u00010\u0000j\u0004\u0018\u0001`\u0005¢\u0006\u0004\b4\u00100J\u0017\u00106\u001a\f\u0012\b\u0012\u00060\u0000j\u0002`\u000505¢\u0006\u0004\b6\u00107J.\u00108\u001a\u0004\u0018\u00018\u0000\"\u0006\b\u0000\u0010\u001b\u0018\u00012\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00130!H\u0086\b¢\u0006\u0004\b8\u00109J\u0017\u0010:\u001a\n\u0018\u00010\u0000j\u0004\u0018\u0001`\u0005H\u0014¢\u0006\u0004\b:\u00100J'\u0010<\u001a\u00020\n2\n\u0010;\u001a\u00060\u0000j\u0002`\u00052\n\u0010\t\u001a\u00060\u0000j\u0002`\u0005H\u0000¢\u0006\u0004\b<\u0010=J\u000f\u0010?\u001a\u00020>H\u0016¢\u0006\u0004\b?\u0010@R\u0014\u0010B\u001a\u00020\u00138VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bA\u0010.R\u0011\u0010\t\u001a\u00020\u00018F¢\u0006\u0006\u001a\u0004\bC\u0010DR\u0015\u0010F\u001a\u00060\u0000j\u0002`\u00058F¢\u0006\u0006\u001a\u0004\bE\u00100R\u0015\u0010G\u001a\u00060\u0000j\u0002`\u00058F¢\u0006\u0006\u001a\u0004\b\u001b\u00100¨\u0006N"}, d2 = {"Lkotlinx/coroutines/internal/x;", "", "Lkotlinx/coroutines/internal/j0;", "d0", "()Lkotlinx/coroutines/internal/j0;", "Lkotlinx/coroutines/internal/Node;", t.b.f83861f, "P", "(Lkotlinx/coroutines/internal/x;)Lkotlinx/coroutines/internal/x;", "next", "", "Q", "(Lkotlinx/coroutines/internal/x;)V", "Lkotlinx/coroutines/internal/h0;", "op", "M", "(Lkotlinx/coroutines/internal/h0;)Lkotlinx/coroutines/internal/x;", "node", "Lkotlin/Function0;", "", "condition", "Lkotlinx/coroutines/internal/x$c;", "X", "(Lkotlinx/coroutines/internal/x;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/internal/x$c;", "L", "(Lkotlinx/coroutines/internal/x;)Z", "F", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/internal/x$b;", "N", "(Lkotlinx/coroutines/internal/x;)Lkotlinx/coroutines/internal/x$b;", "G", "(Lkotlinx/coroutines/internal/x;Lkotlin/jvm/functions/Function0;)Z", "Lkotlin/Function1;", "predicate", "H", "(Lkotlinx/coroutines/internal/x;Lkotlin/jvm/functions/Function1;)Z", "J", "(Lkotlinx/coroutines/internal/x;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Z", "K", "(Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x;)Z", "condAdd", "", "e0", "(Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x$c;)I", "Z", "()Z", "c0", "()Lkotlinx/coroutines/internal/x;", "U", "()V", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "b0", "Lkotlinx/coroutines/internal/x$e;", "O", "()Lkotlinx/coroutines/internal/x$e;", "a0", "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "Y", "prev", "f0", "(Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x;)V", "", "toString", "()Ljava/lang/String;", ExifInterface.LONGITUDE_WEST, "isRemoved", "R", "()Ljava/lang/Object;", ExifInterface.LATITUDE_SOUTH, "nextNode", "prevNode", "<init>", "a", "b", "c", "d", "e", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
@e2
/* loaded from: classes4.dex */
public class x {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ AtomicReferenceFieldUpdater f86311a = AtomicReferenceFieldUpdater.newUpdater(x.class, Object.class, "_next");

    /* renamed from: b  reason: collision with root package name */
    static final /* synthetic */ AtomicReferenceFieldUpdater f86312b = AtomicReferenceFieldUpdater.newUpdater(x.class, Object.class, "_prev");

    /* renamed from: c  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f86313c = AtomicReferenceFieldUpdater.newUpdater(x.class, Object.class, "_removedRef");
    @m8.g
    volatile /* synthetic */ Object _next = this;
    @m8.g
    volatile /* synthetic */ Object _prev = this;
    @m8.g
    private volatile /* synthetic */ Object _removedRef = null;

    /* compiled from: LockFreeLinkedList.kt */
    @Metadata(bv = {}, d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001e\u0010\u001fJ\u0018\u0010\u0006\u001a\n\u0018\u00010\u0004j\u0004\u0018\u0001`\u00052\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0016\u0010\t\u001a\u0004\u0018\u00010\b2\n\u0010\u0007\u001a\u00060\u0004j\u0002`\u0005H\u0014J\u001c\u0010\f\u001a\u00020\u000b2\n\u0010\u0007\u001a\u00060\u0004j\u0002`\u00052\u0006\u0010\n\u001a\u00020\bH\u0014J \u0010\u000e\u001a\u00020\r2\n\u0010\u0007\u001a\u00060\u0004j\u0002`\u00052\n\u0010\n\u001a\u00060\u0004j\u0002`\u0005H$J \u0010\u000f\u001a\u00020\b2\n\u0010\u0007\u001a\u00060\u0004j\u0002`\u00052\n\u0010\n\u001a\u00060\u0004j\u0002`\u0005H&J\u0010\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0010H&J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\u0014\u0010\u0014\u001a\u00020\r2\n\u0010\u0007\u001a\u00060\u0004j\u0002`\u0005H\u0016J\u0014\u0010\u0016\u001a\u0004\u0018\u00010\b2\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0015J\u001c\u0010\u0018\u001a\u00020\r2\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u00152\b\u0010\u0017\u001a\u0004\u0018\u00010\bR\u001c\u0010\u001b\u001a\n\u0018\u00010\u0004j\u0004\u0018\u0001`\u00058$X¤\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001aR\u001c\u0010\u001d\u001a\n\u0018\u00010\u0004j\u0004\u0018\u0001`\u00058$X¤\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001a¨\u0006 "}, d2 = {"Lkotlinx/coroutines/internal/x$a;", "Lkotlinx/coroutines/internal/b;", "Lkotlinx/coroutines/internal/h0;", "op", "Lkotlinx/coroutines/internal/x;", "Lkotlinx/coroutines/internal/Node;", "m", "affected", "", "e", "next", "", "l", "", "f", "n", "Lkotlinx/coroutines/internal/x$d;", "prepareOp", "g", "j", "k", "Lkotlinx/coroutines/internal/d;", "c", "failure", "a", "h", "()Lkotlinx/coroutines/internal/x;", "affectedNode", ContextChain.TAG_INFRA, "originalNext", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static abstract class a extends kotlinx.coroutines.internal.b {
        @Override // kotlinx.coroutines.internal.b
        public final void a(@m8.g kotlinx.coroutines.internal.d<?> dVar, @m8.h Object obj) {
            x i4;
            boolean z9 = obj == null;
            x h4 = h();
            if (h4 == null || (i4 = i()) == null) {
                return;
            }
            if (androidx.concurrent.futures.a.a(x.f86311a, h4, dVar, z9 ? n(h4, i4) : i4) && z9) {
                f(h4, i4);
            }
        }

        @Override // kotlinx.coroutines.internal.b
        @m8.h
        public final Object c(@m8.g kotlinx.coroutines.internal.d<?> dVar) {
            while (true) {
                x m9 = m(dVar);
                if (m9 == null) {
                    return kotlinx.coroutines.internal.c.f86247b;
                }
                Object obj = m9._next;
                if (obj == dVar || dVar.h()) {
                    return null;
                }
                if (obj instanceof h0) {
                    h0 h0Var = (h0) obj;
                    if (dVar.b(h0Var)) {
                        return kotlinx.coroutines.internal.c.f86247b;
                    }
                    h0Var.c(m9);
                } else {
                    Object e4 = e(m9);
                    if (e4 != null) {
                        return e4;
                    }
                    if (l(m9, obj)) {
                        continue;
                    } else {
                        d dVar2 = new d(m9, (x) obj, this);
                        if (androidx.concurrent.futures.a.a(x.f86311a, m9, obj, dVar2)) {
                            try {
                                if (dVar2.c(m9) != y.f86327a) {
                                    return null;
                                }
                            } catch (Throwable th) {
                                androidx.concurrent.futures.a.a(x.f86311a, m9, dVar2, obj);
                                throw th;
                            }
                        } else {
                            continue;
                        }
                    }
                }
            }
        }

        @m8.h
        protected Object e(@m8.g x xVar) {
            return null;
        }

        protected abstract void f(@m8.g x xVar, @m8.g x xVar2);

        public abstract void g(@m8.g d dVar);

        @m8.h
        protected abstract x h();

        @m8.h
        protected abstract x i();

        @m8.h
        public Object j(@m8.g d dVar) {
            g(dVar);
            return null;
        }

        public void k(@m8.g x xVar) {
        }

        protected boolean l(@m8.g x xVar, @m8.g Object obj) {
            return false;
        }

        @m8.h
        protected x m(@m8.g h0 h0Var) {
            x h4 = h();
            Intrinsics.checkNotNull(h4);
            return h4;
        }

        @m8.g
        public abstract Object n(@m8.g x xVar, @m8.g x xVar2);
    }

    /* compiled from: LockFreeLinkedList.kt */
    @Metadata(bv = {}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0012\b\u0016\u0018\u0000*\f\b\u0000\u0010\u0003*\u00060\u0001j\u0002`\u00022\u00020\u0004B\u001b\u0012\n\u0010\u001a\u001a\u00060\u0001j\u0002`\u0002\u0012\u0006\u0010\u001c\u001a\u00028\u0000¢\u0006\u0004\b\"\u0010\u0017J\u001f\u0010\u0007\u001a\n\u0018\u00010\u0001j\u0004\u0018\u0001`\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0004¢\u0006\u0004\b\u0007\u0010\bJ#\u0010\r\u001a\u00020\f2\n\u0010\t\u001a\u00060\u0001j\u0002`\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0014¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J'\u0010\u0014\u001a\u00020\n2\n\u0010\t\u001a\u00060\u0001j\u0002`\u00022\n\u0010\u000b\u001a\u00060\u0001j\u0002`\u0002H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J'\u0010\u0016\u001a\u00020\u00112\n\u0010\t\u001a\u00060\u0001j\u0002`\u00022\n\u0010\u000b\u001a\u00060\u0001j\u0002`\u0002H\u0014¢\u0006\u0004\b\u0016\u0010\u0017R\u0018\u0010\u001a\u001a\u00060\u0001j\u0002`\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001c\u001a\u00028\u00008\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u0019R\u001c\u0010\u001f\u001a\n\u0018\u00010\u0001j\u0004\u0018\u0001`\u00028DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001eR\u0018\u0010!\u001a\u00060\u0001j\u0002`\u00028DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b \u0010\u001e¨\u0006#"}, d2 = {"Lkotlinx/coroutines/internal/x$b;", "Lkotlinx/coroutines/internal/x;", "Lkotlinx/coroutines/internal/Node;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/internal/x$a;", "Lkotlinx/coroutines/internal/h0;", "op", "m", "(Lkotlinx/coroutines/internal/h0;)Lkotlinx/coroutines/internal/x;", "affected", "", "next", "", "l", "(Lkotlinx/coroutines/internal/x;Ljava/lang/Object;)Z", "Lkotlinx/coroutines/internal/x$d;", "prepareOp", "", "g", "(Lkotlinx/coroutines/internal/x$d;)V", "n", "(Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x;)Ljava/lang/Object;", "f", "(Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x;)V", "b", "Lkotlinx/coroutines/internal/x;", "queue", "c", "node", "h", "()Lkotlinx/coroutines/internal/x;", "affectedNode", ContextChain.TAG_INFRA, "originalNext", "<init>", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static class b<T extends x> extends a {

        /* renamed from: d  reason: collision with root package name */
        private static final /* synthetic */ AtomicReferenceFieldUpdater f86314d = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "_affectedNode");
        @m8.g
        private volatile /* synthetic */ Object _affectedNode = null;
        @JvmField
        @m8.g

        /* renamed from: b  reason: collision with root package name */
        public final x f86315b;
        @JvmField
        @m8.g

        /* renamed from: c  reason: collision with root package name */
        public final T f86316c;

        public b(@m8.g x xVar, @m8.g T t9) {
            this.f86315b = xVar;
            this.f86316c = t9;
        }

        @Override // kotlinx.coroutines.internal.x.a
        protected void f(@m8.g x xVar, @m8.g x xVar2) {
            this.f86316c.Q(this.f86315b);
        }

        @Override // kotlinx.coroutines.internal.x.a
        public void g(@m8.g d dVar) {
            androidx.concurrent.futures.a.a(f86314d, this, null, dVar.f86319a);
        }

        @Override // kotlinx.coroutines.internal.x.a
        @m8.h
        protected final x h() {
            return (x) this._affectedNode;
        }

        @Override // kotlinx.coroutines.internal.x.a
        @m8.g
        protected final x i() {
            return this.f86315b;
        }

        @Override // kotlinx.coroutines.internal.x.a
        protected boolean l(@m8.g x xVar, @m8.g Object obj) {
            return obj != this.f86315b;
        }

        @Override // kotlinx.coroutines.internal.x.a
        @m8.h
        protected final x m(@m8.g h0 h0Var) {
            return this.f86315b.M(h0Var);
        }

        @Override // kotlinx.coroutines.internal.x.a
        @m8.g
        public Object n(@m8.g x xVar, @m8.g x xVar2) {
            T t9 = this.f86316c;
            androidx.concurrent.futures.a.a(x.f86312b, t9, t9, xVar);
            T t10 = this.f86316c;
            androidx.concurrent.futures.a.a(x.f86311a, t10, t10, this.f86315b);
            return this.f86316c;
        }
    }

    /* compiled from: LockFreeLinkedList.kt */
    @Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\b!\u0018\u00002\f\u0012\b\u0012\u00060\u0002j\u0002`\u00030\u0001B\u0013\u0012\n\u0010\u000b\u001a\u00060\u0002j\u0002`\u0003¢\u0006\u0004\b\u000e\u0010\u000fJ\u001e\u0010\b\u001a\u00020\u00072\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016R\u0018\u0010\u000b\u001a\u00060\u0002j\u0002`\u00038\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u001e\u0010\r\u001a\n\u0018\u00010\u0002j\u0004\u0018\u0001`\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\f\u0010\n¨\u0006\u0010"}, d2 = {"Lkotlinx/coroutines/internal/x$c;", "Lkotlinx/coroutines/internal/d;", "Lkotlinx/coroutines/internal/x;", "Lkotlinx/coroutines/internal/Node;", "affected", "", "failure", "", "j", "b", "Lkotlinx/coroutines/internal/x;", "newNode", "c", "oldNext", "<init>", "(Lkotlinx/coroutines/internal/x;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    @PublishedApi
    /* loaded from: classes4.dex */
    public static abstract class c extends kotlinx.coroutines.internal.d<x> {
        @JvmField
        @m8.g

        /* renamed from: b  reason: collision with root package name */
        public final x f86317b;
        @m8.h
        @JvmField

        /* renamed from: c  reason: collision with root package name */
        public x f86318c;

        public c(@m8.g x xVar) {
            this.f86317b = xVar;
        }

        @Override // kotlinx.coroutines.internal.d
        /* renamed from: j */
        public void d(@m8.g x xVar, @m8.h Object obj) {
            boolean z9 = obj == null;
            x xVar2 = z9 ? this.f86317b : this.f86318c;
            if (xVar2 != null && androidx.concurrent.futures.a.a(x.f86311a, xVar, this, xVar2) && z9) {
                x xVar3 = this.f86317b;
                x xVar4 = this.f86318c;
                Intrinsics.checkNotNull(xVar4);
                xVar3.Q(xVar4);
            }
        }
    }

    /* compiled from: LockFreeLinkedList.kt */
    @Metadata(bv = {}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B'\u0012\n\u0010\u0003\u001a\u00060\tj\u0002`\n\u0012\n\u0010\u000e\u001a\u00060\tj\u0002`\n\u0012\u0006\u0010\u0011\u001a\u00020\u000f¢\u0006\u0004\b\u0015\u0010\u0016J\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0006\u0010\u0006\u001a\u00020\u0005J\b\u0010\b\u001a\u00020\u0007H\u0016R\u0018\u0010\u0003\u001a\u00060\tj\u0002`\n8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0018\u0010\u000e\u001a\u00060\tj\u0002`\n8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\r\u0010\fR\u0014\u0010\u0011\u001a\u00020\u000f8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0010R\u0018\u0010\u0014\u001a\u0006\u0012\u0002\b\u00030\u00128VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\u0013¨\u0006\u0017"}, d2 = {"Lkotlinx/coroutines/internal/x$d;", "Lkotlinx/coroutines/internal/h0;", "", "affected", "c", "", "d", "", "toString", "Lkotlinx/coroutines/internal/x;", "Lkotlinx/coroutines/internal/Node;", "a", "Lkotlinx/coroutines/internal/x;", "b", "next", "Lkotlinx/coroutines/internal/x$a;", "Lkotlinx/coroutines/internal/x$a;", "desc", "Lkotlinx/coroutines/internal/d;", "()Lkotlinx/coroutines/internal/d;", "atomicOp", "<init>", "(Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x$a;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class d extends h0 {
        @JvmField
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        public final x f86319a;
        @JvmField
        @m8.g

        /* renamed from: b  reason: collision with root package name */
        public final x f86320b;
        @JvmField
        @m8.g

        /* renamed from: c  reason: collision with root package name */
        public final a f86321c;

        public d(@m8.g x xVar, @m8.g x xVar2, @m8.g a aVar) {
            this.f86319a = xVar;
            this.f86320b = xVar2;
            this.f86321c = aVar;
        }

        @Override // kotlinx.coroutines.internal.h0
        @m8.g
        public kotlinx.coroutines.internal.d<?> a() {
            return this.f86321c.b();
        }

        @Override // kotlinx.coroutines.internal.h0
        @m8.h
        public Object c(@m8.h Object obj) {
            Object f10;
            Object obj2;
            Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
            x xVar = (x) obj;
            Object j4 = this.f86321c.j(this);
            Object obj3 = y.f86327a;
            if (j4 == obj3) {
                x xVar2 = this.f86320b;
                if (androidx.concurrent.futures.a.a(x.f86311a, xVar, this, xVar2.d0())) {
                    this.f86321c.k(xVar);
                    xVar2.M(null);
                }
                return obj3;
            }
            if (j4 != null) {
                f10 = a().e(j4);
            } else {
                f10 = a().f();
            }
            if (f10 == kotlinx.coroutines.internal.c.f86246a) {
                obj2 = a();
            } else if (f10 == null) {
                obj2 = this.f86321c.n(xVar, this.f86320b);
            } else {
                obj2 = this.f86320b;
            }
            androidx.concurrent.futures.a.a(x.f86311a, xVar, this, obj2);
            return null;
        }

        public final void d() {
            this.f86321c.g(this);
        }

        @Override // kotlinx.coroutines.internal.h0
        @m8.g
        public String toString() {
            return "PrepareOp(op=" + a() + ')';
        }
    }

    /* compiled from: LockFreeLinkedList.kt */
    @Metadata(bv = {}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0016\b\u0016\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0013\u0012\n\u0010\u001c\u001a\u00060\u0005j\u0002`\u0006¢\u0006\u0004\b'\u0010(J\u001f\u0010\u0007\u001a\n\u0018\u00010\u0005j\u0004\u0018\u0001`\u00062\u0006\u0010\u0004\u001a\u00020\u0003H\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u001d\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\u0010\t\u001a\u00060\u0005j\u0002`\u0006H\u0014¢\u0006\u0004\b\u000b\u0010\fJ#\u0010\u000f\u001a\u00020\u000e2\n\u0010\t\u001a\u00060\u0005j\u0002`\u00062\u0006\u0010\r\u001a\u00020\nH\u0004¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J%\u0010\u0016\u001a\u00020\n2\n\u0010\t\u001a\u00060\u0005j\u0002`\u00062\n\u0010\r\u001a\u00060\u0005j\u0002`\u0006¢\u0006\u0004\b\u0016\u0010\u0017J'\u0010\u0018\u001a\u00020\u00132\n\u0010\t\u001a\u00060\u0005j\u0002`\u00062\n\u0010\r\u001a\u00060\u0005j\u0002`\u0006H\u0004¢\u0006\u0004\b\u0018\u0010\u0019R\u0018\u0010\u001c\u001a\u00060\u0005j\u0002`\u00068\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0017\u0010!\u001a\u00028\u00008F¢\u0006\f\u0012\u0004\b\u001f\u0010 \u001a\u0004\b\u001d\u0010\u001eR\u001c\u0010$\u001a\n\u0018\u00010\u0005j\u0004\u0018\u0001`\u00068DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b\"\u0010#R\u001c\u0010&\u001a\n\u0018\u00010\u0005j\u0004\u0018\u0001`\u00068DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b%\u0010#¨\u0006)"}, d2 = {"Lkotlinx/coroutines/internal/x$e;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/internal/x$a;", "Lkotlinx/coroutines/internal/h0;", "op", "Lkotlinx/coroutines/internal/x;", "Lkotlinx/coroutines/internal/Node;", "m", "(Lkotlinx/coroutines/internal/h0;)Lkotlinx/coroutines/internal/x;", "affected", "", "e", "(Lkotlinx/coroutines/internal/x;)Ljava/lang/Object;", "next", "", "l", "(Lkotlinx/coroutines/internal/x;Ljava/lang/Object;)Z", "Lkotlinx/coroutines/internal/x$d;", "prepareOp", "", "g", "(Lkotlinx/coroutines/internal/x$d;)V", "n", "(Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x;)Ljava/lang/Object;", "f", "(Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x;)V", "b", "Lkotlinx/coroutines/internal/x;", "queue", "o", "()Ljava/lang/Object;", "getResult$annotations", "()V", "result", "h", "()Lkotlinx/coroutines/internal/x;", "affectedNode", ContextChain.TAG_INFRA, "originalNext", "<init>", "(Lkotlinx/coroutines/internal/x;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static class e<T> extends a {

        /* renamed from: c  reason: collision with root package name */
        private static final /* synthetic */ AtomicReferenceFieldUpdater f86322c = AtomicReferenceFieldUpdater.newUpdater(e.class, Object.class, "_affectedNode");

        /* renamed from: d  reason: collision with root package name */
        private static final /* synthetic */ AtomicReferenceFieldUpdater f86323d = AtomicReferenceFieldUpdater.newUpdater(e.class, Object.class, "_originalNext");
        @m8.g
        private volatile /* synthetic */ Object _affectedNode = null;
        @m8.g
        private volatile /* synthetic */ Object _originalNext = null;
        @JvmField
        @m8.g

        /* renamed from: b  reason: collision with root package name */
        public final x f86324b;

        public e(@m8.g x xVar) {
            this.f86324b = xVar;
        }

        public static /* synthetic */ void p() {
        }

        @Override // kotlinx.coroutines.internal.x.a
        @m8.h
        protected Object e(@m8.g x xVar) {
            if (xVar == this.f86324b) {
                return w.d();
            }
            return null;
        }

        @Override // kotlinx.coroutines.internal.x.a
        protected final void f(@m8.g x xVar, @m8.g x xVar2) {
            xVar2.M(null);
        }

        @Override // kotlinx.coroutines.internal.x.a
        public void g(@m8.g d dVar) {
            androidx.concurrent.futures.a.a(f86322c, this, null, dVar.f86319a);
            androidx.concurrent.futures.a.a(f86323d, this, null, dVar.f86320b);
        }

        @Override // kotlinx.coroutines.internal.x.a
        @m8.h
        protected final x h() {
            return (x) this._affectedNode;
        }

        @Override // kotlinx.coroutines.internal.x.a
        @m8.h
        protected final x i() {
            return (x) this._originalNext;
        }

        @Override // kotlinx.coroutines.internal.x.a
        protected final boolean l(@m8.g x xVar, @m8.g Object obj) {
            if (obj instanceof j0) {
                ((j0) obj).f86268a.V();
                return true;
            }
            return false;
        }

        @Override // kotlinx.coroutines.internal.x.a
        @m8.h
        protected final x m(@m8.g h0 h0Var) {
            x xVar = this.f86324b;
            while (true) {
                Object obj = xVar._next;
                if (obj instanceof h0) {
                    h0 h0Var2 = (h0) obj;
                    if (h0Var.b(h0Var2)) {
                        return null;
                    }
                    h0Var2.c(this.f86324b);
                } else {
                    return (x) obj;
                }
            }
        }

        @Override // kotlinx.coroutines.internal.x.a
        @m8.g
        public final Object n(@m8.g x xVar, @m8.g x xVar2) {
            return xVar2.d0();
        }

        public final T o() {
            T t9 = (T) h();
            Intrinsics.checkNotNull(t9);
            return t9;
        }
    }

    /* compiled from: LockFreeLinkedList.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003H\u0016¨\u0006\u0007"}, d2 = {"kotlinx/coroutines/internal/x$f", "Lkotlinx/coroutines/internal/x$c;", "Lkotlinx/coroutines/internal/x;", "Lkotlinx/coroutines/internal/Node;", "affected", "", "k", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class f extends c {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ Function0<Boolean> f86326e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(Function0<Boolean> function0) {
            super(x.this);
            this.f86326e = function0;
        }

        @Override // kotlinx.coroutines.internal.d
        @m8.h
        /* renamed from: k */
        public Object i(@m8.g x xVar) {
            if (this.f86326e.invoke().booleanValue()) {
                return null;
            }
            return w.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0048, code lost:
        if (androidx.concurrent.futures.a.a(kotlinx.coroutines.internal.x.f86311a, r3, r2, ((kotlinx.coroutines.internal.j0) r4).f86268a) != false) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final kotlinx.coroutines.internal.x M(kotlinx.coroutines.internal.h0 r8) {
        /*
            r7 = this;
        L0:
            java.lang.Object r0 = r7._prev
            kotlinx.coroutines.internal.x r0 = (kotlinx.coroutines.internal.x) r0
            r1 = 0
            r2 = r0
        L6:
            r3 = r1
        L7:
            java.lang.Object r4 = r2._next
            if (r4 != r7) goto L18
            if (r0 != r2) goto Le
            return r2
        Le:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r1 = kotlinx.coroutines.internal.x.f86312b
            boolean r0 = androidx.concurrent.futures.a.a(r1, r7, r0, r2)
            if (r0 != 0) goto L17
            goto L0
        L17:
            return r2
        L18:
            boolean r5 = r7.W()
            if (r5 == 0) goto L1f
            return r1
        L1f:
            if (r4 != r8) goto L22
            return r2
        L22:
            boolean r5 = r4 instanceof kotlinx.coroutines.internal.h0
            if (r5 == 0) goto L38
            if (r8 == 0) goto L32
            r0 = r4
            kotlinx.coroutines.internal.h0 r0 = (kotlinx.coroutines.internal.h0) r0
            boolean r0 = r8.b(r0)
            if (r0 == 0) goto L32
            return r1
        L32:
            kotlinx.coroutines.internal.h0 r4 = (kotlinx.coroutines.internal.h0) r4
            r4.c(r2)
            goto L0
        L38:
            boolean r5 = r4 instanceof kotlinx.coroutines.internal.j0
            if (r5 == 0) goto L52
            if (r3 == 0) goto L4d
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r5 = kotlinx.coroutines.internal.x.f86311a
            kotlinx.coroutines.internal.j0 r4 = (kotlinx.coroutines.internal.j0) r4
            kotlinx.coroutines.internal.x r4 = r4.f86268a
            boolean r2 = androidx.concurrent.futures.a.a(r5, r3, r2, r4)
            if (r2 != 0) goto L4b
            goto L0
        L4b:
            r2 = r3
            goto L6
        L4d:
            java.lang.Object r2 = r2._prev
            kotlinx.coroutines.internal.x r2 = (kotlinx.coroutines.internal.x) r2
            goto L7
        L52:
            r3 = r4
            kotlinx.coroutines.internal.x r3 = (kotlinx.coroutines.internal.x) r3
            r6 = r3
            r3 = r2
            r2 = r6
            goto L7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.x.M(kotlinx.coroutines.internal.h0):kotlinx.coroutines.internal.x");
    }

    private final x P(x xVar) {
        while (xVar.W()) {
            xVar = (x) xVar._prev;
        }
        return xVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Q(x xVar) {
        x xVar2;
        do {
            xVar2 = (x) xVar._prev;
            if (R() != xVar) {
                return;
            }
        } while (!androidx.concurrent.futures.a.a(f86312b, xVar, xVar2, this));
        if (W()) {
            xVar.M(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final j0 d0() {
        j0 j0Var = (j0) this._removedRef;
        if (j0Var == null) {
            j0 j0Var2 = new j0(this);
            f86313c.lazySet(this, j0Var2);
            return j0Var2;
        }
        return j0Var;
    }

    public final void F(@m8.g x xVar) {
        do {
        } while (!T().K(xVar, this));
    }

    public final boolean G(@m8.g x xVar, @m8.g Function0<Boolean> function0) {
        int e02;
        f fVar = new f(function0);
        do {
            e02 = T().e0(xVar, this, fVar);
            if (e02 == 1) {
                return true;
            }
        } while (e02 != 2);
        return false;
    }

    public final boolean H(@m8.g x xVar, @m8.g Function1<? super x, Boolean> function1) {
        x T;
        do {
            T = T();
            if (!function1.invoke(T).booleanValue()) {
                return false;
            }
        } while (!T.K(xVar, this));
        return true;
    }

    public final boolean J(@m8.g x xVar, @m8.g Function1<? super x, Boolean> function1, @m8.g Function0<Boolean> function0) {
        int e02;
        f fVar = new f(function0);
        do {
            x T = T();
            if (!function1.invoke(T).booleanValue()) {
                return false;
            }
            e02 = T.e0(xVar, this, fVar);
            if (e02 == 1) {
                return true;
            }
        } while (e02 != 2);
        return false;
    }

    @PublishedApi
    public final boolean K(@m8.g x xVar, @m8.g x xVar2) {
        f86312b.lazySet(xVar, this);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f86311a;
        atomicReferenceFieldUpdater.lazySet(xVar, xVar2);
        if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, xVar2, xVar)) {
            xVar.Q(xVar2);
            return true;
        }
        return false;
    }

    public final boolean L(@m8.g x xVar) {
        f86312b.lazySet(xVar, this);
        f86311a.lazySet(xVar, this);
        while (R() == this) {
            if (androidx.concurrent.futures.a.a(f86311a, this, this, xVar)) {
                xVar.Q(this);
                return true;
            }
        }
        return false;
    }

    @m8.g
    public final <T extends x> b<T> N(@m8.g T t9) {
        return new b<>(this, t9);
    }

    @m8.g
    public final e<x> O() {
        return new e<>(this);
    }

    @m8.g
    public final Object R() {
        while (true) {
            Object obj = this._next;
            if (!(obj instanceof h0)) {
                return obj;
            }
            ((h0) obj).c(this);
        }
    }

    @m8.g
    public final x S() {
        return w.h(R());
    }

    @m8.g
    public final x T() {
        x M = M(null);
        return M == null ? P((x) this._prev) : M;
    }

    public final void U() {
        ((j0) R()).f86268a.V();
    }

    @PublishedApi
    public final void V() {
        x xVar = this;
        while (true) {
            Object R = xVar.R();
            if (!(R instanceof j0)) {
                xVar.M(null);
                return;
            }
            xVar = ((j0) R).f86268a;
        }
    }

    public boolean W() {
        return R() instanceof j0;
    }

    @PublishedApi
    @m8.g
    public final c X(@m8.g x xVar, @m8.g Function0<Boolean> function0) {
        return new f(function0);
    }

    @m8.h
    protected x Y() {
        Object R = R();
        j0 j0Var = R instanceof j0 ? (j0) R : null;
        if (j0Var == null) {
            return null;
        }
        return j0Var.f86268a;
    }

    public boolean Z() {
        return c0() == null;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [T, java.lang.Object, kotlinx.coroutines.internal.x] */
    public final /* synthetic */ <T> T a0(Function1<? super T, Boolean> function1) {
        x c02;
        while (true) {
            x xVar = (x) R();
            if (xVar == this) {
                return null;
            }
            Intrinsics.reifiedOperationMarker(3, ExifInterface.GPS_DIRECTION_TRUE);
            if (!(xVar instanceof Object)) {
                return null;
            }
            if ((function1.invoke(xVar).booleanValue() && !xVar.W()) || (c02 = xVar.c0()) == null) {
                return xVar;
            }
            c02.V();
        }
    }

    @m8.h
    public final x b0() {
        while (true) {
            x xVar = (x) R();
            if (xVar == this) {
                return null;
            }
            if (xVar.Z()) {
                return xVar;
            }
            xVar.U();
        }
    }

    @m8.h
    @PublishedApi
    public final x c0() {
        Object R;
        x xVar;
        do {
            R = R();
            if (R instanceof j0) {
                return ((j0) R).f86268a;
            }
            if (R == this) {
                return (x) R;
            }
            xVar = (x) R;
        } while (!androidx.concurrent.futures.a.a(f86311a, this, R, xVar.d0()));
        xVar.M(null);
        return null;
    }

    @PublishedApi
    public final int e0(@m8.g x xVar, @m8.g x xVar2, @m8.g c cVar) {
        f86312b.lazySet(xVar, this);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f86311a;
        atomicReferenceFieldUpdater.lazySet(xVar, xVar2);
        cVar.f86318c = xVar2;
        if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, xVar2, cVar)) {
            return cVar.c(this) == null ? 1 : 2;
        }
        return 0;
    }

    public final void f0(@m8.g x xVar, @m8.g x xVar2) {
    }

    @m8.g
    public String toString() {
        return new PropertyReference0Impl(this) { // from class: kotlinx.coroutines.internal.x.g
            @Override // kotlin.jvm.internal.PropertyReference0Impl, kotlin.reflect.KProperty0
            @m8.h
            public Object get() {
                return kotlinx.coroutines.v0.a(this.receiver);
            }
        } + '@' + kotlinx.coroutines.v0.b(this);
    }
}
