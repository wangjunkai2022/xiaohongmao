package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import androidx.core.view.InputDeviceCompat;
import java.nio.ByteBuffer;

/* compiled from: BitWriterBuffer.java */
/* loaded from: classes2.dex */
public class d {

    /* renamed from: d  reason: collision with root package name */
    static final /* synthetic */ boolean f36792d = false;

    /* renamed from: a  reason: collision with root package name */
    private ByteBuffer f36793a;

    /* renamed from: b  reason: collision with root package name */
    int f36794b;

    /* renamed from: c  reason: collision with root package name */
    int f36795c = 0;

    public d(ByteBuffer byteBuffer) {
        this.f36793a = byteBuffer;
        this.f36794b = byteBuffer.position();
    }

    public void a(int i4, int i10) {
        int i11 = this.f36795c;
        int i12 = 8 - (i11 % 8);
        if (i10 <= i12) {
            int i13 = this.f36793a.get(this.f36794b + (i11 / 8));
            if (i13 < 0) {
                i13 += 256;
            }
            int i14 = i13 + (i4 << (i12 - i10));
            ByteBuffer byteBuffer = this.f36793a;
            int i15 = this.f36794b + (this.f36795c / 8);
            if (i14 > 127) {
                i14 += InputDeviceCompat.SOURCE_ANY;
            }
            byteBuffer.put(i15, (byte) i14);
            this.f36795c += i10;
        } else {
            int i16 = i10 - i12;
            a(i4 >> i16, i12);
            a(i4 & ((1 << i16) - 1), i16);
        }
        ByteBuffer byteBuffer2 = this.f36793a;
        int i17 = this.f36794b;
        int i18 = this.f36795c;
        byteBuffer2.position(i17 + (i18 / 8) + (i18 % 8 <= 0 ? 0 : 1));
    }
}
