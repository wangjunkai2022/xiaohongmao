package com.google.android.exoplayer2.source.chunk;

import java.util.NoSuchElementException;

/* compiled from: MediaChunkIterator.java */
/* loaded from: classes2.dex */
public interface o {

    /* renamed from: a  reason: collision with root package name */
    public static final o f24873a = new a();

    /* compiled from: MediaChunkIterator.java */
    /* loaded from: classes2.dex */
    class a implements o {
        a() {
        }

        @Override // com.google.android.exoplayer2.source.chunk.o
        public long a() {
            throw new NoSuchElementException();
        }

        @Override // com.google.android.exoplayer2.source.chunk.o
        public boolean b() {
            return true;
        }

        @Override // com.google.android.exoplayer2.source.chunk.o
        public long c() {
            throw new NoSuchElementException();
        }

        @Override // com.google.android.exoplayer2.source.chunk.o
        public com.google.android.exoplayer2.upstream.o d() {
            throw new NoSuchElementException();
        }

        @Override // com.google.android.exoplayer2.source.chunk.o
        public boolean next() {
            return false;
        }

        @Override // com.google.android.exoplayer2.source.chunk.o
        public void reset() {
        }
    }

    long a();

    boolean b();

    long c();

    com.google.android.exoplayer2.upstream.o d();

    boolean next();

    void reset();
}
