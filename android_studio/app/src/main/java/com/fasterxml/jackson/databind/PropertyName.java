package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.core.io.SerializedString;
import com.fasterxml.jackson.core.util.InternCache;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import java.io.Serializable;

/* loaded from: classes.dex */
public class PropertyName implements Serializable {

    /* renamed from: d  reason: collision with root package name */
    private static final long f14434d = 1;

    /* renamed from: e  reason: collision with root package name */
    private static final String f14435e = "";

    /* renamed from: f  reason: collision with root package name */
    private static final String f14436f = "";

    /* renamed from: a  reason: collision with root package name */
    protected final String f14437a;

    /* renamed from: b  reason: collision with root package name */
    protected final String f14438b;

    /* renamed from: c  reason: collision with root package name */
    protected com.fasterxml.jackson.core.j f14439c;
    public static final PropertyName USE_DEFAULT = new PropertyName("", null);
    public static final PropertyName NO_NAME = new PropertyName(new String(""), null);

    public PropertyName(String str) {
        this(str, null);
    }

    public static PropertyName construct(String str) {
        if (str != null && !str.isEmpty()) {
            return new PropertyName(InternCache.instance.intern(str), null);
        }
        return USE_DEFAULT;
    }

    protected Object a() {
        String str;
        return (this.f14438b == null && ((str = this.f14437a) == null || "".equals(str))) ? USE_DEFAULT : this;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass() == getClass()) {
            PropertyName propertyName = (PropertyName) obj;
            String str = this.f14437a;
            if (str == null) {
                if (propertyName.f14437a != null) {
                    return false;
                }
            } else if (!str.equals(propertyName.f14437a)) {
                return false;
            }
            String str2 = this.f14438b;
            if (str2 == null) {
                return propertyName.f14438b == null;
            }
            return str2.equals(propertyName.f14438b);
        }
        return false;
    }

    public String getNamespace() {
        return this.f14438b;
    }

    public String getSimpleName() {
        return this.f14437a;
    }

    public boolean hasNamespace() {
        return this.f14438b != null;
    }

    public boolean hasSimpleName() {
        return !this.f14437a.isEmpty();
    }

    public int hashCode() {
        String str = this.f14438b;
        if (str == null) {
            return this.f14437a.hashCode();
        }
        return str.hashCode() ^ this.f14437a.hashCode();
    }

    public PropertyName internSimpleName() {
        String intern;
        return (this.f14437a.isEmpty() || (intern = InternCache.instance.intern(this.f14437a)) == this.f14437a) ? this : new PropertyName(intern, this.f14438b);
    }

    public boolean isEmpty() {
        return this.f14438b == null && this.f14437a.isEmpty();
    }

    public com.fasterxml.jackson.core.j simpleAsEncoded(MapperConfig<?> mapperConfig) {
        com.fasterxml.jackson.core.j compileString;
        com.fasterxml.jackson.core.j jVar = this.f14439c;
        if (jVar == null) {
            if (mapperConfig == null) {
                compileString = new SerializedString(this.f14437a);
            } else {
                compileString = mapperConfig.compileString(this.f14437a);
            }
            com.fasterxml.jackson.core.j jVar2 = compileString;
            this.f14439c = jVar2;
            return jVar2;
        }
        return jVar;
    }

    public String toString() {
        if (this.f14438b == null) {
            return this.f14437a;
        }
        return "{" + this.f14438b + com.alipay.sdk.util.i.f6967d + this.f14437a;
    }

    public PropertyName withNamespace(String str) {
        if (str == null) {
            if (this.f14438b == null) {
                return this;
            }
        } else if (str.equals(this.f14438b)) {
            return this;
        }
        return new PropertyName(this.f14437a, str);
    }

    public PropertyName withSimpleName(String str) {
        if (str == null) {
            str = "";
        }
        return str.equals(this.f14437a) ? this : new PropertyName(str, this.f14438b);
    }

    public PropertyName(String str, String str2) {
        this.f14437a = com.fasterxml.jackson.databind.util.g.l0(str);
        this.f14438b = str2;
    }

    public boolean hasSimpleName(String str) {
        return this.f14437a.equals(str);
    }

    public static PropertyName construct(String str, String str2) {
        if (str == null) {
            str = "";
        }
        if (str2 == null && str.isEmpty()) {
            return USE_DEFAULT;
        }
        return new PropertyName(InternCache.instance.intern(str), str2);
    }
}
