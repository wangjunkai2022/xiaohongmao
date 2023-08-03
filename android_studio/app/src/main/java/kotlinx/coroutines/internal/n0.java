package kotlinx.coroutines.internal;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.internal.m0;

/* compiled from: ConcurrentLinkedList.kt */
@Metadata(bv = {}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0010\b\u0081@\u0018\u0000*\u000e\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u00028\u00000\u00012\u00020\u0003B\u0014\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0003ø\u0001\u0000¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u0005\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\b\u001a\u00020\u0007HÖ\u0001¢\u0006\u0004\b\b\u0010\tJ\u001a\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\u0003HÖ\u0003¢\u0006\u0004\b\f\u0010\rR\u0016\u0010\u0010\u001a\u0004\u0018\u00010\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0013\u001a\u00020\u000b8F¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0018\u001a\u00028\u00008F¢\u0006\f\u0012\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0014\u0010\u0015\u0088\u0001\u0010\u0092\u0001\u0004\u0018\u00010\u0003ø\u0001\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001b"}, d2 = {"Lkotlinx/coroutines/internal/n0;", "Lkotlinx/coroutines/internal/m0;", ExifInterface.LATITUDE_SOUTH, "", "", ContextChain.TAG_INFRA, "(Ljava/lang/Object;)Ljava/lang/String;", "", "g", "(Ljava/lang/Object;)I", "other", "", "c", "(Ljava/lang/Object;Ljava/lang/Object;)Z", "a", "Ljava/lang/Object;", "value", "h", "(Ljava/lang/Object;)Z", "isClosed", "f", "(Ljava/lang/Object;)Lkotlinx/coroutines/internal/m0;", "getSegment$annotations", "()V", "segment", "b", "(Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
@JvmInline
/* loaded from: classes4.dex */
public final class n0<S extends m0<S>> {
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private final Object f86281a;

    private /* synthetic */ n0(Object obj) {
        this.f86281a = obj;
    }

    public static final /* synthetic */ n0 a(Object obj) {
        return new n0(obj);
    }

    @m8.g
    public static <S extends m0<S>> Object b(@m8.h Object obj) {
        return obj;
    }

    public static boolean c(Object obj, Object obj2) {
        return (obj2 instanceof n0) && Intrinsics.areEqual(obj, ((n0) obj2).j());
    }

    public static final boolean d(Object obj, Object obj2) {
        return Intrinsics.areEqual(obj, obj2);
    }

    public static /* synthetic */ void e() {
    }

    @m8.g
    public static final S f(Object obj) {
        if (obj != g.f86261b) {
            Objects.requireNonNull(obj, "null cannot be cast to non-null type S of kotlinx.coroutines.internal.SegmentOrClosed");
            return (S) obj;
        }
        throw new IllegalStateException("Does not contain segment".toString());
    }

    public static int g(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public static final boolean h(Object obj) {
        return obj == g.f86261b;
    }

    public static String i(Object obj) {
        return "SegmentOrClosed(value=" + obj + ')';
    }

    public boolean equals(Object obj) {
        return c(this.f86281a, obj);
    }

    public int hashCode() {
        return g(this.f86281a);
    }

    public final /* synthetic */ Object j() {
        return this.f86281a;
    }

    public String toString() {
        return i(this.f86281a);
    }
}
