package com.bumptech.glide.load.engine.prefill;

import android.graphics.Bitmap;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.util.m;

/* compiled from: PreFillType.java */
/* loaded from: classes.dex */
public final class d {
    @VisibleForTesting

    /* renamed from: e  reason: collision with root package name */
    static final Bitmap.Config f8964e = Bitmap.Config.RGB_565;

    /* renamed from: a  reason: collision with root package name */
    private final int f8965a;

    /* renamed from: b  reason: collision with root package name */
    private final int f8966b;

    /* renamed from: c  reason: collision with root package name */
    private final Bitmap.Config f8967c;

    /* renamed from: d  reason: collision with root package name */
    private final int f8968d;

    /* compiled from: PreFillType.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final int f8969a;

        /* renamed from: b  reason: collision with root package name */
        private final int f8970b;

        /* renamed from: c  reason: collision with root package name */
        private Bitmap.Config f8971c;

        /* renamed from: d  reason: collision with root package name */
        private int f8972d;

        public a(int i4) {
            this(i4, i4);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public d a() {
            return new d(this.f8969a, this.f8970b, this.f8971c, this.f8972d);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Bitmap.Config b() {
            return this.f8971c;
        }

        public a c(@Nullable Bitmap.Config config) {
            this.f8971c = config;
            return this;
        }

        public a d(int i4) {
            if (i4 > 0) {
                this.f8972d = i4;
                return this;
            }
            throw new IllegalArgumentException("Weight must be > 0");
        }

        public a(int i4, int i10) {
            this.f8972d = 1;
            if (i4 <= 0) {
                throw new IllegalArgumentException("Width must be > 0");
            }
            if (i10 > 0) {
                this.f8969a = i4;
                this.f8970b = i10;
                return;
            }
            throw new IllegalArgumentException("Height must be > 0");
        }
    }

    d(int i4, int i10, Bitmap.Config config, int i11) {
        this.f8967c = (Bitmap.Config) m.e(config, "Config must not be null");
        this.f8965a = i4;
        this.f8966b = i10;
        this.f8968d = i11;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Bitmap.Config a() {
        return this.f8967c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b() {
        return this.f8966b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int c() {
        return this.f8968d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int d() {
        return this.f8965a;
    }

    public boolean equals(Object obj) {
        if (obj instanceof d) {
            d dVar = (d) obj;
            return this.f8966b == dVar.f8966b && this.f8965a == dVar.f8965a && this.f8968d == dVar.f8968d && this.f8967c == dVar.f8967c;
        }
        return false;
    }

    public int hashCode() {
        return (((((this.f8965a * 31) + this.f8966b) * 31) + this.f8967c.hashCode()) * 31) + this.f8968d;
    }

    public String toString() {
        return "PreFillSize{width=" + this.f8965a + ", height=" + this.f8966b + ", config=" + this.f8967c + ", weight=" + this.f8968d + '}';
    }
}
