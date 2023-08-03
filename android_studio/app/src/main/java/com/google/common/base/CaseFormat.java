package com.google.common.base;

import java.io.Serializable;
import org.bouncycastle.pqc.math.linearalgebra.Matrix;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@h3.b
/* loaded from: classes2.dex */
public abstract class CaseFormat {
    public static final CaseFormat LOWER_CAMEL;
    public static final CaseFormat LOWER_HYPHEN;
    public static final CaseFormat LOWER_UNDERSCORE;
    public static final CaseFormat UPPER_CAMEL;
    public static final CaseFormat UPPER_UNDERSCORE;

    /* renamed from: c  reason: collision with root package name */
    private static final /* synthetic */ CaseFormat[] f32062c;

    /* renamed from: a  reason: collision with root package name */
    private final com.google.common.base.d f32063a;

    /* renamed from: b  reason: collision with root package name */
    private final String f32064b;

    /* loaded from: classes2.dex */
    enum a extends CaseFormat {
        a(String str, int i4, com.google.common.base.d dVar, String str2) {
            super(str, i4, dVar, str2, null);
        }

        @Override // com.google.common.base.CaseFormat
        String b(CaseFormat caseFormat, String str) {
            if (caseFormat == CaseFormat.LOWER_UNDERSCORE) {
                return str.replace(shaded.org.apache.commons.codec.language.l.f93713d, '_');
            }
            if (caseFormat == CaseFormat.UPPER_UNDERSCORE) {
                return com.google.common.base.c.j(str.replace(shaded.org.apache.commons.codec.language.l.f93713d, '_'));
            }
            return super.b(caseFormat, str);
        }

        @Override // com.google.common.base.CaseFormat
        String e(String str) {
            return com.google.common.base.c.g(str);
        }
    }

    /* loaded from: classes2.dex */
    private static final class f extends h<String, String> implements Serializable {

        /* renamed from: e  reason: collision with root package name */
        private static final long f32065e = 0;

        /* renamed from: c  reason: collision with root package name */
        private final CaseFormat f32066c;

        /* renamed from: d  reason: collision with root package name */
        private final CaseFormat f32067d;

        f(CaseFormat caseFormat, CaseFormat caseFormat2) {
            this.f32066c = (CaseFormat) a0.E(caseFormat);
            this.f32067d = (CaseFormat) a0.E(caseFormat2);
        }

