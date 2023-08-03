package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
final class i implements DynamiteModule.a {
    @Override // com.google.android.gms.dynamite.DynamiteModule.a
    public final DynamiteModule.a.b a(Context context, String str, DynamiteModule.a.InterfaceC0199a interfaceC0199a) throws DynamiteModule.LoadingException {
        DynamiteModule.a.b bVar = new DynamiteModule.a.b();
        bVar.f29346a = interfaceC0199a.b(context, str);
        int a10 = interfaceC0199a.a(context, str, true);
        bVar.f29347b = a10;
        int i4 = bVar.f29346a;
        if (i4 == 0) {
            if (a10 == 0) {
                bVar.f29348c = 0;
                return bVar;
            }
            i4 = 0;
        }
        if (i4 >= a10) {
            bVar.f29348c = -1;
        } else {
            bVar.f29348c = 1;
        }
        return bVar;
    }
}
