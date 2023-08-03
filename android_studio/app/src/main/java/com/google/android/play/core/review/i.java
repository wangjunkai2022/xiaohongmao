package com.google.android.play.core.review;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.play.core.internal.h1;
import com.google.android.play.core.internal.t;
import com.google.android.play.core.tasks.o;

/* compiled from: com.google.android.play:core@@1.10.3 */
@SuppressLint({"RestrictedApi"})
/* loaded from: classes2.dex */
public final class i {

    /* renamed from: c  reason: collision with root package name */
    private static final com.google.android.play.core.internal.h f31813c = new com.google.android.play.core.internal.h("ReviewService");
    @Nullable
    @VisibleForTesting

    /* renamed from: a  reason: collision with root package name */
    t f31814a;

    /* renamed from: b  reason: collision with root package name */
    private final String f31815b;

    public i(Context context) {
        this.f31815b = context.getPackageName();
        if (h1.b(context)) {
            this.f31814a = new t(context, f31813c, "com.google.android.finsky.inappreviewservice.InAppReviewService", new Intent("com.google.android.finsky.BIND_IN_APP_REVIEW_SERVICE").setPackage("com.android.vending"), e.f31806a, null);
        }
    }

    public final com.google.android.play.core.tasks.d b() {
        com.google.android.play.core.internal.h hVar = f31813c;
        hVar.d("requestInAppReview (%s)", this.f31815b);
        if (this.f31814a == null) {
            hVar.b("Play Store app is either not installed or not the official version", new Object[0]);
            return com.google.android.play.core.tasks.f.d(new ReviewException(-1));
        }
        o oVar = new o();
        this.f31814a.q(new f(this, oVar, oVar), oVar);
        return oVar.a();
    }
}
