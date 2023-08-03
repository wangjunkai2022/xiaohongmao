package io.sentry.internal.gestures;

import io.sentry.util.l;
import java.lang.ref.WeakReference;
import m8.g;
import m8.h;

/* loaded from: classes4.dex */
public final class UiElement {
    @g

    /* renamed from: a  reason: collision with root package name */
    final WeakReference<Object> f83345a;
    @h

    /* renamed from: b  reason: collision with root package name */
    final String f83346b;
    @h

    /* renamed from: c  reason: collision with root package name */
    final String f83347c;
    @h

    /* renamed from: d  reason: collision with root package name */
    final String f83348d;

    /* loaded from: classes4.dex */
    public enum Type {
        CLICKABLE,
        SCROLLABLE
    }

    public UiElement(@h Object obj, @h String str, @h String str2, @h String str3) {
        this.f83345a = new WeakReference<>(obj);
        this.f83346b = str;
        this.f83347c = str2;
        this.f83348d = str3;
    }

    @h
    public String a() {
        return this.f83346b;
    }

    @g
    public String b() {
        String str = this.f83347c;
        return str != null ? str : (String) l.c(this.f83348d, "UiElement.tag can't be null");
    }

    @h
    public String c() {
        return this.f83347c;
    }

    @h
    public String d() {
        return this.f83348d;
    }

    @h
    public Object e() {
        return this.f83345a.get();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || UiElement.class != obj.getClass()) {
            return false;
        }
        UiElement uiElement = (UiElement) obj;
        return l.a(this.f83346b, uiElement.f83346b) && l.a(this.f83347c, uiElement.f83347c) && l.a(this.f83348d, uiElement.f83348d);
    }

    public int hashCode() {
        return l.b(this.f83345a, this.f83347c, this.f83348d);
    }
}
