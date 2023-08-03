package com.google.android.exoplayer2.extractor;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.flac.PictureFrame;
import com.google.android.exoplayer2.metadata.flac.VorbisComment;
import com.google.android.exoplayer2.util.z0;
import com.ksyun.media.streamer.kit.StreamerConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: FlacStreamMetadata.java */
/* loaded from: classes2.dex */
public final class u {

    /* renamed from: m  reason: collision with root package name */
    private static final String f23470m = "FlacStreamMetadata";

    /* renamed from: n  reason: collision with root package name */
    public static final int f23471n = -1;

    /* renamed from: o  reason: collision with root package name */
    private static final String f23472o = "=";

    /* renamed from: a  reason: collision with root package name */
    public final int f23473a;

    /* renamed from: b  reason: collision with root package name */
    public final int f23474b;

    /* renamed from: c  reason: collision with root package name */
    public final int f23475c;

    /* renamed from: d  reason: collision with root package name */
    public final int f23476d;

    /* renamed from: e  reason: collision with root package name */
    public final int f23477e;

    /* renamed from: f  reason: collision with root package name */
    public final int f23478f;

    /* renamed from: g  reason: collision with root package name */
    public final int f23479g;

    /* renamed from: h  reason: collision with root package name */
    public final int f23480h;

    /* renamed from: i  reason: collision with root package name */
    public final int f23481i;

    /* renamed from: j  reason: collision with root package name */
    public final long f23482j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    public final a f23483k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private final Metadata f23484l;

    /* compiled from: FlacStreamMetadata.java */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final long[] f23485a;

        /* renamed from: b  reason: collision with root package name */
        public final long[] f23486b;

        public a(long[] jArr, long[] jArr2) {
            this.f23485a = jArr;
            this.f23486b = jArr2;
        }
    }

    public u(byte[] bArr, int i4) {
        com.google.android.exoplayer2.util.g0 g0Var = new com.google.android.exoplayer2.util.g0(bArr);
        g0Var.q(i4 * 8);
        this.f23473a = g0Var.h(16);
        this.f23474b = g0Var.h(16);
        this.f23475c = g0Var.h(24);
        this.f23476d = g0Var.h(24);
        int h4 = g0Var.h(20);
        this.f23477e = h4;
        this.f23478f = m(h4);
        this.f23479g = g0Var.h(3) + 1;
        int h10 = g0Var.h(5) + 1;
        this.f23480h = h10;
        this.f23481i = f(h10);
        this.f23482j = g0Var.j(36);
        this.f23483k = null;
        this.f23484l = null;
    }

    @Nullable
    private static Metadata a(List<String> list, List<PictureFrame> list2) {
        if (list.isEmpty() && list2.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i4 = 0; i4 < list.size(); i4++) {
            String str = list.get(i4);
            String[] m12 = z0.m1(str, f23472o);
            if (m12.length != 2) {
                String valueOf = String.valueOf(str);
                com.google.android.exoplayer2.util.w.n(f23470m, valueOf.length() != 0 ? "Failed to parse Vorbis comment: ".concat(valueOf) : new String("Failed to parse Vorbis comment: "));
            } else {
                arrayList.add(new VorbisComment(m12[0], m12[1]));
            }
        }
        arrayList.addAll(list2);
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    private static int f(int i4) {
        if (i4 != 8) {
            if (i4 != 12) {
                if (i4 != 16) {
                    if (i4 != 20) {
                        return i4 != 24 ? -1 : 6;
                    }
                    return 5;
                }
                return 4;
            }
            return 2;
        }
        return 1;
    }

    private static int m(int i4) {
        switch (i4) {
            case 8000:
                return 4;
            case com.google.android.exoplayer2.audio.a.f21097g /* 16000 */:
                return 5;
            case 22050:
                return 6;
            case 24000:
                return 7;
            case 32000:
                return 8;
            case StreamerConstants.DEFAULT_AUDIO_SAMPLE_RATE /* 44100 */:
                return 9;
            case 48000:
                return 10;
            case 88200:
                return 1;
            case 96000:
                return 11;
            case 176400:
                return 2;
            case com.google.android.exoplayer2.audio.c0.f21169a /* 192000 */:
                return 3;
            default:
                return -1;
        }
    }

    public u b(List<PictureFrame> list) {
        return new u(this.f23473a, this.f23474b, this.f23475c, this.f23476d, this.f23477e, this.f23479g, this.f23480h, this.f23482j, this.f23483k, k(a(Collections.emptyList(), list)));
    }

    public u c(@Nullable a aVar) {
        return new u(this.f23473a, this.f23474b, this.f23475c, this.f23476d, this.f23477e, this.f23479g, this.f23480h, this.f23482j, aVar, this.f23484l);
    }

    public u d(List<String> list) {
        return new u(this.f23473a, this.f23474b, this.f23475c, this.f23476d, this.f23477e, this.f23479g, this.f23480h, this.f23482j, this.f23483k, k(a(list, Collections.emptyList())));
    }

    public long e() {
        long j4;
        long j10;
        int i4 = this.f23476d;
        if (i4 > 0) {
            j4 = (i4 + this.f23475c) / 2;
            j10 = 1;
        } else {
            int i10 = this.f23473a;
            j4 = ((((i10 != this.f23474b || i10 <= 0) ? 4096L : i10) * this.f23479g) * this.f23480h) / 8;
            j10 = 64;
        }
        return j4 + j10;
    }

    public int g() {
        return this.f23480h * this.f23477e * this.f23479g;
    }

    public long h() {
        long j4 = this.f23482j;
        return j4 == 0 ? com.google.android.exoplayer2.i.f23649b : (j4 * 1000000) / this.f23477e;
    }

    public Format i(byte[] bArr, @Nullable Metadata metadata) {
        bArr[4] = Byte.MIN_VALUE;
        int i4 = this.f23476d;
        if (i4 <= 0) {
            i4 = -1;
        }
        return new Format.b().e0(com.google.android.exoplayer2.util.a0.Y).W(i4).H(this.f23479g).f0(this.f23477e).T(Collections.singletonList(bArr)).X(k(metadata)).E();
    }

    public int j() {
        return this.f23474b * this.f23479g * (this.f23480h / 8);
    }

    @Nullable
    public Metadata k(@Nullable Metadata metadata) {
        Metadata metadata2 = this.f23484l;
        return metadata2 == null ? metadata : metadata2.copyWithAppendedEntriesFrom(metadata);
    }

    public long l(long j4) {
        return z0.u((j4 * this.f23477e) / 1000000, 0L, this.f23482j - 1);
    }

    public u(int i4, int i10, int i11, int i12, int i13, int i14, int i15, long j4, ArrayList<String> arrayList, ArrayList<PictureFrame> arrayList2) {
        this(i4, i10, i11, i12, i13, i14, i15, j4, (a) null, a(arrayList, arrayList2));
    }

    private u(int i4, int i10, int i11, int i12, int i13, int i14, int i15, long j4, @Nullable a aVar, @Nullable Metadata metadata) {
        this.f23473a = i4;
        this.f23474b = i10;
        this.f23475c = i11;
        this.f23476d = i12;
        this.f23477e = i13;
        this.f23478f = m(i13);
        this.f23479g = i14;
        this.f23480h = i15;
        this.f23481i = f(i15);
        this.f23482j = j4;
        this.f23483k = aVar;
        this.f23484l = metadata;
    }
}
