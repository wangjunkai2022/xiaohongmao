package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import java.io.IOException;
import java.lang.reflect.Modifier;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

/* compiled from: ObjectDescriptorFactory.java */
/* loaded from: classes2.dex */
public class m {

    /* renamed from: a  reason: collision with root package name */
    protected static Logger f36838a = Logger.getLogger(m.class.getName());

    /* renamed from: b  reason: collision with root package name */
    protected static Map<Integer, Map<Integer, Class<? extends b>>> f36839b = new HashMap();

    static {
        HashSet<Class<? extends b>> hashSet = new HashSet();
        hashSet.add(f.class);
        hashSet.add(o.class);
        hashSet.add(b.class);
        hashSet.add(i.class);
        hashSet.add(l.class);
        hashSet.add(n.class);
        hashSet.add(a.class);
        hashSet.add(j.class);
        hashSet.add(h.class);
        hashSet.add(e.class);
        for (Class<? extends b> cls : hashSet) {
            g gVar = (g) cls.getAnnotation(g.class);
            int[] tags = gVar.tags();
            int objectTypeIndication = gVar.objectTypeIndication();
            Map<Integer, Class<? extends b>> map = f36839b.get(Integer.valueOf(objectTypeIndication));
            if (map == null) {
                map = new HashMap<>();
            }
            for (int i4 : tags) {
                map.put(Integer.valueOf(i4), cls);
            }
            f36839b.put(Integer.valueOf(objectTypeIndication), map);
        }
    }

    public static b a(int i4, ByteBuffer byteBuffer) throws IOException {
        b pVar;
        int p9 = com.coremedia.iso.g.p(byteBuffer);
        Map<Integer, Class<? extends b>> map = f36839b.get(Integer.valueOf(i4));
        if (map == null) {
            map = f36839b.get(-1);
        }
        Class<? extends b> cls = map.get(Integer.valueOf(p9));
        if (cls != null && !cls.isInterface() && !Modifier.isAbstract(cls.getModifiers())) {
            try {
                pVar = cls.newInstance();
            } catch (Exception e4) {
                Logger logger = f36838a;
                Level level = Level.SEVERE;
                logger.log(level, "Couldn't instantiate BaseDescriptor class " + cls + " for objectTypeIndication " + i4 + " and tag " + p9, (Throwable) e4);
                throw new RuntimeException(e4);
            }
        } else {
            Logger logger2 = f36838a;
            logger2.warning("No ObjectDescriptor found for objectTypeIndication " + Integer.toHexString(i4) + " and tag " + Integer.toHexString(p9) + " found: " + cls);
            pVar = new p();
        }
        pVar.e(p9, byteBuffer);
        return pVar;
    }
}
