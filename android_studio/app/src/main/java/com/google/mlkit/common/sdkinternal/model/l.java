package com.google.mlkit.common.sdkinternal.model;

import androidx.annotation.NonNull;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;

/* compiled from: com.google.mlkit:common@@18.4.0 */
@u2.a
/* loaded from: classes2.dex */
public class l {

    /* renamed from: a  reason: collision with root package name */
    private final URL f35877a;

    @u2.a
    public l(@NonNull String str) throws MalformedURLException {
        this.f35877a = new URL(str);
    }

    @NonNull
    @u2.a
    public URLConnection a() throws IOException {
        return this.f35877a.openConnection();
    }
}
