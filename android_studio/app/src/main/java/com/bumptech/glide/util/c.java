package com.bumptech.glide.util;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: ContentLengthInputStream.java */
/* loaded from: classes.dex */
public final class c extends FilterInputStream {

    /* renamed from: c  reason: collision with root package name */
    private static final String f9699c = "ContentLengthStream";

    /* renamed from: d  reason: collision with root package name */
    private static final int f9700d = -1;

    /* renamed from: a  reason: collision with root package name */
    private final long f9701a;

    /* renamed from: b  reason: collision with root package name */
    private int f9702b;

    private c(@NonNull InputStream inputStream, long j4) {
        super(inputStream);
        this.f9701a = j4;
    }

    private int a(int i4) throws IOException {
        if (i4 >= 0) {
            this.f9702b += i4;
        } else if (this.f9701a - this.f9702b > 0) {
            throw new IOException("Failed to read all expected data, expected: " + this.f9701a + ", but read: " + this.f9702b);
        }
        return i4;
    }

    @NonNull
    public static InputStream b(@NonNull InputStream inputStream, long j4) {
        return new c(inputStream, j4);
    }

    @NonNull
    public static InputStream d(@NonNull InputStream inputStream, @Nullable String str) {
        return b(inputStream, h(str));
    }

    private static int h(@Nullable String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                return Integer.parseInt(str);
            } catch (NumberFormatException e4) {
                if (Log.isLoggable(f9699c, 3)) {
                    Log.d(f9699c, "failed to parse content length header: " + str, e4);
                }
            }
        }
        return -1;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int available() throws IOException {
        return (int) Math.max(this.f9701a - this.f9702b, ((FilterInputStream) this).in.available());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read() throws IOException {
        int read;
        read = super.read();
        a(read >= 0 ? 1 : -1);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read(byte[] bArr, int i4, int i10) throws IOException {
        return a(super.read(bArr, i4, i10));
    }
}
