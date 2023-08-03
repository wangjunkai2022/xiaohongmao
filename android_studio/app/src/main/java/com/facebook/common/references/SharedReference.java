package com.facebook.common.references;

import android.graphics.Bitmap;
import com.facebook.common.internal.i;
import com.facebook.common.internal.j;
import com.facebook.infer.annotation.Nullsafe;
import java.util.IdentityHashMap;
import java.util.Map;

@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class SharedReference<T> {
    @s7.a("itself")

    /* renamed from: d  reason: collision with root package name */
    private static final Map<Object, Integer> f11003d = new IdentityHashMap();
    @r7.h
    @s7.a("this")

    /* renamed from: a  reason: collision with root package name */
    private T f11004a;
    @s7.a("this")

    /* renamed from: b  reason: collision with root package name */
    private int f11005b = 1;

    /* renamed from: c  reason: collision with root package name */
    private final h<T> f11006c;

    /* loaded from: classes.dex */
    public static class NullReferenceException extends RuntimeException {
        public NullReferenceException() {
            super("Null shared reference");
        }
    }

    public SharedReference(T value, h<T> resourceReleaser) {
        this.f11004a = (T) j.i(value);
        this.f11006c = (h) j.i(resourceReleaser);
        a(value);
    }

    private static void a(Object value) {
        if (a.K() && ((value instanceof Bitmap) || (value instanceof d))) {
            return;
        }
        Map<Object, Integer> map = f11003d;
        synchronized (map) {
            Integer num = map.get(value);
            if (num == null) {
                map.put(value, 1);
            } else {
                map.put(value, Integer.valueOf(num.intValue() + 1));
            }
        }
    }

    private synchronized int d() {
        int i4;
        g();
        j.d(Boolean.valueOf(this.f11005b > 0));
        i4 = this.f11005b - 1;
        this.f11005b = i4;
        return i4;
    }

    private void g() {
        if (!k(this)) {
            throw new NullReferenceException();
        }
    }

    @v1.d
    public static boolean k(@r7.h SharedReference<?> ref) {
        return ref != null && ref.j();
    }

    private static void l(Object value) {
        Map<Object, Integer> map = f11003d;
        synchronized (map) {
            Integer num = map.get(value);
            if (num == null) {
                p0.a.y0("SharedReference", "No entry in sLiveObjects for value of type %s", value.getClass());
            } else if (num.intValue() == 1) {
                map.remove(value);
            } else {
                map.put(value, Integer.valueOf(num.intValue() - 1));
            }
        }
    }

    public static String m() {
        return i.f("SharedReference").d("live_objects_count", f11003d.size()).toString();
    }

    public synchronized void b() {
        g();
        this.f11005b++;
    }

    public synchronized boolean c() {
        if (j()) {
            b();
            return true;
        }
        return false;
    }

    public void e() {
        T t9;
        if (d() == 0) {
            synchronized (this) {
                t9 = this.f11004a;
                this.f11004a = null;
            }
            if (t9 != null) {
                this.f11006c.release(t9);
                l(t9);
            }
        }
    }

    public synchronized boolean f() {
        if (j()) {
            e();
            return true;
        }
        return false;
    }

    @r7.h
    public synchronized T h() {
        return this.f11004a;
    }

    public synchronized int i() {
        return this.f11005b;
    }

    public synchronized boolean j() {
        return this.f11005b > 0;
    }
}
