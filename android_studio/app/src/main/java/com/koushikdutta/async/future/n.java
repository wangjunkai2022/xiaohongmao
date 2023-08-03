package com.koushikdutta.async.future;

import java.nio.ByteBuffer;

/* compiled from: R8$$SyntheticClass */
/* loaded from: classes3.dex */
public final /* synthetic */ class n implements TypeConverter {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ n f44462a = new n();

    private /* synthetic */ n() {
    }

    @Override // com.koushikdutta.async.future.TypeConverter
    public final Future a(Object obj, String str) {
        Future w9;
        w9 = Converter.w((ByteBuffer) obj, str);
        return w9;
    }
}
