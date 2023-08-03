package com.google.android.exoplayer2.decoder;

import android.media.MediaCodec;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.util.z0;

/* compiled from: CryptoInfo.java */
/* loaded from: classes2.dex */
public final class b {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public byte[] f21579a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public byte[] f21580b;

    /* renamed from: c  reason: collision with root package name */
    public int f21581c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public int[] f21582d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public int[] f21583e;

    /* renamed from: f  reason: collision with root package name */
    public int f21584f;

    /* renamed from: g  reason: collision with root package name */
    public int f21585g;

    /* renamed from: h  reason: collision with root package name */
    public int f21586h;

    /* renamed from: i  reason: collision with root package name */
    private final MediaCodec.CryptoInfo f21587i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private final C0157b f21588j;

    /* compiled from: CryptoInfo.java */
    @RequiresApi(24)
    /* renamed from: com.google.android.exoplayer2.decoder.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    private static final class C0157b {

        /* renamed from: a  reason: collision with root package name */
        private final MediaCodec.CryptoInfo f21589a;

        /* renamed from: b  reason: collision with root package name */
        private final MediaCodec.CryptoInfo.Pattern f21590b;

        /* JADX INFO: Access modifiers changed from: private */
        public void b(int i4, int i10) {
            this.f21590b.set(i4, i10);
            this.f21589a.setPattern(this.f21590b);
        }

        private C0157b(MediaCodec.CryptoInfo cryptoInfo) {
            this.f21589a = cryptoInfo;
            this.f21590b = new MediaCodec.CryptoInfo.Pattern(0, 0);
        }
    }

    public b() {
        MediaCodec.CryptoInfo cryptoInfo = new MediaCodec.CryptoInfo();
        this.f21587i = cryptoInfo;
        this.f21588j = z0.f27743a >= 24 ? new C0157b(cryptoInfo) : null;
    }

    public MediaCodec.CryptoInfo a() {
        return this.f21587i;
    }

    public void b(int i4) {
        if (i4 == 0) {
            return;
        }
        if (this.f21582d == null) {
            int[] iArr = new int[1];
            this.f21582d = iArr;
            this.f21587i.numBytesOfClearData = iArr;
        }
        int[] iArr2 = this.f21582d;
        iArr2[0] = iArr2[0] + i4;
    }

    public void c(int i4, int[] iArr, int[] iArr2, byte[] bArr, byte[] bArr2, int i10, int i11, int i12) {
        this.f21584f = i4;
        this.f21582d = iArr;
        this.f21583e = iArr2;
        this.f21580b = bArr;
        this.f21579a = bArr2;
        this.f21581c = i10;
        this.f21585g = i11;
        this.f21586h = i12;
        MediaCodec.CryptoInfo cryptoInfo = this.f21587i;
        cryptoInfo.numSubSamples = i4;
        cryptoInfo.numBytesOfClearData = iArr;
        cryptoInfo.numBytesOfEncryptedData = iArr2;
        cryptoInfo.key = bArr;
        cryptoInfo.iv = bArr2;
        cryptoInfo.mode = i10;
        if (z0.f27743a >= 24) {
            ((C0157b) com.google.android.exoplayer2.util.a.g(this.f21588j)).b(i11, i12);
        }
    }
}
