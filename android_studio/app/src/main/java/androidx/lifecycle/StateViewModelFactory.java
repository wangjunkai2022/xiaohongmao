package androidx.lifecycle;

import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.ViewModel;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.scope.Scope;

/* compiled from: StateViewModelFactory.kt */
@Metadata(bv = {}, d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0003B\u001d\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u0015¢\u0006\u0004\b\u001a\u0010\u001bJ\u001a\u0010\t\u001a\f\u0012\u0004\u0012\u00020\u00070\u0006j\u0002`\b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J7\u0010\u000e\u001a\u00028\u0001\"\b\b\u0001\u0010\u0002*\u00020\u00012\u0006\u0010\u000b\u001a\u00020\n2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00010\f2\u0006\u0010\u0005\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0011\u001a\u00020\u00108\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u001d\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u00158\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019¨\u0006\u001c"}, d2 = {"Landroidx/lifecycle/StateViewModelFactory;", "Landroidx/lifecycle/ViewModel;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/AbstractSavedStateViewModelFactory;", "Landroidx/lifecycle/SavedStateHandle;", "handle", "Lkotlin/Function0;", "Ly8/a;", "Lorg/koin/core/parameter/ParametersDefinition;", "addHandle", "", "key", "Ljava/lang/Class;", "modelClass", "create", "(Ljava/lang/String;Ljava/lang/Class;Landroidx/lifecycle/SavedStateHandle;)Landroidx/lifecycle/ViewModel;", "Lorg/koin/core/scope/Scope;", "scope", "Lorg/koin/core/scope/Scope;", "getScope", "()Lorg/koin/core/scope/Scope;", "Ls8/c;", "parameters", "Ls8/c;", "getParameters", "()Ls8/c;", "<init>", "(Lorg/koin/core/scope/Scope;Ls8/c;)V", "koin-android_release"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class StateViewModelFactory<T extends ViewModel> extends AbstractSavedStateViewModelFactory {
    @m8.g
    private final s8.c<T> parameters;
    @m8.g
    private final Scope scope;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public StateViewModelFactory(@m8.g org.koin.core.scope.Scope r3, @m8.g s8.c<T> r4) {
        /*
            r2 = this;
            java.lang.String r0 = "scope"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            java.lang.String r0 = "parameters"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            androidx.savedstate.SavedStateRegistryOwner r0 = r4.d()
            if (r0 == 0) goto L26
            kotlin.jvm.functions.Function0 r1 = r4.e()
            if (r1 == 0) goto L1d
            java.lang.Object r1 = r1.invoke()
            android.os.Bundle r1 = (android.os.Bundle) r1
            goto L1e
        L1d:
            r1 = 0
        L1e:
            r2.<init>(r0, r1)
            r2.scope = r3
            r2.parameters = r4
            return
        L26:
            java.lang.IllegalStateException r3 = new java.lang.IllegalStateException
            java.lang.String r4 = "Can't create SavedStateViewModelFactory without a proper stateRegistryOwner"
            java.lang.String r4 = r4.toString()
            r3.<init>(r4)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.lifecycle.StateViewModelFactory.<init>(org.koin.core.scope.Scope, s8.c):void");
    }

    private final Function0<y8.a> addHandle(SavedStateHandle savedStateHandle) {
        y8.a a10;
        Function0<y8.a> b10 = this.parameters.b();
        if (b10 == null || (a10 = b10.invoke()) == null) {
            a10 = y8.b.a();
        }
        return new StateViewModelFactory$addHandle$1(a10, savedStateHandle);
    }

    @Override // androidx.lifecycle.AbstractSavedStateViewModelFactory
    @m8.g
    protected <T extends ViewModel> T create(@m8.g String key, @m8.g Class<T> modelClass, @m8.g SavedStateHandle handle) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(modelClass, "modelClass");
        Intrinsics.checkNotNullParameter(handle, "handle");
        return (T) this.scope.p(this.parameters.a(), this.parameters.c(), addHandle(handle));
    }

    @m8.g
    public final s8.c<T> getParameters() {
        return this.parameters;
    }

    @m8.g
    public final Scope getScope() {
        return this.scope;
    }
}
