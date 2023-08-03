package com.facebook.imagepipeline.decoder;

import com.facebook.imagepipeline.image.h;
import com.facebook.imagepipeline.image.j;
import com.facebook.infer.annotation.Nullsafe;
import java.util.Collections;
import java.util.List;

/* compiled from: SimpleProgressiveJpegConfig.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class f implements d {

    /* renamed from: a  reason: collision with root package name */
    private final c f12489a;

    /* compiled from: SimpleProgressiveJpegConfig.java */
    /* loaded from: classes.dex */
    private static class b implements c {
        private b() {
        }

        @Override // com.facebook.imagepipeline.decoder.f.c
        public List<Integer> a() {
            return Collections.EMPTY_LIST;
        }

        @Override // com.facebook.imagepipeline.decoder.f.c
        public int b() {
            return 0;
        }
    }

    /* compiled from: SimpleProgressiveJpegConfig.java */
    /* loaded from: classes.dex */
    public interface c {
        List<Integer> a();

        int b();
    }

    public f() {
        this(new b());
    }

    @Override // com.facebook.imagepipeline.decoder.d
    public int a(int scanNumber) {
        List<Integer> a10 = this.f12489a.a();
        if (a10 == null || a10.isEmpty()) {
            return scanNumber + 1;
        }
        for (int i4 = 0; i4 < a10.size(); i4++) {
            if (a10.get(i4).intValue() > scanNumber) {
                return a10.get(i4).intValue();
            }
        }
        return Integer.MAX_VALUE;
    }

    @Override // com.facebook.imagepipeline.decoder.d
    public j b(int scanNumber) {
        return h.d(scanNumber, scanNumber >= this.f12489a.b(), false);
    }

    public f(c dynamicValueConfig) {
        this.f12489a = (c) com.facebook.common.internal.j.i(dynamicValueConfig);
    }
}
