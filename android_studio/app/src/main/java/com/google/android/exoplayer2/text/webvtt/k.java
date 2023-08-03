package com.google.android.exoplayer2.text.webvtt;

import com.google.android.exoplayer2.util.z0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* compiled from: WebvttSubtitle.java */
/* loaded from: classes2.dex */
final class k implements com.google.android.exoplayer2.text.e {

    /* renamed from: a  reason: collision with root package name */
    private final List<e> f25932a;

    /* renamed from: b  reason: collision with root package name */
    private final long[] f25933b;

    /* renamed from: c  reason: collision with root package name */
    private final long[] f25934c;

    public k(List<e> list) {
        this.f25932a = Collections.unmodifiableList(new ArrayList(list));
        this.f25933b = new long[list.size() * 2];
        for (int i4 = 0; i4 < list.size(); i4++) {
            e eVar = list.get(i4);
            int i10 = i4 * 2;
            long[] jArr = this.f25933b;
            jArr[i10] = eVar.f25871b;
            jArr[i10 + 1] = eVar.f25872c;
        }
        long[] jArr2 = this.f25933b;
        long[] copyOf = Arrays.copyOf(jArr2, jArr2.length);
        this.f25934c = copyOf;
        Arrays.sort(copyOf);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int f(e eVar, e eVar2) {
        return Long.compare(eVar.f25871b, eVar2.f25871b);
    }

    @Override // com.google.android.exoplayer2.text.e
    public int a(long j4) {
        int f10 = z0.f(this.f25934c, j4, false, false);
        if (f10 < this.f25934c.length) {
            return f10;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.text.e
    public List<com.google.android.exoplayer2.text.a> b(long j4) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i4 = 0; i4 < this.f25932a.size(); i4++) {
            long[] jArr = this.f25933b;
            int i10 = i4 * 2;
            if (jArr[i10] <= j4 && j4 < jArr[i10 + 1]) {
                e eVar = this.f25932a.get(i4);
                com.google.android.exoplayer2.text.a aVar = eVar.f25870a;
                if (aVar.f25317e == -3.4028235E38f) {
                    arrayList2.add(eVar);
                } else {
                    arrayList.add(aVar);
                }
            }
        }
        Collections.sort(arrayList2, j.f25931a);
        for (int i11 = 0; i11 < arrayList2.size(); i11++) {
            arrayList.add(((e) arrayList2.get(i11)).f25870a.a().t((-1) - i11, 1).a());
        }
        return arrayList;
    }

    @Override // com.google.android.exoplayer2.text.e
    public long c(int i4) {
        com.google.android.exoplayer2.util.a.a(i4 >= 0);
        com.google.android.exoplayer2.util.a.a(i4 < this.f25934c.length);
        return this.f25934c[i4];
    }

    @Override // com.google.android.exoplayer2.text.e
    public int d() {
        return this.f25934c.length;
    }
}
