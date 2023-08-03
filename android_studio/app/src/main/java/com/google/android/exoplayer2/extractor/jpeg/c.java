package com.google.android.exoplayer2.extractor.jpeg;

import com.google.android.exoplayer2.extractor.l;
import com.google.android.exoplayer2.extractor.v;

/* compiled from: StartOffsetExtractorInput.java */
/* loaded from: classes2.dex */
final class c extends v {

    /* renamed from: c  reason: collision with root package name */
    private final long f22322c;

    public c(l lVar, long j4) {
        super(lVar);
        com.google.android.exoplayer2.util.a.a(lVar.getPosition() >= j4);
        this.f22322c = j4;
    }

    @Override // com.google.android.exoplayer2.extractor.v, com.google.android.exoplayer2.extractor.l
    public long getLength() {
        return super.getLength() - this.f22322c;
    }

    @Override // com.google.android.exoplayer2.extractor.v, com.google.android.exoplayer2.extractor.l
    public long getPosition() {
        return super.getPosition() - this.f22322c;
    }

    @Override // com.google.android.exoplayer2.extractor.v, com.google.android.exoplayer2.extractor.l
    public long j() {
        return super.j() - this.f22322c;
    }

    @Override // com.google.android.exoplayer2.extractor.v, com.google.android.exoplayer2.extractor.l
    public <E extends Throwable> void m(long j4, E e4) throws Throwable {
        super.m(j4 + this.f22322c, e4);
    }
}
