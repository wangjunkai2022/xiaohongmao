package com.facebook.common.internal;

import com.facebook.infer.annotation.Nullsafe;
import java.util.Arrays;

/* compiled from: Objects.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public final class i {

    /* compiled from: Objects.java */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final String f10977a;

        /* renamed from: b  reason: collision with root package name */
        private final a f10978b;

        /* renamed from: c  reason: collision with root package name */
        private a f10979c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f10980d;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: Objects.java */
        /* loaded from: classes.dex */
        public static final class a {
            @r7.h

            /* renamed from: a  reason: collision with root package name */
            String f10981a;
            @r7.h

            /* renamed from: b  reason: collision with root package name */
            Object f10982b;
            @r7.h

            /* renamed from: c  reason: collision with root package name */
            a f10983c;

            private a() {
            }
        }

        private a h() {
            a aVar = new a();
            this.f10979c.f10983c = aVar;
            this.f10979c = aVar;
            return aVar;
        }

        private b i(@r7.h Object value) {
            h().f10982b = value;
            return this;
        }

        private b j(String name, @r7.h Object value) {
            a h4 = h();
            h4.f10982b = value;
            h4.f10981a = (String) j.i(name);
            return this;
        }

        public b a(String name, char value) {
            return j(name, String.valueOf(value));
        }

        public b b(String name, double value) {
            return j(name, String.valueOf(value));
        }

        public b c(String name, float value) {
            return j(name, String.valueOf(value));
        }

        public b d(String name, int value) {
            return j(name, String.valueOf(value));
        }

        public b e(String name, long value) {
            return j(name, String.valueOf(value));
        }

        public b f(String name, @r7.h Object value) {
            return j(name, value);
        }

        public b g(String name, boolean value) {
            return j(name, String.valueOf(value));
        }

        public b k(char value) {
            return i(String.valueOf(value));
        }

        public b l(double value) {
            return i(String.valueOf(value));
        }

        public b m(float value) {
            return i(String.valueOf(value));
        }

        public b n(int value) {
            return i(String.valueOf(value));
        }

        public b o(long value) {
            return i(String.valueOf(value));
        }

        public b p(@r7.h Object value) {
            return i(value);
        }

        public b q(boolean value) {
            return i(String.valueOf(value));
        }

        public b r() {
            this.f10980d = true;
            return this;
        }

        public String toString() {
            boolean z9 = this.f10980d;
            StringBuilder sb = new StringBuilder(32);
            sb.append(this.f10977a);
            sb.append('{');
            String str = "";
            for (a aVar = this.f10978b.f10983c; aVar != null; aVar = aVar.f10983c) {
                Object obj = aVar.f10982b;
                if (!z9 || obj != null) {
                    sb.append(str);
                    String str2 = aVar.f10981a;
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

        private b(String className) {
            a aVar = new a();
            this.f10978b = aVar;
            this.f10979c = aVar;
            this.f10980d = false;
            this.f10977a = (String) j.i(className);
        }
    }

    private i() {
    }

    @r7.c
    public static boolean a(@r7.h Object a10, @r7.h Object b10) {
        return a10 == b10 || (a10 != null && a10.equals(b10));
    }

    public static <T> T b(@r7.h T first, @r7.h T second) {
        return first != null ? first : (T) j.i(second);
    }

    public static int c(@r7.h Object... objects) {
        return Arrays.hashCode(objects);
    }

    public static b d(Class<?> clazz) {
        return new b(clazz.getSimpleName());
    }

    public static b e(Object self) {
        return new b(self.getClass().getSimpleName());
    }

    public static b f(String className) {
        return new b(className);
    }
}
