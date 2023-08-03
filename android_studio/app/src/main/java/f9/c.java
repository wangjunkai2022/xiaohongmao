package f9;

/* compiled from: MiniDnsIdna.java */
/* loaded from: classes5.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static b f67792a = new a();

    public static void a(b bVar) {
        if (bVar != null) {
            f67792a = bVar;
            return;
        }
        throw new IllegalArgumentException();
    }

    public static String b(String str) {
        return f67792a.b(str);
    }

    public static String c(String str) {
        return f67792a.a(str);
    }
}
