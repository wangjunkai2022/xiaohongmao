package androidx.window.layout;

import android.graphics.Rect;
import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SafeWindowLayoutComponentProvider.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"<anonymous>", "", "invoke", "()Ljava/lang/Boolean;"}, k = 3, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1 extends Lambda implements Function0<Boolean> {
    final /* synthetic */ ClassLoader $classLoader;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1(ClassLoader classLoader) {
        super(0);
        this.$classLoader = classLoader;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    @g
    public final Boolean invoke() {
        Class foldingFeatureClass;
        boolean doesReturn;
        boolean isPublic;
        boolean doesReturn2;
        boolean isPublic2;
        boolean doesReturn3;
        boolean isPublic3;
        SafeWindowLayoutComponentProvider safeWindowLayoutComponentProvider = SafeWindowLayoutComponentProvider.INSTANCE;
        foldingFeatureClass = safeWindowLayoutComponentProvider.foldingFeatureClass(this.$classLoader);
        boolean z9 = false;
        Method getBoundsMethod = foldingFeatureClass.getMethod("getBounds", new Class[0]);
        Method getTypeMethod = foldingFeatureClass.getMethod("getType", new Class[0]);
        Method getStateMethod = foldingFeatureClass.getMethod("getState", new Class[0]);
        Intrinsics.checkNotNullExpressionValue(getBoundsMethod, "getBoundsMethod");
        doesReturn = safeWindowLayoutComponentProvider.doesReturn(getBoundsMethod, Reflection.getOrCreateKotlinClass(Rect.class));
        if (doesReturn) {
            isPublic = safeWindowLayoutComponentProvider.isPublic(getBoundsMethod);
            if (isPublic) {
                Intrinsics.checkNotNullExpressionValue(getTypeMethod, "getTypeMethod");
                Class cls = Integer.TYPE;
                doesReturn2 = safeWindowLayoutComponentProvider.doesReturn(getTypeMethod, Reflection.getOrCreateKotlinClass(cls));
                if (doesReturn2) {
                    isPublic2 = safeWindowLayoutComponentProvider.isPublic(getTypeMethod);
                    if (isPublic2) {
                        Intrinsics.checkNotNullExpressionValue(getStateMethod, "getStateMethod");
                        doesReturn3 = safeWindowLayoutComponentProvider.doesReturn(getStateMethod, Reflection.getOrCreateKotlinClass(cls));
                        if (doesReturn3) {
                            isPublic3 = safeWindowLayoutComponentProvider.isPublic(getStateMethod);
                            if (isPublic3) {
                                z9 = true;
                            }
                        }
                    }
                }
            }
        }
        return Boolean.valueOf(z9);
    }
}
