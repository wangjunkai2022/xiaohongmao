package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
final class h implements DynamiteModule.a {
    @Override // com.google.android.gms.dynamite.DynamiteModule.a
    public final DynamiteModule.a.b a(Context context, String str, DynamiteModule.a.InterfaceC0199a interfaceC0199a) throws DynamiteModule.LoadingException {
        DynamiteModule.a.b bVar = new DynamiteModule.a.b();
        int a10 = interfaceC0199a.a(context, str, false);
        bVar.f29347b = a10;
        if (a10 == 0) {
            bVar.f29348c = 0;
        } else {
            bVar.f29348c = 1;
        }
        return bVar;
    }
}
