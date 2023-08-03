package org.koin.androidx.scope;

import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import io.sentry.protocol.v;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import m8.g;
import m8.h;
import org.koin.android.ext.android.ComponentCallbackExtKt;
import org.koin.core.Koin;
import org.koin.core.scope.Scope;

/* compiled from: FragmentExt.kt */
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a\u0010\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00000\u0001*\u00020\u0000\u001a\u0016\u0010\u0006\u001a\u00020\u0005*\u00020\u00002\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u001a\f\u0010\u0007\u001a\u0004\u0018\u00010\u0005*\u00020\u0000\u001a \u0010\n\u001a\u00028\u0000\"\n\b\u0000\u0010\t\u0018\u0001*\u00020\b*\u00020\u0000H\u0086\b¢\u0006\u0004\b\n\u0010\u000b\"\u0017\u0010\r\u001a\u0004\u0018\u00010\b*\u00020\u00008F¢\u0006\u0006\u001a\u0004\b\f\u0010\u000b¨\u0006\u000e"}, d2 = {"Landroidx/fragment/app/Fragment;", "Lorg/koin/androidx/scope/LifecycleScopeDelegate;", "c", "", v.b.f83881a, "Lorg/koin/core/scope/Scope;", "a", "e", "Lorg/koin/androidx/scope/ScopeActivity;", ExifInterface.GPS_DIRECTION_TRUE, "f", "(Landroidx/fragment/app/Fragment;)Lorg/koin/androidx/scope/ScopeActivity;", "d", "scopeActivity", "koin-android_release"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class b {

    /* compiled from: FragmentExt.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lorg/koin/core/Koin;", "koin", "Lorg/koin/core/scope/Scope;", "a", "(Lorg/koin/core/Koin;)Lorg/koin/core/scope/Scope;"}, k = 3, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    static final class a extends Lambda implements Function1<Koin, Scope> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Fragment f92238a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Fragment fragment) {
            super(1);
            this.f92238a = fragment;
        }

        @Override // kotlin.jvm.functions.Function1
        @g
        /* renamed from: a */
        public final Scope invoke(@g Koin koin) {
            Intrinsics.checkNotNullParameter(koin, "koin");
            Scope i4 = Koin.i(koin, org.koin.core.component.c.d(this.f92238a), org.koin.core.component.c.e(this.f92238a), null, 4, null);
            FragmentActivity activity = this.f92238a.getActivity();
            Scope e4 = activity != null ? org.koin.androidx.scope.a.e(activity) : null;
            if (e4 != null) {
                i4.W(e4);
            }
            return i4;
        }
    }

    @g
    public static final Scope a(@g Fragment fragment, @h Object obj) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        return ComponentCallbackExtKt.c(fragment).e(org.koin.core.component.c.d(fragment), org.koin.core.component.c.e(fragment), obj);
    }

    public static /* synthetic */ Scope b(Fragment fragment, Object obj, int i4, Object obj2) {
        if ((i4 & 1) != 0) {
            obj = null;
        }
        return a(fragment, obj);
    }

    @g
    public static final LifecycleScopeDelegate<Fragment> c(@g Fragment fragment) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        return new LifecycleScopeDelegate<>(fragment, ComponentCallbackExtKt.c(fragment), new a(fragment));
    }

    @h
    public static final ScopeActivity d(@g Fragment fragment) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        FragmentActivity activity = fragment.getActivity();
        if (activity instanceof ScopeActivity) {
            return (ScopeActivity) activity;
        }
        return null;
    }

    @h
    public static final Scope e(@g Fragment fragment) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        return ComponentCallbackExtKt.c(fragment).H(org.koin.core.component.c.d(fragment));
    }

    public static final /* synthetic */ <T extends ScopeActivity> T f(Fragment fragment) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        FragmentActivity activity = fragment.getActivity();
        Intrinsics.reifiedOperationMarker(2, ExifInterface.GPS_DIRECTION_TRUE);
        T t9 = (T) activity;
        if (t9 != null) {
            return t9;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("can't get ScopeActivity for class ");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        sb.append(Reflection.getOrCreateKotlinClass(ScopeActivity.class));
        throw new IllegalStateException(sb.toString().toString());
    }
}
