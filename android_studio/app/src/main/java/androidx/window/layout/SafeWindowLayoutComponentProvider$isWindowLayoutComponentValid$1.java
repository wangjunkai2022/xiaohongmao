package androidx.window.layout;

import android.app.Activity;
import java.lang.reflect.Method;
import java.util.function.Consumer;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SafeWindowLayoutComponentProvider.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"<anonymous>", "", "invoke", "()Ljava/lang/Boolean;"}, k = 3, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SafeWindowLayoutComponentProvider$isWindowLayoutComponentValid$1 extends Lambda implements Function0<Boolean> {
    final /* synthetic */ ClassLoader $classLoader;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SafeWindowLayoutComponentProvider$isWindowLayoutComponentValid$1(ClassLoader classLoader) {
        super(0);
        this.$classLoader = classLoader;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    @g
    public final Boolean invoke() {
        Class windowLayoutComponentClass;
        boolean isPublic;
        boolean isPublic2;
        SafeWindowLayoutComponentProvider safeWindowLayoutComponentProvider = SafeWindowLayoutComponentProvider.INSTANCE;
        windowLayoutComponentClass = safeWindowLayoutComponentProvider.windowLayoutComponentClass(this.$classLoader);
        boolean z9 = false;
        Method addListenerMethod = windowLayoutComponentClass.getMethod("addWindowLayoutInfoListener", Activity.class, Consumer.class);
        Method removeListenerMethod = windowLayoutComponentClass.getMethod("removeWindowLayoutInfoListener", Consumer.class);
        Intrinsics.checkNotNullExpressionValue(addListenerMethod, "addListenerMethod");
        isPublic = safeWindowLayoutComponentProvider.isPublic(addListenerMethod);
        if (isPublic) {
            Intrinsics.checkNotNullExpressionValue(removeListenerMethod, "removeListenerMethod");
            isPublic2 = safeWindowLayoutComponentProvider.isPublic(removeListenerMethod);
            if (isPublic2) {
                z9 = true;
            }
        }
        return Boolean.valueOf(z9);
    }
}
