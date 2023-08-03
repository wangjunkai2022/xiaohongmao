package com.fasterxml.jackson.databind.jsontype;

import java.io.Serializable;
import java.util.Objects;

/* loaded from: classes.dex */
public final class NamedType implements Serializable {

    /* renamed from: d  reason: collision with root package name */
    private static final long f15414d = 1;

    /* renamed from: a  reason: collision with root package name */
    protected final Class<?> f15415a;

    /* renamed from: b  reason: collision with root package name */
    protected final int f15416b;

    /* renamed from: c  reason: collision with root package name */
    protected String f15417c;

    public NamedType(Class<?> cls) {
        this(cls, null);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass() == NamedType.class) {
            NamedType namedType = (NamedType) obj;
            return this.f15415a == namedType.f15415a && Objects.equals(this.f15417c, namedType.f15417c);
        }
        return false;
    }

    public String getName() {
        return this.f15417c;
    }

    public Class<?> getType() {
        return this.f15415a;
    }

    public boolean hasName() {
        return this.f15417c != null;
    }

    public int hashCode() {
        return this.f15416b;
    }

    public void setName(String str) {
        this.f15417c = (str == null || str.isEmpty()) ? null : null;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("[NamedType, class ");
        sb.append(this.f15415a.getName());
        sb.append(", name: ");
        if (this.f15417c == null) {
            str = "null";
        } else {
            str = "'" + this.f15417c + "'";
        }
        sb.append(str);
        sb.append("]");
        return sb.toString();
    }

    public NamedType(Class<?> cls, String str) {
        this.f15415a = cls;
        this.f15416b = cls.getName().hashCode() + (str == null ? 0 : str.hashCode());
        setName(str);
    }
}
