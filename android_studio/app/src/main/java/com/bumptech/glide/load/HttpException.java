package com.bumptech.glide.load;

import androidx.annotation.Nullable;
import java.io.IOException;

/* loaded from: classes.dex */
public final class HttpException extends IOException {
    public static final int UNKNOWN = -1;

    /* renamed from: b  reason: collision with root package name */
    private static final long f8509b = 1;

    /* renamed from: a  reason: collision with root package name */
    private final int f8510a;

    public HttpException(int i4) {
        this("Http request failed", i4);
    }

    public int getStatusCode() {
        return this.f8510a;
    }

    @Deprecated
    public HttpException(String str) {
        this(str, -1);
    }

    public HttpException(String str, int i4) {
        this(str, i4, null);
    }

    public HttpException(String str, int i4, @Nullable Throwable th) {
        super(str + ", status code: " + i4, th);
        this.f8510a = i4;
    }
}
