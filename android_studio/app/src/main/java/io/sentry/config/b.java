package io.sentry.config;

import io.sentry.SentryLevel;
import io.sentry.o0;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/* compiled from: ClasspathPropertiesLoader.java */
/* loaded from: classes4.dex */
final class b implements f {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final String f83084a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final ClassLoader f83085b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final o0 f83086c;

    public b(@m8.g String str, @m8.h ClassLoader classLoader, @m8.g o0 o0Var) {
        this.f83084a = str;
        if (classLoader == null) {
            this.f83085b = ClassLoader.getSystemClassLoader();
        } else {
            this.f83085b = classLoader;
        }
        this.f83086c = o0Var;
    }

    @Override // io.sentry.config.f
    @m8.h
    public Properties a() {
        try {
            InputStream resourceAsStream = this.f83085b.getResourceAsStream(this.f83084a);
            if (resourceAsStream == null) {
                if (resourceAsStream != null) {
                    resourceAsStream.close();
                }
                return null;
            }
            BufferedInputStream bufferedInputStream = new BufferedInputStream(resourceAsStream);
            try {
                Properties properties = new Properties();
                properties.load(bufferedInputStream);
                bufferedInputStream.close();
                resourceAsStream.close();
                return properties;
            } catch (Throwable th) {
                try {
                    bufferedInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException e4) {
            this.f83086c.a(SentryLevel.ERROR, e4, "Failed to load Sentry configuration from classpath resource: %s", this.f83084a);
            return null;
        }
    }

    public b(@m8.g o0 o0Var) {
        this("sentry.properties", b.class.getClassLoader(), o0Var);
    }
}
