package io.sentry;

import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;
import m8.a;

/* compiled from: JsonObjectReader.java */
@a.c
/* loaded from: classes4.dex */
public final class i1 extends io.sentry.vendor.gson.stream.a {
    public i1(Reader reader) {
        super(reader);
    }

    @m8.h
    public Long A0() throws IOException {
        if (X() == JsonToken.NULL) {
            K();
            return null;
        }
        return Long.valueOf(H());
    }

    @m8.h
    public <T> Map<String, T> B0(@m8.g o0 o0Var, @m8.g c1<T> c1Var) throws IOException {
        if (X() == JsonToken.NULL) {
            K();
            return null;
        }
        b();
        HashMap hashMap = new HashMap();
        while (true) {
            try {
                hashMap.put(I(), c1Var.a(this, o0Var));
            } catch (Exception e4) {
                o0Var.b(SentryLevel.ERROR, "Failed to deserialize object in map.", e4);
            }
            if (X() != JsonToken.BEGIN_OBJECT && X() != JsonToken.NAME) {
                p();
                return hashMap;
            }
        }
    }

    @m8.h
    public Object C0() throws IOException {
        return new h1().c(this);
    }

    @m8.h
    public <T> T D0(@m8.g o0 o0Var, @m8.g c1<T> c1Var) throws Exception {
        if (X() == JsonToken.NULL) {
            K();
            return null;
        }
        return c1Var.a(this, o0Var);
    }

    @m8.h
    public String E0() throws IOException {
        if (X() == JsonToken.NULL) {
            K();
            return null;
        }
        return M();
    }

    @m8.h
    public TimeZone F0(o0 o0Var) throws IOException {
        if (X() == JsonToken.NULL) {
            K();
            return null;
        }
        try {
            return TimeZone.getTimeZone(M());
        } catch (Exception e4) {
            o0Var.b(SentryLevel.ERROR, "Error when deserializing TimeZone", e4);
            return null;
        }
    }

    public void G0(o0 o0Var, Map<String, Object> map, String str) {
        try {
            map.put(str, C0());
        } catch (Exception e4) {
            o0Var.a(SentryLevel.ERROR, e4, "Error deserializing unknown key: %s", str);
        }
    }

    @m8.h
    public Boolean t0() throws IOException {
        if (X() == JsonToken.NULL) {
            K();
            return null;
        }
        return Boolean.valueOf(D());
    }

    @m8.h
    public Date u0(o0 o0Var) throws IOException {
        if (X() == JsonToken.NULL) {
            K();
            return null;
        }
        String M = M();
        try {
            return k.e(M);
        } catch (Exception e4) {
            o0Var.b(SentryLevel.DEBUG, "Error when deserializing UTC timestamp format, it might be millis timestamp format.", e4);
            try {
                return k.f(M);
            } catch (Exception e10) {
                o0Var.b(SentryLevel.ERROR, "Error when deserializing millis timestamp format.", e10);
                return null;
            }
        }
    }

    @m8.h
    public Double v0() throws IOException {
        if (X() == JsonToken.NULL) {
            K();
            return null;
        }
        return Double.valueOf(E());
    }

    @m8.g
    public Float w0() throws IOException {
        return Float.valueOf((float) E());
    }

    @m8.h
    public Float x0() throws IOException {
        if (X() == JsonToken.NULL) {
            K();
            return null;
        }
        return w0();
    }

    @m8.h
    public Integer y0() throws IOException {
        if (X() == JsonToken.NULL) {
            K();
            return null;
        }
        return Integer.valueOf(G());
    }

    @m8.h
    public <T> List<T> z0(@m8.g o0 o0Var, @m8.g c1<T> c1Var) throws IOException {
        if (X() == JsonToken.NULL) {
            K();
            return null;
        }
        a();
        ArrayList arrayList = new ArrayList();
        do {
            try {
                arrayList.add(c1Var.a(this, o0Var));
            } catch (Exception e4) {
                o0Var.b(SentryLevel.ERROR, "Failed to deserialize object in list.", e4);
            }
        } while (X() == JsonToken.BEGIN_OBJECT);
        k();
        return arrayList;
    }
}
