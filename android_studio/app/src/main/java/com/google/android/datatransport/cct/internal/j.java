package com.google.android.datatransport.cct.internal;

import androidx.annotation.NonNull;
import com.google.auto.value.AutoValue;
import java.util.List;
import l3.a;

/* compiled from: BatchedLogRequest.java */
@l3.a
@AutoValue
/* loaded from: classes2.dex */
public abstract class j {
    @NonNull
    public static j a(@NonNull List<l> list) {
        return new d(list);
    }

    @NonNull
    public static com.google.firebase.encoders.a b() {
        return new com.google.firebase.encoders.json.e().h(b.f20250b).i(true).g();
    }

    @NonNull
    @a.InterfaceC0771a(name = "logRequest")
    public abstract List<l> c();
}
