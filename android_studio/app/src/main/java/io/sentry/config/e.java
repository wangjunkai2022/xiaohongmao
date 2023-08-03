package io.sentry.config;

import io.sentry.SentryLevel;
import io.sentry.o0;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

/* compiled from: FilesystemPropertiesLoader.java */
/* loaded from: classes4.dex */
final class e implements f {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final String f83089a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final o0 f83090b;

    public e(@m8.g String str, @m8.g o0 o0Var) {
        this.f83089a = str;
        this.f83090b = o0Var;
    }

    @Override // io.sentry.config.f
    @m8.h
    public Properties a() {
        try {
            File file = new File(this.f83089a);
            if (file.isFile() && file.canRead()) {
                BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                Properties properties = new Properties();
                properties.load(bufferedInputStream);
                bufferedInputStream.close();
                return properties;
            }
            return null;
        } catch (IOException e4) {
            this.f83090b.a(SentryLevel.ERROR, e4, "Failed to load Sentry configuration from file: %s", this.f83089a);
            return null;
        }
    }
}
