package com.google.android.play.core.assetpacks;

import androidx.annotation.Nullable;
import io.sentry.instrumentation.file.h;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.Objects;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class b3 extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    private final Enumeration f31248a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private InputStream f31249b;

    public b3(Enumeration enumeration) throws IOException {
        this.f31248a = enumeration;
        a();
    }

    final void a() throws IOException {
        FileInputStream fileInputStream;
        InputStream inputStream = this.f31249b;
        if (inputStream != null) {
            inputStream.close();
        }
        if (this.f31248a.hasMoreElements()) {
            File file = (File) this.f31248a.nextElement();
            fileInputStream = h.b.a(new FileInputStream(file), file);
        } else {
            fileInputStream = null;
        }
        this.f31249b = fileInputStream;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        super.close();
        InputStream inputStream = this.f31249b;
        if (inputStream != null) {
            inputStream.close();
            this.f31249b = null;
        }
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        while (true) {
            InputStream inputStream = this.f31249b;
            if (inputStream == null) {
                return -1;
            }
            int read = inputStream.read();
            if (read != -1) {
                return read;
            }
            a();
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i4, int i10) throws IOException {
        if (this.f31249b == null) {
            return -1;
        }
        Objects.requireNonNull(bArr);
        if (i4 < 0 || i10 < 0 || i10 > bArr.length - i4) {
            throw new IndexOutOfBoundsException();
        }
        if (i10 != 0) {
            do {
                int read = this.f31249b.read(bArr, i4, i10);
                if (read > 0) {
                    return read;
                }
                a();
            } while (this.f31249b != null);
            return -1;
        }
        return 0;
    }
}
