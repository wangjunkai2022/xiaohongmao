package com.google.android.exoplayer2.extractor;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: DefaultExtractorsFactory.java */
/* loaded from: classes2.dex */
public final class h implements q {

    /* renamed from: m  reason: collision with root package name */
    private static final int[] f22279m = {5, 4, 12, 8, 3, 10, 9, 11, 6, 2, 0, 1, 7, 14};
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private static final Constructor<? extends k> f22280n;

    /* renamed from: b  reason: collision with root package name */
    private boolean f22281b;

    /* renamed from: c  reason: collision with root package name */
    private int f22282c;

    /* renamed from: d  reason: collision with root package name */
    private int f22283d;

    /* renamed from: e  reason: collision with root package name */
    private int f22284e;

    /* renamed from: f  reason: collision with root package name */
    private int f22285f;

    /* renamed from: g  reason: collision with root package name */
    private int f22286g;

    /* renamed from: h  reason: collision with root package name */
    private int f22287h;

    /* renamed from: i  reason: collision with root package name */
    private int f22288i;

    /* renamed from: k  reason: collision with root package name */
    private int f22290k;

    /* renamed from: j  reason: collision with root package name */
    private int f22289j = 1;

    /* renamed from: l  reason: collision with root package name */
    private int f22291l = com.google.android.exoplayer2.extractor.ts.h0.B;

    static {
        Constructor<? extends k> constructor = null;
        try {
            if (Boolean.TRUE.equals(Class.forName("com.google.android.exoplayer2.ext.flac.FlacLibrary").getMethod("isAvailable", new Class[0]).invoke(null, new Object[0]))) {
                constructor = Class.forName("com.google.android.exoplayer2.ext.flac.FlacExtractor").asSubclass(k.class).getConstructor(Integer.TYPE);
            }
        } catch (ClassNotFoundException unused) {
        } catch (Exception e4) {
            throw new RuntimeException("Error instantiating FLAC extension", e4);
        }
        f22280n = constructor;
    }

    private void c(int i4, List<k> list) {
        switch (i4) {
            case 0:
                list.add(new com.google.android.exoplayer2.extractor.ts.b());
                return;
            case 1:
                list.add(new com.google.android.exoplayer2.extractor.ts.e());
                return;
            case 2:
                list.add(new com.google.android.exoplayer2.extractor.ts.h(this.f22282c | (this.f22281b ? 1 : 0)));
                return;
            case 3:
                list.add(new com.google.android.exoplayer2.extractor.amr.b(this.f22283d | (this.f22281b ? 1 : 0)));
                return;
            case 4:
                Constructor<? extends k> constructor = f22280n;
                if (constructor != null) {
                    try {
                        list.add(constructor.newInstance(Integer.valueOf(this.f22284e)));
                        return;
                    } catch (Exception e4) {
                        throw new IllegalStateException("Unexpected error creating FLAC extractor", e4);
                    }
                }
                list.add(new com.google.android.exoplayer2.extractor.flac.d(this.f22284e));
                return;
            case 5:
                list.add(new com.google.android.exoplayer2.extractor.flv.c());
                return;
            case 6:
                list.add(new com.google.android.exoplayer2.extractor.mkv.e(this.f22285f));
                return;
            case 7:
                list.add(new com.google.android.exoplayer2.extractor.mp3.f(this.f22288i | (this.f22281b ? 1 : 0)));
                return;
            case 8:
                list.add(new com.google.android.exoplayer2.extractor.mp4.g(this.f22287h));
                list.add(new com.google.android.exoplayer2.extractor.mp4.k(this.f22286g));
                return;
            case 9:
                list.add(new com.google.android.exoplayer2.extractor.ogg.d());
                return;
            case 10:
                list.add(new com.google.android.exoplayer2.extractor.ts.a0());
                return;
            case 11:
                list.add(new com.google.android.exoplayer2.extractor.ts.h0(this.f22289j, this.f22290k, this.f22291l));
                return;
            case 12:
                list.add(new com.google.android.exoplayer2.extractor.wav.b());
                return;
            case 13:
            default:
                return;
            case 14:
                list.add(new com.google.android.exoplayer2.extractor.jpeg.a());
                return;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.q
    public synchronized k[] a(Uri uri, Map<String, List<String>> map) {
        ArrayList arrayList;
        int[] iArr;
        arrayList = new ArrayList(14);
        int b10 = com.google.android.exoplayer2.util.n.b(map);
        if (b10 != -1) {
            c(b10, arrayList);
        }
        int c10 = com.google.android.exoplayer2.util.n.c(uri);
        if (c10 != -1 && c10 != b10) {
            c(c10, arrayList);
        }
        for (int i4 : f22279m) {
            if (i4 != b10 && i4 != c10) {
                c(i4, arrayList);
            }
        }
        return (k[]) arrayList.toArray(new k[arrayList.size()]);
    }

    @Override // com.google.android.exoplayer2.extractor.q
    public synchronized k[] b() {
        return a(Uri.EMPTY, new HashMap());
    }

    public synchronized h d(int i4) {
        this.f22282c = i4;
        return this;
    }

    public synchronized h e(int i4) {
        this.f22283d = i4;
        return this;
    }

    public synchronized h f(boolean z9) {
        this.f22281b = z9;
        return this;
    }

    public synchronized h g(int i4) {
        this.f22284e = i4;
        return this;
    }

    public synchronized h h(int i4) {
        this.f22287h = i4;
        return this;
    }

    public synchronized h i(int i4) {
        this.f22285f = i4;
        return this;
    }

    public synchronized h j(int i4) {
        this.f22288i = i4;
        return this;
    }

    public synchronized h k(int i4) {
        this.f22286g = i4;
        return this;
    }

    public synchronized h l(int i4) {
        this.f22290k = i4;
        return this;
    }

    public synchronized h m(int i4) {
        this.f22289j = i4;
        return this;
    }

    public synchronized h n(int i4) {
        this.f22291l = i4;
        return this;
    }
}
