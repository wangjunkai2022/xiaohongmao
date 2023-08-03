package com.googlecode.mp4parser.boxes.piff;

import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/* compiled from: ProtectionSpecificHeader.java */
/* loaded from: classes2.dex */
public abstract class c {

    /* renamed from: a  reason: collision with root package name */
    protected static Map<UUID, Class<? extends c>> f36887a = new HashMap();

    public static c a(UUID uuid, ByteBuffer byteBuffer) {
        c newInstance;
        Class<? extends c> cls = f36887a.get(uuid);
        if (cls != null) {
            try {
                newInstance = cls.newInstance();
            } catch (IllegalAccessException e4) {
                throw new RuntimeException(e4);
            } catch (InstantiationException e10) {
                throw new RuntimeException(e10);
            }
        } else {
            newInstance = null;
        }
        if (newInstance == null) {
            newInstance = new com.googlecode.mp4parser.contentprotection.a();
        }
        newInstance.d(byteBuffer);
        return newInstance;
    }

    public abstract ByteBuffer b();

    public abstract UUID c();

    public abstract void d(ByteBuffer byteBuffer);

    public boolean equals(Object obj) {
        throw new RuntimeException("somebody called equals on me but that's not supposed to happen.");
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ProtectionSpecificHeader");
        sb.append("{data=");
        ByteBuffer duplicate = b().duplicate();
        duplicate.rewind();
        byte[] bArr = new byte[duplicate.limit()];
        duplicate.get(bArr);
        sb.append(com.coremedia.iso.e.b(bArr));
        sb.append('}');
        return sb.toString();
    }
}
