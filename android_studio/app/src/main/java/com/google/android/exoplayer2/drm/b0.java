package com.google.android.exoplayer2.drm;

import android.media.DeniedByServerException;
import android.media.MediaCryptoException;
import android.media.MediaDrmException;
import android.media.NotProvisionedException;
import android.os.PersistableBundle;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.drm.DrmInitData;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* compiled from: ExoMediaDrm.java */
/* loaded from: classes2.dex */
public interface b0 {

    /* renamed from: a  reason: collision with root package name */
    public static final int f21732a = 2;

    /* renamed from: b  reason: collision with root package name */
    public static final int f21733b = 3;

    /* renamed from: c  reason: collision with root package name */
    public static final int f21734c = 1;

    /* renamed from: d  reason: collision with root package name */
    public static final int f21735d = 1;

    /* renamed from: e  reason: collision with root package name */
    public static final int f21736e = 2;

    /* renamed from: f  reason: collision with root package name */
    public static final int f21737f = 3;

    /* compiled from: ExoMediaDrm.java */
    /* loaded from: classes2.dex */
    public static final class a implements g {

        /* renamed from: a  reason: collision with root package name */
        private final b0 f21738a;

        public a(b0 b0Var) {
            this.f21738a = b0Var;
        }

        @Override // com.google.android.exoplayer2.drm.b0.g
        public b0 a(UUID uuid) {
            this.f21738a.acquire();
            return this.f21738a;
        }
    }

    /* compiled from: ExoMediaDrm.java */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: d  reason: collision with root package name */
        public static final int f21739d = Integer.MIN_VALUE;

        /* renamed from: e  reason: collision with root package name */
        public static final int f21740e = 0;

        /* renamed from: f  reason: collision with root package name */
        public static final int f21741f = 1;

        /* renamed from: g  reason: collision with root package name */
        public static final int f21742g = 2;

        /* renamed from: h  reason: collision with root package name */
        public static final int f21743h = 3;

        /* renamed from: i  reason: collision with root package name */
        public static final int f21744i = 4;

        /* renamed from: a  reason: collision with root package name */
        private final byte[] f21745a;

        /* renamed from: b  reason: collision with root package name */
        private final String f21746b;

        /* renamed from: c  reason: collision with root package name */
        private final int f21747c;

        /* compiled from: ExoMediaDrm.java */
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: classes2.dex */
        public @interface a {
        }

        public b(byte[] bArr, String str) {
            this(bArr, str, Integer.MIN_VALUE);
        }

        public byte[] a() {
            return this.f21745a;
        }

        public String b() {
            return this.f21746b;
        }

        public int c() {
            return this.f21747c;
        }

        public b(byte[] bArr, String str, int i4) {
            this.f21745a = bArr;
            this.f21746b = str;
            this.f21747c = i4;
        }
    }

    /* compiled from: ExoMediaDrm.java */
    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private final int f21748a;

        /* renamed from: b  reason: collision with root package name */
        private final byte[] f21749b;

        public c(int i4, byte[] bArr) {
            this.f21748a = i4;
            this.f21749b = bArr;
        }

        public byte[] a() {
            return this.f21749b;
        }

        public int b() {
            return this.f21748a;
        }
    }

    /* compiled from: ExoMediaDrm.java */
    /* loaded from: classes2.dex */
    public interface d {
        void a(b0 b0Var, @Nullable byte[] bArr, int i4, int i10, @Nullable byte[] bArr2);
    }

    /* compiled from: ExoMediaDrm.java */
    /* loaded from: classes2.dex */
    public interface e {
        void a(b0 b0Var, byte[] bArr, long j4);
    }

    /* compiled from: ExoMediaDrm.java */
    /* loaded from: classes2.dex */
    public interface f {
        void a(b0 b0Var, byte[] bArr, List<c> list, boolean z9);
    }

    /* compiled from: ExoMediaDrm.java */
    /* loaded from: classes2.dex */
    public interface g {
        b0 a(UUID uuid);
    }

    /* compiled from: ExoMediaDrm.java */
    /* loaded from: classes2.dex */
    public static final class h {

        /* renamed from: a  reason: collision with root package name */
        private final byte[] f21750a;

        /* renamed from: b  reason: collision with root package name */
        private final String f21751b;

        public h(byte[] bArr, String str) {
            this.f21750a = bArr;
            this.f21751b = str;
        }

        public byte[] a() {
            return this.f21750a;
        }

        public String b() {
            return this.f21751b;
        }
    }

    Class<? extends a0> a();

    void acquire();

    Map<String, String> b(byte[] bArr);

    a0 c(byte[] bArr) throws MediaCryptoException;

    h d();

    void e(@Nullable e eVar);

    byte[] f() throws MediaDrmException;

    void g(byte[] bArr, byte[] bArr2);

    void h(String str, String str2);

    void i(@Nullable d dVar);

    @Nullable
    PersistableBundle j();

    void k(byte[] bArr) throws DeniedByServerException;

    void l(String str, byte[] bArr);

    String m(String str);

    void n(byte[] bArr);

    byte[] o(String str);

    @Nullable
    byte[] p(byte[] bArr, byte[] bArr2) throws NotProvisionedException, DeniedByServerException;

    b q(byte[] bArr, @Nullable List<DrmInitData.SchemeData> list, int i4, @Nullable HashMap<String, String> hashMap) throws NotProvisionedException;

    void r(@Nullable f fVar);

    void release();
}
