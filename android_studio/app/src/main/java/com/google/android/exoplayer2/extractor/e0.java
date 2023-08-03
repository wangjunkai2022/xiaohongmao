package com.google.android.exoplayer2.extractor;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;

/* compiled from: TrackOutput.java */
/* loaded from: classes2.dex */
public interface e0 {

    /* renamed from: a  reason: collision with root package name */
    public static final int f22139a = 0;

    /* renamed from: b  reason: collision with root package name */
    public static final int f22140b = 1;

    /* renamed from: c  reason: collision with root package name */
    public static final int f22141c = 2;

    /* compiled from: TrackOutput.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f22142a;

        /* renamed from: b  reason: collision with root package name */
        public final byte[] f22143b;

        /* renamed from: c  reason: collision with root package name */
        public final int f22144c;

        /* renamed from: d  reason: collision with root package name */
        public final int f22145d;

        public a(int i4, byte[] bArr, int i10, int i11) {
            this.f22142a = i4;
            this.f22143b = bArr;
            this.f22144c = i10;
            this.f22145d = i11;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f22142a == aVar.f22142a && this.f22144c == aVar.f22144c && this.f22145d == aVar.f22145d && Arrays.equals(this.f22143b, aVar.f22143b);
        }

        public int hashCode() {
            return (((((this.f22142a * 31) + Arrays.hashCode(this.f22143b)) * 31) + this.f22144c) * 31) + this.f22145d;
        }
    }

    /* compiled from: TrackOutput.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface b {
    }

    int a(com.google.android.exoplayer2.upstream.i iVar, int i4, boolean z9, int i10) throws IOException;

    int b(com.google.android.exoplayer2.upstream.i iVar, int i4, boolean z9) throws IOException;

    void c(com.google.android.exoplayer2.util.h0 h0Var, int i4);

    void d(Format format);

    void e(long j4, int i4, int i10, int i11, @Nullable a aVar);

    void f(com.google.android.exoplayer2.util.h0 h0Var, int i4, int i10);
}
