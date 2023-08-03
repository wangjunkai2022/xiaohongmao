package com.google.android.gms.common.data;

import android.database.CharArrayBuffer;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.s;
import com.google.android.gms.common.internal.u;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public abstract class f {
    @NonNull
    @u2.a

    /* renamed from: a  reason: collision with root package name */
    protected final DataHolder f28982a;
    @u2.a

    /* renamed from: b  reason: collision with root package name */
    protected int f28983b;

    /* renamed from: c  reason: collision with root package name */
    private int f28984c;

    @u2.a
    public f(@NonNull DataHolder dataHolder, int i4) {
        this.f28982a = (DataHolder) u.k(dataHolder);
        n(i4);
    }

    @u2.a
    protected void a(@NonNull String str, @NonNull CharArrayBuffer charArrayBuffer) {
        this.f28982a.zac(str, this.f28983b, this.f28984c, charArrayBuffer);
    }

    @u2.a
    protected boolean b(@NonNull String str) {
        return this.f28982a.getBoolean(str, this.f28983b, this.f28984c);
    }

    @NonNull
    @u2.a
    protected byte[] c(@NonNull String str) {
        return this.f28982a.getByteArray(str, this.f28983b, this.f28984c);
    }

    @u2.a
    protected int d() {
        return this.f28983b;
    }

    @u2.a
    protected double e(@NonNull String str) {
        return this.f28982a.zaa(str, this.f28983b, this.f28984c);
    }

    @u2.a
    public boolean equals(@Nullable Object obj) {
        if (obj instanceof f) {
            f fVar = (f) obj;
            if (s.b(Integer.valueOf(fVar.f28983b), Integer.valueOf(this.f28983b)) && s.b(Integer.valueOf(fVar.f28984c), Integer.valueOf(this.f28984c)) && fVar.f28982a == this.f28982a) {
                return true;
            }
        }
        return false;
    }

    @u2.a
    protected float f(@NonNull String str) {
        return this.f28982a.zab(str, this.f28983b, this.f28984c);
    }

    @u2.a
    protected int g(@NonNull String str) {
        return this.f28982a.getInteger(str, this.f28983b, this.f28984c);
    }

    @u2.a
    protected long h(@NonNull String str) {
        return this.f28982a.getLong(str, this.f28983b, this.f28984c);
    }

    @u2.a
    public int hashCode() {
        return s.c(Integer.valueOf(this.f28983b), Integer.valueOf(this.f28984c), this.f28982a);
    }

    @NonNull
    @u2.a
    protected String i(@NonNull String str) {
        return this.f28982a.getString(str, this.f28983b, this.f28984c);
    }

    @u2.a
    public boolean j(@NonNull String str) {
        return this.f28982a.hasColumn(str);
    }

    @u2.a
    protected boolean k(@NonNull String str) {
        return this.f28982a.hasNull(str, this.f28983b, this.f28984c);
    }

    @u2.a
    public boolean l() {
        return !this.f28982a.isClosed();
    }

    @Nullable
    @u2.a
    protected Uri m(@NonNull String str) {
        String string = this.f28982a.getString(str, this.f28983b, this.f28984c);
        if (string == null) {
            return null;
        }
        return Uri.parse(string);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void n(int i4) {
        boolean z9 = false;
        if (i4 >= 0 && i4 < this.f28982a.getCount()) {
            z9 = true;
        }
        u.q(z9);
        this.f28983b = i4;
        this.f28984c = this.f28982a.getWindowIndex(i4);
    }
}
