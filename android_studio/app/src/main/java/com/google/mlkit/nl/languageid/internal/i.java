package com.google.mlkit.nl.languageid.internal;

import android.content.Context;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.u;
import com.google.mlkit.common.MlKitException;
import com.google.mlkit.common.sdkinternal.n;
import com.google.mlkit.nl.languageid.IdentifiedLanguage;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: com.google.mlkit:language-id-common@@16.0.0 */
/* loaded from: classes2.dex */
public final class i extends n {
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private b f35962d;

    /* renamed from: e  reason: collision with root package name */
    private com.google.mlkit.nl.languageid.b f35963e;

    /* renamed from: f  reason: collision with root package name */
    private final Context f35964f;

    /* renamed from: g  reason: collision with root package name */
    private final a f35965g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f35966h;

    public i(Context context, a aVar) {
        this.f35964f = context;
        this.f35965g = aVar;
        this.f35966h = aVar.getPriority() == 100;
    }

    @Override // com.google.mlkit.common.sdkinternal.n
    @WorkerThread
    public final void c() throws MlKitException {
        this.f35882a.a();
        if (this.f35962d == null) {
            b a10 = this.f35965g.a(this.f35964f, this.f35963e);
            this.f35962d = a10;
            a10.b();
        }
    }

    @Override // com.google.mlkit.common.sdkinternal.n
    @WorkerThread
    public final void e() {
        this.f35882a.a();
        b bVar = this.f35962d;
        if (bVar != null) {
            bVar.release();
            this.f35962d = null;
        }
    }

    @WorkerThread
    public final String j(String str, float f10) throws MlKitException {
        String str2;
        if (this.f35962d == null) {
            c();
        }
        if (str.isEmpty()) {
            return "und";
        }
        Iterator<IdentifiedLanguage> it = ((b) u.k(this.f35962d)).a(str, f10).iterator();
        while (true) {
            if (!it.hasNext()) {
                str2 = "";
                break;
            }
            IdentifiedLanguage next = it.next();
            if (!"unknown".equals(next.b())) {
                str2 = next.b();
                break;
            }
        }
        return str2.isEmpty() ? "und" : "iw".equals(str2) ? "he" : str2;
    }

    @WorkerThread
    public final List k(String str, float f10) throws MlKitException {
        if (this.f35962d == null) {
            c();
        }
        ArrayList arrayList = new ArrayList();
        if (str.isEmpty()) {
            arrayList.add(new IdentifiedLanguage("und", 1.0f));
            return arrayList;
        }
        for (IdentifiedLanguage identifiedLanguage : ((b) u.k(this.f35962d)).a(str, f10)) {
            if (!"unknown".equals(identifiedLanguage.b())) {
                arrayList.add(new IdentifiedLanguage("iw".equals(identifiedLanguage.b()) ? "he" : identifiedLanguage.b(), identifiedLanguage.a()));
            }
        }
        if (arrayList.isEmpty()) {
            arrayList.add(new IdentifiedLanguage("und", 1.0f));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void l(com.google.mlkit.nl.languageid.b bVar) {
        this.f35963e = bVar;
    }

    public final boolean m() {
        return this.f35966h;
    }
}
