package com.google.android.exoplayer2.audio;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.List;

/* compiled from: OpusUtil.java */
/* loaded from: classes2.dex */
public class h0 {

    /* renamed from: a  reason: collision with root package name */
    public static final int f21245a = 48000;

    /* renamed from: b  reason: collision with root package name */
    private static final int f21246b = 3840;

    /* renamed from: c  reason: collision with root package name */
    private static final int f21247c = 3;

    private h0() {
    }

    public static List<byte[]> a(byte[] bArr) {
        long h4 = h(e(bArr));
        long h10 = h(3840L);
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(bArr);
        arrayList.add(b(h4));
        arrayList.add(b(h10));
        return arrayList;
    }

    private static byte[] b(long j4) {
        return ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(j4).array();
    }

    public static int c(byte[] bArr) {
        return bArr[9] & 255;
    }

    public static int d(List<byte[]> list) {
        if (list.size() == 3) {
            return (int) g(ByteBuffer.wrap(list.get(1)).order(ByteOrder.nativeOrder()).getLong());
        }
        return e(list.get(0));
    }

    private static int e(byte[] bArr) {
        return (bArr[10] & 255) | ((bArr[11] & 255) << 8);
    }

    public static int f(List<byte[]> list) {
        return list.size() == 3 ? (int) g(ByteBuffer.wrap(list.get(2)).order(ByteOrder.nativeOrder()).getLong()) : f21246b;
    }

    private static long g(long j4) {
        return (j4 * 48000) / com.google.android.exoplayer2.i.f23681j;
    }

    private static long h(long j4) {
        return (j4 * com.google.android.exoplayer2.i.f23681j) / 48000;
    }
}