        @Override // com.google.common.base.h, com.google.common.base.q
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof f) {
                f fVar = (f) obj;
                return this.f32066c.equals(fVar.f32066c) && this.f32067d.equals(fVar.f32067d);
            }
            return false;
        }

        public int hashCode() {
            return this.f32066c.hashCode() ^ this.f32067d.hashCode();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.base.h
        /* renamed from: p */
        public String k(String str) {
            return this.f32067d.to(this.f32066c, str);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.base.h
        /* renamed from: q */
        public String l(String str) {
            return this.f32066c.to(this.f32067d, str);
        }

        public String toString() {
            return this.f32066c + ".converterTo(" + this.f32067d + ")";
        }
    }

    static {
        a aVar = new a("LOWER_HYPHEN", 0, com.google.common.base.d.q(shaded.org.apache.commons.codec.language.l.f93713d), "-");
        LOWER_HYPHEN = aVar;
        CaseFormat caseFormat = new CaseFormat("LOWER_UNDERSCORE", 1, com.google.common.base.d.q('_'), "_") { // from class: com.google.common.base.CaseFormat.b
            @Override // com.google.common.base.CaseFormat
            String b(CaseFormat caseFormat2, String str) {
                if (caseFormat2 == CaseFormat.LOWER_HYPHEN) {
                    return str.replace('_', shaded.org.apache.commons.codec.language.l.f93713d);
                }
                if (caseFormat2 == CaseFormat.UPPER_UNDERSCORE) {
                    return com.google.common.base.c.j(str);
                }
                return super.b(caseFormat2, str);
            }

            @Override // com.google.common.base.CaseFormat
            String e(String str) {
                return com.google.common.base.c.g(str);
            }
        };
        LOWER_UNDERSCORE = caseFormat;
        CaseFormat caseFormat2 = new CaseFormat("LOWER_CAMEL", 2, com.google.common.base.d.m('A', Matrix.MATRIX_TYPE_ZERO), "") { // from class: com.google.common.base.CaseFormat.c
            @Override // com.google.common.base.CaseFormat
            String e(String str) {
                return CaseFormat.c(str);
            }
        };
        LOWER_CAMEL = caseFormat2;
        CaseFormat caseFormat3 = new CaseFormat("UPPER_CAMEL", 3, com.google.common.base.d.m('A', Matrix.MATRIX_TYPE_ZERO), "") { // from class: com.google.common.base.CaseFormat.d
            @Override // com.google.common.base.CaseFormat
            String e(String str) {
                return CaseFormat.c(str);
            }
        };
        UPPER_CAMEL = caseFormat3;
        CaseFormat caseFormat4 = new CaseFormat("UPPER_UNDERSCORE", 4, com.google.common.base.d.q('_'), "_") { // from class: com.google.common.base.CaseFormat.e
            @Override // com.google.common.base.CaseFormat
            String b(CaseFormat caseFormat5, String str) {
                if (caseFormat5 == CaseFormat.LOWER_HYPHEN) {
                    return com.google.common.base.c.g(str.replace('_', shaded.org.apache.commons.codec.language.l.f93713d));
                }
                if (caseFormat5 == CaseFormat.LOWER_UNDERSCORE) {
                    return com.google.common.base.c.g(str);
                }
                return super.b(caseFormat5, str);
            }

            @Override // com.google.common.base.CaseFormat
            String e(String str) {
                return com.google.common.base.c.j(str);
            }
        };
        UPPER_UNDERSCORE = caseFormat4;
        f32062c = new CaseFormat[]{aVar, caseFormat, caseFormat2, caseFormat3, caseFormat4};
    }

    /* synthetic */ CaseFormat(String str, int i4, com.google.common.base.d dVar, String str2, a aVar) {
        this(str, i4, dVar, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String c(String str) {
        if (str.isEmpty()) {
            return str;
        }
        return com.google.common.base.c.h(str.charAt(0)) + com.google.common.base.c.g(str.substring(1));
    }

    private String d(String str) {
        return this == LOWER_CAMEL ? com.google.common.base.c.g(str) : e(str);
    }

    public static CaseFormat valueOf(String str) {
        return (CaseFormat) Enum.valueOf(CaseFormat.class, str);
    }

    public static CaseFormat[] values() {
        return (CaseFormat[]) f32062c.clone();
    }

    String b(CaseFormat caseFormat, String str) {
        StringBuilder sb = null;
        int i4 = 0;
        int i10 = -1;
        while (true) {
            i10 = this.f32063a.o(str, i10 + 1);
            if (i10 == -1) {
                break;
            }
            if (i4 == 0) {
                sb = new StringBuilder(str.length() + (this.f32064b.length() * 4));
                sb.append(caseFormat.d(str.substring(i4, i10)));
            } else {
                sb.append(caseFormat.e(str.substring(i4, i10)));
            }
            sb.append(caseFormat.f32064b);
            i4 = this.f32064b.length() + i10;
        }
        if (i4 == 0) {
            return caseFormat.d(str);
        }
        sb.append(caseFormat.e(str.substring(i4)));
        return sb.toString();
    }

    public h<String, String> converterTo(CaseFormat caseFormat) {
        return new f(this, caseFormat);
    }

    abstract String e(String str);

    public final String to(CaseFormat caseFormat, String str) {
        a0.E(caseFormat);
        a0.E(str);
        return caseFormat == this ? str : b(caseFormat, str);
    }

    private CaseFormat(String str, int i4, com.google.common.base.d dVar, String str2) {
        this.f32063a = dVar;
        this.f32064b = str2;
    }
}
