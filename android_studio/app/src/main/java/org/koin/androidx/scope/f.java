package org.koin.androidx.scope;

import androidx.lifecycle.ViewModel;
import kotlin.Metadata;
import m8.h;
import org.koin.core.scope.Scope;

/* compiled from: ScopeHandlerViewModel.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000b\u0010\fJ\b\u0010\u0003\u001a\u00020\u0002H\u0014R$\u0010\n\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0005\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\r"}, d2 = {"Lorg/koin/androidx/scope/f;", "Landroidx/lifecycle/ViewModel;", "", "onCleared", "Lorg/koin/core/scope/Scope;", "a", "Lorg/koin/core/scope/Scope;", "()Lorg/koin/core/scope/Scope;", "b", "(Lorg/koin/core/scope/Scope;)V", "scope", "<init>", "()V", "koin-android_release"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class f extends ViewModel {
    @h

    /* renamed from: a  reason: collision with root package name */
    private Scope f92242a;

    @h
    public final Scope a() {
        return this.f92242a;
    }

    public final void b(@h Scope scope) {
        this.f92242a = scope;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.lifecycle.ViewModel
    public void onCleared() {
        super.onCleared();
        Scope scope = this.f92242a;
        if (scope != null && scope.U()) {
            w8.b z9 = scope.z();
            z9.b("Closing scope " + this.f92242a);
            scope.e();
        }
        this.f92242a = null;
    }
}
