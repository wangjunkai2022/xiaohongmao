package com.bumptech.glide.load;

import androidx.annotation.NonNull;
import java.nio.charset.Charset;
import java.security.MessageDigest;

/* compiled from: Key.java */
/* loaded from: classes.dex */
public interface c {

    /* renamed from: a  reason: collision with root package name */
    public static final String f8526a = "UTF-8";

    /* renamed from: b  reason: collision with root package name */
    public static final Charset f8527b = Charset.forName("UTF-8");

    void b(@NonNull MessageDigest messageDigest);

    boolean equals(Object obj);

    int hashCode();
}
