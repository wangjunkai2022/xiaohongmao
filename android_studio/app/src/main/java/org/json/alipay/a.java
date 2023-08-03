package org.json.alipay;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collection;

/* loaded from: classes5.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private ArrayList f91708a;

    public a() {
        this.f91708a = new ArrayList();
    }

    public a(Object obj) {
        this();
        if (!obj.getClass().isArray()) {
            throw new JSONException("JSONArray initial value should be a string or collection or array.");
        }
        int length = Array.getLength(obj);
        for (int i4 = 0; i4 < length; i4++) {
            this.f91708a.add(Array.get(obj, i4));
        }
    }

    public a(String str) {
        this(new c(str));
    }

    public a(Collection collection) {
        this.f91708a = collection == null ? new ArrayList() : new ArrayList(collection);
    }

    public a(c cVar) {
        this();
        char c10;
        ArrayList arrayList;
        Object f10;
        char e4 = cVar.e();
        if (e4 == '[') {
            c10 = ']';
        } else if (e4 != '(') {
            throw cVar.b("A JSONArray text must start with '['");
        } else {
            c10 = ')';
        }
        if (cVar.e() == ']') {
            return;
        }
        do {
            cVar.c();
            char e10 = cVar.e();
            cVar.c();
            if (e10 == ',') {
                arrayList = this.f91708a;
                f10 = null;
            } else {
                arrayList = this.f91708a;
                f10 = cVar.f();
            }
            arrayList.add(f10);
            char e11 = cVar.e();
            if (e11 != ')') {
                if (e11 != ',' && e11 != ';') {
                    if (e11 != ']') {
                        throw cVar.b("Expected a ',' or ']'");
                    }
                }
            }
            if (c10 == e11) {
                return;
            }
            throw cVar.b("Expected a '" + new Character(c10) + "'");
        } while (cVar.e() != ']');
    }

    private String c(String str) {
        int size = this.f91708a.size();
        StringBuffer stringBuffer = new StringBuffer();
        for (int i4 = 0; i4 < size; i4++) {
            if (i4 > 0) {
                stringBuffer.append(str);
            }
            stringBuffer.append(b.b(this.f91708a.get(i4)));
        }
        return stringBuffer.toString();
    }

    public final int a() {
        return this.f91708a.size();
    }

    public final Object b(int i4) {
        Object obj = (i4 < 0 || i4 >= this.f91708a.size()) ? null : this.f91708a.get(i4);
        if (obj != null) {
            return obj;
        }
        throw new JSONException("JSONArray[" + i4 + "] not found.");
    }

    public String toString() {
        try {
            return "[" + c(",") + ']';
        } catch (Exception unused) {
            return null;
        }
    }
}
