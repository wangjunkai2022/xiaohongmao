package com.bumptech.glide.gifdecoder;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.InputStream;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;

/* compiled from: GifDecoder.java */
/* loaded from: classes.dex */
public interface a {

    /* renamed from: a  reason: collision with root package name */
    public static final int f7248a = 0;

    /* renamed from: b  reason: collision with root package name */
    public static final int f7249b = 1;

    /* renamed from: c  reason: collision with root package name */
    public static final int f7250c = 2;

    /* renamed from: d  reason: collision with root package name */
    public static final int f7251d = 3;

    /* renamed from: e  reason: collision with root package name */
    public static final int f7252e = 0;

    /* compiled from: GifDecoder.java */
    /* renamed from: com.bumptech.glide.gifdecoder.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0042a {
        void a(@NonNull Bitmap bitmap);

        @NonNull
        byte[] b(int i4);

        @NonNull
        Bitmap c(int i4, int i10, @NonNull Bitmap.Config config);

        @NonNull
        int[] d(int i4);

        void e(@NonNull byte[] bArr);

        void f(@NonNull int[] iArr);
    }

    /* compiled from: GifDecoder.java */
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface b {
    }

    int a();

    @Deprecated
    int c();

    void clear();

    int d(@Nullable InputStream inputStream, int i4);

    @Nullable
    Bitmap e();

    void f();

    void g(@NonNull Bitmap.Config config);

    int getHeight();

    int getStatus();

    int getWidth();

    int h(int i4);

    @NonNull
    ByteBuffer i();

    int j();

    void k(@NonNull c cVar, @NonNull byte[] bArr);

    int l();

    void m();

    void n(@NonNull c cVar, @NonNull ByteBuffer byteBuffer);

    int o();

    void p(@NonNull c cVar, @NonNull ByteBuffer byteBuffer, int i4);

    int q();

    int r();

    int read(@Nullable byte[] bArr);
}
