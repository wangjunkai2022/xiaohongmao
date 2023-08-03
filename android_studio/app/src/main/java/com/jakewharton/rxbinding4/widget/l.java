package com.jakewharton.rxbinding4.widget;

import android.widget.AdapterView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AdapterViewSelectionEvent.kt */
@Metadata(bv = {}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\r\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002HÆ\u0003J\u0017\u0010\u0005\u001a\u00020\u00002\f\b\u0002\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0002HÆ\u0001J\t\u0010\u0007\u001a\u00020\u0006HÖ\u0001J\t\u0010\t\u001a\u00020\bHÖ\u0001J\u0013\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\nHÖ\u0003R\u001e\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u000e\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/l;", "Lcom/jakewharton/rxbinding4/widget/m;", "Landroid/widget/AdapterView;", "b", "view", "c", "", "toString", "", "hashCode", "", "other", "", "equals", "a", "Landroid/widget/AdapterView;", "()Landroid/widget/AdapterView;", "<init>", "(Landroid/widget/AdapterView;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class l extends m {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final AdapterView<?> f44002a;

    public l(@m8.g AdapterView<?> adapterView) {
        super(null);
        this.f44002a = adapterView;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ l d(l lVar, AdapterView adapterView, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            adapterView = lVar.a();
        }
        return lVar.c(adapterView);
    }

    @Override // com.jakewharton.rxbinding4.widget.m
    @m8.g
    public AdapterView<?> a() {
        return this.f44002a;
    }

    @m8.g
    public final AdapterView<?> b() {
        return a();
    }

    @m8.g
    public final l c(@m8.g AdapterView<?> adapterView) {
        return new l(adapterView);
    }

    public boolean equals(@m8.h Object obj) {
        if (this != obj) {
            return (obj instanceof l) && Intrinsics.areEqual(a(), ((l) obj).a());
        }
        return true;
    }

    public int hashCode() {
        AdapterView<?> a10 = a();
        if (a10 != null) {
            return a10.hashCode();
        }
        return 0;
    }

    @m8.g
    public String toString() {
        return "AdapterViewNothingSelectionEvent(view=" + a() + ")";
    }
}
