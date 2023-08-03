package io.sentry.android.core.internal.util;

import android.annotation.SuppressLint;
import android.content.ContentProvider;
import io.sentry.android.core.m0;
import io.sentry.u1;
import m8.a;

/* compiled from: ContentProviderSecurityChecker.java */
@a.c
/* loaded from: classes4.dex */
public final class d {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final m0 f82463a;

    public d() {
        this(new m0(u1.e()));
    }

    @SuppressLint({"NewApi"})
    public void a(@m8.g ContentProvider contentProvider) {
        int d4 = this.f82463a.d();
        if (d4 < 26 || d4 > 28) {
            return;
        }
        String callingPackage = contentProvider.getCallingPackage();
        String packageName = contentProvider.getContext().getPackageName();
        if (callingPackage == null || !callingPackage.equals(packageName)) {
            throw new SecurityException("Provider does not allow for granting of Uri permissions");
        }
    }

    public d(@m8.g m0 m0Var) {
        this.f82463a = m0Var;
    }
}
