package com.koushikdutta.async.parser;

import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.future.ThenCallback;
import org.w3c.dom.Document;

/* compiled from: R8$$SyntheticClass */
/* loaded from: classes3.dex */
public final /* synthetic */ class a implements ThenCallback {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ a f45094a = new a();

    private /* synthetic */ a() {
    }

    @Override // com.koushikdutta.async.future.ThenCallback
    public final Object a(Object obj) {
        Document e4;
        e4 = DocumentParser.e((ByteBufferList) obj);
        return e4;
    }
}
