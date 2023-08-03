package com.bumptech.glide.signature;

import androidx.annotation.NonNull;
import java.security.MessageDigest;

/* compiled from: EmptySignature.java */
/* loaded from: classes.dex */
public final class c implements com.bumptech.glide.load.c {

    /* renamed from: c  reason: collision with root package name */
    private static final c f9685c = new c();

    private c() {
    }

    @NonNull
    public static c c() {
        return f9685c;
    }

    @Override // com.bumptech.glide.load.c
    public void b(@NonNull MessageDigest messageDigest) {
    }

    public String toString() {
        return "EmptySignature";
    }
}
