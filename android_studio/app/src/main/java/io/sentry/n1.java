package io.sentry;

import io.sentry.SentryItemType;
import io.sentry.SentryLevel;
import io.sentry.Session;
import io.sentry.SpanStatus;
import io.sentry.clientreport.b;
import io.sentry.f;
import io.sentry.f5;
import io.sentry.g4;
import io.sentry.h4;
import io.sentry.h5;
import io.sentry.m2;
import io.sentry.m3;
import io.sentry.n2;
import io.sentry.profilemeasurements.a;
import io.sentry.profilemeasurements.b;
import io.sentry.protocol.Contexts;
import io.sentry.protocol.DebugImage;
import io.sentry.protocol.Device;
import io.sentry.protocol.a;
import io.sentry.protocol.b;
import io.sentry.protocol.c;
import io.sentry.protocol.d;
import io.sentry.protocol.e;
import io.sentry.protocol.f;
import io.sentry.protocol.g;
import io.sentry.protocol.h;
import io.sentry.protocol.i;
import io.sentry.protocol.k;
import io.sentry.protocol.l;
import io.sentry.protocol.m;
import io.sentry.protocol.o;
import io.sentry.protocol.p;
import io.sentry.protocol.q;
import io.sentry.protocol.r;
import io.sentry.protocol.s;
import io.sentry.protocol.t;
import io.sentry.protocol.u;
import io.sentry.protocol.w;
import io.sentry.protocol.x;
import io.sentry.protocol.y;
import io.sentry.w5;
import java.io.BufferedOutputStream;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.StringWriter;
import java.io.Writer;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Map;

/* compiled from: JsonSerializer.java */
/* loaded from: classes4.dex */
public final class n1 implements u0 {

    /* renamed from: c  reason: collision with root package name */
    private static final Charset f83475c = Charset.forName("UTF-8");
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final SentryOptions f83476a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final Map<Class<?>, c1<?>> f83477b;

    public n1(@m8.g SentryOptions sentryOptions) {
        this.f83476a = sentryOptions;
        HashMap hashMap = new HashMap();
        this.f83477b = hashMap;
        hashMap.put(io.sentry.protocol.a.class, new a.C0714a());
        hashMap.put(f.class, new f.a());
        hashMap.put(io.sentry.protocol.b.class, new b.a());
        hashMap.put(Contexts.class, new Contexts.a());
        hashMap.put(DebugImage.class, new DebugImage.a());
        hashMap.put(io.sentry.protocol.c.class, new c.a());
        hashMap.put(Device.class, new Device.a());
        hashMap.put(Device.DeviceOrientation.class, new Device.DeviceOrientation.a());
        hashMap.put(io.sentry.protocol.d.class, new d.a());
        hashMap.put(io.sentry.protocol.e.class, new e.a());
        hashMap.put(io.sentry.protocol.f.class, new f.a());
        hashMap.put(io.sentry.protocol.g.class, new g.a());
        hashMap.put(io.sentry.protocol.h.class, new h.a());
        hashMap.put(m2.class, new m2.b());
        hashMap.put(n2.class, new n2.a());
        hashMap.put(io.sentry.profilemeasurements.a.class, new a.C0712a());
        hashMap.put(io.sentry.profilemeasurements.b.class, new b.a());
        hashMap.put(io.sentry.protocol.i.class, new i.a());
        hashMap.put(io.sentry.protocol.k.class, new k.a());
        hashMap.put(io.sentry.protocol.l.class, new l.a());
        hashMap.put(m3.class, new m3.a());
        hashMap.put(g4.class, new g4.a());
        hashMap.put(h4.class, new h4.a());
        hashMap.put(io.sentry.protocol.m.class, new m.a());
        hashMap.put(SentryItemType.class, new SentryItemType.a());
        hashMap.put(SentryLevel.class, new SentryLevel.a());
        hashMap.put(io.sentry.protocol.o.class, new o.a());
        hashMap.put(io.sentry.protocol.p.class, new p.a());
        hashMap.put(io.sentry.protocol.q.class, new q.a());
        hashMap.put(io.sentry.protocol.r.class, new r.a());
        hashMap.put(io.sentry.protocol.s.class, new s.a());
        hashMap.put(io.sentry.protocol.t.class, new t.a());
        hashMap.put(io.sentry.protocol.u.class, new u.a());
        hashMap.put(Session.class, new Session.a());
        hashMap.put(f5.class, new f5.a());
        hashMap.put(h5.class, new h5.a());
        hashMap.put(SpanStatus.class, new SpanStatus.a());
        hashMap.put(io.sentry.protocol.w.class, new w.a());
        hashMap.put(w5.class, new w5.a());
        hashMap.put(io.sentry.clientreport.b.class, new b.a());
        hashMap.put(io.sentry.protocol.y.class, new y.a());
        hashMap.put(io.sentry.protocol.x.class, new x.a());
    }

