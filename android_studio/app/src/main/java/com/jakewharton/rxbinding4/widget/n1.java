package com.jakewharton.rxbinding4.widget;

import android.widget.SearchView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SearchViewQueryTextEvent.kt */
@Metadata(bv = {}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u000f\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0006¢\u0006\u0004\b\u001b\u0010\u001cJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0006HÆ\u0003J'\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u00042\b\b\u0002\u0010\n\u001a\u00020\u0006HÆ\u0001J\t\u0010\r\u001a\u00020\fHÖ\u0001J\t\u0010\u000f\u001a\u00020\u000eHÖ\u0001J\u0013\u0010\u0011\u001a\u00020\u00062\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u0017\u0010\t\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0017\u0010\n\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a¨\u0006\u001d"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/n1;", "", "Landroid/widget/SearchView;", "a", "", "b", "", "c", "view", "queryText", "isSubmitted", "d", "", "toString", "", "hashCode", "other", "equals", "Landroid/widget/SearchView;", "g", "()Landroid/widget/SearchView;", "Ljava/lang/CharSequence;", "f", "()Ljava/lang/CharSequence;", "Z", "h", "()Z", "<init>", "(Landroid/widget/SearchView;Ljava/lang/CharSequence;Z)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class n1 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final SearchView f44012a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final CharSequence f44013b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f44014c;

    public n1(@m8.g SearchView searchView, @m8.g CharSequence charSequence, boolean z9) {
        this.f44012a = searchView;
        this.f44013b = charSequence;
        this.f44014c = z9;
    }

    public static /* synthetic */ n1 e(n1 n1Var, SearchView searchView, CharSequence charSequence, boolean z9, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            searchView = n1Var.f44012a;
        }
        if ((i4 & 2) != 0) {
            charSequence = n1Var.f44013b;
        }
        if ((i4 & 4) != 0) {
            z9 = n1Var.f44014c;
        }
        return n1Var.d(searchView, charSequence, z9);
    }

    @m8.g
    public final SearchView a() {
        return this.f44012a;
    }

    @m8.g
    public final CharSequence b() {
        return this.f44013b;
    }

    public final boolean c() {
        return this.f44014c;
    }

    @m8.g
    public final n1 d(@m8.g SearchView searchView, @m8.g CharSequence charSequence, boolean z9) {
        return new n1(searchView, charSequence, z9);
    }

    public boolean equals(@m8.h Object obj) {
        if (this != obj) {
            if (obj instanceof n1) {
                n1 n1Var = (n1) obj;
                return Intrinsics.areEqual(this.f44012a, n1Var.f44012a) && Intrinsics.areEqual(this.f44013b, n1Var.f44013b) && this.f44014c == n1Var.f44014c;
            }
            return false;
        }
        return true;
    }

    @m8.g
    public final CharSequence f() {
        return this.f44013b;
    }

    @m8.g
    public final SearchView g() {
        return this.f44012a;
    }

    public final boolean h() {
        return this.f44014c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        SearchView searchView = this.f44012a;
        int hashCode = (searchView != null ? searchView.hashCode() : 0) * 31;
        CharSequence charSequence = this.f44013b;
        int hashCode2 = (hashCode + (charSequence != null ? charSequence.hashCode() : 0)) * 31;
        boolean z9 = this.f44014c;
        int i4 = z9;
        if (z9 != 0) {
            i4 = 1;
        }
        return hashCode2 + i4;
    }

    @m8.g
    public String toString() {
        return "SearchViewQueryTextEvent(view=" + this.f44012a + ", queryText=" + this.f44013b + ", isSubmitted=" + this.f44014c + ")";
    }
}
