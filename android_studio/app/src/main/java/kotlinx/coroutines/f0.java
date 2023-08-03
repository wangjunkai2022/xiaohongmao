package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CompletionState.kt */
@Metadata(bv = {}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0080\b\u0018\u00002\u00020\u0001B4\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0001\u0012!\u0010\u000b\u001a\u001d\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b0\u0003¢\u0006\u0004\b\u0016\u0010\u0017J\u000b\u0010\u0002\u001a\u0004\u0018\u00010\u0001HÆ\u0003J$\u0010\t\u001a\u001d\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b0\u0003HÆ\u0003J:\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00012#\b\u0002\u0010\u000b\u001a\u001d\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b0\u0003HÆ\u0001J\t\u0010\u000e\u001a\u00020\rHÖ\u0001J\t\u0010\u0010\u001a\u00020\u000fHÖ\u0001J\u0013\u0010\u0013\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0016\u0010\n\u001a\u0004\u0018\u00010\u00018\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0002\u0010\u0014R/\u0010\u000b\u001a\u001d\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b0\u00038\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u0015¨\u0006\u0018"}, d2 = {"Lkotlinx/coroutines/f0;", "", "a", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "cause", "", "b", "result", "onCancellation", "c", "", "toString", "", "hashCode", "other", "", "equals", "Ljava/lang/Object;", "Lkotlin/jvm/functions/Function1;", "<init>", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class f0 {
    @m8.h
    @JvmField

    /* renamed from: a  reason: collision with root package name */
    public final Object f85258a;
    @JvmField
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    public final Function1<Throwable, Unit> f85259b;

    /* JADX WARN: Multi-variable type inference failed */
    public f0(@m8.h Object obj, @m8.g Function1<? super Throwable, Unit> function1) {
        this.f85258a = obj;
        this.f85259b = function1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ f0 d(f0 f0Var, Object obj, Function1 function1, int i4, Object obj2) {
        if ((i4 & 1) != 0) {
            obj = f0Var.f85258a;
        }
        if ((i4 & 2) != 0) {
            function1 = f0Var.f85259b;
        }
        return f0Var.c(obj, function1);
    }

    @m8.h
    public final Object a() {
        return this.f85258a;
    }

    @m8.g
    public final Function1<Throwable, Unit> b() {
        return this.f85259b;
    }

    @m8.g
    public final f0 c(@m8.h Object obj, @m8.g Function1<? super Throwable, Unit> function1) {
        return new f0(obj, function1);
    }

    public boolean equals(@m8.h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof f0) {
            f0 f0Var = (f0) obj;
            return Intrinsics.areEqual(this.f85258a, f0Var.f85258a) && Intrinsics.areEqual(this.f85259b, f0Var.f85259b);
        }
        return false;
    }

    public int hashCode() {
        Object obj = this.f85258a;
        return ((obj == null ? 0 : obj.hashCode()) * 31) + this.f85259b.hashCode();
    }

    @m8.g
    public String toString() {
        return "CompletedWithCancellation(result=" + this.f85258a + ", onCancellation=" + this.f85259b + ')';
    }
}
