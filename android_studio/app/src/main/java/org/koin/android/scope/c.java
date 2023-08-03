package org.koin.android.scope;

import android.app.Service;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import m8.g;
import org.koin.core.scope.Scope;

/* compiled from: ScopeService.kt */
@Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b&\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u000f\u0010\u0010J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010\u0005\u001a\u00020\u0003H\u0016R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u001b\u0010\u000e\u001a\u00020\t8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r¨\u0006\u0011"}, d2 = {"Lorg/koin/android/scope/c;", "Landroid/app/Service;", "Lorg/koin/android/scope/a;", "", "onCreate", "onDestroy", "", "initialiseScope", "Z", "Lorg/koin/core/scope/Scope;", "scope$delegate", "Lkotlin/Lazy;", "getScope", "()Lorg/koin/core/scope/Scope;", "scope", "<init>", "(Z)V", "koin-android_release"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public abstract class c extends Service implements a {
    private final boolean initialiseScope;
    @g
    private final Lazy scope$delegate;

    public c() {
        this(false, 1, null);
    }

    public /* synthetic */ c(boolean z9, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? true : z9);
    }

    @Override // org.koin.android.scope.a
    @g
    public Scope getScope() {
        return (Scope) this.scope$delegate.getValue();
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        if (this.initialiseScope) {
            w8.b z9 = getScope().z();
            z9.b("Open Service Scope: " + getScope());
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        w8.b z9 = getScope().z();
        z9.b("Close service scope: " + getScope());
        if (getScope().v()) {
            return;
        }
        getScope().e();
    }

    public c(boolean z9) {
        this.initialiseScope = z9;
        this.scope$delegate = d.d(this);
    }
}
