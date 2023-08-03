package com.im.freechat.sdk;

import android.os.Bundle;
import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModel;
import io.sentry.protocol.i;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import m8.g;
import m8.h;
import org.koin.core.Koin;
import org.koin.core.component.a;
import org.koin.core.scope.Scope;
import timber.log.Timber;

/* compiled from: UiManager.kt */
@Metadata(bv = {}, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0001\u0018B\u0007¢\u0006\u0004\b\u001b\u0010\u001cJ9\u0010\n\u001a\u00028\u0000\"\b\b\u0000\u0010\u0003*\u00020\u00022\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000bJ'\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0010\u0010\u0011J\u001c\u0010\u0013\u001a\u00028\u0000\"\n\b\u0000\u0010\u0003\u0018\u0001*\u00020\u0012H\u0086\b¢\u0006\u0004\b\u0013\u0010\u0014J\u0006\u0010\u0015\u001a\u00020\u000fR,\u0010\u001a\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u0017\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00170\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019¨\u0006\u001d"}, d2 = {"Lcom/im/freechat/sdk/d;", "Lorg/koin/core/component/a;", "Landroidx/fragment/app/Fragment;", ExifInterface.GPS_DIRECTION_TRUE, "Ljava/lang/Class;", "fragmentClass", "Landroid/os/Bundle;", "extras", "Lcom/im/freechat/sdk/d$a;", "onEvent", "d", "(Ljava/lang/Class;Landroid/os/Bundle;Lcom/im/freechat/sdk/d$a;)Landroidx/fragment/app/Fragment;", i.b.f83726i, "", "event", "", "e", "(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Landroid/os/Bundle;)Lkotlin/Unit;", "Landroidx/lifecycle/ViewModel;", "c", "()Landroidx/lifecycle/ViewModel;", "b", "", "Ljava/lang/ref/WeakReference;", "a", "Ljava/util/Map;", "customEventListeners", "<init>", "()V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class d implements org.koin.core.component.a {
    @g

    /* renamed from: a  reason: collision with root package name */
    private final Map<WeakReference<Fragment>, WeakReference<a>> f42207a = new LinkedHashMap();

    /* compiled from: UiManager.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0003H&¨\u0006\u0007"}, d2 = {"Lcom/im/freechat/sdk/d$a;", "", "event", "Landroid/os/Bundle;", "extras", "", "a", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public interface a {
        boolean a(@g Object obj, @g Bundle bundle);
    }

    public final void b() {
        Set<WeakReference<Fragment>> keySet = this.f42207a.keySet();
        ArrayList<WeakReference> arrayList = new ArrayList();
        for (Object obj : keySet) {
            if (((WeakReference) obj).get() == null) {
                arrayList.add(obj);
            }
        }
        for (WeakReference weakReference : arrayList) {
            this.f42207a.remove(weakReference);
        }
    }

    public final /* synthetic */ <T extends ViewModel> T c() {
        Scope h4;
        if (this instanceof org.koin.core.component.b) {
            h4 = ((org.koin.core.component.b) this).getScope();
        } else {
            h4 = getKoin().I().h();
        }
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (T) h4.p(Reflection.getOrCreateKotlinClass(Object.class), null, null);
    }

    @g
    public final <T extends Fragment> T d(@g Class<T> fragmentClass, @h Bundle bundle, @h a aVar) {
        Intrinsics.checkNotNullParameter(fragmentClass, "fragmentClass");
        Timber.b bVar = Timber.f93860a;
        bVar.k("Start fragment for " + fragmentClass + ' ' + bundle + ' ' + aVar, new Object[0]);
        b();
        T fragment = fragmentClass.getConstructor(new Class[0]).newInstance(new Object[0]);
        fragment.setArguments(bundle);
        this.f42207a.put(new WeakReference<>(fragment), new WeakReference<>(aVar));
        Intrinsics.checkNotNullExpressionValue(fragment, "fragment");
        return fragment;
    }

    @h
    public final Unit e(@g Fragment fragment, @g Object event, @g Bundle extras) {
        Object obj;
        WeakReference weakReference;
        a aVar;
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(extras, "extras");
        Timber.f93860a.k("Trying external navigatation for " + fragment.getClass() + ' ' + event + ' ' + extras, new Object[0]);
        b();
        Iterator<T> it = this.f42207a.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (Intrinsics.areEqual(((WeakReference) ((Map.Entry) obj).getKey()).get(), fragment)) {
                break;
            }
        }
        Map.Entry entry = (Map.Entry) obj;
        boolean z9 = true;
        if (!((entry == null || (weakReference = (WeakReference) entry.getValue()) == null || (aVar = (a) weakReference.get()) == null || !aVar.a(event, extras)) ? false : false)) {
            Timber.f93860a.k("Trying external navigatation failed " + this.f42207a, new Object[0]);
            return null;
        }
        Timber.f93860a.k("Trying external navigatation success", new Object[0]);
        return Unit.INSTANCE;
    }

    @Override // org.koin.core.component.a
    @g
    public Koin getKoin() {
        return a.C0815a.a(this);
    }
}
