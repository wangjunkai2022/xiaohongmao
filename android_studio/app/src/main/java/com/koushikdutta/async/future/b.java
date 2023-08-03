package com.koushikdutta.async.future;

import org.json.JSONObject;

/* compiled from: R8$$SyntheticClass */
/* loaded from: classes3.dex */
public final /* synthetic */ class b implements TypeConverter {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ b f44441a = new b();

    private /* synthetic */ b() {
    }

    @Override // com.koushikdutta.async.future.TypeConverter
    public final Future a(Object obj, String str) {
        Future p9;
        p9 = Converter.p((JSONObject) obj, str);
        return p9;
    }
}
