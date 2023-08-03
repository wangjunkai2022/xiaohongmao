package com.google.common.eventbus;

import com.google.common.base.a0;
import com.google.common.base.v;
import com.google.common.util.concurrent.x0;
import com.ksyun.media.streamer.logstats.StatsConstant;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.logging.Level;
import java.util.logging.Logger;

/* compiled from: EventBus.java */
@h3.a
/* loaded from: classes2.dex */
public class e {

    /* renamed from: f  reason: collision with root package name */
    private static final Logger f34050f = Logger.getLogger(e.class.getName());

    /* renamed from: a  reason: collision with root package name */
    private final String f34051a;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f34052b;

    /* renamed from: c  reason: collision with root package name */
    private final i f34053c;

    /* renamed from: d  reason: collision with root package name */
    private final j f34054d;

    /* renamed from: e  reason: collision with root package name */
    private final d f34055e;

    /* compiled from: EventBus.java */
    /* loaded from: classes2.dex */
    static final class a implements i {

        /* renamed from: a  reason: collision with root package name */
        static final a f34056a = new a();

        a() {
        }

        private static Logger b(h hVar) {
            return Logger.getLogger(e.class.getName() + "." + hVar.b().c());
        }

        private static String c(h hVar) {
            Method d4 = hVar.d();
            return "Exception thrown by subscriber method " + d4.getName() + '(' + d4.getParameterTypes()[0].getName() + ") on subscriber " + hVar.c() + " when dispatching event: " + hVar.a();
        }

        @Override // com.google.common.eventbus.i
        public void a(Throwable th, h hVar) {
            Logger b10 = b(hVar);
            Level level = Level.SEVERE;
            if (b10.isLoggable(level)) {
                b10.log(level, c(hVar), th);
            }
        }
    }

    public e() {
        this(StatsConstant.BW_EST_STRATEGY_NORMAL);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Executor a() {
        return this.f34052b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(Throwable th, h hVar) {
        a0.E(th);
        a0.E(hVar);
        try {
            this.f34053c.a(th, hVar);
        } catch (Throwable th2) {
            f34050f.log(Level.SEVERE, String.format(Locale.ROOT, "Exception %s thrown while handling exception: %s", th2, th), th2);
        }
    }

    public final String c() {
        return this.f34051a;
    }

    public void d(Object obj) {
        Iterator<g> f10 = this.f34054d.f(obj);
        if (f10.hasNext()) {
            this.f34055e.a(obj, f10);
        } else if (obj instanceof c) {
        } else {
            d(new c(this, obj));
        }
    }

    public void e(Object obj) {
        this.f34054d.h(obj);
    }

    public void f(Object obj) {
        this.f34054d.i(obj);
    }

    public String toString() {
        return v.c(this).p(this.f34051a).toString();
    }

    public e(String str) {
        this(str, x0.c(), d.d(), a.f34056a);
    }

    public e(i iVar) {
        this(StatsConstant.BW_EST_STRATEGY_NORMAL, x0.c(), d.d(), iVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(String str, Executor executor, d dVar, i iVar) {
        this.f34054d = new j(this);
        this.f34051a = (String) a0.E(str);
        this.f34052b = (Executor) a0.E(executor);
        this.f34055e = (d) a0.E(dVar);
        this.f34053c = (i) a0.E(iVar);
    }
}
