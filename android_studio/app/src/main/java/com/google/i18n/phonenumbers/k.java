package com.google.i18n.phonenumbers;

import com.google.i18n.phonenumbers.Phonemetadata;
import com.google.i18n.phonenumbers.e;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SingleFileMetadataSourceImpl.java */
/* loaded from: classes2.dex */
final class k implements f {

    /* renamed from: a  reason: collision with root package name */
    private final String f35718a;

    /* renamed from: b  reason: collision with root package name */
    private final d f35719b;

    /* renamed from: c  reason: collision with root package name */
    private final AtomicReference<e.b> f35720c;

    k(String str, d dVar) {
        this.f35720c = new AtomicReference<>();
        this.f35718a = str;
        this.f35719b = dVar;
    }

    @Override // com.google.i18n.phonenumbers.f
    public Phonemetadata.PhoneMetadata a(String str) {
        return e.f(this.f35720c, this.f35718a, this.f35719b).b(str);
    }

    @Override // com.google.i18n.phonenumbers.f
    public Phonemetadata.PhoneMetadata b(int i4) {
        return e.f(this.f35720c, this.f35718a, this.f35719b).a(i4);
    }

    k(d dVar) {
        this("/com/google/i18n/phonenumbers/data/SingleFilePhoneNumberMetadataProto", dVar);
    }
}
