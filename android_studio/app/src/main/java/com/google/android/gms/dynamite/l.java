package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
final class l implements DynamiteModule.a {
    @Override // com.google.android.gms.dynamite.DynamiteModule.a
    public final DynamiteModule.a.b a(Context context, String str, DynamiteModule.a.InterfaceC0199a interfaceC0199a) throws DynamiteModule.LoadingException {
        int a10;
        DynamiteModule.a.b bVar = new DynamiteModule.a.b();
        int b10 = interfaceC0199a.b(context, str);
        bVar.f29346a = b10;
        int i4 = 0;
        if (b10 != 0) {
            a10 = interfaceC0199a.a(context, str, false);
            bVar.f29347b = a10;
        } else {
            a10 = interfaceC0199a.a(context, str, true);
            bVar.f29347b = a10;
        }
        int i10 = bVar.f29346a;
        if (i10 != 0) {
            i4 = i10;
        } else if (a10 == 0) {
            bVar.f29348c = 0;
            return bVar;
        }
        if (a10 >= i4) {
            bVar.f29348c = 1;
        } else {
            bVar.f29348c = -1;
        }
        return bVar;
    }
}
