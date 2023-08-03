package com.fasterxml.jackson.core.json;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import java.util.HashSet;

/* compiled from: DupDetector.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    protected final Object f14053a;

    /* renamed from: b  reason: collision with root package name */
    protected String f14054b;

    /* renamed from: c  reason: collision with root package name */
    protected String f14055c;

    /* renamed from: d  reason: collision with root package name */
    protected HashSet<String> f14056d;

    private b(Object obj) {
        this.f14053a = obj;
    }

    public static b f(JsonGenerator jsonGenerator) {
        return new b(jsonGenerator);
    }

    public static b g(JsonParser jsonParser) {
        return new b(jsonParser);
    }

    public b a() {
        return new b(this.f14053a);
    }

    public JsonLocation b() {
        Object obj = this.f14053a;
        if (obj instanceof JsonParser) {
            return ((JsonParser) obj).t0();
        }
        return null;
    }

    public Object c() {
        return this.f14053a;
    }

    public boolean d(String str) throws JsonParseException {
        String str2 = this.f14054b;
        if (str2 == null) {
            this.f14054b = str;
            return false;
        } else if (str.equals(str2)) {
            return true;
        } else {
            String str3 = this.f14055c;
            if (str3 == null) {
                this.f14055c = str;
                return false;
            } else if (str.equals(str3)) {
                return true;
            } else {
                if (this.f14056d == null) {
                    HashSet<String> hashSet = new HashSet<>(16);
                    this.f14056d = hashSet;
                    hashSet.add(this.f14054b);
                    this.f14056d.add(this.f14055c);
                }
                return !this.f14056d.add(str);
            }
        }
    }

    public void e() {
        this.f14054b = null;
        this.f14055c = null;
        this.f14056d = null;
    }
}
