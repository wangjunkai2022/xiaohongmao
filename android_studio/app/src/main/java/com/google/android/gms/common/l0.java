package com.google.android.gms.common;

import android.util.Log;
import androidx.annotation.NonNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public class l0 {

    /* renamed from: d  reason: collision with root package name */
    private static final l0 f29223d = new l0(true, null, null);

    /* renamed from: a  reason: collision with root package name */
    final boolean f29224a;
    @r7.h

    /* renamed from: b  reason: collision with root package name */
    final String f29225b;
    @r7.h

    /* renamed from: c  reason: collision with root package name */
    final Throwable f29226c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l0(boolean z9, @r7.h String str, @r7.h Throwable th) {
        this.f29224a = z9;
        this.f29225b = str;
        this.f29226c = th;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static l0 b() {
        return f29223d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static l0 c(@NonNull String str) {
        return new l0(false, str, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static l0 d(@NonNull String str, @NonNull Throwable th) {
        return new l0(false, str, th);
    }

    @r7.h
    String a() {
        return this.f29225b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void e() {
        if (this.f29224a || !Log.isLoggable("GoogleCertificatesRslt", 3)) {
            return;
        }
        if (this.f29226c != null) {
            Log.d("GoogleCertificatesRslt", a(), this.f29226c);
        } else {
            Log.d("GoogleCertificatesRslt", a());
        }
    }
}
