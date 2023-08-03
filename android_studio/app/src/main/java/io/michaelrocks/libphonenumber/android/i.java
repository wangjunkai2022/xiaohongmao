package io.michaelrocks.libphonenumber.android;

import io.michaelrocks.libphonenumber.android.Phonemetadata;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: MultiFileMetadataSourceImpl.java */
/* loaded from: classes3.dex */
final class i implements h {

    /* renamed from: a  reason: collision with root package name */
    private final String f71030a;

    /* renamed from: b  reason: collision with root package name */
    private final String f71031b;

    /* renamed from: c  reason: collision with root package name */
    private final String f71032c;

    /* renamed from: d  reason: collision with root package name */
    private final g f71033d;

    /* renamed from: e  reason: collision with root package name */
    private final ConcurrentHashMap<String, Phonemetadata.PhoneMetadata> f71034e;

    /* renamed from: f  reason: collision with root package name */
    private final ConcurrentHashMap<Integer, Phonemetadata.PhoneMetadata> f71035f;

    i(String phoneNumberMetadataFilePrefix, String alternateFormatsFilePrefix, String shortNumberFilePrefix, f metadataLoader) {
        this.f71034e = new ConcurrentHashMap<>();
        this.f71035f = new ConcurrentHashMap<>();
        this.f71030a = phoneNumberMetadataFilePrefix;
        this.f71031b = alternateFormatsFilePrefix;
        this.f71032c = shortNumberFilePrefix;
        this.f71033d = new g(metadataLoader);
    }

    private boolean e(int countryCallingCode) {
        List<String> list = e.a().get(Integer.valueOf(countryCallingCode));
        return list.size() == 1 && "001".equals(list.get(0));
    }

    @Override // io.michaelrocks.libphonenumber.android.h
    public Phonemetadata.PhoneMetadata a(String regionCode) {
        return this.f71033d.b(regionCode, this.f71034e, this.f71030a);
    }

    @Override // io.michaelrocks.libphonenumber.android.h
    public Phonemetadata.PhoneMetadata b(int countryCallingCode) {
        if (e(countryCallingCode)) {
            return this.f71033d.b(Integer.valueOf(countryCallingCode), this.f71035f, this.f71030a);
        }
        return null;
    }

    @Override // io.michaelrocks.libphonenumber.android.h
    public Phonemetadata.PhoneMetadata c(final int countryCallingCode) {
        return this.f71033d.a(countryCallingCode, this.f71031b);
    }

    @Override // io.michaelrocks.libphonenumber.android.h
    public Phonemetadata.PhoneMetadata d(final String regionCode) {
        return this.f71033d.d(regionCode, this.f71032c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(f metadataLoader) {
        this("/io/michaelrocks/libphonenumber/android/data/PhoneNumberMetadataProto", "/io/michaelrocks/libphonenumber/android/data/PhoneNumberAlternateFormatsProto", "/io/michaelrocks/libphonenumber/android/data/ShortNumberMetadataProto", metadataLoader);
    }
}
