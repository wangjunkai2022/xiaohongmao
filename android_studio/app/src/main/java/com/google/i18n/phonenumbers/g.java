package com.google.i18n.phonenumbers;

import com.google.i18n.phonenumbers.Phonemetadata;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: MultiFileMetadataSourceImpl.java */
/* loaded from: classes2.dex */
final class g implements f {

    /* renamed from: a  reason: collision with root package name */
    private final String f35685a;

    /* renamed from: b  reason: collision with root package name */
    private final d f35686b;

    /* renamed from: c  reason: collision with root package name */
    private final ConcurrentHashMap<String, Phonemetadata.PhoneMetadata> f35687c;

    /* renamed from: d  reason: collision with root package name */
    private final ConcurrentHashMap<Integer, Phonemetadata.PhoneMetadata> f35688d;

    g(String str, d dVar) {
        this.f35687c = new ConcurrentHashMap<>();
        this.f35688d = new ConcurrentHashMap<>();
        this.f35685a = str;
        this.f35686b = dVar;
    }

    private boolean c(int i4) {
        List<String> list = c.a().get(Integer.valueOf(i4));
        return list.size() == 1 && "001".equals(list.get(0));
    }

    @Override // com.google.i18n.phonenumbers.f
    public Phonemetadata.PhoneMetadata a(String str) {
        return e.c(str, this.f35687c, this.f35685a, this.f35686b);
    }

    @Override // com.google.i18n.phonenumbers.f
    public Phonemetadata.PhoneMetadata b(int i4) {
        if (c(i4)) {
            return e.c(Integer.valueOf(i4), this.f35688d, this.f35685a, this.f35686b);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(d dVar) {
        this("/com/google/i18n/phonenumbers/data/PhoneNumberMetadataProto", dVar);
    }
}
