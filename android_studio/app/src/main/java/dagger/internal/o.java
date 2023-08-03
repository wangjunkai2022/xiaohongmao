package dagger.internal;

/* compiled from: MembersInjectors.java */
/* loaded from: classes3.dex */
public final class o {

    /* compiled from: MembersInjectors.java */
    /* loaded from: classes3.dex */
    private enum a implements d6.g<Object> {
        INSTANCE;

        @Override // d6.g
        public void a(Object obj) {
            p.c(obj, "Cannot inject members into a null reference");
        }
    }

    private o() {
    }

    public static <T> d6.g<T> a() {
        return a.INSTANCE;
    }
}
