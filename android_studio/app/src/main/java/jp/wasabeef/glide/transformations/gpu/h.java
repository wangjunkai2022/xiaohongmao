package jp.wasabeef.glide.transformations.gpu;

import androidx.annotation.NonNull;
import java.security.MessageDigest;
import jp.co.cyberagent.android.gpuimage.filter.GPUImageSketchFilter;

/* compiled from: SketchFilterTransformation.java */
/* loaded from: classes4.dex */
public class h extends c {

    /* renamed from: g  reason: collision with root package name */
    private static final int f84419g = 1;

    /* renamed from: h  reason: collision with root package name */
    private static final String f84420h = "jp.wasabeef.glide.transformations.gpu.SketchFilterTransformation.1";

    public h() {
        super(new GPUImageSketchFilter());
    }

    @Override // jp.wasabeef.glide.transformations.gpu.c, jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public void b(@NonNull MessageDigest messageDigest) {
        messageDigest.update(f84420h.getBytes(com.bumptech.glide.load.c.f8527b));
    }

    @Override // jp.wasabeef.glide.transformations.gpu.c, jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public boolean equals(Object o9) {
        return o9 instanceof h;
    }

    @Override // jp.wasabeef.glide.transformations.gpu.c, jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public int hashCode() {
        return -1790215191;
    }

    @Override // jp.wasabeef.glide.transformations.gpu.c
    public String toString() {
        return "SketchFilterTransformation()";
    }
}
