package androidx.core.util;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import m8.g;
import m8.h;

/* compiled from: LruCache.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\u0010\t\u001a\u00020\b\"\b\b\u0000\u0010\u0001*\u00020\u0000\"\b\b\u0001\u0010\u0002*\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00028\u00002\u0006\u0010\u0006\u001a\u00028\u00012\b\u0010\u0007\u001a\u0004\u0018\u00018\u0001H\n"}, d2 = {"", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "", "<anonymous parameter 0>", "<anonymous parameter 1>", "<anonymous parameter 2>", "<anonymous parameter 3>", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class LruCacheKt$lruCache$3 extends Lambda implements Function4<Boolean, Object, Object, Object, Unit> {
    public static final LruCacheKt$lruCache$3 INSTANCE = new LruCacheKt$lruCache$3();

    public LruCacheKt$lruCache$3() {
        super(4);
    }

    @Override // kotlin.jvm.functions.Function4
    public /* bridge */ /* synthetic */ Unit invoke(Boolean bool, Object obj, Object obj2, Object obj3) {
        invoke(bool.booleanValue(), obj, obj2, obj3);
        return Unit.INSTANCE;
    }

    public final void invoke(boolean z9, @g Object noName_1, @g Object noName_2, @h Object obj) {
        Intrinsics.checkNotNullParameter(noName_1, "$noName_1");
        Intrinsics.checkNotNullParameter(noName_2, "$noName_2");
    }
}
