package org.aspectj.runtime.reflect;

import java.lang.reflect.Modifier;
import kotlin.text.Typography;
import okhttp3.HttpUrl;

/* compiled from: StringMaker.java */
/* loaded from: classes4.dex */
class n {

    /* renamed from: j  reason: collision with root package name */
    static n f91107j;

    /* renamed from: k  reason: collision with root package name */
    static n f91108k;

    /* renamed from: l  reason: collision with root package name */
    static n f91109l;

    /* renamed from: a  reason: collision with root package name */
    boolean f91110a = true;

    /* renamed from: b  reason: collision with root package name */
    boolean f91111b = true;

    /* renamed from: c  reason: collision with root package name */
    boolean f91112c = false;

    /* renamed from: d  reason: collision with root package name */
    boolean f91113d = false;

    /* renamed from: e  reason: collision with root package name */
    boolean f91114e = false;

    /* renamed from: f  reason: collision with root package name */
    boolean f91115f = true;

    /* renamed from: g  reason: collision with root package name */
    boolean f91116g = true;

    /* renamed from: h  reason: collision with root package name */
    boolean f91117h = true;

    /* renamed from: i  reason: collision with root package name */
    int f91118i;

    static {
        n nVar = new n();
        f91107j = nVar;
        nVar.f91110a = true;
        nVar.f91111b = false;
        nVar.f91112c = false;
        nVar.f91113d = false;
        nVar.f91114e = true;
        nVar.f91115f = false;
        nVar.f91116g = false;
        nVar.f91118i = 0;
        n nVar2 = new n();
        f91108k = nVar2;
        nVar2.f91110a = true;
        nVar2.f91111b = true;
        nVar2.f91112c = false;
        nVar2.f91113d = false;
        nVar2.f91114e = false;
        f91107j.f91118i = 1;
        n nVar3 = new n();
        f91109l = nVar3;
        nVar3.f91110a = false;
        nVar3.f91111b = true;
        nVar3.f91112c = false;
        nVar3.f91113d = true;
        nVar3.f91114e = false;
        nVar3.f91117h = false;
        nVar3.f91118i = 2;
    }

    n() {
    }

    public void a(StringBuffer stringBuffer, Class[] clsArr) {
        if (clsArr == null) {
            return;
        }
        if (!this.f91111b) {
            if (clsArr.length == 0) {
                stringBuffer.append("()");
                return;
            } else {
                stringBuffer.append("(..)");
                return;
            }
        }
        stringBuffer.append("(");
        c(stringBuffer, clsArr);
        stringBuffer.append(")");
    }

    public void b(StringBuffer stringBuffer, Class[] clsArr) {
        if (!this.f91112c || clsArr == null || clsArr.length == 0) {
            return;
        }
        stringBuffer.append(" throws ");
        c(stringBuffer, clsArr);
    }

    public void c(StringBuffer stringBuffer, Class[] clsArr) {
        for (int i4 = 0; i4 < clsArr.length; i4++) {
            if (i4 > 0) {
                stringBuffer.append(", ");
            }
            stringBuffer.append(g(clsArr[i4]));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String d(String str) {
        int lastIndexOf = str.lastIndexOf(45);
        return lastIndexOf == -1 ? str : str.substring(lastIndexOf + 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String e(int i4) {
        if (this.f91113d) {
            String modifier = Modifier.toString(i4);
            if (modifier.length() == 0) {
                return "";
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(modifier);
            stringBuffer.append(" ");
            return stringBuffer.toString();
        }
        return "";
    }

    public String f(Class cls, String str) {
        return h(cls, str, this.f91114e);
    }

    public String g(Class cls) {
        return h(cls, cls.getName(), this.f91110a);
    }

    String h(Class cls, String str, boolean z9) {
        if (cls == null) {
            return "ANONYMOUS";
        }
        if (!cls.isArray()) {
            if (z9) {
                return i(str).replace(Typography.dollar, '.');
            }
            return str.replace(Typography.dollar, '.');
        }
        Class<?> componentType = cls.getComponentType();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(h(componentType, componentType.getName(), z9));
        stringBuffer.append(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
        return stringBuffer.toString();
    }

    String i(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        return lastIndexOf == -1 ? str : str.substring(lastIndexOf + 1);
    }
}
