package com.fasterxml.jackson.databind.ext;

import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.deser.i;
import com.fasterxml.jackson.databind.ser.l;
import com.fasterxml.jackson.databind.ser.std.DateSerializer;
import com.fasterxml.jackson.databind.util.g;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class OptionalHandlerFactory implements Serializable {

    /* renamed from: c  reason: collision with root package name */
    private static final long f15109c = 1;

    /* renamed from: d  reason: collision with root package name */
    private static final String f15110d = "javax.xml.";

    /* renamed from: e  reason: collision with root package name */
    private static final String f15111e = "com.fasterxml.jackson.databind.ext.CoreXMLSerializers";

    /* renamed from: f  reason: collision with root package name */
    private static final String f15112f = "com.fasterxml.jackson.databind.ext.CoreXMLDeserializers";

    /* renamed from: g  reason: collision with root package name */
    private static final String f15113g = "com.fasterxml.jackson.databind.ext.DOMSerializer";

    /* renamed from: h  reason: collision with root package name */
    private static final String f15114h = "com.fasterxml.jackson.databind.ext.DOMDeserializer$DocumentDeserializer";

    /* renamed from: i  reason: collision with root package name */
    private static final String f15115i = "com.fasterxml.jackson.databind.ext.DOMDeserializer$NodeDeserializer";
    public static final OptionalHandlerFactory instance;

    /* renamed from: j  reason: collision with root package name */
    private static final Class<?> f15116j;

    /* renamed from: k  reason: collision with root package name */
    private static final Class<?> f15117k;

    /* renamed from: l  reason: collision with root package name */
    private static final a f15118l;

    /* renamed from: m  reason: collision with root package name */
    private static final String f15119m = "java.sql.Timestamp";

    /* renamed from: n  reason: collision with root package name */
    private static final String f15120n = "java.sql.Date";

    /* renamed from: o  reason: collision with root package name */
    private static final String f15121o = "java.sql.Time";

    /* renamed from: p  reason: collision with root package name */
    private static final String f15122p = "java.sql.Blob";

    /* renamed from: q  reason: collision with root package name */
    private static final String f15123q = "javax.sql.rowset.serial.SerialBlob";

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, String> f15124a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, Object> f15125b;

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:6:0x0006
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:81)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:47)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    static {
        /*
            r0 = 0
            java.lang.Class<org.w3c.dom.Node> r1 = org.w3c.dom.Node.class
            java.lang.Class<org.w3c.dom.Document> r2 = org.w3c.dom.Document.class
            goto L8
        L6:
            r1 = r0
        L7:
            r2 = r0
        L8:
            com.fasterxml.jackson.databind.ext.OptionalHandlerFactory.f15116j = r1
            com.fasterxml.jackson.databind.ext.OptionalHandlerFactory.f15117k = r2
            com.fasterxml.jackson.databind.ext.a r0 = com.fasterxml.jackson.databind.ext.a.d()     // Catch: java.lang.Throwable -> L10
        L10:
            com.fasterxml.jackson.databind.ext.OptionalHandlerFactory.f15118l = r0
            com.fasterxml.jackson.databind.ext.OptionalHandlerFactory r0 = new com.fasterxml.jackson.databind.ext.OptionalHandlerFactory
            r0.<init>()
            com.fasterxml.jackson.databind.ext.OptionalHandlerFactory.instance = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ext.OptionalHandlerFactory.<clinit>():void");
    }

    protected OptionalHandlerFactory() {
        HashMap hashMap = new HashMap();
        this.f15124a = hashMap;
        hashMap.put(f15120n, "com.fasterxml.jackson.databind.deser.std.DateDeserializers$SqlDateDeserializer");
        hashMap.put(f15119m, "com.fasterxml.jackson.databind.deser.std.DateDeserializers$TimestampDeserializer");
        HashMap hashMap2 = new HashMap();
        this.f15125b = hashMap2;
        hashMap2.put(f15119m, DateSerializer.instance);
        hashMap2.put(f15120n, "com.fasterxml.jackson.databind.ser.std.SqlDateSerializer");
        hashMap2.put(f15121o, "com.fasterxml.jackson.databind.ser.std.SqlTimeSerializer");
        hashMap2.put(f15122p, "com.fasterxml.jackson.databind.ext.SqlBlobSerializer");
        hashMap2.put(f15123q, "com.fasterxml.jackson.databind.ext.SqlBlobSerializer");
    }

    private boolean a(Class<?> cls, Class<?> cls2) {
        return cls2 != null && cls2.isAssignableFrom(cls);
    }

    private boolean b(Class<?> cls, String str) {
        do {
            cls = cls.getSuperclass();
            if (cls == null || cls == Object.class) {
                return false;
            }
        } while (!cls.getName().startsWith(str));
        return true;
    }

    private Object c(Class<?> cls, JavaType javaType) {
        try {
            return g.n(cls, false);
        } catch (Throwable th) {
            throw new IllegalStateException("Failed to create instance of `" + cls.getName() + "` for handling values of type " + g.P(javaType) + ", problem: (" + th.getClass().getName() + ") " + th.getMessage());
        }
    }

    private Object d(String str, JavaType javaType) {
        try {
            return c(Class.forName(str), javaType);
        } catch (Throwable th) {
            throw new IllegalStateException("Failed to find class `" + str + "` for handling values of type " + g.P(javaType) + ", problem: (" + th.getClass().getName() + ") " + th.getMessage());
        }
    }

    public com.fasterxml.jackson.databind.d<?> findDeserializer(JavaType javaType, DeserializationConfig deserializationConfig, com.fasterxml.jackson.databind.b bVar) throws JsonMappingException {
        Object d4;
        com.fasterxml.jackson.databind.d<?> b10;
        Class<?> rawClass = javaType.getRawClass();
        a aVar = f15118l;
        if (aVar == null || (b10 = aVar.b(rawClass)) == null) {
            if (a(rawClass, f15116j)) {
                return (com.fasterxml.jackson.databind.d) d(f15115i, javaType);
            }
            if (a(rawClass, f15117k)) {
                return (com.fasterxml.jackson.databind.d) d(f15114h, javaType);
            }
            String name = rawClass.getName();
            String str = this.f15124a.get(name);
            if (str != null) {
                return (com.fasterxml.jackson.databind.d) d(str, javaType);
            }
            if ((name.startsWith(f15110d) || b(rawClass, f15110d)) && (d4 = d(f15112f, javaType)) != null) {
                return ((i) d4).findBeanDeserializer(javaType, deserializationConfig, bVar);
            }
            return null;
        }
        return b10;
    }

    public com.fasterxml.jackson.databind.g<?> findSerializer(SerializationConfig serializationConfig, JavaType javaType, com.fasterxml.jackson.databind.b bVar) {
        Object d4;
        com.fasterxml.jackson.databind.g<?> c10;
        Class<?> rawClass = javaType.getRawClass();
        if (a(rawClass, f15116j)) {
            return (com.fasterxml.jackson.databind.g) d(f15113g, javaType);
        }
        a aVar = f15118l;
        if (aVar == null || (c10 = aVar.c(rawClass)) == null) {
            String name = rawClass.getName();
            Object obj = this.f15125b.get(name);
            if (obj != null) {
                if (obj instanceof com.fasterxml.jackson.databind.g) {
                    return (com.fasterxml.jackson.databind.g) obj;
                }
                return (com.fasterxml.jackson.databind.g) d((String) obj, javaType);
            } else if ((name.startsWith(f15110d) || b(rawClass, f15110d)) && (d4 = d(f15111e, javaType)) != null) {
                return ((l) d4).findSerializer(serializationConfig, javaType, bVar);
            } else {
                return null;
            }
        }
        return c10;
    }

    public boolean hasDeserializerFor(Class<?> cls) {
        if (a(cls, f15116j) || a(cls, f15117k)) {
            return true;
        }
        String name = cls.getName();
        if (name.startsWith(f15110d) || b(cls, f15110d)) {
            return true;
        }
        return this.f15124a.containsKey(name);
    }
}
