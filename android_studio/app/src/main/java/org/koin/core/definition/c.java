package org.koin.core.definition;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: Callbacks.kt */
@Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\b\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B-\u0012$\b\u0002\u0010\u0007\u001a\u001e\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\u0005¢\u0006\u0004\b\u0013\u0010\u0014J%\u0010\u0006\u001a\u001e\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\u0005HÆ\u0003J5\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002$\b\u0002\u0010\u0007\u001a\u001e\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\u0005HÆ\u0001J\t\u0010\n\u001a\u00020\tHÖ\u0001J\t\u0010\f\u001a\u00020\u000bHÖ\u0001J\u0013\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u0002HÖ\u0003R3\u0010\u0007\u001a\u001e\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0015"}, d2 = {"Lorg/koin/core/definition/c;", ExifInterface.GPS_DIRECTION_TRUE, "", "Lkotlin/Function1;", "", "Lorg/koin/core/definition/OnCloseCallback;", "a", "onClose", "b", "", "toString", "", "hashCode", "other", "", "equals", "Lkotlin/jvm/functions/Function1;", "d", "()Lkotlin/jvm/functions/Function1;", "<init>", "(Lkotlin/jvm/functions/Function1;)V", "koin-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public final class c<T> {
    @h

    /* renamed from: a  reason: collision with root package name */
    private final Function1<T, Unit> f92428a;

    public c() {
        this(null, 1, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c(@h Function1<? super T, Unit> function1) {
        this.f92428a = function1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ c c(c cVar, Function1 function1, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            function1 = cVar.f92428a;
        }
        return cVar.b(function1);
    }

    @h
    public final Function1<T, Unit> a() {
        return this.f92428a;
    }

    @g
    public final c<T> b(@h Function1<? super T, Unit> function1) {
        return new c<>(function1);
    }

    @h
    public final Function1<T, Unit> d() {
        return this.f92428a;
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof c) && Intrinsics.areEqual(this.f92428a, ((c) obj).f92428a);
    }

    public int hashCode() {
        Function1<T, Unit> function1 = this.f92428a;
        if (function1 == null) {
            return 0;
        }
        return function1.hashCode();
    }

    @g
    public String toString() {
        return "Callbacks(onClose=" + this.f92428a + ')';
    }

    public /* synthetic */ c(Function1 function1, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? null : function1);
    }
}
