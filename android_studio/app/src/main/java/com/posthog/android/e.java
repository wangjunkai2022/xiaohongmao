package com.posthog.android;

import java.io.InputStream;
import java.io.OutputStream;

/* compiled from: Crypto.java */
/* loaded from: classes3.dex */
public abstract class e {

    /* compiled from: Crypto.java */
    /* loaded from: classes3.dex */
    static class a extends e {
        a() {
        }

        @Override // com.posthog.android.e
        public InputStream a(InputStream inputStream) {
            return inputStream;
        }

        @Override // com.posthog.android.e
        public OutputStream b(OutputStream outputStream) {
            return outputStream;
        }
    }

    public static e c() {
        return new a();
    }

    public abstract InputStream a(InputStream inputStream);

    public abstract OutputStream b(OutputStream outputStream);
}
