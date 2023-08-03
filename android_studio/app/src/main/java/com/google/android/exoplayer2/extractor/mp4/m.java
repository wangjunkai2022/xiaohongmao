package com.google.android.exoplayer2.extractor.mp4;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.z;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.mp4.SlowMotionData;
import com.google.android.exoplayer2.util.h0;
import com.google.common.base.f0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: SefReader.java */
/* loaded from: classes2.dex */
final class m {

    /* renamed from: d  reason: collision with root package name */
    private static final int f22784d = 0;

    /* renamed from: e  reason: collision with root package name */
    private static final int f22785e = 1;

    /* renamed from: f  reason: collision with root package name */
    private static final int f22786f = 2;

    /* renamed from: g  reason: collision with root package name */
    private static final int f22787g = 3;

    /* renamed from: h  reason: collision with root package name */
    private static final int f22788h = 2192;

    /* renamed from: i  reason: collision with root package name */
    private static final int f22789i = 2816;

    /* renamed from: j  reason: collision with root package name */
    private static final int f22790j = 2817;

    /* renamed from: k  reason: collision with root package name */
    private static final int f22791k = 2819;

    /* renamed from: l  reason: collision with root package name */
    private static final int f22792l = 2820;

    /* renamed from: m  reason: collision with root package name */
    private static final String f22793m = "SefReader";

    /* renamed from: n  reason: collision with root package name */
    private static final int f22794n = 1397048916;

    /* renamed from: o  reason: collision with root package name */
    private static final int f22795o = 12;

    /* renamed from: p  reason: collision with root package name */
    private static final int f22796p = 8;

    /* renamed from: q  reason: collision with root package name */
    private static final int f22797q = 12;

    /* renamed from: r  reason: collision with root package name */
    private static final f0 f22798r = f0.h(':');

    /* renamed from: s  reason: collision with root package name */
    private static final f0 f22799s = f0.h('*');

    /* renamed from: a  reason: collision with root package name */
    private final List<a> f22800a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private int f22801b = 0;

    /* renamed from: c  reason: collision with root package name */
    private int f22802c;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SefReader.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f22803a;

        /* renamed from: b  reason: collision with root package name */
        public final long f22804b;

        /* renamed from: c  reason: collision with root package name */
        public final int f22805c;

        public a(int i4, long j4, int i10) {
            this.f22803a = i4;
            this.f22804b = j4;
            this.f22805c = i10;
        }
    }

    private void a(com.google.android.exoplayer2.extractor.l lVar, z zVar) throws IOException {
        h0 h0Var = new h0(8);
        lVar.readFully(h0Var.d(), 0, 8);
        this.f22802c = h0Var.r() + 8;
        if (h0Var.o() != f22794n) {
            zVar.f23544a = 0L;
            return;
        }
        zVar.f23544a = lVar.getPosition() - (this.f22802c - 12);
        this.f22801b = 2;
    }

    private static int b(String str) throws ParserException {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1711564334:
                if (str.equals("SlowMotion_Data")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1332107749:
                if (str.equals("Super_SlowMotion_Edit_Data")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1251387154:
                if (str.equals("Super_SlowMotion_Data")) {
                    c10 = 2;
                    break;
                }
                break;
            case -830665521:
                if (str.equals("Super_SlowMotion_Deflickering_On")) {
                    c10 = 3;
                    break;
                }
                break;
            case 1760745220:
                if (str.equals("Super_SlowMotion_BGM")) {
                    c10 = 4;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return f22788h;
            case 1:
                return f22791k;
            case 2:
                return f22789i;
            case 3:
                return f22792l;
            case 4:
                return f22790j;
            default:
                throw new ParserException("Invalid SEF name");
        }
    }

    private void d(com.google.android.exoplayer2.extractor.l lVar, z zVar) throws IOException {
        long length = lVar.getLength();
        int i4 = (this.f22802c - 12) - 8;
        h0 h0Var = new h0(i4);
        lVar.readFully(h0Var.d(), 0, i4);
        for (int i10 = 0; i10 < i4 / 12; i10++) {
            h0Var.T(2);
            short u9 = h0Var.u();
            if (u9 != f22788h && u9 != f22789i && u9 != f22790j && u9 != f22791k && u9 != f22792l) {
                h0Var.T(8);
            } else {
                this.f22800a.add(new a(u9, (length - this.f22802c) - h0Var.r(), h0Var.r()));
            }
        }
        if (this.f22800a.isEmpty()) {
            zVar.f23544a = 0L;
            return;
        }
        this.f22801b = 3;
        zVar.f23544a = this.f22800a.get(0).f22804b;
    }

    private void e(com.google.android.exoplayer2.extractor.l lVar, List<Metadata.Entry> list) throws IOException {
        long position = lVar.getPosition();
        int length = (int) ((lVar.getLength() - lVar.getPosition()) - this.f22802c);
        h0 h0Var = new h0(length);
        lVar.readFully(h0Var.d(), 0, length);
        for (int i4 = 0; i4 < this.f22800a.size(); i4++) {
            a aVar = this.f22800a.get(i4);
            h0Var.S((int) (aVar.f22804b - position));
            h0Var.T(4);
            int r9 = h0Var.r();
            int b10 = b(h0Var.D(r9));
            int i10 = aVar.f22805c - (r9 + 8);
            if (b10 == f22788h) {
                list.add(f(h0Var, i10));
            } else if (b10 != f22789i && b10 != f22790j && b10 != f22791k && b10 != f22792l) {
                throw new IllegalStateException();
            }
        }
    }

    private static SlowMotionData f(h0 h0Var, int i4) throws ParserException {
        ArrayList arrayList = new ArrayList();
        List<String> o9 = f22799s.o(h0Var.D(i4));
        for (int i10 = 0; i10 < o9.size(); i10++) {
            List<String> o10 = f22798r.o(o9.get(i10));
            if (o10.size() == 3) {
                try {
                    arrayList.add(new SlowMotionData.Segment(Long.parseLong(o10.get(0)), Long.parseLong(o10.get(1)), 1 << (Integer.parseInt(o10.get(2)) - 1)));
                } catch (NumberFormatException e4) {
                    throw new ParserException(e4);
                }
            } else {
                throw new ParserException();
            }
        }
        return new SlowMotionData(arrayList);
    }

    public int c(com.google.android.exoplayer2.extractor.l lVar, z zVar, List<Metadata.Entry> list) throws IOException {
        int i4 = this.f22801b;
        long j4 = 0;
        if (i4 == 0) {
            long length = lVar.getLength();
            if (length != -1 && length >= 8) {
                j4 = length - 8;
            }
            zVar.f23544a = j4;
            this.f22801b = 1;
        } else if (i4 == 1) {
            a(lVar, zVar);
        } else if (i4 == 2) {
            d(lVar, zVar);
        } else if (i4 == 3) {
            e(lVar, list);
            zVar.f23544a = 0L;
        } else {
            throw new IllegalStateException();
        }
        return 1;
    }

    public void g() {
        this.f22800a.clear();
        this.f22801b = 0;
    }
}
