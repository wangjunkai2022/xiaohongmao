package com.rudresh.videocompression.videocompression;

import android.media.MediaCodec;
import android.media.MediaFormat;
import java.io.File;
import java.util.ArrayList;

/* compiled from: Mp4Movie.java */
/* loaded from: classes3.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private com.googlecode.mp4parser.util.l f55269a = com.googlecode.mp4parser.util.l.f36990j;

    /* renamed from: b  reason: collision with root package name */
    private ArrayList<k> f55270b = new ArrayList<>();

    /* renamed from: c  reason: collision with root package name */
    private File f55271c;

    /* renamed from: d  reason: collision with root package name */
    private int f55272d;

    /* renamed from: e  reason: collision with root package name */
    private int f55273e;

    public void a(int i4, long j4, MediaCodec.BufferInfo bufferInfo) {
        if (i4 < 0 || i4 >= this.f55270b.size()) {
            return;
        }
        this.f55270b.get(i4).b(j4, bufferInfo);
    }

    public int b(MediaFormat mediaFormat, boolean z9) {
        this.f55270b.add(new k(this.f55270b.size(), mediaFormat, z9));
        return this.f55270b.size() - 1;
    }

    public File c() {
        return this.f55271c;
    }

    public int d() {
        return this.f55273e;
    }

    public long e(int i4) {
        if (i4 < 0 || i4 >= this.f55270b.size()) {
            return 0L;
        }
        return this.f55270b.get(i4).g();
    }

    public com.googlecode.mp4parser.util.l f() {
        return this.f55269a;
    }

    public ArrayList<k> g() {
        return this.f55270b;
    }

    public int h() {
        return this.f55272d;
    }

    public void i(File file) {
        this.f55271c = file;
    }

    public void j(int i4) {
        if (i4 == 0) {
            this.f55269a = com.googlecode.mp4parser.util.l.f36990j;
        } else if (i4 == 90) {
            this.f55269a = com.googlecode.mp4parser.util.l.f36991k;
        } else if (i4 == 180) {
            this.f55269a = com.googlecode.mp4parser.util.l.f36992l;
        } else if (i4 == 270) {
            this.f55269a = com.googlecode.mp4parser.util.l.f36993m;
        }
    }

    public void k(int i4, int i10) {
        this.f55272d = i4;
        this.f55273e = i10;
    }
}
