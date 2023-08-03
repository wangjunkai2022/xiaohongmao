package master.flame.danmaku.danmaku.model.objectpool;

/* compiled from: Pools.java */
/* loaded from: classes4.dex */
public class e {
    private e() {
    }

    public static <T extends c<T>> b<T> a(d<T> dVar, int i4) {
        return new a(dVar, i4);
    }

    public static <T extends c<T>> b<T> b(d<T> dVar) {
        return new a(dVar);
    }

    public static <T extends c<T>> b<T> c(b<T> bVar) {
        return new f(bVar);
    }

    public static <T extends c<T>> b<T> d(b<T> bVar, Object obj) {
        return new f(bVar, obj);
    }
}
