package io.sentry.android.core;

import android.content.Context;
import android.content.pm.ProviderInfo;
import android.net.Uri;
import io.sentry.SentryLevel;
import io.sentry.c3;
import m8.a;

/* compiled from: SentryInitProvider.java */
@a.c
/* loaded from: classes4.dex */
public final class n1 extends s0 {
    @Override // android.content.ContentProvider
    public void attachInfo(@m8.g Context context, @m8.g ProviderInfo providerInfo) {
        if (!n1.class.getName().equals(providerInfo.authority)) {
            super.attachInfo(context, providerInfo);
            return;
        }
        throw new IllegalStateException("An applicationId is required to fulfill the manifest placeholder.");
    }

    @Override // android.content.ContentProvider
    @m8.h
    public String getType(@m8.g Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        r rVar = new r();
        Context context = getContext();
        if (context == null) {
            rVar.c(SentryLevel.FATAL, "App. Context from ContentProvider is null", new Object[0]);
            return false;
        } else if (a1.c(context, rVar)) {
            l1.e(context, rVar);
            return true;
        } else {
            return true;
        }
    }

    @Override // android.content.ContentProvider
    public void shutdown() {
        c3.x();
    }
}
