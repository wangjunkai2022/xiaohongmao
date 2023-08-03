package org.jsoup.parser;

import kotlin.text.Typography;
import org.jsoup.parser.Token;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: TokeniserState.java */
/* loaded from: classes5.dex */
public abstract class j {
    static final char K2 = 0;
    private static final char N2 = 65533;
    private static final char P2 = 65535;

    /* renamed from: a  reason: collision with root package name */
    public static final j f92060a = new k(com.ksyun.media.player.e.b.f45488a, 0);

    /* renamed from: b  reason: collision with root package name */
    public static final j f92061b = new j("CharacterReferenceInData", 1) { // from class: org.jsoup.parser.j.v
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            j.n(iVar, j.f92060a);
        }
    };

    /* renamed from: c  reason: collision with root package name */
    public static final j f92064c = new j("Rcdata", 2) { // from class: org.jsoup.parser.j.g0
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            char u9 = aVar.u();
            if (u9 == 0) {
                iVar.x(this);
                aVar.a();
                iVar.l((char) 65533);
            } else if (u9 == '&') {
                iVar.a(j.f92065d);
            } else if (u9 == '<') {
                iVar.a(j.f92074k);
            } else if (u9 != 65535) {
                iVar.m(aVar.h());
            } else {
                iVar.o(new Token.f());
            }
        }
    };

    /* renamed from: d  reason: collision with root package name */
    public static final j f92065d = new j("CharacterReferenceInRcdata", 3) { // from class: org.jsoup.parser.j.r0
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            j.n(iVar, j.f92064c);
        }
    };

    /* renamed from: e  reason: collision with root package name */
    public static final j f92066e = new j("Rawtext", 4) { // from class: org.jsoup.parser.j.c1
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            j.p(iVar, aVar, this, j.f92077n);
        }
    };

    /* renamed from: f  reason: collision with root package name */
    public static final j f92067f = new j("ScriptData", 5) { // from class: org.jsoup.parser.j.l1
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            j.p(iVar, aVar, this, j.f92082q);
        }
    };

    /* renamed from: g  reason: collision with root package name */
    public static final j f92068g = new j("PLAINTEXT", 6) { // from class: org.jsoup.parser.j.m1
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            char u9 = aVar.u();
            if (u9 == 0) {
                iVar.x(this);
                aVar.a();
                iVar.l((char) 65533);
            } else if (u9 != 65535) {
                iVar.m(aVar.o((char) 0));
            } else {
                iVar.o(new Token.f());
            }
        }
    };

    /* renamed from: h  reason: collision with root package name */
    public static final j f92071h = new j("TagOpen", 7) { // from class: org.jsoup.parser.j.n1
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            char u9 = aVar.u();
            if (u9 == '!') {
                iVar.a(j.R);
            } else if (u9 == '/') {
                iVar.a(j.f92072i);
            } else if (u9 != '?') {
                if (aVar.I()) {
                    iVar.i(true);
                    iVar.B(j.f92073j);
                    return;
                }
                iVar.x(this);
                iVar.l(Typography.less);
                iVar.B(j.f92060a);
            } else {
                iVar.f();
                iVar.B(j.Q);
            }
        }
    };

    /* renamed from: i  reason: collision with root package name */
    public static final j f92072i = new j("EndTagOpen", 8) { // from class: org.jsoup.parser.j.o1
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            if (aVar.w()) {
                iVar.u(this);
                iVar.m("</");
                iVar.B(j.f92060a);
            } else if (aVar.I()) {
                iVar.i(false);
                iVar.B(j.f92073j);
            } else if (aVar.E(Typography.greater)) {
                iVar.x(this);
                iVar.a(j.f92060a);
            } else {
                iVar.x(this);
                iVar.f();
                iVar.f92055n.p(com.fasterxml.jackson.core.e.f13819f);
                iVar.B(j.Q);
            }
        }
    };

    /* renamed from: j  reason: collision with root package name */
    public static final j f92073j = new j("TagName", 9) { // from class: org.jsoup.parser.j.a
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            iVar.f92050i.w(aVar.n());
            char f10 = aVar.f();
            if (f10 != 0) {
                if (f10 != ' ') {
                    if (f10 != '/') {
                        if (f10 == '<') {
                            aVar.U();
                            iVar.x(this);
                        } else if (f10 != '>') {
                            if (f10 == 65535) {
                                iVar.u(this);
                                iVar.B(j.f92060a);
                                return;
                            } else if (f10 != '\t' && f10 != '\n' && f10 != '\f' && f10 != '\r') {
                                iVar.f92050i.v(f10);
                                return;
                            }
                        }
                        iVar.t();
                        iVar.B(j.f92060a);
                        return;
                    }
                    iVar.B(j.P);
                    return;
                }
                iVar.B(j.H);
                return;
            }
            iVar.f92050i.w(j.O2);
        }
    };

    /* renamed from: k  reason: collision with root package name */
    public static final j f92074k = new j("RcdataLessthanSign", 10) { // from class: org.jsoup.parser.j.b
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            if (aVar.E(com.fasterxml.jackson.core.e.f13819f)) {
                iVar.j();
                iVar.a(j.f92075l);
            } else if (aVar.I() && iVar.b() != null && !aVar.t(iVar.c())) {
                iVar.f92050i = iVar.i(false).E(iVar.b());
                iVar.t();
                iVar.B(j.f92071h);
            } else {
                iVar.m("<");
                iVar.B(j.f92064c);
            }
        }
    };

    /* renamed from: l  reason: collision with root package name */
    public static final j f92075l = new j("RCDATAEndTagOpen", 11) { // from class: org.jsoup.parser.j.c
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            if (aVar.I()) {
                iVar.i(false);
                iVar.f92050i.v(aVar.u());
                iVar.f92049h.append(aVar.u());
                iVar.a(j.f92076m);
                return;
            }
            iVar.m("</");
            iVar.B(j.f92064c);
        }
    };

    /* renamed from: m  reason: collision with root package name */
    public static final j f92076m = new j("RCDATAEndTagName", 12) { // from class: org.jsoup.parser.j.d
        private void q(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            iVar.m("</");
            iVar.n(iVar.f92049h);
            aVar.U();
            iVar.B(j.f92064c);
        }

        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            if (aVar.I()) {
                String k10 = aVar.k();
                iVar.f92050i.w(k10);
                iVar.f92049h.append(k10);
                return;
            }
            char f10 = aVar.f();
            if (f10 == '\t' || f10 == '\n' || f10 == '\f' || f10 == '\r' || f10 == ' ') {
                if (iVar.z()) {
                    iVar.B(j.H);
                } else {
                    q(iVar, aVar);
                }
            } else if (f10 == '/') {
                if (iVar.z()) {
                    iVar.B(j.P);
                } else {
                    q(iVar, aVar);
                }
            } else if (f10 != '>') {
                q(iVar, aVar);
            } else if (iVar.z()) {
                iVar.t();
                iVar.B(j.f92060a);
            } else {
                q(iVar, aVar);
            }
        }
    };

    /* renamed from: n  reason: collision with root package name */
    public static final j f92077n = new j("RawtextLessthanSign", 13) { // from class: org.jsoup.parser.j.e
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            if (aVar.E(com.fasterxml.jackson.core.e.f13819f)) {
                iVar.j();
                iVar.a(j.f92078o);
                return;
            }
            iVar.l(Typography.less);
            iVar.B(j.f92066e);
        }
    };

    /* renamed from: o  reason: collision with root package name */
    public static final j f92078o = new j("RawtextEndTagOpen", 14) { // from class: org.jsoup.parser.j.f
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            j.o(iVar, aVar, j.f92079p, j.f92066e);
        }
    };

    /* renamed from: p  reason: collision with root package name */
    public static final j f92079p = new j("RawtextEndTagName", 15) { // from class: org.jsoup.parser.j.g
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            j.l(iVar, aVar, j.f92066e);
        }
    };

    /* renamed from: q  reason: collision with root package name */
    public static final j f92082q = new j("ScriptDataLessthanSign", 16) { // from class: org.jsoup.parser.j.h
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            char f10 = aVar.f();
            if (f10 == '!') {
                iVar.m("<!");
                iVar.B(j.f92085t);
            } else if (f10 == '/') {
                iVar.j();
                iVar.B(j.f92083r);
            } else if (f10 != 65535) {
                iVar.m("<");
                aVar.U();
                iVar.B(j.f92067f);
            } else {
                iVar.m("<");
                iVar.u(this);
                iVar.B(j.f92060a);
            }
        }
    };

    /* renamed from: r  reason: collision with root package name */
    public static final j f92083r = new j("ScriptDataEndTagOpen", 17) { // from class: org.jsoup.parser.j.i
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            j.o(iVar, aVar, j.f92084s, j.f92067f);
        }
    };

    /* renamed from: s  reason: collision with root package name */
    public static final j f92084s = new j("ScriptDataEndTagName", 18) { // from class: org.jsoup.parser.j.j
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            j.l(iVar, aVar, j.f92067f);
        }
    };

    /* renamed from: t  reason: collision with root package name */
    public static final j f92085t = new j("ScriptDataEscapeStart", 19) { // from class: org.jsoup.parser.j.l
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            if (aVar.E(shaded.org.apache.commons.codec.language.l.f93713d)) {
                iVar.l(shaded.org.apache.commons.codec.language.l.f93713d);
                iVar.a(j.f92086u);
                return;
            }
            iVar.B(j.f92067f);
        }
    };

    /* renamed from: u  reason: collision with root package name */
    public static final j f92086u = new j("ScriptDataEscapeStartDash", 20) { // from class: org.jsoup.parser.j.m
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            if (aVar.E(shaded.org.apache.commons.codec.language.l.f93713d)) {
                iVar.l(shaded.org.apache.commons.codec.language.l.f93713d);
                iVar.a(j.f92089x);
                return;
            }
            iVar.B(j.f92067f);
        }
    };

    /* renamed from: v  reason: collision with root package name */
    public static final j f92087v = new j("ScriptDataEscaped", 21) { // from class: org.jsoup.parser.j.n
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            if (aVar.w()) {
                iVar.u(this);
                iVar.B(j.f92060a);
                return;
            }
            char u9 = aVar.u();
            if (u9 == 0) {
                iVar.x(this);
                aVar.a();
                iVar.l((char) 65533);
            } else if (u9 == '-') {
                iVar.l(shaded.org.apache.commons.codec.language.l.f93713d);
                iVar.a(j.f92088w);
            } else if (u9 != '<') {
                iVar.m(aVar.q(shaded.org.apache.commons.codec.language.l.f93713d, Typography.less, 0));
            } else {
                iVar.a(j.f92092y);
            }
        }
    };

    /* renamed from: w  reason: collision with root package name */
    public static final j f92088w = new j("ScriptDataEscapedDash", 22) { // from class: org.jsoup.parser.j.o
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            if (aVar.w()) {
                iVar.u(this);
                iVar.B(j.f92060a);
                return;
            }
            char f10 = aVar.f();
            if (f10 == 0) {
                iVar.x(this);
                iVar.l((char) 65533);
                iVar.B(j.f92087v);
            } else if (f10 == '-') {
                iVar.l(f10);
                iVar.B(j.f92089x);
            } else if (f10 != '<') {
                iVar.l(f10);
                iVar.B(j.f92087v);
            } else {
                iVar.B(j.f92092y);
            }
        }
    };

    /* renamed from: x  reason: collision with root package name */
    public static final j f92089x = new j("ScriptDataEscapedDashDash", 23) { // from class: org.jsoup.parser.j.p
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            if (aVar.w()) {
                iVar.u(this);
                iVar.B(j.f92060a);
                return;
            }
            char f10 = aVar.f();
            if (f10 == 0) {
                iVar.x(this);
                iVar.l((char) 65533);
                iVar.B(j.f92087v);
            } else if (f10 == '-') {
                iVar.l(f10);
            } else if (f10 == '<') {
                iVar.B(j.f92092y);
            } else if (f10 != '>') {
                iVar.l(f10);
                iVar.B(j.f92087v);
            } else {
                iVar.l(f10);
                iVar.B(j.f92067f);
            }
        }
    };

    /* renamed from: y  reason: collision with root package name */
    public static final j f92092y = new j("ScriptDataEscapedLessthanSign", 24) { // from class: org.jsoup.parser.j.q
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            if (aVar.I()) {
                iVar.j();
                iVar.f92049h.append(aVar.u());
                iVar.m("<");
                iVar.l(aVar.u());
                iVar.a(j.B);
            } else if (aVar.E(com.fasterxml.jackson.core.e.f13819f)) {
                iVar.j();
                iVar.a(j.f92095z);
            } else {
                iVar.l(Typography.less);
                iVar.B(j.f92087v);
            }
        }
    };

    /* renamed from: z  reason: collision with root package name */
    public static final j f92095z = new j("ScriptDataEscapedEndTagOpen", 25) { // from class: org.jsoup.parser.j.r
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            if (aVar.I()) {
                iVar.i(false);
                iVar.f92050i.v(aVar.u());
                iVar.f92049h.append(aVar.u());
                iVar.a(j.A);
                return;
            }
            iVar.m("</");
            iVar.B(j.f92087v);
        }
    };
    public static final j A = new j("ScriptDataEscapedEndTagName", 26) { // from class: org.jsoup.parser.j.s
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            j.l(iVar, aVar, j.f92087v);
        }
    };
    public static final j B = new j("ScriptDataDoubleEscapeStart", 27) { // from class: org.jsoup.parser.j.t
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            j.k(iVar, aVar, j.C, j.f92087v);
        }
    };
    public static final j C = new j("ScriptDataDoubleEscaped", 28) { // from class: org.jsoup.parser.j.u
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            char u9 = aVar.u();
            if (u9 == 0) {
                iVar.x(this);
                aVar.a();
                iVar.l((char) 65533);
            } else if (u9 == '-') {
                iVar.l(u9);
                iVar.a(j.D);
            } else if (u9 == '<') {
                iVar.l(u9);
                iVar.a(j.F);
            } else if (u9 != 65535) {
                iVar.m(aVar.q(shaded.org.apache.commons.codec.language.l.f93713d, Typography.less, 0));
            } else {
                iVar.u(this);
                iVar.B(j.f92060a);
            }
        }
    };
    public static final j D = new j("ScriptDataDoubleEscapedDash", 29) { // from class: org.jsoup.parser.j.w
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            char f10 = aVar.f();
            if (f10 == 0) {
                iVar.x(this);
                iVar.l((char) 65533);
                iVar.B(j.C);
            } else if (f10 == '-') {
                iVar.l(f10);
                iVar.B(j.E);
            } else if (f10 == '<') {
                iVar.l(f10);
                iVar.B(j.F);
            } else if (f10 != 65535) {
                iVar.l(f10);
                iVar.B(j.C);
            } else {
                iVar.u(this);
                iVar.B(j.f92060a);
            }
        }
    };
    public static final j E = new j("ScriptDataDoubleEscapedDashDash", 30) { // from class: org.jsoup.parser.j.x
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            char f10 = aVar.f();
            if (f10 == 0) {
                iVar.x(this);
                iVar.l((char) 65533);
                iVar.B(j.C);
            } else if (f10 == '-') {
                iVar.l(f10);
            } else if (f10 == '<') {
                iVar.l(f10);
                iVar.B(j.F);
            } else if (f10 == '>') {
                iVar.l(f10);
                iVar.B(j.f92067f);
            } else if (f10 != 65535) {
                iVar.l(f10);
                iVar.B(j.C);
            } else {
                iVar.u(this);
                iVar.B(j.f92060a);
            }
        }
    };
    public static final j F = new j("ScriptDataDoubleEscapedLessthanSign", 31) { // from class: org.jsoup.parser.j.y
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            if (aVar.E(com.fasterxml.jackson.core.e.f13819f)) {
                iVar.l(com.fasterxml.jackson.core.e.f13819f);
                iVar.j();
                iVar.a(j.G);
                return;
            }
            iVar.B(j.C);
        }
    };
    public static final j G = new j("ScriptDataDoubleEscapeEnd", 32) { // from class: org.jsoup.parser.j.z
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            j.k(iVar, aVar, j.f92087v, j.C);
        }
    };
    public static final j H = new j("BeforeAttributeName", 33) { // from class: org.jsoup.parser.j.a0
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            char f10 = aVar.f();
            if (f10 == 0) {
                aVar.U();
                iVar.x(this);
                iVar.f92050i.F();
                iVar.B(j.I);
            } else if (f10 != ' ') {
                if (f10 != '\"' && f10 != '\'') {
                    if (f10 == '/') {
                        iVar.B(j.P);
                        return;
                    } else if (f10 == 65535) {
                        iVar.u(this);
                        iVar.B(j.f92060a);
                        return;
                    } else if (f10 == '\t' || f10 == '\n' || f10 == '\f' || f10 == '\r') {
                        return;
                    } else {
                        switch (f10) {
                            case '<':
                                aVar.U();
                                iVar.x(this);
                                iVar.t();
                                iVar.B(j.f92060a);
                                return;
                            case '=':
                                break;
                            case '>':
                                iVar.t();
                                iVar.B(j.f92060a);
                                return;
                            default:
                                iVar.f92050i.F();
                                aVar.U();
                                iVar.B(j.I);
                                return;
                        }
                    }
                }
                iVar.x(this);
                iVar.f92050i.F();
                iVar.f92050i.p(f10);
                iVar.B(j.I);
            }
        }
    };
    public static final j I = new j("AttributeName", 34) { // from class: org.jsoup.parser.j.b0
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            iVar.f92050i.q(aVar.r(j.L2));
            char f10 = aVar.f();
            if (f10 != '\t' && f10 != '\n' && f10 != '\f' && f10 != '\r' && f10 != ' ') {
                if (f10 != '\"' && f10 != '\'') {
                    if (f10 == '/') {
                        iVar.B(j.P);
                        return;
                    } else if (f10 != 65535) {
                        switch (f10) {
                            case '<':
                                break;
                            case '=':
                                iVar.B(j.K);
                                return;
                            case '>':
                                iVar.t();
                                iVar.B(j.f92060a);
                                return;
                            default:
                                iVar.f92050i.p(f10);
                                return;
                        }
                    } else {
                        iVar.u(this);
                        iVar.B(j.f92060a);
                        return;
                    }
                }
                iVar.x(this);
                iVar.f92050i.p(f10);
                return;
            }
            iVar.B(j.J);
        }
    };
    public static final j J = new j("AfterAttributeName", 35) { // from class: org.jsoup.parser.j.c0
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            char f10 = aVar.f();
            if (f10 == 0) {
                iVar.x(this);
                iVar.f92050i.p((char) 65533);
                iVar.B(j.I);
            } else if (f10 != ' ') {
                if (f10 != '\"' && f10 != '\'') {
                    if (f10 == '/') {
                        iVar.B(j.P);
                        return;
                    } else if (f10 == 65535) {
                        iVar.u(this);
                        iVar.B(j.f92060a);
                        return;
                    } else if (f10 == '\t' || f10 == '\n' || f10 == '\f' || f10 == '\r') {
                        return;
                    } else {
                        switch (f10) {
                            case '<':
                                break;
                            case '=':
                                iVar.B(j.K);
                                return;
                            case '>':
                                iVar.t();
                                iVar.B(j.f92060a);
                                return;
                            default:
                                iVar.f92050i.F();
                                aVar.U();
                                iVar.B(j.I);
                                return;
                        }
                    }
                }
                iVar.x(this);
                iVar.f92050i.F();
                iVar.f92050i.p(f10);
                iVar.B(j.I);
            }
        }
    };
    public static final j K = new j("BeforeAttributeValue", 36) { // from class: org.jsoup.parser.j.d0
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            char f10 = aVar.f();
            if (f10 == 0) {
                iVar.x(this);
                iVar.f92050i.r((char) 65533);
                iVar.B(j.N);
            } else if (f10 != ' ') {
                if (f10 != '\"') {
                    if (f10 != '`') {
                        if (f10 == 65535) {
                            iVar.u(this);
                            iVar.t();
                            iVar.B(j.f92060a);
                            return;
                        } else if (f10 == '\t' || f10 == '\n' || f10 == '\f' || f10 == '\r') {
                            return;
                        } else {
                            if (f10 == '&') {
                                aVar.U();
                                iVar.B(j.N);
                                return;
                            } else if (f10 != '\'') {
                                switch (f10) {
                                    case '<':
                                    case '=':
                                        break;
                                    case '>':
                                        iVar.x(this);
                                        iVar.t();
                                        iVar.B(j.f92060a);
                                        return;
                                    default:
                                        aVar.U();
                                        iVar.B(j.N);
                                        return;
                                }
                            } else {
                                iVar.B(j.M);
                                return;
                            }
                        }
                    }
                    iVar.x(this);
                    iVar.f92050i.r(f10);
                    iVar.B(j.N);
                    return;
                }
                iVar.B(j.L);
            }
        }
    };
    public static final j L = new j("AttributeValue_doubleQuoted", 37) { // from class: org.jsoup.parser.j.e0
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            String g4 = aVar.g(false);
            if (g4.length() > 0) {
                iVar.f92050i.s(g4);
            } else {
                iVar.f92050i.I();
            }
            char f10 = aVar.f();
            if (f10 == 0) {
                iVar.x(this);
                iVar.f92050i.r((char) 65533);
            } else if (f10 == '\"') {
                iVar.B(j.O);
            } else if (f10 != '&') {
                if (f10 != 65535) {
                    iVar.f92050i.r(f10);
                    return;
                }
                iVar.u(this);
                iVar.B(j.f92060a);
            } else {
                int[] e4 = iVar.e('\"', true);
                if (e4 != null) {
                    iVar.f92050i.u(e4);
                } else {
                    iVar.f92050i.r(Typography.amp);
                }
            }
        }
    };
    public static final j M = new j("AttributeValue_singleQuoted", 38) { // from class: org.jsoup.parser.j.f0
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            String g4 = aVar.g(true);
            if (g4.length() > 0) {
                iVar.f92050i.s(g4);
            } else {
                iVar.f92050i.I();
            }
            char f10 = aVar.f();
            if (f10 == 0) {
                iVar.x(this);
                iVar.f92050i.r((char) 65533);
            } else if (f10 == 65535) {
                iVar.u(this);
                iVar.B(j.f92060a);
            } else if (f10 != '&') {
                if (f10 != '\'') {
                    iVar.f92050i.r(f10);
                } else {
                    iVar.B(j.O);
                }
            } else {
                int[] e4 = iVar.e('\'', true);
                if (e4 != null) {
                    iVar.f92050i.u(e4);
                } else {
                    iVar.f92050i.r(Typography.amp);
                }
            }
        }
    };
    public static final j N = new j("AttributeValue_unquoted", 39) { // from class: org.jsoup.parser.j.h0
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            String r9 = aVar.r(j.M2);
            if (r9.length() > 0) {
                iVar.f92050i.s(r9);
            }
            char f10 = aVar.f();
            if (f10 != 0) {
                if (f10 != ' ') {
                    if (f10 != '\"' && f10 != '`') {
                        if (f10 == 65535) {
                            iVar.u(this);
                            iVar.B(j.f92060a);
                            return;
                        } else if (f10 != '\t' && f10 != '\n' && f10 != '\f' && f10 != '\r') {
                            if (f10 == '&') {
                                int[] e4 = iVar.e(Character.valueOf(Typography.greater), true);
                                if (e4 != null) {
                                    iVar.f92050i.u(e4);
                                    return;
                                } else {
                                    iVar.f92050i.r(Typography.amp);
                                    return;
                                }
                            } else if (f10 != '\'') {
                                switch (f10) {
                                    case '<':
                                    case '=':
                                        break;
                                    case '>':
                                        iVar.t();
                                        iVar.B(j.f92060a);
                                        return;
                                    default:
                                        iVar.f92050i.r(f10);
                                        return;
                                }
                            }
                        }
                    }
                    iVar.x(this);
                    iVar.f92050i.r(f10);
                    return;
                }
                iVar.B(j.H);
                return;
            }
            iVar.x(this);
            iVar.f92050i.r((char) 65533);
        }
    };
    public static final j O = new j("AfterAttributeValue_quoted", 40) { // from class: org.jsoup.parser.j.i0
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            char f10 = aVar.f();
            if (f10 == '\t' || f10 == '\n' || f10 == '\f' || f10 == '\r' || f10 == ' ') {
                iVar.B(j.H);
            } else if (f10 == '/') {
                iVar.B(j.P);
            } else if (f10 == '>') {
                iVar.t();
                iVar.B(j.f92060a);
            } else if (f10 != 65535) {
                aVar.U();
                iVar.x(this);
                iVar.B(j.H);
            } else {
                iVar.u(this);
                iVar.B(j.f92060a);
            }
        }
    };
    public static final j P = new j("SelfClosingStartTag", 41) { // from class: org.jsoup.parser.j.j0
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            char f10 = aVar.f();
            if (f10 == '>') {
                iVar.f92050i.f91919k = true;
                iVar.t();
                iVar.B(j.f92060a);
            } else if (f10 != 65535) {
                aVar.U();
                iVar.x(this);
                iVar.B(j.H);
            } else {
                iVar.u(this);
                iVar.B(j.f92060a);
            }
        }
    };
    public static final j Q = new j("BogusComment", 42) { // from class: org.jsoup.parser.j.k0
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            iVar.f92055n.q(aVar.o(Typography.greater));
            char u9 = aVar.u();
            if (u9 == '>' || u9 == 65535) {
                aVar.f();
                iVar.r();
                iVar.B(j.f92060a);
            }
        }
    };
    public static final j R = new j("MarkupDeclarationOpen", 43) { // from class: org.jsoup.parser.j.l0
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            if (aVar.C(com.qennnsad.aknkaksd.presentation.module.main.profile.l.f51916a)) {
                iVar.g();
                iVar.B(j.S);
            } else if (aVar.D("DOCTYPE")) {
                iVar.B(j.f92069g1);
            } else if (aVar.C("[CDATA[")) {
                iVar.j();
                iVar.B(j.J2);
            } else {
                iVar.x(this);
                iVar.f();
                iVar.B(j.Q);
            }
        }
    };
    public static final j S = new j("CommentStart", 44) { // from class: org.jsoup.parser.j.m0
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            char f10 = aVar.f();
            if (f10 == 0) {
                iVar.x(this);
                iVar.f92055n.p((char) 65533);
                iVar.B(j.U);
            } else if (f10 == '-') {
                iVar.B(j.T);
            } else if (f10 == '>') {
                iVar.x(this);
                iVar.r();
                iVar.B(j.f92060a);
            } else if (f10 != 65535) {
                aVar.U();
                iVar.B(j.U);
            } else {
                iVar.u(this);
                iVar.r();
                iVar.B(j.f92060a);
            }
        }
    };
    public static final j T = new j("CommentStartDash", 45) { // from class: org.jsoup.parser.j.n0
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            char f10 = aVar.f();
            if (f10 == 0) {
                iVar.x(this);
                iVar.f92055n.p((char) 65533);
                iVar.B(j.U);
            } else if (f10 == '-') {
                iVar.B(j.T);
            } else if (f10 == '>') {
                iVar.x(this);
                iVar.r();
                iVar.B(j.f92060a);
            } else if (f10 != 65535) {
                iVar.f92055n.p(f10);
                iVar.B(j.U);
            } else {
                iVar.u(this);
                iVar.r();
                iVar.B(j.f92060a);
            }
        }
    };
    public static final j U = new j("Comment", 46) { // from class: org.jsoup.parser.j.o0
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            char u9 = aVar.u();
            if (u9 == 0) {
                iVar.x(this);
                aVar.a();
                iVar.f92055n.p((char) 65533);
            } else if (u9 == '-') {
                iVar.a(j.V);
            } else if (u9 != 65535) {
                iVar.f92055n.q(aVar.q(shaded.org.apache.commons.codec.language.l.f93713d, 0));
            } else {
                iVar.u(this);
                iVar.r();
                iVar.B(j.f92060a);
            }
        }
    };
    public static final j V = new j("CommentEndDash", 47) { // from class: org.jsoup.parser.j.p0
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            char f10 = aVar.f();
            if (f10 == 0) {
                iVar.x(this);
                iVar.f92055n.p(shaded.org.apache.commons.codec.language.l.f93713d).p((char) 65533);
                iVar.B(j.U);
            } else if (f10 == '-') {
                iVar.B(j.W);
            } else if (f10 != 65535) {
                iVar.f92055n.p(shaded.org.apache.commons.codec.language.l.f93713d).p(f10);
                iVar.B(j.U);
            } else {
                iVar.u(this);
                iVar.r();
                iVar.B(j.f92060a);
            }
        }
    };
    public static final j W = new j("CommentEnd", 48) { // from class: org.jsoup.parser.j.q0
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            char f10 = aVar.f();
            if (f10 == 0) {
                iVar.x(this);
                iVar.f92055n.q(com.qennnsad.aknkaksd.presentation.module.main.profile.l.f51916a).p((char) 65533);
                iVar.B(j.U);
            } else if (f10 == '!') {
                iVar.x(this);
                iVar.B(j.f92062b1);
            } else if (f10 == '-') {
                iVar.x(this);
                iVar.f92055n.p(shaded.org.apache.commons.codec.language.l.f93713d);
            } else if (f10 == '>') {
                iVar.r();
                iVar.B(j.f92060a);
            } else if (f10 != 65535) {
                iVar.x(this);
                iVar.f92055n.q(com.qennnsad.aknkaksd.presentation.module.main.profile.l.f51916a).p(f10);
                iVar.B(j.U);
            } else {
                iVar.u(this);
                iVar.r();
                iVar.B(j.f92060a);
            }
        }
    };

    /* renamed from: b1  reason: collision with root package name */
    public static final j f92062b1 = new j("CommentEndBang", 49) { // from class: org.jsoup.parser.j.s0
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            char f10 = aVar.f();
            if (f10 == 0) {
                iVar.x(this);
                iVar.f92055n.q("--!").p((char) 65533);
                iVar.B(j.U);
            } else if (f10 == '-') {
                iVar.f92055n.q("--!");
                iVar.B(j.V);
            } else if (f10 == '>') {
                iVar.r();
                iVar.B(j.f92060a);
            } else if (f10 != 65535) {
                iVar.f92055n.q("--!").p(f10);
                iVar.B(j.U);
            } else {
                iVar.u(this);
                iVar.r();
                iVar.B(j.f92060a);
            }
        }
    };

    /* renamed from: g1  reason: collision with root package name */
    public static final j f92069g1 = new j("Doctype", 50) { // from class: org.jsoup.parser.j.t0
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            char f10 = aVar.f();
            if (f10 != '\t' && f10 != '\n' && f10 != '\f' && f10 != '\r' && f10 != ' ') {
                if (f10 != '>') {
                    if (f10 != 65535) {
                        iVar.x(this);
                        iVar.B(j.f92080p1);
                        return;
                    }
                    iVar.u(this);
                }
                iVar.x(this);
                iVar.h();
                iVar.f92054m.f91908f = true;
                iVar.s();
                iVar.B(j.f92060a);
                return;
            }
            iVar.B(j.f92080p1);
        }
    };

    /* renamed from: p1  reason: collision with root package name */
    public static final j f92080p1 = new j("BeforeDoctypeName", 51) { // from class: org.jsoup.parser.j.u0
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            if (aVar.I()) {
                iVar.h();
                iVar.B(j.f92090x1);
                return;
            }
            char f10 = aVar.f();
            if (f10 == 0) {
                iVar.x(this);
                iVar.h();
                iVar.f92054m.f91904b.append((char) 65533);
                iVar.B(j.f92090x1);
            } else if (f10 != ' ') {
                if (f10 == 65535) {
                    iVar.u(this);
                    iVar.h();
                    iVar.f92054m.f91908f = true;
                    iVar.s();
                    iVar.B(j.f92060a);
                } else if (f10 == '\t' || f10 == '\n' || f10 == '\f' || f10 == '\r') {
                } else {
                    iVar.h();
                    iVar.f92054m.f91904b.append(f10);
                    iVar.B(j.f92090x1);
                }
            }
        }
    };

    /* renamed from: x1  reason: collision with root package name */
    public static final j f92090x1 = new j("DoctypeName", 52) { // from class: org.jsoup.parser.j.v0
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            if (aVar.L()) {
                iVar.f92054m.f91904b.append(aVar.k());
                return;
            }
            char f10 = aVar.f();
            if (f10 != 0) {
                if (f10 != ' ') {
                    if (f10 == '>') {
                        iVar.s();
                        iVar.B(j.f92060a);
                        return;
                    } else if (f10 == 65535) {
                        iVar.u(this);
                        iVar.f92054m.f91908f = true;
                        iVar.s();
                        iVar.B(j.f92060a);
                        return;
                    } else if (f10 != '\t' && f10 != '\n' && f10 != '\f' && f10 != '\r') {
                        iVar.f92054m.f91904b.append(f10);
                        return;
                    }
                }
                iVar.B(j.f92093y1);
                return;
            }
            iVar.x(this);
            iVar.f92054m.f91904b.append((char) 65533);
        }
    };

    /* renamed from: y1  reason: collision with root package name */
    public static final j f92093y1 = new j("AfterDoctypeName", 53) { // from class: org.jsoup.parser.j.w0
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            if (aVar.w()) {
                iVar.u(this);
                iVar.f92054m.f91908f = true;
                iVar.s();
                iVar.B(j.f92060a);
            } else if (aVar.G('\t', '\n', '\r', '\f', ' ')) {
                aVar.a();
            } else if (aVar.E(Typography.greater)) {
                iVar.s();
                iVar.a(j.f92060a);
            } else if (aVar.D(org.jsoup.nodes.f.f91865f)) {
                iVar.f92054m.f91905c = org.jsoup.nodes.f.f91865f;
                iVar.B(j.T1);
            } else if (aVar.D(org.jsoup.nodes.f.f91866g)) {
                iVar.f92054m.f91905c = org.jsoup.nodes.f.f91866g;
                iVar.B(j.f92094y2);
            } else {
                iVar.x(this);
                iVar.f92054m.f91908f = true;
                iVar.a(j.I2);
            }
        }
    };
    public static final j T1 = new j("AfterDoctypePublicKeyword", 54) { // from class: org.jsoup.parser.j.x0
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            char f10 = aVar.f();
            if (f10 == '\t' || f10 == '\n' || f10 == '\f' || f10 == '\r' || f10 == ' ') {
                iVar.B(j.V1);
            } else if (f10 == '\"') {
                iVar.x(this);
                iVar.B(j.f92063b2);
            } else if (f10 == '\'') {
                iVar.x(this);
                iVar.B(j.f92070g2);
            } else if (f10 == '>') {
                iVar.x(this);
                iVar.f92054m.f91908f = true;
                iVar.s();
                iVar.B(j.f92060a);
            } else if (f10 != 65535) {
                iVar.x(this);
                iVar.f92054m.f91908f = true;
                iVar.B(j.I2);
            } else {
                iVar.u(this);
                iVar.f92054m.f91908f = true;
                iVar.s();
                iVar.B(j.f92060a);
            }
        }
    };
    public static final j V1 = new j("BeforeDoctypePublicIdentifier", 55) { // from class: org.jsoup.parser.j.y0
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            char f10 = aVar.f();
            if (f10 == '\t' || f10 == '\n' || f10 == '\f' || f10 == '\r' || f10 == ' ') {
                return;
            }
            if (f10 == '\"') {
                iVar.B(j.f92063b2);
            } else if (f10 == '\'') {
                iVar.B(j.f92070g2);
            } else if (f10 == '>') {
                iVar.x(this);
                iVar.f92054m.f91908f = true;
                iVar.s();
                iVar.B(j.f92060a);
            } else if (f10 != 65535) {
                iVar.x(this);
                iVar.f92054m.f91908f = true;
                iVar.B(j.I2);
            } else {
                iVar.u(this);
                iVar.f92054m.f91908f = true;
                iVar.s();
                iVar.B(j.f92060a);
            }
        }
    };

    /* renamed from: b2  reason: collision with root package name */
    public static final j f92063b2 = new j("DoctypePublicIdentifier_doubleQuoted", 56) { // from class: org.jsoup.parser.j.z0
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            char f10 = aVar.f();
            if (f10 == 0) {
                iVar.x(this);
                iVar.f92054m.f91906d.append((char) 65533);
            } else if (f10 == '\"') {
                iVar.B(j.f92081p2);
            } else if (f10 == '>') {
                iVar.x(this);
                iVar.f92054m.f91908f = true;
                iVar.s();
                iVar.B(j.f92060a);
            } else if (f10 != 65535) {
                iVar.f92054m.f91906d.append(f10);
            } else {
                iVar.u(this);
                iVar.f92054m.f91908f = true;
                iVar.s();
                iVar.B(j.f92060a);
            }
        }
    };

    /* renamed from: g2  reason: collision with root package name */
    public static final j f92070g2 = new j("DoctypePublicIdentifier_singleQuoted", 57) { // from class: org.jsoup.parser.j.a1
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            char f10 = aVar.f();
            if (f10 == 0) {
                iVar.x(this);
                iVar.f92054m.f91906d.append((char) 65533);
            } else if (f10 == '\'') {
                iVar.B(j.f92081p2);
            } else if (f10 == '>') {
                iVar.x(this);
                iVar.f92054m.f91908f = true;
                iVar.s();
                iVar.B(j.f92060a);
            } else if (f10 != 65535) {
                iVar.f92054m.f91906d.append(f10);
            } else {
                iVar.u(this);
                iVar.f92054m.f91908f = true;
                iVar.s();
                iVar.B(j.f92060a);
            }
        }
    };

    /* renamed from: p2  reason: collision with root package name */
    public static final j f92081p2 = new j("AfterDoctypePublicIdentifier", 58) { // from class: org.jsoup.parser.j.b1
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            char f10 = aVar.f();
            if (f10 == '\t' || f10 == '\n' || f10 == '\f' || f10 == '\r' || f10 == ' ') {
                iVar.B(j.f92091x2);
            } else if (f10 == '\"') {
                iVar.x(this);
                iVar.B(j.F2);
            } else if (f10 == '\'') {
                iVar.x(this);
                iVar.B(j.G2);
            } else if (f10 == '>') {
                iVar.s();
                iVar.B(j.f92060a);
            } else if (f10 != 65535) {
                iVar.x(this);
                iVar.f92054m.f91908f = true;
                iVar.B(j.I2);
            } else {
                iVar.u(this);
                iVar.f92054m.f91908f = true;
                iVar.s();
                iVar.B(j.f92060a);
            }
        }
    };

    /* renamed from: x2  reason: collision with root package name */
    public static final j f92091x2 = new j("BetweenDoctypePublicAndSystemIdentifiers", 59) { // from class: org.jsoup.parser.j.d1
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            char f10 = aVar.f();
            if (f10 == '\t' || f10 == '\n' || f10 == '\f' || f10 == '\r' || f10 == ' ') {
                return;
            }
            if (f10 == '\"') {
                iVar.x(this);
                iVar.B(j.F2);
            } else if (f10 == '\'') {
                iVar.x(this);
                iVar.B(j.G2);
            } else if (f10 == '>') {
                iVar.s();
                iVar.B(j.f92060a);
            } else if (f10 != 65535) {
                iVar.x(this);
                iVar.f92054m.f91908f = true;
                iVar.B(j.I2);
            } else {
                iVar.u(this);
                iVar.f92054m.f91908f = true;
                iVar.s();
                iVar.B(j.f92060a);
            }
        }
    };

    /* renamed from: y2  reason: collision with root package name */
    public static final j f92094y2 = new j("AfterDoctypeSystemKeyword", 60) { // from class: org.jsoup.parser.j.e1
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            char f10 = aVar.f();
            if (f10 == '\t' || f10 == '\n' || f10 == '\f' || f10 == '\r' || f10 == ' ') {
                iVar.B(j.E2);
            } else if (f10 == '\"') {
                iVar.x(this);
                iVar.B(j.F2);
            } else if (f10 == '\'') {
                iVar.x(this);
                iVar.B(j.G2);
            } else if (f10 == '>') {
                iVar.x(this);
                iVar.f92054m.f91908f = true;
                iVar.s();
                iVar.B(j.f92060a);
            } else if (f10 != 65535) {
                iVar.x(this);
                iVar.f92054m.f91908f = true;
                iVar.s();
            } else {
                iVar.u(this);
                iVar.f92054m.f91908f = true;
                iVar.s();
                iVar.B(j.f92060a);
            }
        }
    };
    public static final j E2 = new j("BeforeDoctypeSystemIdentifier", 61) { // from class: org.jsoup.parser.j.f1
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            char f10 = aVar.f();
            if (f10 == '\t' || f10 == '\n' || f10 == '\f' || f10 == '\r' || f10 == ' ') {
                return;
            }
            if (f10 == '\"') {
                iVar.B(j.F2);
            } else if (f10 == '\'') {
                iVar.B(j.G2);
            } else if (f10 == '>') {
                iVar.x(this);
                iVar.f92054m.f91908f = true;
                iVar.s();
                iVar.B(j.f92060a);
            } else if (f10 != 65535) {
                iVar.x(this);
                iVar.f92054m.f91908f = true;
                iVar.B(j.I2);
            } else {
                iVar.u(this);
                iVar.f92054m.f91908f = true;
                iVar.s();
                iVar.B(j.f92060a);
            }
        }
    };
    public static final j F2 = new j("DoctypeSystemIdentifier_doubleQuoted", 62) { // from class: org.jsoup.parser.j.g1
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            char f10 = aVar.f();
            if (f10 == 0) {
                iVar.x(this);
                iVar.f92054m.f91907e.append((char) 65533);
            } else if (f10 == '\"') {
                iVar.B(j.H2);
            } else if (f10 == '>') {
                iVar.x(this);
                iVar.f92054m.f91908f = true;
                iVar.s();
                iVar.B(j.f92060a);
            } else if (f10 != 65535) {
                iVar.f92054m.f91907e.append(f10);
            } else {
                iVar.u(this);
                iVar.f92054m.f91908f = true;
                iVar.s();
                iVar.B(j.f92060a);
            }
        }
    };
    public static final j G2 = new j("DoctypeSystemIdentifier_singleQuoted", 63) { // from class: org.jsoup.parser.j.h1
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            char f10 = aVar.f();
            if (f10 == 0) {
                iVar.x(this);
                iVar.f92054m.f91907e.append((char) 65533);
            } else if (f10 == '\'') {
                iVar.B(j.H2);
            } else if (f10 == '>') {
                iVar.x(this);
                iVar.f92054m.f91908f = true;
                iVar.s();
                iVar.B(j.f92060a);
            } else if (f10 != 65535) {
                iVar.f92054m.f91907e.append(f10);
            } else {
                iVar.u(this);
                iVar.f92054m.f91908f = true;
                iVar.s();
                iVar.B(j.f92060a);
            }
        }
    };
    public static final j H2 = new j("AfterDoctypeSystemIdentifier", 64) { // from class: org.jsoup.parser.j.i1
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            char f10 = aVar.f();
            if (f10 == '\t' || f10 == '\n' || f10 == '\f' || f10 == '\r' || f10 == ' ') {
                return;
            }
            if (f10 == '>') {
                iVar.s();
                iVar.B(j.f92060a);
            } else if (f10 != 65535) {
                iVar.x(this);
                iVar.B(j.I2);
            } else {
                iVar.u(this);
                iVar.f92054m.f91908f = true;
                iVar.s();
                iVar.B(j.f92060a);
            }
        }
    };
    public static final j I2 = new j("BogusDoctype", 65) { // from class: org.jsoup.parser.j.j1
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            char f10 = aVar.f();
            if (f10 == '>') {
                iVar.s();
                iVar.B(j.f92060a);
            } else if (f10 != 65535) {
            } else {
                iVar.s();
                iVar.B(j.f92060a);
            }
        }
    };
    public static final j J2 = new j("CdataSection", 66) { // from class: org.jsoup.parser.j.k1
        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            iVar.f92049h.append(aVar.p("]]>"));
            if (aVar.C("]]>") || aVar.w()) {
                iVar.o(new Token.b(iVar.f92049h.toString()));
                iVar.B(j.f92060a);
            }
        }
    };
    private static final /* synthetic */ j[] Q2 = a();
    static final char[] L2 = {'\t', '\n', '\f', '\r', ' ', '\"', '\'', com.fasterxml.jackson.core.e.f13819f, Typography.less, '=', Typography.greater};
    static final char[] M2 = {0, '\t', '\n', '\f', '\r', ' ', '\"', Typography.amp, '\'', Typography.less, '=', Typography.greater, '`'};
    private static final String O2 = String.valueOf((char) 65533);

    /* compiled from: TokeniserState.java */
    /* loaded from: classes5.dex */
    enum k extends j {
        k(String str, int i4) {
            super(str, i4, null);
        }

        @Override // org.jsoup.parser.j
        void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar) {
            char u9 = aVar.u();
            if (u9 == 0) {
                iVar.x(this);
                iVar.l(aVar.f());
            } else if (u9 == '&') {
                iVar.a(j.f92061b);
            } else if (u9 == '<') {
                iVar.a(j.f92071h);
            } else if (u9 != 65535) {
                iVar.m(aVar.h());
            } else {
                iVar.o(new Token.f());
            }
        }
    }

    private j(String str, int i4) {
    }

    private static /* synthetic */ j[] a() {
        return new j[]{f92060a, f92061b, f92064c, f92065d, f92066e, f92067f, f92068g, f92071h, f92072i, f92073j, f92074k, f92075l, f92076m, f92077n, f92078o, f92079p, f92082q, f92083r, f92084s, f92085t, f92086u, f92087v, f92088w, f92089x, f92092y, f92095z, A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, f92062b1, f92069g1, f92080p1, f92090x1, f92093y1, T1, V1, f92063b2, f92070g2, f92081p2, f92091x2, f92094y2, E2, F2, G2, H2, I2, J2};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void k(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar, j jVar, j jVar2) {
        if (aVar.L()) {
            String k10 = aVar.k();
            iVar.f92049h.append(k10);
            iVar.m(k10);
            return;
        }
        char f10 = aVar.f();
        if (f10 != '\t' && f10 != '\n' && f10 != '\f' && f10 != '\r' && f10 != ' ' && f10 != '/' && f10 != '>') {
            aVar.U();
            iVar.B(jVar2);
            return;
        }
        if (iVar.f92049h.toString().equals("script")) {
            iVar.B(jVar);
        } else {
            iVar.B(jVar2);
        }
        iVar.l(f10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar, j jVar) {
        if (aVar.L()) {
            String k10 = aVar.k();
            iVar.f92050i.w(k10);
            iVar.f92049h.append(k10);
            return;
        }
        boolean z9 = false;
        boolean z10 = true;
        if (iVar.z() && !aVar.w()) {
            char f10 = aVar.f();
            if (f10 == '\t' || f10 == '\n' || f10 == '\f' || f10 == '\r' || f10 == ' ') {
                iVar.B(H);
            } else if (f10 == '/') {
                iVar.B(P);
            } else if (f10 != '>') {
                iVar.f92049h.append(f10);
                z9 = true;
            } else {
                iVar.t();
                iVar.B(f92060a);
            }
            z10 = z9;
        }
        if (z10) {
            iVar.m("</");
            iVar.n(iVar.f92049h);
            iVar.B(jVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void n(org.jsoup.parser.i iVar, j jVar) {
        int[] e4 = iVar.e(null, false);
        if (e4 == null) {
            iVar.l(Typography.amp);
        } else {
            iVar.q(e4);
        }
        iVar.B(jVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void o(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar, j jVar, j jVar2) {
        if (aVar.I()) {
            iVar.i(false);
            iVar.B(jVar);
            return;
        }
        iVar.m("</");
        iVar.B(jVar2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void p(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar, j jVar, j jVar2) {
        char u9 = aVar.u();
        if (u9 == 0) {
            iVar.x(jVar);
            aVar.a();
            iVar.l((char) 65533);
        } else if (u9 == '<') {
            iVar.a(jVar2);
        } else if (u9 != 65535) {
            iVar.m(aVar.m());
        } else {
            iVar.o(new Token.f());
        }
    }

    public static j valueOf(String str) {
        return (j) Enum.valueOf(j.class, str);
    }

    public static j[] values() {
        return (j[]) Q2.clone();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void m(org.jsoup.parser.i iVar, org.jsoup.parser.a aVar);

    /* synthetic */ j(String str, int i4, k kVar) {
        this(str, i4);
    }
}
