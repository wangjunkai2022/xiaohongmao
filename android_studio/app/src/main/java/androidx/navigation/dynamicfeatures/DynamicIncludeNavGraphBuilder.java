package androidx.navigation.dynamicfeatures;

import androidx.annotation.IdRes;
import androidx.navigation.NavDestinationBuilder;
import androidx.navigation.NavDestinationDsl;
import androidx.navigation.dynamicfeatures.DynamicIncludeGraphNavigator;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: DynamicIncludeNavGraphBuilder.kt */
@NavDestinationDsl
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B)\b\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0002\u0010\nB'\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0002\u0010\fJ\b\u0010\u0012\u001a\u00020\u0002H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\r\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u000e\u0010\t\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Landroidx/navigation/dynamicfeatures/DynamicIncludeNavGraphBuilder;", "Landroidx/navigation/NavDestinationBuilder;", "Landroidx/navigation/dynamicfeatures/DynamicIncludeGraphNavigator$DynamicIncludeNavGraph;", "dynamicIncludeGraphNavigator", "Landroidx/navigation/dynamicfeatures/DynamicIncludeGraphNavigator;", "id", "", "moduleName", "", "graphResourceName", "(Landroidx/navigation/dynamicfeatures/DynamicIncludeGraphNavigator;ILjava/lang/String;Ljava/lang/String;)V", "route", "(Landroidx/navigation/dynamicfeatures/DynamicIncludeGraphNavigator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "graphPackage", "getGraphPackage", "()Ljava/lang/String;", "setGraphPackage", "(Ljava/lang/String;)V", "build", "navigation-dynamic-features-runtime_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DynamicIncludeNavGraphBuilder extends NavDestinationBuilder<DynamicIncludeGraphNavigator.DynamicIncludeNavGraph> {
    @g
    private DynamicIncludeGraphNavigator dynamicIncludeGraphNavigator;
    @h
    private String graphPackage;
    @g
    private String graphResourceName;
    @g
    private String moduleName;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Deprecated(message = "Use routes to create your DynamicIncludeNavGraphBuilder instead", replaceWith = @ReplaceWith(expression = "DynamicIncludeNavGraphBuilder(dynamicIncludeGraphNavigator, route = id.toString(), moduleName, graphResourceName)", imports = {}))
    public DynamicIncludeNavGraphBuilder(@g DynamicIncludeGraphNavigator dynamicIncludeGraphNavigator, @IdRes int i4, @g String moduleName, @g String graphResourceName) {
        super(dynamicIncludeGraphNavigator, i4);
        Intrinsics.checkNotNullParameter(dynamicIncludeGraphNavigator, "dynamicIncludeGraphNavigator");
        Intrinsics.checkNotNullParameter(moduleName, "moduleName");
        Intrinsics.checkNotNullParameter(graphResourceName, "graphResourceName");
        this.dynamicIncludeGraphNavigator = dynamicIncludeGraphNavigator;
        this.moduleName = moduleName;
        this.graphResourceName = graphResourceName;
    }

    @h
    public final String getGraphPackage() {
        return this.graphPackage;
    }

    public final void setGraphPackage(@h String str) {
        this.graphPackage = str;
    }

    @Override // androidx.navigation.NavDestinationBuilder
    @g
    public DynamicIncludeGraphNavigator.DynamicIncludeNavGraph build() {
        DynamicIncludeGraphNavigator.DynamicIncludeNavGraph dynamicIncludeNavGraph = (DynamicIncludeGraphNavigator.DynamicIncludeNavGraph) super.build();
        if (this.moduleName.length() > 0) {
            dynamicIncludeNavGraph.setModuleName(this.moduleName);
            String str = this.graphPackage;
            if (str == null) {
                dynamicIncludeNavGraph.setGraphPackage(this.dynamicIncludeGraphNavigator.getPackageName$navigation_dynamic_features_runtime_release() + '.' + this.moduleName);
            } else {
                if (!(str == null || str.length() == 0)) {
                    dynamicIncludeNavGraph.setGraphPackage(this.graphPackage);
                } else {
                    throw new IllegalStateException("Graph package name cannot be empty".toString());
                }
            }
            if (this.graphResourceName.length() > 0) {
                dynamicIncludeNavGraph.setGraphResourceName(this.graphResourceName);
                return dynamicIncludeNavGraph;
            }
            throw new IllegalStateException("Graph resource name cannot be empty".toString());
        }
        throw new IllegalStateException("Module name cannot be empty".toString());
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DynamicIncludeNavGraphBuilder(@g DynamicIncludeGraphNavigator dynamicIncludeGraphNavigator, @g String route, @g String moduleName, @g String graphResourceName) {
        super(dynamicIncludeGraphNavigator, route);
        Intrinsics.checkNotNullParameter(dynamicIncludeGraphNavigator, "dynamicIncludeGraphNavigator");
        Intrinsics.checkNotNullParameter(route, "route");
        Intrinsics.checkNotNullParameter(moduleName, "moduleName");
        Intrinsics.checkNotNullParameter(graphResourceName, "graphResourceName");
        this.dynamicIncludeGraphNavigator = dynamicIncludeGraphNavigator;
        this.moduleName = moduleName;
        this.graphResourceName = graphResourceName;
    }
}
