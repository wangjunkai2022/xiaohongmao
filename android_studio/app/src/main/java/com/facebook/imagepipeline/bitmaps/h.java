package com.facebook.imagepipeline.bitmaps;

import android.graphics.Bitmap;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: SimpleBitmapReleaser.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class h implements com.facebook.common.references.h<Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    private static h f12032a;

    private h() {
    }

    public static h a() {
        if (f12032a == null) {
            f12032a = new h();
        }
        return f12032a;
    }

    @Override // com.facebook.common.references.h
    /* renamed from: b */
    public void release(Bitmap value) {
        value.recycle();
    }
}
