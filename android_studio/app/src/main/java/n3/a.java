package n3;

import com.google.firebase.components.c0;

/* compiled from: Event.java */
/* loaded from: classes2.dex */
public class a<T> {

    /* renamed from: a  reason: collision with root package name */
    private final Class<T> f89923a;

    /* renamed from: b  reason: collision with root package name */
    private final T f89924b;

    public a(Class<T> cls, T t9) {
        this.f89923a = (Class) c0.b(cls);
        this.f89924b = (T) c0.b(t9);
    }

    public T a() {
        return this.f89924b;
    }

    public Class<T> b() {
        return this.f89923a;
    }

    public String toString() {
        return String.format("Event{type: %s, payload: %s}", this.f89923a, this.f89924b);
    }
}
