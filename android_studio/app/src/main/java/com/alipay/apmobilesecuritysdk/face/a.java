package com.alipay.apmobilesecuritysdk.face;

import com.alipay.apmobilesecuritysdk.face.c;
import java.util.LinkedList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class a implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ c f6712a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(c cVar) {
        this.f6712a = cVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        LinkedList linkedList;
        LinkedList linkedList2;
        while (true) {
            try {
                linkedList = this.f6712a.f6719d;
                if (linkedList.isEmpty()) {
                    break;
                }
                linkedList2 = this.f6712a.f6719d;
                c.b bVar = (c.b) linkedList2.pollFirst();
                if (bVar != null) {
                    bVar.a();
                }
            } catch (Throwable unused) {
            }
        }
        this.f6712a.f6718c = null;
    }
}
