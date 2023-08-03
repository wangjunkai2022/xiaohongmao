package com.bumptech.glide.signature;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* compiled from: MediaStoreSignature.java */
/* loaded from: classes.dex */
public class d implements com.bumptech.glide.load.c {
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final String f9686c;

    /* renamed from: d  reason: collision with root package name */
    private final long f9687d;

    /* renamed from: e  reason: collision with root package name */
    private final int f9688e;

    public d(@Nullable String str, long j4, int i4) {
        this.f9686c = str == null ? "" : str;
        this.f9687d = j4;
        this.f9688e = i4;
    }

    @Override // com.bumptech.glide.load.c
    public void b(@NonNull MessageDigest messageDigest) {
        messageDigest.update(ByteBuffer.allocate(12).putLong(this.f9687d).putInt(this.f9688e).array());
        messageDigest.update(this.f9686c.getBytes(com.bumptech.glide.load.c.f8527b));
    }

    @Override // com.bumptech.glide.load.c
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        return this.f9687d == dVar.f9687d && this.f9688e == dVar.f9688e && this.f9686c.equals(dVar.f9686c);
    }

    @Override // com.bumptech.glide.load.c
    public int hashCode() {
        long j4 = this.f9687d;
        return (((this.f9686c.hashCode() * 31) + ((int) (j4 ^ (j4 >>> 32)))) * 31) + this.f9688e;
    }
}
