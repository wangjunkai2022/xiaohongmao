package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import java.nio.ByteBuffer;

/* compiled from: BitReaderBuffer.java */
/* loaded from: classes2.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private ByteBuffer f36789a;

    /* renamed from: b  reason: collision with root package name */
    int f36790b;

    /* renamed from: c  reason: collision with root package name */
    int f36791c;

    public c(ByteBuffer byteBuffer) {
        this.f36789a = byteBuffer;
        this.f36790b = byteBuffer.position();
    }

    public int a() {
        int i4 = 8 - (this.f36791c % 8);
        if (i4 == 8) {
            i4 = 0;
        }
        c(i4);
        return i4;
    }

    public int b() {
        return this.f36791c;
    }

    public int c(int i4) {
        int c10;
        int i10 = this.f36789a.get(this.f36790b + (this.f36791c / 8));
        if (i10 < 0) {
            i10 += 256;
        }
        int i11 = this.f36791c;
        int i12 = 8 - (i11 % 8);
        if (i4 <= i12) {
            c10 = ((i10 << (i11 % 8)) & 255) >> ((i11 % 8) + (i12 - i4));
            this.f36791c = i11 + i4;
        } else {
            int i13 = i4 - i12;
            c10 = (c(i12) << i13) + c(i13);
        }
        this.f36789a.position(this.f36790b + ((int) Math.ceil(this.f36791c / 8.0d)));
        return c10;
    }

    public boolean d() {
        return c(1) == 1;
    }

    public int e() {
        return (this.f36789a.limit() * 8) - this.f36791c;
    }
}
