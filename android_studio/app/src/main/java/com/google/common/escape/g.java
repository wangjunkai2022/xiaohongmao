package com.google.common.escape;

import com.google.common.base.a0;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.CharCompanionObject;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Escapers.java */
@h3.b
@h3.a
/* loaded from: classes2.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    private static final f f34028a = new a();

    /* compiled from: Escapers.java */
    /* loaded from: classes2.dex */
    static class a extends d {
        a() {
        }

        @Override // com.google.common.escape.d, com.google.common.escape.f
        public String b(String str) {
            return (String) a0.E(str);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.escape.d
        public char[] c(char c10) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Escapers.java */
    /* loaded from: classes2.dex */
    public static class b extends i {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ d f34029c;

        b(d dVar) {
            this.f34029c = dVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.escape.i
        public char[] d(int i4) {
            if (i4 < 65536) {
                return this.f34029c.c((char) i4);
            }
            char[] cArr = new char[2];
            Character.toChars(i4, cArr, 0);
            char[] c10 = this.f34029c.c(cArr[0]);
            char[] c11 = this.f34029c.c(cArr[1]);
            if (c10 == null && c11 == null) {
                return null;
            }
            int length = c10 != null ? c10.length : 1;
            char[] cArr2 = new char[(c11 != null ? c11.length : 1) + length];
            if (c10 != null) {
                for (int i10 = 0; i10 < c10.length; i10++) {
                    cArr2[i10] = c10[i10];
                }
            } else {
                cArr2[0] = cArr[0];
            }
            if (c11 != null) {
                for (int i11 = 0; i11 < c11.length; i11++) {
                    cArr2[length + i11] = c11[i11];
                }
            } else {
                cArr2[length] = cArr[1];
            }
            return cArr2;
        }
    }

    /* compiled from: Escapers.java */
    @h3.a
    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private final Map<Character, String> f34030a;

        /* renamed from: b  reason: collision with root package name */
        private char f34031b;

        /* renamed from: c  reason: collision with root package name */
        private char f34032c;

        /* renamed from: d  reason: collision with root package name */
        private String f34033d;

        /* compiled from: Escapers.java */
        /* loaded from: classes2.dex */
        class a extends com.google.common.escape.a {

            /* renamed from: g  reason: collision with root package name */
            private final char[] f34034g;

            a(Map map, char c10, char c11) {
                super(map, c10, c11);
                this.f34034g = c.this.f34033d != null ? c.this.f34033d.toCharArray() : null;
            }

            @Override // com.google.common.escape.a
            protected char[] f(char c10) {
                return this.f34034g;
            }
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        @CanIgnoreReturnValue
        public c b(char c10, String str) {
            a0.E(str);
            this.f34030a.put(Character.valueOf(c10), str);
            return this;
        }

        public f c() {
            return new a(this.f34030a, this.f34031b, this.f34032c);
        }

        @CanIgnoreReturnValue
        public c d(char c10, char c11) {
            this.f34031b = c10;
            this.f34032c = c11;
            return this;
        }

        @CanIgnoreReturnValue
        public c e(@NullableDecl String str) {
            this.f34033d = str;
            return this;
        }

        private c() {
            this.f34030a = new HashMap();
            this.f34031b = (char) 0;
            this.f34032c = CharCompanionObject.MAX_VALUE;
            this.f34033d = null;
        }
    }

    private g() {
    }

    static i a(f fVar) {
        a0.E(fVar);
        if (fVar instanceof i) {
            return (i) fVar;
        }
        if (fVar instanceof d) {
            return g((d) fVar);
        }
        throw new IllegalArgumentException("Cannot create a UnicodeEscaper from: " + fVar.getClass().getName());
    }

    public static c b() {
        return new c(null);
    }

    public static String c(d dVar, char c10) {
        return f(dVar.c(c10));
    }

    public static String d(i iVar, int i4) {
        return f(iVar.d(i4));
    }

    public static f e() {
        return f34028a;
    }

    private static String f(char[] cArr) {
        if (cArr == null) {
            return null;
        }
        return new String(cArr);
    }

    private static i g(d dVar) {
        return new b(dVar);
    }
}
