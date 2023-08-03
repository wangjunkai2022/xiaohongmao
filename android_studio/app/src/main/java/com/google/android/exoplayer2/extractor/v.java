package com.google.android.exoplayer2.extractor;

import java.io.IOException;

/* compiled from: ForwardingExtractorInput.java */
/* loaded from: classes2.dex */
public class v implements l {

    /* renamed from: b  reason: collision with root package name */
    private final l f23487b;

    public v(l lVar) {
        this.f23487b = lVar;
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public boolean f(int i4, boolean z9) throws IOException {
        return this.f23487b.f(i4, z9);
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public boolean g(byte[] bArr, int i4, int i10, boolean z9) throws IOException {
        return this.f23487b.g(bArr, i4, i10, z9);
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public long getLength() {
        return this.f23487b.getLength();
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public long getPosition() {
        return this.f23487b.getPosition();
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public void h() {
        this.f23487b.h();
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public boolean i(byte[] bArr, int i4, int i10, boolean z9) throws IOException {
        return this.f23487b.i(bArr, i4, i10, z9);
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public long j() {
        return this.f23487b.j();
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public void k(int i4) throws IOException {
        this.f23487b.k(i4);
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public <E extends Throwable> void m(long j4, E e4) throws Throwable {
        this.f23487b.m(j4, e4);
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public int n(byte[] bArr, int i4, int i10) throws IOException {
        return this.f23487b.n(bArr, i4, i10);
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public void o(int i4) throws IOException {
        this.f23487b.o(i4);
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public boolean q(int i4, boolean z9) throws IOException {
        return this.f23487b.q(i4, z9);
    }

    @Override // com.google.android.exoplayer2.extractor.l, com.google.android.exoplayer2.upstream.i
    public int read(byte[] bArr, int i4, int i10) throws IOException {
        return this.f23487b.read(bArr, i4, i10);
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public void readFully(byte[] bArr, int i4, int i10) throws IOException {
        this.f23487b.readFully(bArr, i4, i10);
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public void s(byte[] bArr, int i4, int i10) throws IOException {
        this.f23487b.s(bArr, i4, i10);
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public int skip(int i4) throws IOException {
        return this.f23487b.skip(i4);
    }
}
