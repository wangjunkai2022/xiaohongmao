package com.fasterxml.jackson.databind.deser.std;

import java.nio.ByteBuffer;
import java.util.HashSet;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: JdkDeserializers.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static final HashSet<String> f15071a = new HashSet<>();

    static {
        Class[] clsArr = {UUID.class, AtomicBoolean.class, AtomicInteger.class, AtomicLong.class, StackTraceElement.class, ByteBuffer.class, Void.class};
        for (int i4 = 0; i4 < 7; i4++) {
            f15071a.add(clsArr[i4].getName());
        }
        for (Class<?> cls : FromStringDeserializer.types()) {
            f15071a.add(cls.getName());
        }
    }

    public static com.fasterxml.jackson.databind.d<?> a(Class<?> cls, String str) {
        if (f15071a.contains(str)) {
            FromStringDeserializer<?> findDeserializer = FromStringDeserializer.findDeserializer(cls);
            if (findDeserializer != null) {
                return findDeserializer;
            }
            if (cls == UUID.class) {
                return new UUIDDeserializer();
            }
            if (cls == StackTraceElement.class) {
                return new StackTraceElementDeserializer();
            }
            if (cls == AtomicBoolean.class) {
                return new AtomicBooleanDeserializer();
            }
            if (cls == AtomicInteger.class) {
                return new AtomicIntegerDeserializer();
            }
            if (cls == AtomicLong.class) {
                return new AtomicLongDeserializer();
            }
            if (cls == ByteBuffer.class) {
                return new ByteBufferDeserializer();
            }
            if (cls == Void.class) {
                return NullifyingDeserializer.instance;
            }
            return null;
        }
        return null;
    }

    public static boolean b(Class<?> cls) {
        return f15071a.contains(cls.getName());
    }
}
