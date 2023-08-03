package com.google.android.exoplayer2.upstream.cache;

import androidx.annotation.Nullable;

/* compiled from: ContentMetadata.java */
/* loaded from: classes2.dex */
public interface p {

    /* renamed from: a  reason: collision with root package name */
    public static final String f27174a = "custom_";

    /* renamed from: b  reason: collision with root package name */
    public static final String f27175b = "exo_redir";

    /* renamed from: c  reason: collision with root package name */
    public static final String f27176c = "exo_len";

    boolean a(String str);

    long b(String str, long j4);

    @Nullable
    byte[] c(String str, @Nullable byte[] bArr);

    @Nullable
    String d(String str, @Nullable String str2);
}
