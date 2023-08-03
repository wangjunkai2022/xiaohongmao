package androidx.navigation.dynamicfeatures;

import androidx.annotation.IdRes;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: DynamicIncludeNavGraphBuilder.kt */
@Metadata(d1 = {"\u0000*\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a'\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0087\b\u001aC\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0017\u0010\b\u001a\u0013\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00010\t¢\u0006\u0002\b\u000bH\u0087\bø\u0001\u0000\u001a%\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0086\b\u001aA\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0017\u0010\b\u001a\u0013\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00010\t¢\u0006\u0002\b\u000bH\u0086\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\r"}, d2 = {"includeDynamic", "", "Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;", "id", "", "moduleName", "", "graphResourceName", "builder", "Lkotlin/Function1;", "Landroidx/navigation/dynamicfeatures/DynamicIncludeNavGraphBuilder;", "Lkotlin/ExtensionFunctionType;", "route", "navigation-dynamic-features-runtime_release"}, k = 2, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DynamicIncludeNavGraphBuilderKt {
    @Deprecated(message = "Use routes to include your DynamicNavGraph instead", replaceWith = @ReplaceWith(expression = "includeDynamic(route = id.toString(), moduleName, graphResourceName) { builder.invoke() }", imports = {}))
    public static final void includeDynamic(@g DynamicNavGraphBuilder dynamicNavGraphBuilder, @IdRes int i4, @g String moduleName, @g String graphResourceName, @g Function1<? super DynamicIncludeNavGraphBuilder, Unit> builder) {
        Intrinsics.checkNotNullParameter(dynamicNavGraphBuilder, "<this>");
        Intrinsics.checkNotNullParameter(moduleName, "moduleName");
        Intrinsics.checkNotNullParameter(graphResourceName, "graphResourceName");
        Intrinsics.checkNotNullParameter(builder, "builder");
        DynamicIncludeNavGraphBuilder dynamicIncludeNavGraphBuilder = new DynamicIncludeNavGraphBuilder((DynamicIncludeGraphNavigator) dynamicNavGraphBuilder.getProvider().getNavigator(DynamicIncludeGraphNavigator.class), i4, moduleName, graphResourceName);
        builder.invoke(dynamicIncludeNavGraphBuilder);
        dynamicNavGraphBuilder.destination(dynamicIncludeNavGraphBuilder);
    }

    public static final void includeDynamic(@g DynamicNavGraphBuilder dynamicNavGraphBuilder, @g String route, @g String moduleName, @g String graphResourceName, @g Function1<? super DynamicIncludeNavGraphBuilder, Unit> builder) {
        Intrinsics.checkNotNullParameter(dynamicNavGraphBuilder, "<this>");
        Intrinsics.checkNotNullParameter(route, "route");
        Intrinsics.checkNotNullParameter(moduleName, "moduleName");
        Intrinsics.checkNotNullParameter(graphResourceName, "graphResourceName");
        Intrinsics.checkNotNullParameter(builder, "builder");
        DynamicIncludeNavGraphBuilder dynamicIncludeNavGraphBuilder = new DynamicIncludeNavGraphBuilder((DynamicIncludeGraphNavigator) dynamicNavGraphBuilder.getProvider().getNavigator(DynamicIncludeGraphNavigator.class), route, moduleName, graphResourceName);
        builder.invoke(dynamicIncludeNavGraphBuilder);
        dynamicNavGraphBuilder.destination(dynamicIncludeNavGraphBuilder);
    }

    @Deprecated(message = "Use routes to include your DynamicNavGraph instead", replaceWith = @ReplaceWith(expression = "includeDynamic(route = id.toString(), moduleName, graphResourceName)", imports = {}))
    public static final void includeDynamic(@g DynamicNavGraphBuilder dynamicNavGraphBuilder, @IdRes int i4, @g String moduleName, @g String graphResourceName) {
        Intrinsics.checkNotNullParameter(dynamicNavGraphBuilder, "<this>");
        Intrinsics.checkNotNullParameter(moduleName, "moduleName");
        Intrinsics.checkNotNullParameter(graphResourceName, "graphResourceName");
        dynamicNavGraphBuilder.destination(new DynamicIncludeNavGraphBuilder((DynamicIncludeGraphNavigator) dynamicNavGraphBuilder.getProvider().getNavigator(DynamicIncludeGraphNavigator.class), i4, moduleName, graphResourceName));
    }

    public static final void includeDynamic(@g DynamicNavGraphBuilder dynamicNavGraphBuilder, @g String route, @g String moduleName, @g String graphResourceName) {
        Intrinsics.checkNotNullParameter(dynamicNavGraphBuilder, "<this>");
        Intrinsics.checkNotNullParameter(route, "route");
        Intrinsics.checkNotNullParameter(moduleName, "moduleName");
        Intrinsics.checkNotNullParameter(graphResourceName, "graphResourceName");
        dynamicNavGraphBuilder.destination(new DynamicIncludeNavGraphBuilder((DynamicIncludeGraphNavigator) dynamicNavGraphBuilder.getProvider().getNavigator(DynamicIncludeGraphNavigator.class), route, moduleName, graphResourceName));
    }
}
