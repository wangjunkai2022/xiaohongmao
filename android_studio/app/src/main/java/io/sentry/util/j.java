package io.sentry.util;

import io.sentry.SentryLevel;
import io.sentry.m1;
import io.sentry.o0;
import io.sentry.u0;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicIntegerArray;
import m8.a;

/* compiled from: JsonSerializationUtils.java */
@a.c
/* loaded from: classes4.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    private static final Charset f84068a = Charset.forName("UTF-8");

    @m8.g
    public static List<Object> a(@m8.g AtomicIntegerArray atomicIntegerArray) {
        int length = atomicIntegerArray.length();
        ArrayList arrayList = new ArrayList(length);
        for (int i4 = 0; i4 < length; i4++) {
            arrayList.add(Integer.valueOf(atomicIntegerArray.get(i4)));
        }
        return arrayList;
    }

    @m8.h
    public static byte[] b(@m8.g u0 u0Var, @m8.g o0 o0Var, @m8.g m1 m1Var) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(byteArrayOutputStream, f84068a));
            try {
                u0Var.a(m1Var, bufferedWriter);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                bufferedWriter.close();
                byteArrayOutputStream.close();
                return byteArray;
            } catch (Throwable th) {
                try {
                    bufferedWriter.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Throwable th3) {
            o0Var.b(SentryLevel.ERROR, "Could not serialize serializable", th3);
            return null;
        }
    }

    @m8.g
    public static Map<String, Object> c(@m8.g Calendar calendar) {
        HashMap hashMap = new HashMap();
        hashMap.put("year", Integer.valueOf(calendar.get(1)));
        hashMap.put("month", Integer.valueOf(calendar.get(2)));
        hashMap.put("dayOfMonth", Integer.valueOf(calendar.get(5)));
        hashMap.put("hourOfDay", Integer.valueOf(calendar.get(11)));
        hashMap.put("minute", Integer.valueOf(calendar.get(12)));
        hashMap.put("second", Integer.valueOf(calendar.get(13)));
        return hashMap;
    }
}
