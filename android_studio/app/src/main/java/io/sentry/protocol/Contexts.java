package io.sentry.protocol;

import io.sentry.c1;
import io.sentry.f5;
import io.sentry.i1;
import io.sentry.k1;
import io.sentry.m1;
import io.sentry.o0;
import io.sentry.protocol.Device;
import io.sentry.protocol.a;
import io.sentry.protocol.b;
import io.sentry.protocol.d;
import io.sentry.protocol.h;
import io.sentry.protocol.j;
import io.sentry.protocol.p;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes4.dex */
public final class Contexts extends ConcurrentHashMap<String, Object> implements m1 {

    /* renamed from: a  reason: collision with root package name */
    private static final long f83554a = 252445813254943011L;

    /* loaded from: classes4.dex */
    public static final class a implements c1<Contexts> {
        @Override // io.sentry.c1
        @m8.g
        /* renamed from: b */
        public Contexts a(@m8.g i1 i1Var, @m8.g o0 o0Var) throws Exception {
            Contexts contexts = new Contexts();
            i1Var.b();
            while (i1Var.X() == JsonToken.NAME) {
                String I = i1Var.I();
                I.hashCode();
                char c10 = 65535;
                switch (I.hashCode()) {
                    case -1335157162:
                        if (I.equals("device")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -340323263:
                        if (I.equals(j.f83728f)) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case 3556:
                        if (I.equals(h.f83693h)) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 96801:
                        if (I.equals(io.sentry.protocol.a.f83616j)) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case 102572:
                        if (I.equals(d.f83645k)) {
                            c10 = 4;
                            break;
                        }
                        break;
                    case 110620997:
                        if (I.equals("trace")) {
                            c10 = 5;
                            break;
                        }
                        break;
                    case 150940456:
                        if (I.equals(b.f83634d)) {
                            c10 = 6;
                            break;
                        }
                        break;
                    case 1550962648:
                        if (I.equals(p.f83776e)) {
                            c10 = 7;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        contexts.setDevice(new Device.a().a(i1Var, o0Var));
                        break;
                    case 1:
                        contexts.setResponse(new j.a().a(i1Var, o0Var));
                        break;
                    case 2:
                        contexts.setOperatingSystem(new h.a().a(i1Var, o0Var));
                        break;
                    case 3:
                        contexts.setApp(new a.C0714a().a(i1Var, o0Var));
                        break;
                    case 4:
                        contexts.setGpu(new d.a().a(i1Var, o0Var));
                        break;
                    case 5:
                        contexts.setTrace(new f5.a().a(i1Var, o0Var));
                        break;
                    case 6:
                        contexts.setBrowser(new b.a().a(i1Var, o0Var));
                        break;
                    case 7:
                        contexts.setRuntime(new p.a().a(i1Var, o0Var));
                        break;
                    default:
                        Object C0 = i1Var.C0();
                        if (C0 == null) {
                            break;
                        } else {
                            contexts.put(I, C0);
                            break;
                        }
                }
            }
            i1Var.p();
            return contexts;
        }
    }

    public Contexts() {
    }

    @m8.h
    private <T> T a(@m8.g String str, @m8.g Class<T> cls) {
        Object obj = get(str);
        if (cls.isInstance(obj)) {
            return cls.cast(obj);
        }
        return null;
    }

    @m8.h
    public io.sentry.protocol.a getApp() {
        return (io.sentry.protocol.a) a(io.sentry.protocol.a.f83616j, io.sentry.protocol.a.class);
    }

    @m8.h
    public b getBrowser() {
        return (b) a(b.f83634d, b.class);
    }

    @m8.h
    public Device getDevice() {
        return (Device) a("device", Device.class);
    }

    @m8.h
    public d getGpu() {
        return (d) a(d.f83645k, d.class);
    }

    @m8.h
    public h getOperatingSystem() {
        return (h) a(h.f83693h, h.class);
    }

    @m8.h
    public j getResponse() {
        return (j) a(j.f83728f, j.class);
    }

    @m8.h
    public p getRuntime() {
        return (p) a(p.f83776e, p.class);
    }

    @m8.h
    public f5 getTrace() {
        return (f5) a("trace", f5.class);
    }

    @Override // io.sentry.m1
    public void serialize(@m8.g k1 k1Var, @m8.g o0 o0Var) throws IOException {
        k1Var.h();
        ArrayList<String> list = Collections.list(keys());
        Collections.sort(list);
        for (String str : list) {
            Object obj = get(str);
            if (obj != null) {
                k1Var.A(str).q0(o0Var, obj);
            }
        }
        k1Var.p();
    }

    public void setApp(@m8.g io.sentry.protocol.a aVar) {
        put(io.sentry.protocol.a.f83616j, aVar);
    }

    public void setBrowser(@m8.g b bVar) {
        put(b.f83634d, bVar);
    }

    public void setDevice(@m8.g Device device) {
        put("device", device);
    }

    public void setGpu(@m8.g d dVar) {
        put(d.f83645k, dVar);
    }

    public void setOperatingSystem(@m8.g h hVar) {
        put(h.f83693h, hVar);
    }

    public void setResponse(@m8.g j jVar) {
        put(j.f83728f, jVar);
    }

    public void setRuntime(@m8.g p pVar) {
        put(p.f83776e, pVar);
    }

    public void setTrace(@m8.h f5 f5Var) {
        io.sentry.util.l.c(f5Var, "traceContext is required");
        put("trace", f5Var);
    }

    public Contexts(@m8.g Contexts contexts) {
        for (Map.Entry<String, Object> entry : contexts.entrySet()) {
            if (entry != null) {
                Object value = entry.getValue();
                if (io.sentry.protocol.a.f83616j.equals(entry.getKey()) && (value instanceof io.sentry.protocol.a)) {
                    setApp(new io.sentry.protocol.a((io.sentry.protocol.a) value));
                } else if (b.f83634d.equals(entry.getKey()) && (value instanceof b)) {
                    setBrowser(new b((b) value));
                } else if ("device".equals(entry.getKey()) && (value instanceof Device)) {
                    setDevice(new Device((Device) value));
                } else if (h.f83693h.equals(entry.getKey()) && (value instanceof h)) {
                    setOperatingSystem(new h((h) value));
                } else if (p.f83776e.equals(entry.getKey()) && (value instanceof p)) {
                    setRuntime(new p((p) value));
                } else if (d.f83645k.equals(entry.getKey()) && (value instanceof d)) {
                    setGpu(new d((d) value));
                } else if ("trace".equals(entry.getKey()) && (value instanceof f5)) {
                    setTrace(new f5((f5) value));
                } else if (j.f83728f.equals(entry.getKey()) && (value instanceof j)) {
                    setResponse(new j((j) value));
                } else {
                    put(entry.getKey(), value);
                }
            }
        }
    }
}
