package org.jsoup.parser;

/* compiled from: ParseSettings.java */
/* loaded from: classes5.dex */
public class e {

    /* renamed from: c  reason: collision with root package name */
    public static final e f92011c = new e(false, false);

    /* renamed from: d  reason: collision with root package name */
    public static final e f92012d = new e(true, true);

    /* renamed from: a  reason: collision with root package name */
    private final boolean f92013a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f92014b;

    public e(boolean z9, boolean z10) {
        this.f92013a = z9;
        this.f92014b = z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(String str) {
        return org.jsoup.internal.d.a(str.trim());
    }

    public String b(String str) {
        String trim = str.trim();
        return !this.f92014b ? org.jsoup.internal.d.a(trim) : trim;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public org.jsoup.nodes.b c(org.jsoup.nodes.b bVar) {
        if (bVar != null && !this.f92014b) {
            bVar.D();
        }
        return bVar;
    }

    public String d(String str) {
        String trim = str.trim();
        return !this.f92013a ? org.jsoup.internal.d.a(trim) : trim;
    }

    public boolean e() {
        return this.f92014b;
    }

    public boolean f() {
        return this.f92013a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(e eVar) {
        this(eVar.f92013a, eVar.f92014b);
    }
}
