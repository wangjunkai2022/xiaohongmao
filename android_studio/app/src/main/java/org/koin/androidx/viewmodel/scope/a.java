package org.koin.androidx.viewmodel.scope;

import android.os.Bundle;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import m8.g;

/* compiled from: ScopeExt.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0010\u0010\u0003\u001a\f\u0012\u0004\u0012\u00020\u00010\u0000j\u0002`\u0002*\u0016\u0010\u0004\"\b\u0012\u0004\u0012\u00020\u00010\u00002\b\u0012\u0004\u0012\u00020\u00010\u0000¨\u0006\u0005"}, d2 = {"Lkotlin/Function0;", "Landroid/os/Bundle;", "Lorg/koin/androidx/viewmodel/scope/BundleDefinition;", "a", "BundleDefinition", "koin-android_release"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class a {

    /* compiled from: ScopeExt.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Landroid/os/Bundle;", "invoke"}, k = 3, mv = {1, 5, 1}, xi = 48)
    /* renamed from: org.koin.androidx.viewmodel.scope.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    static final class C0813a extends Lambda implements Function0<Bundle> {

        /* renamed from: a  reason: collision with root package name */
        public static final C0813a f92387a = new C0813a();

        C0813a() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @g
        public final Bundle invoke() {
            return new Bundle();
        }
    }

    @g
    public static final Function0<Bundle> a() {
        return C0813a.f92387a;
    }
}
