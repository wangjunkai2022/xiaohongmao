package com.google.android.play.core.internal;

import java.lang.reflect.Field;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public class v0 {

    /* renamed from: a  reason: collision with root package name */
    private final Object f31769a;

    /* renamed from: b  reason: collision with root package name */
    private final Field f31770b;

    /* renamed from: c  reason: collision with root package name */
    private final Class f31771c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v0(Object obj, Field field, Class cls) {
        this.f31769a = obj;
        this.f31770b = field;
        this.f31771c = cls;
    }

    public final Object a() {
        try {
            return this.f31771c.cast(this.f31770b.get(this.f31769a));
        } catch (Exception e4) {
            throw new zzbx(String.format("Failed to get value of field %s of type %s on object of type %s", this.f31770b.getName(), this.f31769a.getClass().getName(), this.f31771c.getName()), e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Field b() {
        return this.f31770b;
    }

    public final void c(Object obj) {
        try {
            this.f31770b.set(this.f31769a, obj);
        } catch (Exception e4) {
            throw new zzbx(String.format("Failed to set value of field %s of type %s on object of type %s", this.f31770b.getName(), this.f31769a.getClass().getName(), this.f31771c.getName()), e4);
        }
    }
}
