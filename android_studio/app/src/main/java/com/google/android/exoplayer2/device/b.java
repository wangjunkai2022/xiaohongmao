package com.google.android.exoplayer2.device;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.h;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* compiled from: DeviceInfo.java */
/* loaded from: classes2.dex */
public final class b implements h {

    /* renamed from: d  reason: collision with root package name */
    public static final int f21645d = 0;

    /* renamed from: e  reason: collision with root package name */
    public static final int f21646e = 1;

    /* renamed from: g  reason: collision with root package name */
    private static final int f21648g = 0;

    /* renamed from: h  reason: collision with root package name */
    private static final int f21649h = 1;

    /* renamed from: i  reason: collision with root package name */
    private static final int f21650i = 2;

    /* renamed from: a  reason: collision with root package name */
    public final int f21652a;

    /* renamed from: b  reason: collision with root package name */
    public final int f21653b;

    /* renamed from: c  reason: collision with root package name */
    public final int f21654c;

    /* renamed from: f  reason: collision with root package name */
    public static final b f21647f = new b(0, 0, 0);

    /* renamed from: j  reason: collision with root package name */
    public static final h.a<b> f21651j = com.google.android.exoplayer2.device.a.f21644a;

    /* compiled from: DeviceInfo.java */
    @Target({ElementType.TYPE_PARAMETER, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface a {
    }

    public b(int i4, int i10, int i11) {
        this.f21652a = i4;
        this.f21653b = i10;
        this.f21654c = i11;
    }

    private static String b(int i4) {
        return Integer.toString(i4, 36);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ b c(Bundle bundle) {
        return new b(bundle.getInt(b(0), 0), bundle.getInt(b(1), 0), bundle.getInt(b(2), 0));
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof b) {
            b bVar = (b) obj;
            return this.f21652a == bVar.f21652a && this.f21653b == bVar.f21653b && this.f21654c == bVar.f21654c;
        }
        return false;
    }

    public int hashCode() {
        return ((((527 + this.f21652a) * 31) + this.f21653b) * 31) + this.f21654c;
    }

    @Override // com.google.android.exoplayer2.h
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(b(0), this.f21652a);
        bundle.putInt(b(1), this.f21653b);
        bundle.putInt(b(2), this.f21654c);
        return bundle;
    }
}
