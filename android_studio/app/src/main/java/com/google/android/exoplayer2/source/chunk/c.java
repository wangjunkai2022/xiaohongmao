package com.google.android.exoplayer2.source.chunk;

import com.google.android.exoplayer2.extractor.e0;
import com.google.android.exoplayer2.source.chunk.g;
import com.google.android.exoplayer2.source.w0;
import com.google.android.exoplayer2.util.w;

/* compiled from: BaseMediaChunkOutput.java */
/* loaded from: classes2.dex */
public final class c implements g.b {

    /* renamed from: c  reason: collision with root package name */
    private static final String f24797c = "BaseMediaChunkOutput";

    /* renamed from: a  reason: collision with root package name */
    private final int[] f24798a;

    /* renamed from: b  reason: collision with root package name */
    private final w0[] f24799b;

    public c(int[] iArr, w0[] w0VarArr) {
        this.f24798a = iArr;
        this.f24799b = w0VarArr;
    }

    public int[] a() {
        int[] iArr = new int[this.f24799b.length];
        int i4 = 0;
        while (true) {
            w0[] w0VarArr = this.f24799b;
            if (i4 >= w0VarArr.length) {
                return iArr;
            }
            iArr[i4] = w0VarArr[i4].H();
            i4++;
        }
    }

    public void b(long j4) {
        for (w0 w0Var : this.f24799b) {
            w0Var.b0(j4);
        }
    }

    @Override // com.google.android.exoplayer2.source.chunk.g.b
    public e0 f(int i4, int i10) {
        int i11 = 0;
        while (true) {
            int[] iArr = this.f24798a;
            if (i11 < iArr.length) {
                if (i10 == iArr[i11]) {
                    return this.f24799b[i11];
                }
                i11++;
            } else {
                StringBuilder sb = new StringBuilder(36);
                sb.append("Unmatched track of type: ");
                sb.append(i10);
                w.d(f24797c, sb.toString());
                return new com.google.android.exoplayer2.extractor.j();
            }
        }
    }
}
