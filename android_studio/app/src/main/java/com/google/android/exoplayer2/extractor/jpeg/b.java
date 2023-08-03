package com.google.android.exoplayer2.extractor.jpeg;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.metadata.mp4.MotionPhotoMetadata;
import com.google.android.exoplayer2.util.a0;
import java.util.List;

/* compiled from: MotionPhotoDescription.java */
/* loaded from: classes2.dex */
final class b {

    /* renamed from: a  reason: collision with root package name */
    public final long f22316a;

    /* renamed from: b  reason: collision with root package name */
    public final List<a> f22317b;

    /* compiled from: MotionPhotoDescription.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f22318a;

        /* renamed from: b  reason: collision with root package name */
        public final String f22319b;

        /* renamed from: c  reason: collision with root package name */
        public final long f22320c;

        /* renamed from: d  reason: collision with root package name */
        public final long f22321d;

        public a(String str, String str2, long j4, long j10) {
            this.f22318a = str;
            this.f22319b = str2;
            this.f22320c = j4;
            this.f22321d = j10;
        }
    }

    public b(long j4, List<a> list) {
        this.f22316a = j4;
        this.f22317b = list;
    }

    @Nullable
    public MotionPhotoMetadata a(long j4) {
        long j10;
        if (this.f22317b.size() < 2) {
            return null;
        }
        long j11 = j4;
        long j12 = -1;
        long j13 = -1;
        long j14 = -1;
        long j15 = -1;
        boolean z9 = false;
        for (int size = this.f22317b.size() - 1; size >= 0; size--) {
            a aVar = this.f22317b.get(size);
            boolean equals = a0.f27441f.equals(aVar.f22318a) | z9;
            if (size == 0) {
                j10 = j11 - aVar.f22321d;
                j11 = 0;
            } else {
                long j16 = j11;
                j11 -= aVar.f22320c;
                j10 = j16;
            }
            if (!equals || j11 == j10) {
                z9 = equals;
            } else {
                j15 = j10 - j11;
                j14 = j11;
                z9 = false;
            }
            if (size == 0) {
                j12 = j11;
                j13 = j10;
            }
        }
        if (j14 == -1 || j15 == -1 || j12 == -1 || j13 == -1) {
            return null;
        }
        return new MotionPhotoMetadata(j12, j13, this.f22316a, j14, j15);
    }
}