    @m8.g
    private String f(Object obj, boolean z9) throws IOException {
        StringWriter stringWriter = new StringWriter();
        k1 k1Var = new k1(stringWriter, this.f83476a.getMaxDepth());
        if (z9) {
            k1Var.L("\t");
        }
        k1Var.q0(this.f83476a.getLogger(), obj);
        return stringWriter.toString();
    }

    @Override // io.sentry.u0
    public <T> void a(@m8.g T t9, @m8.g Writer writer) throws IOException {
        io.sentry.util.l.c(t9, "The entity is required.");
        io.sentry.util.l.c(writer, "The Writer object is required.");
        o0 logger = this.f83476a.getLogger();
        SentryLevel sentryLevel = SentryLevel.DEBUG;
        if (logger.d(sentryLevel)) {
            this.f83476a.getLogger().c(sentryLevel, "Serializing object: %s", f(t9, true));
        }
        new k1(writer, this.f83476a.getMaxDepth()).q0(this.f83476a.getLogger(), t9);
        writer.flush();
    }

    @Override // io.sentry.u0
    public void b(@m8.g l3 l3Var, @m8.g OutputStream outputStream) throws Exception {
        io.sentry.util.l.c(l3Var, "The SentryEnvelope object is required.");
        io.sentry.util.l.c(outputStream, "The Stream object is required.");
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new BufferedOutputStream(outputStream), f83475c));
        try {
            l3Var.d().serialize(new k1(bufferedWriter, this.f83476a.getMaxDepth()), this.f83476a.getLogger());
            bufferedWriter.write("\n");
            for (f4 f4Var : l3Var.e()) {
                try {
                    byte[] A = f4Var.A();
                    f4Var.C().serialize(new k1(bufferedWriter, this.f83476a.getMaxDepth()), this.f83476a.getLogger());
                    bufferedWriter.write("\n");
                    bufferedWriter.flush();
                    outputStream.write(A);
                    bufferedWriter.write("\n");
                } catch (Exception e4) {
                    this.f83476a.getLogger().b(SentryLevel.ERROR, "Failed to create envelope item. Dropping it.", e4);
                }
            }
        } finally {
            bufferedWriter.flush();
        }
    }

    @Override // io.sentry.u0
    @m8.h
    public <T> T c(@m8.g Reader reader, @m8.g Class<T> cls) {
        try {
            i1 i1Var = new i1(reader);
            c1<?> c1Var = this.f83477b.get(cls);
            if (c1Var != null) {
                return cls.cast(c1Var.a(i1Var, this.f83476a.getLogger()));
            }
            return null;
        } catch (Exception e4) {
            this.f83476a.getLogger().b(SentryLevel.ERROR, "Error when deserializing", e4);
            return null;
        }
    }

    @Override // io.sentry.u0
    @m8.h
    public l3 d(@m8.g InputStream inputStream) {
        io.sentry.util.l.c(inputStream, "The InputStream object is required.");
        try {
            return this.f83476a.getEnvelopeReader().a(inputStream);
        } catch (IOException e4) {
            this.f83476a.getLogger().b(SentryLevel.ERROR, "Error deserializing envelope.", e4);
            return null;
        }
    }

    @Override // io.sentry.u0
    @m8.g
    public String e(@m8.g Map<String, Object> map) throws Exception {
        return f(map, false);
    }
}
