package com.google.android.exoplayer2.source.chunk;

import java.util.NoSuchElementException;

/* compiled from: BaseMediaChunkIterator.java */
/* loaded from: classes2.dex */
public abstract class b implements o {

    /* renamed from: b  reason: collision with root package name */
    private final long f24794b;

    /* renamed from: c  reason: collision with root package name */
    private final long f24795c;

    /* renamed from: d  reason: collision with root package name */
    private long f24796d;

    public b(long j4, long j10) {
        this.f24794b = j4;
        this.f24795c = j10;
        reset();
    }

    @Override // com.google.android.exoplayer2.source.chunk.o
    public boolean b() {
        return this.f24796d > this.f24795c;
    }

    protected final void e() {
        long j4 = this.f24796d;
        if (j4 < this.f24794b || j4 > this.f24795c) {
            throw new NoSuchElementException();
        }
    }

    protected final long f() {
        return this.f24796d;
    }

    @Override // com.google.android.exoplayer2.source.chunk.o
    public boolean next() {
        this.f24796d++;
        return !b();
    }

    @Override // com.google.android.exoplayer2.source.chunk.o
    public void reset() {
        this.f24796d = this.f24794b - 1;
    }
}
