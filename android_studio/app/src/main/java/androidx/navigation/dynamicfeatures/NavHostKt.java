package androidx.navigation.dynamicfeatures;

import androidx.annotation.IdRes;
import androidx.navigation.NavGraph;
import androidx.navigation.NavHost;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: NavHost.kt */
@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u001a=\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0003\u0010\u0003\u001a\u00020\u00042\b\b\u0001\u0010\u0005\u001a\u00020\u00042\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007¢\u0006\u0002\b\nH\u0087\bø\u0001\u0000\u001a=\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007¢\u0006\u0002\b\nH\u0086\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\r"}, d2 = {"createGraph", "Landroidx/navigation/NavGraph;", "Landroidx/navigation/NavHost;", "id", "", "startDestination", "builder", "Lkotlin/Function1;", "Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;", "", "Lkotlin/ExtensionFunctionType;", "", "route", "navigation-dynamic-features-runtime_release"}, k = 2, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class NavHostKt {
    @Deprecated(message = "Use routes to create your dynamic NavGraph instead", replaceWith = @ReplaceWith(expression = "createGraph(startDestination = startDestination.toString(), route = id.toString()) { builder.invoke() }", imports = {}))
    @g
    public static final NavGraph createGraph(@g NavHost navHost, @IdRes int i4, @IdRes int i10, @g Function1<? super DynamicNavGraphBuilder, Unit> builder) {
        Intrinsics.checkNotNullParameter(navHost, "<this>");
        Intrinsics.checkNotNullParameter(builder, "builder");
        DynamicNavGraphBuilder dynamicNavGraphBuilder = new DynamicNavGraphBuilder(navHost.getNavController().getNavigatorProvider(), i4, i10);
        builder.invoke(dynamicNavGraphBuilder);
        return dynamicNavGraphBuilder.build();
    }

    public static /* synthetic */ NavGraph createGraph$default(NavHost navHost, int i4, int i10, Function1 builder, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i4 = 0;
        }
        Intrinsics.checkNotNullParameter(navHost, "<this>");
        Intrinsics.checkNotNullParameter(builder, "builder");
        DynamicNavGraphBuilder dynamicNavGraphBuilder = new DynamicNavGraphBuilder(navHost.getNavController().getNavigatorProvider(), i4, i10);
        builder.invoke(dynamicNavGraphBuilder);
        return dynamicNavGraphBuilder.build();
    }

    @g
    public static final NavGraph createGraph(@g NavHost navHost, @g String startDestination, @h String str, @g Function1<? super DynamicNavGraphBuilder, Unit> builder) {
        Intrinsics.checkNotNullParameter(navHost, "<this>");
        Intrinsics.checkNotNullParameter(startDestination, "startDestination");
        Intrinsics.checkNotNullParameter(builder, "builder");
        DynamicNavGraphBuilder dynamicNavGraphBuilder = new DynamicNavGraphBuilder(navHost.getNavController().getNavigatorProvider(), startDestination, str);
        builder.invoke(dynamicNavGraphBuilder);
        return dynamicNavGraphBuilder.build();
    }

    public static /* synthetic */ NavGraph createGraph$default(NavHost navHost, String startDestination, String str, Function1 builder, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            str = null;
        }
        Intrinsics.checkNotNullParameter(navHost, "<this>");
        Intrinsics.checkNotNullParameter(startDestination, "startDestination");
        Intrinsics.checkNotNullParameter(builder, "builder");
        DynamicNavGraphBuilder dynamicNavGraphBuilder = new DynamicNavGraphBuilder(navHost.getNavController().getNavigatorProvider(), startDestination, str);
        builder.invoke(dynamicNavGraphBuilder);
        return dynamicNavGraphBuilder.build();
    }
}
