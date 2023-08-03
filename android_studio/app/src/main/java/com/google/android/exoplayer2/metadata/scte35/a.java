package com.google.android.exoplayer2.metadata.scte35;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.d;
import com.google.android.exoplayer2.metadata.g;
import com.google.android.exoplayer2.util.g0;
import com.google.android.exoplayer2.util.h0;
import com.google.android.exoplayer2.util.u0;
import java.nio.ByteBuffer;

/* compiled from: SpliceInfoDecoder.java */
/* loaded from: classes2.dex */
public final class a extends g {

    /* renamed from: d  reason: collision with root package name */
    private static final int f24163d = 0;

    /* renamed from: e  reason: collision with root package name */
    private static final int f24164e = 4;

    /* renamed from: f  reason: collision with root package name */
    private static final int f24165f = 5;

    /* renamed from: g  reason: collision with root package name */
    private static final int f24166g = 6;

    /* renamed from: h  reason: collision with root package name */
    private static final int f24167h = 255;

    /* renamed from: a  reason: collision with root package name */
    private final h0 f24168a = new h0();

    /* renamed from: b  reason: collision with root package name */
    private final g0 f24169b = new g0();

    /* renamed from: c  reason: collision with root package name */
    private u0 f24170c;

    @Override // com.google.android.exoplayer2.metadata.g
    protected Metadata b(d dVar, ByteBuffer byteBuffer) {
        u0 u0Var = this.f24170c;
        if (u0Var == null || dVar.f24101l != u0Var.e()) {
            u0 u0Var2 = new u0(dVar.f21574e);
            this.f24170c = u0Var2;
            u0Var2.a(dVar.f21574e - dVar.f24101l);
        }
        byte[] array = byteBuffer.array();
        int limit = byteBuffer.limit();
        this.f24168a.Q(array, limit);
        this.f24169b.p(array, limit);
        this.f24169b.s(39);
        long h4 = (this.f24169b.h(1) << 32) | this.f24169b.h(32);
        this.f24169b.s(20);
        int h10 = this.f24169b.h(12);
        int h11 = this.f24169b.h(8);
        Metadata.Entry entry = null;
        this.f24168a.T(14);
        if (h11 == 0) {
            entry = new SpliceNullCommand();
        } else if (h11 == 255) {
            entry = PrivateCommand.parseFromSection(this.f24168a, h10, h4);
        } else if (h11 == 4) {
            entry = SpliceScheduleCommand.parseFromSection(this.f24168a);
        } else if (h11 == 5) {
            entry = SpliceInsertCommand.parseFromSection(this.f24168a, h4, this.f24170c);
        } else if (h11 == 6) {
            entry = TimeSignalCommand.parseFromSection(this.f24168a, h4, this.f24170c);
        }
        return entry == null ? new Metadata(new Metadata.Entry[0]) : new Metadata(entry);
    }
}
