package com.fasterxml.jackson.databind.type;

import com.fasterxml.jackson.databind.JavaType;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: ClassStack.java */
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    protected final a f15934a;

    /* renamed from: b  reason: collision with root package name */
    protected final Class<?> f15935b;

    /* renamed from: c  reason: collision with root package name */
    private ArrayList<ResolvedRecursiveType> f15936c;

    public a(Class<?> cls) {
        this(null, cls);
    }

    public void a(ResolvedRecursiveType resolvedRecursiveType) {
        if (this.f15936c == null) {
            this.f15936c = new ArrayList<>();
        }
        this.f15936c.add(resolvedRecursiveType);
    }

    public a b(Class<?> cls) {
        return new a(this, cls);
    }

    public a c(Class<?> cls) {
        if (this.f15935b == cls) {
            return this;
        }
        for (a aVar = this.f15934a; aVar != null; aVar = aVar.f15934a) {
            if (aVar.f15935b == cls) {
                return aVar;
            }
        }
        return null;
    }

    public void d(JavaType javaType) {
        ArrayList<ResolvedRecursiveType> arrayList = this.f15936c;
        if (arrayList != null) {
            Iterator<ResolvedRecursiveType> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().setReference(javaType);
            }
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[ClassStack (self-refs: ");
        ArrayList<ResolvedRecursiveType> arrayList = this.f15936c;
        sb.append(arrayList == null ? "0" : String.valueOf(arrayList.size()));
        sb.append(')');
        for (a aVar = this; aVar != null; aVar = aVar.f15934a) {
            sb.append(' ');
            sb.append(aVar.f15935b.getName());
        }
        sb.append(']');
        return sb.toString();
    }

    private a(a aVar, Class<?> cls) {
        this.f15934a = aVar;
        this.f15935b = cls;
    }
}
