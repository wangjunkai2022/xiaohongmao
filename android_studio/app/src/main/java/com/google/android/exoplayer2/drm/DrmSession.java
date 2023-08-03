package com.google.android.exoplayer2.drm;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.drm.s;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Map;
import java.util.UUID;

/* loaded from: classes2.dex */
public interface DrmSession {

    /* renamed from: a  reason: collision with root package name */
    public static final int f21725a = 0;

    /* renamed from: b  reason: collision with root package name */
    public static final int f21726b = 1;

    /* renamed from: c  reason: collision with root package name */
    public static final int f21727c = 2;

    /* renamed from: d  reason: collision with root package name */
    public static final int f21728d = 3;

    /* renamed from: e  reason: collision with root package name */
    public static final int f21729e = 4;

    /* loaded from: classes2.dex */
    public static class DrmSessionException extends IOException {
        public DrmSessionException(Throwable th) {
            super(th);
        }
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface a {
    }

    @Nullable
    DrmSessionException e();

    void f(@Nullable s.a aVar);

    void g(@Nullable s.a aVar);

    int getState();

    UUID h();

    boolean i();

    @Nullable
    a0 j();

    @Nullable
    byte[] k();

    @Nullable
    Map<String, String> l();
}
