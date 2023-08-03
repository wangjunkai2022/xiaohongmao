package c9;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KMutableProperty0;
import org.koin.core.Koin;
import org.koin.core.scope.Scope;

/* compiled from: InjectProperty.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u001b\u0010\u0003\u001a\u00020\u0002\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0086\b\u001a#\u0010\u0006\u001a\u00020\u0002\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0005\u001a\u00020\u0004H\u0086\b\u001a#\u0010\t\u001a\u00020\u0002\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\b\u001a\u00020\u0007H\u0086\b¨\u0006\n"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/reflect/KMutableProperty0;", "", "a", "Lorg/koin/core/Koin;", "koin", "b", "Lorg/koin/core/scope/Scope;", "scope", "c", "koin-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public final class a {
    /* JADX WARN: Multi-variable type inference failed */
    public static final /* synthetic */ <T> void a(KMutableProperty0<T> kMutableProperty0) {
        Intrinsics.checkNotNullParameter(kMutableProperty0, "<this>");
        Scope h4 = d9.b.f62011a.a().get().I().h();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        kMutableProperty0.set(h4.p(Reflection.getOrCreateKotlinClass(Object.class), null, null));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final /* synthetic */ <T> void b(KMutableProperty0<T> kMutableProperty0, Koin koin) {
        Intrinsics.checkNotNullParameter(kMutableProperty0, "<this>");
        Intrinsics.checkNotNullParameter(koin, "koin");
        Scope h4 = koin.I().h();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        kMutableProperty0.set(h4.p(Reflection.getOrCreateKotlinClass(Object.class), null, null));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final /* synthetic */ <T> void c(KMutableProperty0<T> kMutableProperty0, Scope scope) {
        Intrinsics.checkNotNullParameter(kMutableProperty0, "<this>");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        kMutableProperty0.set(scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null));
    }
}
