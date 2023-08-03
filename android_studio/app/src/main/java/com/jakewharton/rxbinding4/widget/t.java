package com.jakewharton.rxbinding4.widget;

import android.widget.RatingBar;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RatingBarRatingChangeEventObservable.kt */
@Metadata(bv = {}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u000f\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0006¢\u0006\u0004\b\u001b\u0010\u001cJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0006HÆ\u0003J'\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u00042\b\b\u0002\u0010\n\u001a\u00020\u0006HÆ\u0001J\t\u0010\r\u001a\u00020\fHÖ\u0001J\t\u0010\u000f\u001a\u00020\u000eHÖ\u0001J\u0013\u0010\u0011\u001a\u00020\u00062\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u0017\u0010\t\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0017\u0010\n\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a¨\u0006\u001d"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/t;", "", "Landroid/widget/RatingBar;", "a", "", "b", "", "c", "view", "rating", "fromUser", "d", "", "toString", "", "hashCode", "other", "equals", "Landroid/widget/RatingBar;", "h", "()Landroid/widget/RatingBar;", "F", "g", "()F", "Z", "f", "()Z", "<init>", "(Landroid/widget/RatingBar;FZ)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class t {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final RatingBar f44044a;

    /* renamed from: b  reason: collision with root package name */
    private final float f44045b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f44046c;

    public t(@m8.g RatingBar ratingBar, float f10, boolean z9) {
        this.f44044a = ratingBar;
        this.f44045b = f10;
        this.f44046c = z9;
    }

    public static /* synthetic */ t e(t tVar, RatingBar ratingBar, float f10, boolean z9, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            ratingBar = tVar.f44044a;
        }
        if ((i4 & 2) != 0) {
            f10 = tVar.f44045b;
        }
        if ((i4 & 4) != 0) {
            z9 = tVar.f44046c;
        }
        return tVar.d(ratingBar, f10, z9);
    }

    @m8.g
    public final RatingBar a() {
        return this.f44044a;
    }

    public final float b() {
        return this.f44045b;
    }

    public final boolean c() {
        return this.f44046c;
    }

    @m8.g
    public final t d(@m8.g RatingBar ratingBar, float f10, boolean z9) {
        return new t(ratingBar, f10, z9);
    }

    public boolean equals(@m8.h Object obj) {
        if (this != obj) {
            if (obj instanceof t) {
                t tVar = (t) obj;
                return Intrinsics.areEqual(this.f44044a, tVar.f44044a) && Float.compare(this.f44045b, tVar.f44045b) == 0 && this.f44046c == tVar.f44046c;
            }
            return false;
        }
        return true;
    }

    public final boolean f() {
        return this.f44046c;
    }

    public final float g() {
        return this.f44045b;
    }

    @m8.g
    public final RatingBar h() {
        return this.f44044a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        RatingBar ratingBar = this.f44044a;
        int hashCode = (((ratingBar != null ? ratingBar.hashCode() : 0) * 31) + Float.floatToIntBits(this.f44045b)) * 31;
        boolean z9 = this.f44046c;
        int i4 = z9;
        if (z9 != 0) {
            i4 = 1;
        }
        return hashCode + i4;
    }

    @m8.g
    public String toString() {
        return "RatingBarChangeEvent(view=" + this.f44044a + ", rating=" + this.f44045b + ", fromUser=" + this.f44046c + ")";
    }
}
