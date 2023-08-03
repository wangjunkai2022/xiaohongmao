package com.google.android.exoplayer2.source.mediaparser;

import android.annotation.SuppressLint;
import android.media.MediaParser;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.upstream.i;
import com.google.android.exoplayer2.util.z0;
import java.io.IOException;

/* compiled from: InputReaderAdapterV30.java */
@RequiresApi(30)
@SuppressLint({"Override"})
/* loaded from: classes2.dex */
public final class a implements MediaParser.SeekableInputReader {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private i f25007a;

    /* renamed from: b  reason: collision with root package name */
    private long f25008b;

    /* renamed from: c  reason: collision with root package name */
    private long f25009c;

    /* renamed from: d  reason: collision with root package name */
    private long f25010d;

    public long a() {
        long j4 = this.f25010d;
        this.f25010d = -1L;
        return j4;
    }

    public void b(long j4) {
        this.f25009c = j4;
    }

    public void c(i iVar, long j4) {
        this.f25007a = iVar;
        this.f25008b = j4;
        this.f25010d = -1L;
    }

    @Override // android.media.MediaParser.InputReader
    public long getLength() {
        return this.f25008b;
    }

    @Override // android.media.MediaParser.InputReader
    public long getPosition() {
        return this.f25009c;
    }

    @Override // android.media.MediaParser.InputReader
    public int read(byte[] bArr, int i4, int i10) throws IOException {
        int read = ((i) z0.k(this.f25007a)).read(bArr, i4, i10);
        this.f25009c += read;
        return read;
    }

    @Override // android.media.MediaParser.SeekableInputReader
    public void seekToPosition(long j4) {
        this.f25010d = j4;
    }
}
