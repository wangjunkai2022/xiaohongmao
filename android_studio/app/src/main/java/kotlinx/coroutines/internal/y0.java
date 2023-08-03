package kotlinx.coroutines.internal;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import java.lang.Comparable;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.e2;
import kotlinx.coroutines.internal.z0;

/* compiled from: ThreadSafeHeap.kt */
@Metadata(bv = {}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u001a\b\u0017\u0018\u0000*\u0012\b\u0000\u0010\u0003*\u00020\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\u00060\u0004j\u0002`\u0005B\u0007¢\u0006\u0004\b0\u0010\u0012J\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0082\u0010¢\u0006\u0004\b\t\u0010\nJ\u0018\u0010\u000b\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0082\u0010¢\u0006\u0004\b\u000b\u0010\nJ\u0017\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\fH\u0002¢\u0006\u0004\b\u0007\u0010\rJ\u001f\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\r\u0010\u0011\u001a\u00020\b¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u0015\u0010\u0014J&\u0010\u0019\u001a\u0004\u0018\u00018\u00002\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00170\u0016H\u0086\b¢\u0006\u0004\b\u0019\u0010\u001aJ\u0015\u0010\u001c\u001a\u00020\b2\u0006\u0010\u001b\u001a\u00028\u0000¢\u0006\u0004\b\u001c\u0010\u001dJ.\u0010\u001f\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00028\u00002\u0014\u0010\u001e\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0012\u0004\u0012\u00020\u00170\u0016H\u0086\b¢\u0006\u0004\b\u001f\u0010 J\u0015\u0010\u000e\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00028\u0000¢\u0006\u0004\b\u000e\u0010!J\u0011\u0010\"\u001a\u0004\u0018\u00018\u0000H\u0001¢\u0006\u0004\b\"\u0010\u0014J\u0017\u0010$\u001a\u00028\u00002\u0006\u0010#\u001a\u00020\u0006H\u0001¢\u0006\u0004\b$\u0010%J\u0017\u0010&\u001a\u00020\b2\u0006\u0010\u001b\u001a\u00028\u0000H\u0001¢\u0006\u0004\b&\u0010\u001dR \u0010&\u001a\f\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'R$\u0010,\u001a\u00020\u00062\u0006\u0010(\u001a\u00020\u00068F@BX\u0086\u000e¢\u0006\f\u001a\u0004\b)\u0010*\"\u0004\b+\u0010\nR\u0011\u0010/\u001a\u00020\u00178F¢\u0006\u0006\u001a\u0004\b-\u0010.¨\u00061"}, d2 = {"Lkotlinx/coroutines/internal/y0;", "Lkotlinx/coroutines/internal/z0;", "", ExifInterface.GPS_DIRECTION_TRUE, "", "Lkotlinx/coroutines/internal/SynchronizedObject;", "", ContextChain.TAG_INFRA, "", "p", "(I)V", "o", "", "()[Lkotlinx/coroutines/internal/z0;", "j", "q", "(II)V", "d", "()V", "h", "()Lkotlinx/coroutines/internal/z0;", "m", "Lkotlin/Function1;", "", "predicate", "l", "(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/z0;", "node", "b", "(Lkotlinx/coroutines/internal/z0;)V", "cond", "c", "(Lkotlinx/coroutines/internal/z0;Lkotlin/jvm/functions/Function1;)Z", "(Lkotlinx/coroutines/internal/z0;)Z", "e", "index", "k", "(I)Lkotlinx/coroutines/internal/z0;", "a", "[Lkotlinx/coroutines/internal/z0;", "value", "f", "()I", "n", com.qennnsad.aknkaksd.data.repository.f.f47745b, "g", "()Z", "isEmpty", "<init>", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
@e2
/* loaded from: classes4.dex */
public class y0<T extends z0 & Comparable<? super T>> {
    @m8.g
    private volatile /* synthetic */ int _size = 0;
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private T[] f86328a;

    private final T[] i() {
        T[] tArr = this.f86328a;
        if (tArr == null) {
            T[] tArr2 = (T[]) new z0[4];
            this.f86328a = tArr2;
            return tArr2;
        } else if (f() >= tArr.length) {
            Object[] copyOf = Arrays.copyOf(tArr, f() * 2);
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
            T[] tArr3 = (T[]) ((z0[]) copyOf);
            this.f86328a = tArr3;
            return tArr3;
        } else {
            return tArr;
        }
    }

    private final void n(int i4) {
        this._size = i4;
    }

    private final void o(int i4) {
        while (true) {
            int i10 = (i4 * 2) + 1;
            if (i10 >= f()) {
                return;
            }
            T[] tArr = this.f86328a;
            Intrinsics.checkNotNull(tArr);
            int i11 = i10 + 1;
            if (i11 < f()) {
                T t9 = tArr[i11];
                Intrinsics.checkNotNull(t9);
                T t10 = tArr[i10];
                Intrinsics.checkNotNull(t10);
                if (((Comparable) t9).compareTo(t10) < 0) {
                    i10 = i11;
                }
            }
            T t11 = tArr[i4];
            Intrinsics.checkNotNull(t11);
            T t12 = tArr[i10];
            Intrinsics.checkNotNull(t12);
            if (((Comparable) t11).compareTo(t12) <= 0) {
                return;
            }
            q(i4, i10);
            i4 = i10;
        }
    }

    private final void p(int i4) {
        while (i4 > 0) {
            T[] tArr = this.f86328a;
            Intrinsics.checkNotNull(tArr);
            int i10 = (i4 - 1) / 2;
            T t9 = tArr[i10];
            Intrinsics.checkNotNull(t9);
            T t10 = tArr[i4];
            Intrinsics.checkNotNull(t10);
            if (((Comparable) t9).compareTo(t10) <= 0) {
                return;
            }
            q(i4, i10);
            i4 = i10;
        }
    }

    private final void q(int i4, int i10) {
        T[] tArr = this.f86328a;
        Intrinsics.checkNotNull(tArr);
        T t9 = tArr[i10];
        Intrinsics.checkNotNull(t9);
        T t10 = tArr[i4];
        Intrinsics.checkNotNull(t10);
        tArr[i4] = t9;
        tArr[i10] = t10;
        t9.h(i4);
        t10.h(i10);
    }

    @PublishedApi
    public final void a(@m8.g T t9) {
        t9.a(this);
        T[] i4 = i();
        int f10 = f();
        n(f10 + 1);
        i4[f10] = t9;
        t9.h(f10);
        p(f10);
    }

    public final void b(@m8.g T t9) {
        synchronized (this) {
            a(t9);
            Unit unit = Unit.INSTANCE;
        }
    }

    public final boolean c(@m8.g T t9, @m8.g Function1<? super T, Boolean> function1) {
        boolean z9;
        synchronized (this) {
            try {
                if (function1.invoke(e()).booleanValue()) {
                    a(t9);
                    z9 = true;
                } else {
                    z9 = false;
                }
                InlineMarker.finallyStart(1);
            } catch (Throwable th) {
                InlineMarker.finallyStart(1);
                InlineMarker.finallyEnd(1);
                throw th;
            }
        }
        InlineMarker.finallyEnd(1);
        return z9;
    }

    public final void d() {
        synchronized (this) {
            T[] tArr = this.f86328a;
            if (tArr != null) {
                ArraysKt___ArraysJvmKt.fill$default(tArr, (Object) null, 0, 0, 6, (Object) null);
            }
            this._size = 0;
            Unit unit = Unit.INSTANCE;
        }
    }

    @m8.h
    @PublishedApi
    public final T e() {
        T[] tArr = this.f86328a;
        if (tArr == null) {
            return null;
        }
        return tArr[0];
    }

    public final int f() {
        return this._size;
    }

    public final boolean g() {
        return f() == 0;
    }

    @m8.h
    public final T h() {
        T e4;
        synchronized (this) {
            e4 = e();
        }
        return e4;
    }

    public final boolean j(@m8.g T t9) {
        boolean z9;
        synchronized (this) {
            if (t9.b() == null) {
                z9 = false;
            } else {
                k(t9.getIndex());
                z9 = true;
            }
        }
        return z9;
    }

    @PublishedApi
    @m8.g
    public final T k(int i4) {
        T[] tArr = this.f86328a;
        Intrinsics.checkNotNull(tArr);
        n(f() - 1);
        if (i4 < f()) {
            q(i4, f());
            int i10 = (i4 - 1) / 2;
            if (i4 > 0) {
                T t9 = tArr[i4];
                Intrinsics.checkNotNull(t9);
                T t10 = tArr[i10];
                Intrinsics.checkNotNull(t10);
                if (((Comparable) t9).compareTo(t10) < 0) {
                    q(i4, i10);
                    p(i10);
                }
            }
            o(i4);
        }
        T t11 = tArr[f()];
        Intrinsics.checkNotNull(t11);
        t11.a(null);
        t11.h(-1);
        tArr[f()] = null;
        return t11;
    }

    @m8.h
    public final T l(@m8.g Function1<? super T, Boolean> function1) {
        synchronized (this) {
            try {
                T e4 = e();
                if (e4 == null) {
                    InlineMarker.finallyStart(2);
                    InlineMarker.finallyEnd(2);
                    return null;
                }
                T k10 = function1.invoke(e4).booleanValue() ? k(0) : null;
                InlineMarker.finallyStart(1);
                InlineMarker.finallyEnd(1);
                return k10;
            } catch (Throwable th) {
                InlineMarker.finallyStart(1);
                InlineMarker.finallyEnd(1);
                throw th;
            }
        }
    }

    @m8.h
    public final T m() {
        T k10;
        synchronized (this) {
            k10 = f() > 0 ? k(0) : null;
        }
        return k10;
    }
}
