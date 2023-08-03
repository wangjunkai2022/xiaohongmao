package com.google.common.base;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Arrays;
import java.util.Objects;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: MoreObjects.java */
@h3.b
/* loaded from: classes2.dex */
public final class v {

    /* compiled from: MoreObjects.java */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final String f32318a;

        /* renamed from: b  reason: collision with root package name */
        private final a f32319b;

        /* renamed from: c  reason: collision with root package name */
        private a f32320c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f32321d;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: MoreObjects.java */
        /* loaded from: classes2.dex */
        public static final class a {
            @NullableDecl

            /* renamed from: a  reason: collision with root package name */
            String f32322a;
            @NullableDecl

            /* renamed from: b  reason: collision with root package name */
            Object f32323b;
            @NullableDecl

            /* renamed from: c  reason: collision with root package name */
            a f32324c;

            private a() {
            }
        }

        private a h() {
            a aVar = new a();
            this.f32320c.f32324c = aVar;
            this.f32320c = aVar;
            return aVar;
        }

        private b i(@NullableDecl Object obj) {
            h().f32323b = obj;
            return this;
        }

        private b j(String str, @NullableDecl Object obj) {
            a h4 = h();
            h4.f32323b = obj;
            h4.f32322a = (String) a0.E(str);
            return this;
        }

        @CanIgnoreReturnValue
        public b a(String str, char c10) {
            return j(str, String.valueOf(c10));
        }

        @CanIgnoreReturnValue
        public b b(String str, double d4) {
            return j(str, String.valueOf(d4));
        }

        @CanIgnoreReturnValue
        public b c(String str, float f10) {
            return j(str, String.valueOf(f10));
        }

        @CanIgnoreReturnValue
        public b d(String str, int i4) {
            return j(str, String.valueOf(i4));
        }

        @CanIgnoreReturnValue
        public b e(String str, long j4) {
            return j(str, String.valueOf(j4));
        }

        @CanIgnoreReturnValue
        public b f(String str, @NullableDecl Object obj) {
            return j(str, obj);
        }

        @CanIgnoreReturnValue
        public b g(String str, boolean z9) {
            return j(str, String.valueOf(z9));
        }

        @CanIgnoreReturnValue
        public b k(char c10) {
            return i(String.valueOf(c10));
        }

        @CanIgnoreReturnValue
        public b l(double d4) {
            return i(String.valueOf(d4));
        }

        @CanIgnoreReturnValue
        public b m(float f10) {
            return i(String.valueOf(f10));
        }

        @CanIgnoreReturnValue
        public b n(int i4) {
            return i(String.valueOf(i4));
        }

        @CanIgnoreReturnValue
        public b o(long j4) {
            return i(String.valueOf(j4));
        }

        @CanIgnoreReturnValue
        public b p(@NullableDecl Object obj) {
            return i(obj);
        }

        @CanIgnoreReturnValue
        public b q(boolean z9) {
            return i(String.valueOf(z9));
        }

        @CanIgnoreReturnValue
        public b r() {
            this.f32321d = true;
            return this;
        }

        public String toString() {
            boolean z9 = this.f32321d;
            StringBuilder sb = new StringBuilder(32);
            sb.append(this.f32318a);
            sb.append('{');
            String str = "";
            for (a aVar = this.f32319b.f32324c; aVar != null; aVar = aVar.f32324c) {
                Object obj = aVar.f32323b;
                if (!z9 || obj != null) {
                    sb.append(str);
                    String str2 = aVar.f32322a;
                    if (str2 != null) {
                        sb.append(str2);
                        sb.append('=');
                    }
                    if (obj != null && obj.getClass().isArray()) {
                        String deepToString = Arrays.deepToString(new Object[]{obj});
                        sb.append((CharSequence) deepToString, 1, deepToString.length() - 1);
                    } else {
                        sb.append(obj);
                    }
                    str = ", ";
                }
            }
            sb.append('}');
            return sb.toString();
        }

        private b(String str) {
            a aVar = new a();
            this.f32319b = aVar;
            this.f32320c = aVar;
            this.f32321d = false;
            this.f32318a = (String) a0.E(str);
        }
    }

    private v() {
    }

    public static <T> T a(@NullableDecl T t9, @NullableDecl T t10) {
        if (t9 != null) {
            return t9;
        }
        Objects.requireNonNull(t10, "Both parameters are null");
        return t10;
    }

    public static b b(Class<?> cls) {
        return new b(cls.getSimpleName());
    }

    public static b c(Object obj) {
        return new b(obj.getClass().getSimpleName());
    }

    public static b d(String str) {
        return new b(str);
    }
}
