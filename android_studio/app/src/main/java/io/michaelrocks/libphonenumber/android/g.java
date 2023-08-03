package io.michaelrocks.libphonenumber.android;

import io.michaelrocks.libphonenumber.android.Phonemetadata;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Level;
import java.util.logging.Logger;

/* compiled from: MetadataManager.java */
/* loaded from: classes3.dex */
final class g {

    /* renamed from: f  reason: collision with root package name */
    static final String f71021f = "/io/michaelrocks/libphonenumber/android/data/PhoneNumberMetadataProto";

    /* renamed from: g  reason: collision with root package name */
    static final String f71022g = "/io/michaelrocks/libphonenumber/android/data/PhoneNumberAlternateFormatsProto";

    /* renamed from: h  reason: collision with root package name */
    static final String f71023h = "/io/michaelrocks/libphonenumber/android/data/ShortNumberMetadataProto";

    /* renamed from: i  reason: collision with root package name */
    private static final Logger f71024i = Logger.getLogger(g.class.getName());

    /* renamed from: a  reason: collision with root package name */
    private final f f71025a;

    /* renamed from: b  reason: collision with root package name */
    private final ConcurrentHashMap<Integer, Phonemetadata.PhoneMetadata> f71026b = new ConcurrentHashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private final ConcurrentHashMap<String, Phonemetadata.PhoneMetadata> f71027c = new ConcurrentHashMap<>();

    /* renamed from: d  reason: collision with root package name */
    private final Set<Integer> f71028d = a.a();

    /* renamed from: e  reason: collision with root package name */
    private final Set<String> f71029e = n.a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(f metadataLoader) {
        this.f71025a = metadataLoader;
    }

    private static List<Phonemetadata.PhoneMetadata> c(String fileName, f metadataLoader) {
        InputStream a10 = metadataLoader.a(fileName);
        if (a10 != null) {
            List<Phonemetadata.PhoneMetadata> metadataList = f(a10).getMetadataList();
            if (metadataList.size() != 0) {
                return metadataList;
            }
            throw new IllegalStateException("empty metadata: " + fileName);
        }
        throw new IllegalStateException("missing metadata: " + fileName);
    }

    private static Phonemetadata.PhoneMetadataCollection f(InputStream source) {
        ObjectInputStream objectInputStream;
        ObjectInputStream objectInputStream2 = null;
        try {
            try {
                objectInputStream = new ObjectInputStream(source);
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
                    f71024i.log(Level.WARNING, "error closing input stream (ignored)", (Throwable) e10);
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
                    source.close();
                }
            } catch (IOException e12) {
                f71024i.log(Level.WARNING, "error closing input stream (ignored)", (Throwable) e12);
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Phonemetadata.PhoneMetadata a(int countryCallingCode, String filePrefix) {
        if (this.f71028d.contains(Integer.valueOf(countryCallingCode))) {
            return b(Integer.valueOf(countryCallingCode), this.f71026b, filePrefix);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <T> Phonemetadata.PhoneMetadata b(T key, ConcurrentHashMap<T, Phonemetadata.PhoneMetadata> map, String filePrefix) {
        Phonemetadata.PhoneMetadata phoneMetadata = map.get(key);
        if (phoneMetadata != null) {
            return phoneMetadata;
        }
        String str = filePrefix + "_" + key;
        List<Phonemetadata.PhoneMetadata> c10 = c(str, this.f71025a);
        if (c10.size() > 1) {
            f71024i.log(Level.WARNING, "more than one metadata in file " + str);
        }
        Phonemetadata.PhoneMetadata phoneMetadata2 = c10.get(0);
        Phonemetadata.PhoneMetadata putIfAbsent = map.putIfAbsent(key, phoneMetadata2);
        return putIfAbsent != null ? putIfAbsent : phoneMetadata2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Phonemetadata.PhoneMetadata d(String regionCode, String filePrefix) {
        if (this.f71029e.contains(regionCode)) {
            return b(regionCode, this.f71027c, filePrefix);
        }
        return null;
    }

    Set<String> e() {
        return Collections.unmodifiableSet(this.f71029e);
    }
}
