package io.sentry;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import m8.a;

/* compiled from: Hint.java */
/* loaded from: classes4.dex */
public final class b0 {
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private static final Map<String, Class<?>> f83031e;
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, Object> f83032a = new HashMap();
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final List<b> f83033b = new ArrayList();
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private b f83034c = null;
    @m8.h

    /* renamed from: d  reason: collision with root package name */
    private b f83035d = null;

    static {
        HashMap hashMap = new HashMap();
        f83031e = hashMap;
        hashMap.put(TypedValues.Custom.S_BOOLEAN, Boolean.class);
        hashMap.put("char", Character.class);
        hashMap.put(io.sentry.profilemeasurements.a.f83541m, Byte.class);
        hashMap.put("short", Short.class);
        hashMap.put("int", Integer.class);
        hashMap.put("long", Long.class);
        hashMap.put(TypedValues.Custom.S_FLOAT, Float.class);
        hashMap.put("double", Double.class);
    }

    private boolean j(@m8.h Object obj, @m8.g Class<?> cls) {
        Class<?> cls2 = f83031e.get(cls.getCanonicalName());
        return obj != null && cls.isPrimitive() && cls2 != null && cls2.isInstance(obj);
    }

    @m8.g
    public static b0 p(@m8.h b bVar) {
        b0 b0Var = new b0();
        b0Var.a(bVar);
        return b0Var;
    }

    @m8.g
    public static b0 q(@m8.h List<b> list) {
        b0 b0Var = new b0();
        b0Var.b(list);
        return b0Var;
    }

    public void a(@m8.h b bVar) {
        if (bVar != null) {
            this.f83033b.add(bVar);
        }
    }

    public void b(@m8.h List<b> list) {
        if (list != null) {
            this.f83033b.addAll(list);
        }
    }

    @a.c
    public synchronized void c() {
        Iterator<Map.Entry<String, Object>> it = this.f83032a.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<String, Object> next = it.next();
            if (next.getKey() == null || !next.getKey().startsWith("sentry:")) {
                it.remove();
            }
        }
    }

    public void d() {
        this.f83033b.clear();
    }

    @m8.h
    public synchronized Object e(@m8.g String str) {
        return this.f83032a.get(str);
    }

    @m8.h
    public synchronized <T> T f(@m8.g String str, @m8.g Class<T> cls) {
        T t9 = (T) this.f83032a.get(str);
        if (cls.isInstance(t9)) {
            return t9;
        }
        if (j(t9, cls)) {
            return t9;
        }
        return null;
    }

    @m8.g
    public List<b> g() {
        return new ArrayList(this.f83033b);
    }

    @m8.h
    public b h() {
        return this.f83034c;
    }

    @m8.h
    public b i() {
        return this.f83035d;
    }

    public synchronized void k(@m8.g String str) {
        this.f83032a.remove(str);
    }

    public void l(@m8.h List<b> list) {
        d();
        b(list);
    }

    public synchronized void m(@m8.g String str, @m8.h Object obj) {
        this.f83032a.put(str, obj);
    }

    public void n(@m8.h b bVar) {
        this.f83034c = bVar;
    }

    public void o(@m8.h b bVar) {
        this.f83035d = bVar;
    }
}
