package org.jsoup.parser;

/* compiled from: ParseError.java */
/* loaded from: classes5.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private int f92008a;

    /* renamed from: b  reason: collision with root package name */
    private String f92009b;

    /* renamed from: c  reason: collision with root package name */
    private String f92010c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(a aVar, String str) {
        this.f92008a = aVar.O();
        this.f92009b = aVar.v();
        this.f92010c = str;
    }

    public String a() {
        return this.f92009b;
    }

    public String b() {
        return this.f92010c;
    }

    public int c() {
        return this.f92008a;
    }

    public String toString() {
        return "<" + this.f92009b + ">: " + this.f92010c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(a aVar, String str, Object... objArr) {
        this.f92008a = aVar.O();
        this.f92009b = aVar.v();
        this.f92010c = String.format(str, objArr);
    }

    d(int i4, String str) {
        this.f92008a = i4;
        this.f92009b = String.valueOf(i4);
        this.f92010c = str;
    }

    d(int i4, String str, Object... objArr) {
        this.f92008a = i4;
        this.f92009b = String.valueOf(i4);
        this.f92010c = String.format(str, objArr);
    }
}
