package com.bumptech.glide.signature;

import android.content.Context;
import androidx.annotation.NonNull;
import com.bumptech.glide.util.o;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* compiled from: AndroidResourceSignature.java */
/* loaded from: classes.dex */
public final class a implements com.bumptech.glide.load.c {

    /* renamed from: c  reason: collision with root package name */
    private final int f9681c;

    /* renamed from: d  reason: collision with root package name */
    private final com.bumptech.glide.load.c f9682d;

    private a(int i4, com.bumptech.glide.load.c cVar) {
        this.f9681c = i4;
        this.f9682d = cVar;
    }

    @NonNull
    public static com.bumptech.glide.load.c c(@NonNull Context context) {
        return new a(context.getResources().getConfiguration().uiMode & 48, b.c(context));
    }

    @Override // com.bumptech.glide.load.c
    public void b(@NonNull MessageDigest messageDigest) {
        this.f9682d.b(messageDigest);
        messageDigest.update(ByteBuffer.allocate(4).putInt(this.f9681c).array());
    }

    @Override // com.bumptech.glide.load.c
    public boolean equals(Object obj) {
        if (obj instanceof a) {
            a aVar = (a) obj;
            return this.f9681c == aVar.f9681c && this.f9682d.equals(aVar.f9682d);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.c
    public int hashCode() {
        return o.q(this.f9682d, this.f9681c);
    }
}
