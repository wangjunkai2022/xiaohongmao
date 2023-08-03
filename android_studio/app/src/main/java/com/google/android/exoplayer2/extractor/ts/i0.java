package com.google.android.exoplayer2.extractor.ts;

import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.u0;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Collections;
import java.util.List;

/* compiled from: TsPayloadReader.java */
/* loaded from: classes2.dex */
public interface i0 {

    /* renamed from: a  reason: collision with root package name */
    public static final int f23162a = 1;

    /* renamed from: b  reason: collision with root package name */
    public static final int f23163b = 2;

    /* renamed from: c  reason: collision with root package name */
    public static final int f23164c = 4;

    /* compiled from: TsPayloadReader.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f23165a;

        /* renamed from: b  reason: collision with root package name */
        public final int f23166b;

        /* renamed from: c  reason: collision with root package name */
        public final byte[] f23167c;

        public a(String str, int i4, byte[] bArr) {
            this.f23165a = str;
            this.f23166b = i4;
            this.f23167c = bArr;
        }
    }

    /* compiled from: TsPayloadReader.java */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f23168a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public final String f23169b;

        /* renamed from: c  reason: collision with root package name */
        public final List<a> f23170c;

        /* renamed from: d  reason: collision with root package name */
        public final byte[] f23171d;

        public b(int i4, @Nullable String str, @Nullable List<a> list, byte[] bArr) {
            List<a> unmodifiableList;
            this.f23168a = i4;
            this.f23169b = str;
            if (list == null) {
                unmodifiableList = Collections.emptyList();
            } else {
                unmodifiableList = Collections.unmodifiableList(list);
            }
            this.f23170c = unmodifiableList;
            this.f23171d = bArr;
        }
    }

    /* compiled from: TsPayloadReader.java */
    /* loaded from: classes2.dex */
    public interface c {
        SparseArray<i0> a();

        @Nullable
        i0 b(int i4, b bVar);
    }

    /* compiled from: TsPayloadReader.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface d {
    }

    /* compiled from: TsPayloadReader.java */
    /* loaded from: classes2.dex */
    public static final class e {

        /* renamed from: f  reason: collision with root package name */
        private static final int f23172f = Integer.MIN_VALUE;

        /* renamed from: a  reason: collision with root package name */
        private final String f23173a;

        /* renamed from: b  reason: collision with root package name */
        private final int f23174b;

        /* renamed from: c  reason: collision with root package name */
        private final int f23175c;

        /* renamed from: d  reason: collision with root package name */
        private int f23176d;

        /* renamed from: e  reason: collision with root package name */
        private String f23177e;

        public e(int i4, int i10) {
            this(Integer.MIN_VALUE, i4, i10);
        }

        private void d() {
            if (this.f23176d == Integer.MIN_VALUE) {
                throw new IllegalStateException("generateNewId() must be called before retrieving ids.");
            }
        }

        public void a() {
            int i4 = this.f23176d;
            int i10 = i4 == Integer.MIN_VALUE ? this.f23174b : i4 + this.f23175c;
            this.f23176d = i10;
            String str = this.f23173a;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 11);
            sb.append(str);
            sb.append(i10);
            this.f23177e = sb.toString();
        }

        public String b() {
            d();
            return this.f23177e;
        }

        public int c() {
            d();
            return this.f23176d;
        }

        public e(int i4, int i10, int i11) {
            String str;
            if (i4 != Integer.MIN_VALUE) {
                StringBuilder sb = new StringBuilder(12);
                sb.append(i4);
                sb.append("/");
                str = sb.toString();
            } else {
                str = "";
            }
            this.f23173a = str;
            this.f23174b = i10;
            this.f23175c = i11;
            this.f23176d = Integer.MIN_VALUE;
            this.f23177e = "";
        }
    }

    void a(u0 u0Var, com.google.android.exoplayer2.extractor.m mVar, e eVar);

    void b(com.google.android.exoplayer2.util.h0 h0Var, int i4) throws ParserException;

    void c();
}
