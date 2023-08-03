package org.jsoup.parser;

import okio.Utf8;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class Token {

    /* renamed from: a  reason: collision with root package name */
    TokenType f91898a;

    /* loaded from: classes5.dex */
    public enum TokenType {
        Doctype,
        StartTag,
        EndTag,
        Comment,
        Character,
        EOF
    }

    /* loaded from: classes5.dex */
    static final class b extends c {
        /* JADX INFO: Access modifiers changed from: package-private */
        public b(String str) {
            p(str);
        }

        @Override // org.jsoup.parser.Token.c
        public String toString() {
            return "<![CDATA[" + q() + "]]>";
        }
    }

    /* loaded from: classes5.dex */
    static class c extends Token {

        /* renamed from: b  reason: collision with root package name */
        private String f91900b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public c() {
            super();
            this.f91898a = TokenType.Character;
        }

        @Override // org.jsoup.parser.Token
        Token m() {
            this.f91900b = null;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public c p(String str) {
            this.f91900b = str;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String q() {
            return this.f91900b;
        }

        public String toString() {
            return q();
        }
    }

    /* loaded from: classes5.dex */
    static final class d extends Token {

        /* renamed from: b  reason: collision with root package name */
        private final StringBuilder f91901b;

        /* renamed from: c  reason: collision with root package name */
        private String f91902c;

        /* renamed from: d  reason: collision with root package name */
        boolean f91903d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public d() {
            super();
            this.f91901b = new StringBuilder();
            this.f91903d = false;
            this.f91898a = TokenType.Comment;
        }

        private void r() {
            String str = this.f91902c;
            if (str != null) {
                this.f91901b.append(str);
                this.f91902c = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.parser.Token
        public Token m() {
            Token.n(this.f91901b);
            this.f91902c = null;
            this.f91903d = false;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final d p(char c10) {
            r();
            this.f91901b.append(c10);
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final d q(String str) {
            r();
            if (this.f91901b.length() == 0) {
                this.f91902c = str;
            } else {
                this.f91901b.append(str);
            }
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String s() {
            String str = this.f91902c;
            return str != null ? str : this.f91901b.toString();
        }

        public String toString() {
            return "<!--" + s() + "-->";
        }
    }

    /* loaded from: classes5.dex */
    static final class e extends Token {

        /* renamed from: b  reason: collision with root package name */
        final StringBuilder f91904b;

        /* renamed from: c  reason: collision with root package name */
        String f91905c;

        /* renamed from: d  reason: collision with root package name */
        final StringBuilder f91906d;

        /* renamed from: e  reason: collision with root package name */
        final StringBuilder f91907e;

        /* renamed from: f  reason: collision with root package name */
        boolean f91908f;

        /* JADX INFO: Access modifiers changed from: package-private */
        public e() {
            super();
            this.f91904b = new StringBuilder();
            this.f91905c = null;
            this.f91906d = new StringBuilder();
            this.f91907e = new StringBuilder();
            this.f91908f = false;
            this.f91898a = TokenType.Doctype;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.parser.Token
        public Token m() {
            Token.n(this.f91904b);
            this.f91905c = null;
            Token.n(this.f91906d);
            Token.n(this.f91907e);
            this.f91908f = false;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String p() {
            return this.f91904b.toString();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String q() {
            return this.f91905c;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String r() {
            return this.f91906d.toString();
        }

        public String s() {
            return this.f91907e.toString();
        }

        public boolean t() {
            return this.f91908f;
        }

        public String toString() {
            return "<!doctype " + p() + ">";
        }
    }

    /* loaded from: classes5.dex */
    static final class f extends Token {
        /* JADX INFO: Access modifiers changed from: package-private */
        public f() {
            super();
            this.f91898a = TokenType.EOF;
        }

        @Override // org.jsoup.parser.Token
        Token m() {
            return this;
        }

        public String toString() {
            return "";
        }
    }

    /* loaded from: classes5.dex */
    static final class g extends i {
        /* JADX INFO: Access modifiers changed from: package-private */
        public g() {
            this.f91898a = TokenType.EndTag;
        }

        @Override // org.jsoup.parser.Token.i
        public String toString() {
            return "</" + J() + ">";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class h extends i {
        /* JADX INFO: Access modifiers changed from: package-private */
        public h() {
            this.f91898a = TokenType.StartTag;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.parser.Token.i, org.jsoup.parser.Token
        /* renamed from: H */
        public i m() {
            super.m();
            this.f91920l = null;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public h K(String str, org.jsoup.nodes.b bVar) {
            this.f91910b = str;
            this.f91920l = bVar;
            this.f91911c = org.jsoup.parser.e.a(str);
            return this;
        }

        @Override // org.jsoup.parser.Token.i
        public String toString() {
            if (B() && this.f91920l.size() > 0) {
                return "<" + J() + " " + this.f91920l.toString() + ">";
            }
            return "<" + J() + ">";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static abstract class i extends Token {

        /* renamed from: m  reason: collision with root package name */
        private static final int f91909m = 512;
        @r7.h

        /* renamed from: b  reason: collision with root package name */
        protected String f91910b;
        @r7.h

        /* renamed from: c  reason: collision with root package name */
        protected String f91911c;

        /* renamed from: d  reason: collision with root package name */
        private final StringBuilder f91912d;
        @r7.h

        /* renamed from: e  reason: collision with root package name */
        private String f91913e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f91914f;

        /* renamed from: g  reason: collision with root package name */
        private final StringBuilder f91915g;
        @r7.h

        /* renamed from: h  reason: collision with root package name */
        private String f91916h;

        /* renamed from: i  reason: collision with root package name */
        private boolean f91917i;

        /* renamed from: j  reason: collision with root package name */
        private boolean f91918j;

        /* renamed from: k  reason: collision with root package name */
        boolean f91919k;
        @r7.h

        /* renamed from: l  reason: collision with root package name */
        org.jsoup.nodes.b f91920l;

        i() {
            super();
            this.f91912d = new StringBuilder();
            this.f91914f = false;
            this.f91915g = new StringBuilder();
            this.f91917i = false;
            this.f91918j = false;
            this.f91919k = false;
        }

        private void x() {
            this.f91914f = true;
            String str = this.f91913e;
            if (str != null) {
                this.f91912d.append(str);
                this.f91913e = null;
            }
        }

        private void y() {
            this.f91917i = true;
            String str = this.f91916h;
            if (str != null) {
                this.f91915g.append(str);
                this.f91916h = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final boolean A(String str) {
            org.jsoup.nodes.b bVar = this.f91920l;
            return bVar != null && bVar.s(str);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final boolean B() {
            return this.f91920l != null;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final boolean C() {
            return this.f91919k;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final String D() {
            String str = this.f91910b;
            org.jsoup.helper.d.b(str == null || str.length() == 0);
            return this.f91910b;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final i E(String str) {
            this.f91910b = str;
            this.f91911c = org.jsoup.parser.e.a(str);
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void F() {
            String str;
            if (this.f91920l == null) {
                this.f91920l = new org.jsoup.nodes.b();
            }
            if (this.f91914f && this.f91920l.size() < 512) {
                String trim = (this.f91912d.length() > 0 ? this.f91912d.toString() : this.f91913e).trim();
                if (trim.length() > 0) {
                    if (this.f91917i) {
                        str = this.f91915g.length() > 0 ? this.f91915g.toString() : this.f91916h;
                    } else {
                        str = this.f91918j ? "" : null;
                    }
                    this.f91920l.e(trim, str);
                }
            }
            Token.n(this.f91912d);
            this.f91913e = null;
            this.f91914f = false;
            Token.n(this.f91915g);
            this.f91916h = null;
            this.f91917i = false;
            this.f91918j = false;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final String G() {
            return this.f91911c;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.parser.Token
        /* renamed from: H */
        public i m() {
            this.f91910b = null;
            this.f91911c = null;
            Token.n(this.f91912d);
            this.f91913e = null;
            this.f91914f = false;
            Token.n(this.f91915g);
            this.f91916h = null;
            this.f91918j = false;
            this.f91917i = false;
            this.f91919k = false;
            this.f91920l = null;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void I() {
            this.f91918j = true;
        }

        final String J() {
            String str = this.f91910b;
            return str != null ? str : "[unset]";
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void p(char c10) {
            x();
            this.f91912d.append(c10);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void q(String str) {
            String replace = str.replace((char) 0, Utf8.REPLACEMENT_CHARACTER);
            x();
            if (this.f91912d.length() == 0) {
                this.f91913e = replace;
            } else {
                this.f91912d.append(replace);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void r(char c10) {
            y();
            this.f91915g.append(c10);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void s(String str) {
            y();
            if (this.f91915g.length() == 0) {
                this.f91916h = str;
            } else {
                this.f91915g.append(str);
            }
        }

        final void t(char[] cArr) {
            y();
            this.f91915g.append(cArr);
        }

        public abstract String toString();

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void u(int[] iArr) {
            y();
            for (int i4 : iArr) {
                this.f91915g.appendCodePoint(i4);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void v(char c10) {
            w(String.valueOf(c10));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void w(String str) {
            String replace = str.replace((char) 0, Utf8.REPLACEMENT_CHARACTER);
            String str2 = this.f91910b;
            if (str2 != null) {
                replace = str2.concat(replace);
            }
            this.f91910b = replace;
            this.f91911c = org.jsoup.parser.e.a(replace);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void z() {
            if (this.f91914f) {
                F();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void n(StringBuilder sb) {
        if (sb != null) {
            sb.delete(0, sb.length());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final c a() {
        return (c) this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final d b() {
        return (d) this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final e c() {
        return (e) this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final g d() {
        return (g) this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final h e() {
        return (h) this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean f() {
        return this instanceof b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean g() {
        return this.f91898a == TokenType.Character;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean h() {
        return this.f91898a == TokenType.Comment;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean i() {
        return this.f91898a == TokenType.Doctype;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean j() {
        return this.f91898a == TokenType.EOF;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean k() {
        return this.f91898a == TokenType.EndTag;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean l() {
        return this.f91898a == TokenType.StartTag;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract Token m();

    /* JADX INFO: Access modifiers changed from: package-private */
    public String o() {
        return getClass().getSimpleName();
    }

    private Token() {
    }
}
