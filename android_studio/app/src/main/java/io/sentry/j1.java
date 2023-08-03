package io.sentry;

import java.io.IOException;
import java.net.InetAddress;
import java.net.URI;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collection;
import java.util.Currency;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicIntegerArray;
import m8.a;

/* compiled from: JsonObjectSerializer.java */
@a.c
/* loaded from: classes4.dex */
public final class j1 {

    /* renamed from: b  reason: collision with root package name */
    public static final String f83356b = "[OBJECT]";

    /* renamed from: a  reason: collision with root package name */
    public final l1 f83357a;

    public j1(int i4) {
        this.f83357a = new l1(i4);
    }

    private void b(@m8.g k1 k1Var, @m8.g o0 o0Var, @m8.g Collection<?> collection) throws IOException {
        k1Var.d();
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            a(k1Var, o0Var, it.next());
        }
        k1Var.k();
    }

    private void c(@m8.g k1 k1Var, @m8.g o0 o0Var, @m8.g Date date) throws IOException {
        try {
            k1Var.l0(k.g(date));
        } catch (Exception e4) {
            o0Var.b(SentryLevel.ERROR, "Error when serializing Date", e4);
            k1Var.E();
        }
    }

    private void d(@m8.g k1 k1Var, @m8.g o0 o0Var, @m8.g Map<?, ?> map) throws IOException {
        k1Var.h();
        for (Object obj : map.keySet()) {
            if (obj instanceof String) {
                k1Var.A((String) obj);
                a(k1Var, o0Var, map.get(obj));
            }
        }
        k1Var.p();
    }

    private void e(@m8.g k1 k1Var, @m8.g o0 o0Var, @m8.g TimeZone timeZone) throws IOException {
        try {
            k1Var.l0(timeZone.getID());
        } catch (Exception e4) {
            o0Var.b(SentryLevel.ERROR, "Error when serializing TimeZone", e4);
            k1Var.E();
        }
    }

    public void a(@m8.g k1 k1Var, @m8.g o0 o0Var, @m8.h Object obj) throws IOException {
        if (obj == null) {
            k1Var.E();
        } else if (obj instanceof Character) {
            k1Var.l0(Character.toString(((Character) obj).charValue()));
        } else if (obj instanceof String) {
            k1Var.l0((String) obj);
        } else if (obj instanceof Boolean) {
            k1Var.n0(((Boolean) obj).booleanValue());
        } else if (obj instanceof Number) {
            k1Var.h0((Number) obj);
        } else if (obj instanceof Date) {
            c(k1Var, o0Var, (Date) obj);
        } else if (obj instanceof TimeZone) {
            e(k1Var, o0Var, (TimeZone) obj);
        } else if (obj instanceof m1) {
            ((m1) obj).serialize(k1Var, o0Var);
        } else if (obj instanceof Collection) {
            b(k1Var, o0Var, (Collection) obj);
        } else if (obj.getClass().isArray()) {
            b(k1Var, o0Var, Arrays.asList((Object[]) obj));
        } else if (obj instanceof Map) {
            d(k1Var, o0Var, (Map) obj);
        } else if (obj instanceof Locale) {
            k1Var.l0(obj.toString());
        } else if (obj instanceof AtomicIntegerArray) {
            b(k1Var, o0Var, io.sentry.util.j.a((AtomicIntegerArray) obj));
        } else if (obj instanceof AtomicBoolean) {
            k1Var.n0(((AtomicBoolean) obj).get());
        } else if (obj instanceof URI) {
            k1Var.l0(obj.toString());
        } else if (obj instanceof InetAddress) {
            k1Var.l0(obj.toString());
        } else if (obj instanceof UUID) {
            k1Var.l0(obj.toString());
        } else if (obj instanceof Currency) {
            k1Var.l0(obj.toString());
        } else if (obj instanceof Calendar) {
            d(k1Var, o0Var, io.sentry.util.j.c((Calendar) obj));
        } else if (obj.getClass().isEnum()) {
            k1Var.l0(obj.toString());
        } else {
            try {
                a(k1Var, o0Var, this.f83357a.d(obj, o0Var));
            } catch (Exception e4) {
                o0Var.b(SentryLevel.ERROR, "Failed serializing unknown object.", e4);
                k1Var.l0(f83356b);
            }
        }
    }
}
