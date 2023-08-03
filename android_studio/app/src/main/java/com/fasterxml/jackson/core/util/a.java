package com.fasterxml.jackson.core.util;

import java.util.concurrent.atomic.AtomicReferenceArray;

/* compiled from: BufferRecycler.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: c  reason: collision with root package name */
    public static final int f14259c = 0;

    /* renamed from: d  reason: collision with root package name */
    public static final int f14260d = 1;

    /* renamed from: e  reason: collision with root package name */
    public static final int f14261e = 2;

    /* renamed from: f  reason: collision with root package name */
    public static final int f14262f = 3;

    /* renamed from: g  reason: collision with root package name */
    public static final int f14263g = 0;

    /* renamed from: h  reason: collision with root package name */
    public static final int f14264h = 1;

    /* renamed from: i  reason: collision with root package name */
    public static final int f14265i = 2;

    /* renamed from: j  reason: collision with root package name */
    public static final int f14266j = 3;

    /* renamed from: k  reason: collision with root package name */
    private static final int[] f14267k = {8000, 8000, 2000, 2000};

    /* renamed from: l  reason: collision with root package name */
    private static final int[] f14268l = {4000, 4000, 200, 200};

    /* renamed from: a  reason: collision with root package name */
    protected final AtomicReferenceArray<byte[]> f14269a;

    /* renamed from: b  reason: collision with root package name */
    protected final AtomicReferenceArray<char[]> f14270b;

    public a() {
        this(4, 4);
    }

    public final byte[] a(int i4) {
        return b(i4, 0);
    }

    public byte[] b(int i4, int i10) {
        int f10 = f(i4);
        if (i10 < f10) {
            i10 = f10;
        }
        byte[] andSet = this.f14269a.getAndSet(i4, null);
        return (andSet == null || andSet.length < i10) ? e(i10) : andSet;
    }

    public final char[] c(int i4) {
        return d(i4, 0);
    }

    public char[] d(int i4, int i10) {
        int h4 = h(i4);
        if (i10 < h4) {
            i10 = h4;
        }
        char[] andSet = this.f14270b.getAndSet(i4, null);
        return (andSet == null || andSet.length < i10) ? g(i10) : andSet;
    }

    protected byte[] e(int i4) {
        return new byte[i4];
    }

    protected int f(int i4) {
        return f14267k[i4];
    }

    protected char[] g(int i4) {
        return new char[i4];
    }

    protected int h(int i4) {
        return f14268l[i4];
    }

    public void i(int i4, byte[] bArr) {
        this.f14269a.set(i4, bArr);
    }

    public void j(int i4, char[] cArr) {
        this.f14270b.set(i4, cArr);
    }

    protected a(int i4, int i10) {
        this.f14269a = new AtomicReferenceArray<>(i4);
        this.f14270b = new AtomicReferenceArray<>(i10);
    }
}
