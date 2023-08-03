package io.sentry.instrumentation.file;

import io.sentry.SentryOptions;
import io.sentry.v0;
import java.io.File;
import java.io.FileInputStream;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FileInputStreamInitData.java */
/* loaded from: classes4.dex */
public final class b {
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    final File f83314a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    final v0 f83315b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    final FileInputStream f83316c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    final SentryOptions f83317d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(@m8.h File file, @m8.h v0 v0Var, @m8.g FileInputStream fileInputStream, @m8.g SentryOptions sentryOptions) {
        this.f83314a = file;
        this.f83315b = v0Var;
        this.f83316c = fileInputStream;
        this.f83317d = sentryOptions;
    }
}
