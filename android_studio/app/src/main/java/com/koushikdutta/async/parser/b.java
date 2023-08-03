package com.koushikdutta.async.parser;

import com.koushikdutta.async.future.ThenCallback;
import org.json.JSONArray;

/* compiled from: R8$$SyntheticClass */
/* loaded from: classes3.dex */
public final /* synthetic */ class b implements ThenCallback {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ b f45095a = new b();

    private /* synthetic */ b() {
    }

    @Override // com.koushikdutta.async.future.ThenCallback
    public final Object a(Object obj) {
        return new JSONArray((String) obj);
    }
}
