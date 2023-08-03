package com.google.i18n.phonenumbers;

import com.google.i18n.phonenumbers.Phonemetadata;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MetadataManager.java */
/* loaded from: classes2.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    static final String f35673a = "/com/google/i18n/phonenumbers/data/PhoneNumberMetadataProto";

    /* renamed from: b  reason: collision with root package name */
    static final String f35674b = "/com/google/i18n/phonenumbers/data/SingleFilePhoneNumberMetadataProto";

    /* renamed from: c  reason: collision with root package name */
    private static final String f35675c = "/com/google/i18n/phonenumbers/data/PhoneNumberAlternateFormatsProto";

    /* renamed from: d  reason: collision with root package name */
    private static final String f35676d = "/com/google/i18n/phonenumbers/data/ShortNumberMetadataProto";

    /* renamed from: e  reason: collision with root package name */
    static final d f35677e = new a();

    /* renamed from: f  reason: collision with root package name */
    private static final Logger f35678f = Logger.getLogger(e.class.getName());

    /* renamed from: g  reason: collision with root package name */
    private static final ConcurrentHashMap<Integer, Phonemetadata.PhoneMetadata> f35679g = new ConcurrentHashMap<>();

    /* renamed from: h  reason: collision with root package name */
    private static final ConcurrentHashMap<String, Phonemetadata.PhoneMetadata> f35680h = new ConcurrentHashMap<>();

    /* renamed from: i  reason: collision with root package name */
    private static final Set<Integer> f35681i = com.google.i18n.phonenumbers.a.a();

    /* renamed from: j  reason: collision with root package name */
    private static final Set<String> f35682j = j.a();

    /* compiled from: MetadataManager.java */
    /* loaded from: classes2.dex */
    static class a implements d {
        a() {
        }

        @Override // com.google.i18n.phonenumbers.d
        public InputStream a(String str) {
            return e.class.getResourceAsStream(str);
        }
    }

    /* compiled from: MetadataManager.java */
    /* loaded from: classes2.dex */
    static class b {

        /* renamed from: a  reason: collision with root package name */
        private final Map<String, Phonemetadata.PhoneMetadata> f35683a;

        /* renamed from: b  reason: collision with root package name */
        private final Map<Integer, Phonemetadata.PhoneMetadata> f35684b;

        private b(Map<String, Phonemetadata.PhoneMetadata> map, Map<Integer, Phonemetadata.PhoneMetadata> map2) {
            this.f35683a = Collections.unmodifiableMap(map);
            this.f35684b = Collections.unmodifiableMap(map2);
        }

        static b c(String str, d dVar) {
            List<Phonemetadata.PhoneMetadata> d4 = e.d(str, dVar);
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            for (Phonemetadata.PhoneMetadata phoneMetadata : d4) {
                String id = phoneMetadata.getId();
                if ("001".equals(id)) {
                    hashMap2.put(Integer.valueOf(phoneMetadata.getCountryCode()), phoneMetadata);
                } else {
                    hashMap.put(id, phoneMetadata);
                }
            }
            return new b(hashMap, hashMap2);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Phonemetadata.PhoneMetadata a(int i4) {
            return this.f35684b.get(Integer.valueOf(i4));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Phonemetadata.PhoneMetadata b(String str) {
            return this.f35683a.get(str);
        }
    }

    private e() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Phonemetadata.PhoneMetadata b(int i4) {
        if (f35681i.contains(Integer.valueOf(i4))) {
            return c(Integer.valueOf(i4), f35679g, f35675c, f35677e);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> Phonemetadata.PhoneMetadata c(T t9, ConcurrentHashMap<T, Phonemetadata.PhoneMetadata> concurrentHashMap, String str, d dVar) {
        Phonemetadata.PhoneMetadata phoneMetadata = concurrentHashMap.get(t9);
        if (phoneMetadata != null) {
            return phoneMetadata;
        }
        String str2 = str + "_" + t9;
        List<Phonemetadata.PhoneMetadata> d4 = d(str2, dVar);
        if (d4.size() > 1) {
            f35678f.log(Level.WARNING, "more than one metadata in file " + str2);
        }
        Phonemetadata.PhoneMetadata phoneMetadata2 = d4.get(0);
        Phonemetadata.PhoneMetadata putIfAbsent = concurrentHashMap.putIfAbsent(t9, phoneMetadata2);
        return putIfAbsent != null ? putIfAbsent : phoneMetadata2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static List<Phonemetadata.PhoneMetadata> d(String str, d dVar) {
        InputStream a10 = dVar.a(str);
        if (a10 != null) {
            List<Phonemetadata.PhoneMetadata> metadataList = h(a10).getMetadataList();
            if (metadataList.size() != 0) {
                return metadataList;
            }
            throw new IllegalStateException("empty metadata: " + str);
        }
        throw new IllegalStateException("missing metadata: " + str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Phonemetadata.PhoneMetadata e(String str) {
        if (f35682j.contains(str)) {
            return c(str, f35680h, f35676d, f35677e);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static b f(AtomicReference<b> atomicReference, String str, d dVar) {
        b bVar = atomicReference.get();
        if (bVar != null) {
            return bVar;
        }
        atomicReference.compareAndSet(null, b.c(str, dVar));
        return atomicReference.get();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Set<String> g() {
        return Collections.unmodifiableSet(f35682j);
    }

    private static Phonemetadata.PhoneMetadataCollection h(InputStream inputStream) {
        ObjectInputStream objectInputStream;
        ObjectInputStream objectInputStream2 = null;
        try {
            try {
                objectInputStream = new ObjectInputStream(inputStream);
            } catch (IOException e4) {
                throw new RuntimeException("cannot load/parse metadata", e4);
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            Phonemetadata.PhoneMetadataCollection phoneMetadataCollection = new Phonemetadata.PhoneMetadataCollection();
            try {
                phoneMetadataCollection.readExternal(objectInputStream);
                try {
                    objectInputStream.close();
                } catch (IOException e10) {
                    f35678f.log(Level.WARNING, "error closing input stream (ignored)", (Throwable) e10);
                }
                return phoneMetadataCollection;
            } catch (IOException e11) {
                throw new RuntimeException("cannot load/parse metadata", e11);
            }
        } catch (Throwable th2) {
            th = th2;
            objectInputStream2 = objectInputStream;
            try {
                if (objectInputStream2 != null) {
                    objectInputStream2.close();
                } else {
                    inputStream.close();
                }
            } catch (IOException e12) {
                f35678f.log(Level.WARNING, "error closing input stream (ignored)", (Throwable) e12);
            }
            throw th;
        }
    }
}
