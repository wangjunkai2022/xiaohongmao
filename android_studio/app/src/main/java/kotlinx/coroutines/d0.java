package kotlinx.coroutines;

import com.facebook.common.callercontext.ContextChain;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CancellableContinuationImpl.kt */
@Metadata(bv = {}, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0082\b\u0018\u00002\u00020\u0001B\\\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\t\u0012%\b\u0002\u0010\u0013\u001a\u001f\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000b\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0001\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b%\u0010&J\u001a\u0010\u0007\u001a\u00020\u00062\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u000b\u0010\b\u001a\u0004\u0018\u00010\u0001HÆ\u0003J\u000b\u0010\n\u001a\u0004\u0018\u00010\tHÆ\u0003J&\u0010\u000e\u001a\u001f\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000bHÆ\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0004HÆ\u0003J`\u0010\u0016\u001a\u00020\u00002\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\t2%\b\u0002\u0010\u0013\u001a\u001f\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000b2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0004HÆ\u0001J\t\u0010\u0018\u001a\u00020\u0017HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0019HÖ\u0001J\u0013\u0010\u001d\u001a\u00020\u001c2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0016\u0010\u0011\u001a\u0004\u0018\u00010\u00018\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u001eR\u0016\u0010\u0012\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u001fR1\u0010\u0013\u001a\u001f\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010 R\u0016\u0010\u0014\u001a\u0004\u0018\u00010\u00018\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u001eR\u0016\u0010\u0015\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010!R\u0011\u0010$\u001a\u00020\u001c8F¢\u0006\u0006\u001a\u0004\b\"\u0010#¨\u0006'"}, d2 = {"Lkotlinx/coroutines/d0;", "", "Lkotlinx/coroutines/r;", "cont", "", "cause", "", ContextChain.TAG_INFRA, "a", "Lkotlinx/coroutines/o;", "b", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "c", "d", "e", "result", "cancelHandler", "onCancellation", "idempotentResume", "cancelCause", "f", "", "toString", "", "hashCode", "other", "", "equals", "Ljava/lang/Object;", "Lkotlinx/coroutines/o;", "Lkotlin/jvm/functions/Function1;", "Ljava/lang/Throwable;", "h", "()Z", "cancelled", "<init>", "(Ljava/lang/Object;Lkotlinx/coroutines/o;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/Throwable;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
final class d0 {
    @m8.h
    @JvmField

    /* renamed from: a  reason: collision with root package name */
    public final Object f85146a;
    @m8.h
    @JvmField

    /* renamed from: b  reason: collision with root package name */
    public final o f85147b;
    @m8.h
    @JvmField

    /* renamed from: c  reason: collision with root package name */
    public final Function1<Throwable, Unit> f85148c;
    @m8.h
    @JvmField

    /* renamed from: d  reason: collision with root package name */
    public final Object f85149d;
    @m8.h
    @JvmField

    /* renamed from: e  reason: collision with root package name */
    public final Throwable f85150e;

    /* JADX WARN: Multi-variable type inference failed */
    public d0(@m8.h Object obj, @m8.h o oVar, @m8.h Function1<? super Throwable, Unit> function1, @m8.h Object obj2, @m8.h Throwable th) {
        this.f85146a = obj;
        this.f85147b = oVar;
        this.f85148c = function1;
        this.f85149d = obj2;
        this.f85150e = th;
    }

    public static /* synthetic */ d0 g(d0 d0Var, Object obj, o oVar, Function1 function1, Object obj2, Throwable th, int i4, Object obj3) {
        if ((i4 & 1) != 0) {
            obj = d0Var.f85146a;
        }
        if ((i4 & 2) != 0) {
            oVar = d0Var.f85147b;
        }
        o oVar2 = oVar;
        Function1<Throwable, Unit> function12 = function1;
        if ((i4 & 4) != 0) {
            function12 = d0Var.f85148c;
        }
        Function1 function13 = function12;
        if ((i4 & 8) != 0) {
            obj2 = d0Var.f85149d;
        }
        Object obj4 = obj2;
        if ((i4 & 16) != 0) {
            th = d0Var.f85150e;
        }
        return d0Var.f(obj, oVar2, function13, obj4, th);
    }

    @m8.h
    public final Object a() {
        return this.f85146a;
    }

    @m8.h
    public final o b() {
        return this.f85147b;
    }

    @m8.h
    public final Function1<Throwable, Unit> c() {
        return this.f85148c;
    }

    @m8.h
    public final Object d() {
        return this.f85149d;
    }

    @m8.h
    public final Throwable e() {
        return this.f85150e;
    }

    public boolean equals(@m8.h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof d0) {
            d0 d0Var = (d0) obj;
            return Intrinsics.areEqual(this.f85146a, d0Var.f85146a) && Intrinsics.areEqual(this.f85147b, d0Var.f85147b) && Intrinsics.areEqual(this.f85148c, d0Var.f85148c) && Intrinsics.areEqual(this.f85149d, d0Var.f85149d) && Intrinsics.areEqual(this.f85150e, d0Var.f85150e);
        }
        return false;
    }

    @m8.g
    public final d0 f(@m8.h Object obj, @m8.h o oVar, @m8.h Function1<? super Throwable, Unit> function1, @m8.h Object obj2, @m8.h Throwable th) {
        return new d0(obj, oVar, function1, obj2, th);
    }

    public final boolean h() {
        return this.f85150e != null;
    }

    public int hashCode() {
        Object obj = this.f85146a;
        int hashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        o oVar = this.f85147b;
        int hashCode2 = (hashCode + (oVar == null ? 0 : oVar.hashCode())) * 31;
        Function1<Throwable, Unit> function1 = this.f85148c;
        int hashCode3 = (hashCode2 + (function1 == null ? 0 : function1.hashCode())) * 31;
        Object obj2 = this.f85149d;
        int hashCode4 = (hashCode3 + (obj2 == null ? 0 : obj2.hashCode())) * 31;
        Throwable th = this.f85150e;
        return hashCode4 + (th != null ? th.hashCode() : 0);
    }

    public final void i(@m8.g r<?> rVar, @m8.g Throwable th) {
        o oVar = this.f85147b;
        if (oVar != null) {
            rVar.q(oVar, th);
        }
        Function1<Throwable, Unit> function1 = this.f85148c;
        if (function1 == null) {
            return;
        }
        rVar.t(function1, th);
    }

    @m8.g
    public String toString() {
        return "CompletedContinuation(result=" + this.f85146a + ", cancelHandler=" + this.f85147b + ", onCancellation=" + this.f85148c + ", idempotentResume=" + this.f85149d + ", cancelCause=" + this.f85150e + ')';
    }

    public /* synthetic */ d0(Object obj, o oVar, Function1 function1, Object obj2, Throwable th, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj, (i4 & 2) != 0 ? null : oVar, (i4 & 4) != 0 ? null : function1, (i4 & 8) != 0 ? null : obj2, (i4 & 16) != 0 ? null : th);
    }
}
