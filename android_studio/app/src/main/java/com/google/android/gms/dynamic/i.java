package com.google.android.gms.dynamic;

import java.util.Iterator;
import java.util.LinkedList;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
final class i implements g {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ a f29313a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(a aVar) {
        this.f29313a = aVar;
    }

    @Override // com.google.android.gms.dynamic.g
    public final void a(e eVar) {
        LinkedList linkedList;
        LinkedList linkedList2;
        e eVar2;
        this.f29313a.f29306a = eVar;
        linkedList = this.f29313a.f29308c;
        Iterator it = linkedList.iterator();
        while (it.hasNext()) {
            eVar2 = this.f29313a.f29306a;
            ((p) it.next()).a(eVar2);
        }
        linkedList2 = this.f29313a.f29308c;
        linkedList2.clear();
        this.f29313a.f29307b = null;
    }
}
