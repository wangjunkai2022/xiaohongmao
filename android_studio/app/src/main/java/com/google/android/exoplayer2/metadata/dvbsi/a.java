package com.google.android.exoplayer2.metadata.dvbsi;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.d;
import com.google.android.exoplayer2.metadata.g;
import com.google.android.exoplayer2.util.g0;
import com.google.common.base.e;
import java.nio.ByteBuffer;
import java.util.ArrayList;

/* compiled from: AppInfoTableDecoder.java */
/* loaded from: classes2.dex */
public final class a extends g {

    /* renamed from: a  reason: collision with root package name */
    private static final int f24102a = 2;

    /* renamed from: b  reason: collision with root package name */
    private static final int f24103b = 21;

    /* renamed from: c  reason: collision with root package name */
    private static final int f24104c = 3;

    /* renamed from: d  reason: collision with root package name */
    public static final int f24105d = 116;

    @Nullable
    private static Metadata c(g0 g0Var) {
        g0Var.s(12);
        int d4 = (g0Var.d() + g0Var.h(12)) - 4;
        g0Var.s(44);
        g0Var.t(g0Var.h(12));
        g0Var.s(16);
        ArrayList arrayList = new ArrayList();
        while (true) {
            String str = null;
            if (g0Var.d() >= d4) {
                break;
            }
            g0Var.s(48);
            int h4 = g0Var.h(8);
            g0Var.s(4);
            int d10 = g0Var.d() + g0Var.h(12);
            String str2 = null;
            while (g0Var.d() < d10) {
                int h10 = g0Var.h(8);
                int h11 = g0Var.h(8);
                int d11 = g0Var.d() + h11;
                if (h10 == 2) {
                    int h12 = g0Var.h(16);
                    g0Var.s(8);
                    if (h12 != 3) {
                    }
                    while (g0Var.d() < d11) {
                        str = g0Var.m(g0Var.h(8), e.f32188a);
                        int h13 = g0Var.h(8);
                        for (int i4 = 0; i4 < h13; i4++) {
                            g0Var.t(g0Var.h(8));
                        }
                    }
                } else if (h10 == 21) {
                    str2 = g0Var.m(h11, e.f32188a);
                }
                g0Var.q(d11 * 8);
            }
            g0Var.q(d10 * 8);
            if (str != null && str2 != null) {
                arrayList.add(new AppInfoTable(h4, str2.length() != 0 ? str.concat(str2) : new String(str)));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    @Override // com.google.android.exoplayer2.metadata.g
    @Nullable
    protected Metadata b(d dVar, ByteBuffer byteBuffer) {
        if (byteBuffer.get() == 116) {
            return c(new g0(byteBuffer.array(), byteBuffer.limit()));
        }
        return null;
    }
}
