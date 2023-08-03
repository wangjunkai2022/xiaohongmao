package io.sentry.instrumentation.file;

import io.sentry.SentryOptions;
import io.sentry.v0;
import java.io.File;
import java.io.FileOutputStream;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FileOutputStreamInitData.java */
/* loaded from: classes4.dex */
public final class c {
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    final File f83318a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    final v0 f83319b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f83320c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    final FileOutputStream f83321d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    final SentryOptions f83322e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(@m8.h File file, boolean z9, @m8.h v0 v0Var, @m8.g FileOutputStream fileOutputStream, @m8.g SentryOptions sentryOptions) {
        this.f83318a = file;
        this.f83320c = z9;
        this.f83319b = v0Var;
        this.f83321d = fileOutputStream;
        this.f83322e = sentryOptions;
    }
}
