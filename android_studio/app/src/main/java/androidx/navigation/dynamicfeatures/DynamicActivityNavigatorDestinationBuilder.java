package androidx.navigation.dynamicfeatures;

import android.content.ComponentName;
import android.net.Uri;
import androidx.annotation.IdRes;
import androidx.navigation.ActivityNavigator;
import androidx.navigation.NavDestinationBuilder;
import androidx.navigation.NavDestinationDsl;
import androidx.navigation.dynamicfeatures.DynamicActivityNavigator;
import com.alipay.sdk.packet.d;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: DynamicActivityNavigatorDestinationBuilder.kt */
@NavDestinationDsl
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\b\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007B\u0017\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\b\u0010\"\u001a\u00020#H\u0016R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\r\"\u0004\b\u0012\u0010\u000fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\r\"\u0004\b\u001b\u0010\u000fR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\r\"\u0004\b\u001e\u0010\u000fR\u001c\u0010\u001f\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\r\"\u0004\b!\u0010\u000f¨\u0006$"}, d2 = {"Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;", "Landroidx/navigation/NavDestinationBuilder;", "Landroidx/navigation/ActivityNavigator$Destination;", "activityNavigator", "Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator;", "id", "", "(Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator;I)V", "route", "", "(Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator;Ljava/lang/String;)V", d.f6907q, "getAction", "()Ljava/lang/String;", "setAction", "(Ljava/lang/String;)V", "activityClassName", "getActivityClassName", "setActivityClassName", "data", "Landroid/net/Uri;", "getData", "()Landroid/net/Uri;", "setData", "(Landroid/net/Uri;)V", "dataPattern", "getDataPattern", "setDataPattern", "moduleName", "getModuleName", "setModuleName", "targetPackage", "getTargetPackage", "setTargetPackage", "build", "Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator$Destination;", "navigation-dynamic-features-runtime_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DynamicActivityNavigatorDestinationBuilder extends NavDestinationBuilder<ActivityNavigator.Destination> {
    @h
    private String action;
    @h
    private String activityClassName;
    @g
    private DynamicActivityNavigator activityNavigator;
    @h
    private Uri data;
    @h
    private String dataPattern;
    @h
    private String moduleName;
    @h
    private String targetPackage;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Deprecated(message = "Use routes to build your DynamicActivityDestination instead", replaceWith = @ReplaceWith(expression = "DynamicActivityNavigatorDestinationBuilder(activityNavigator, route = id.toString())", imports = {}))
    public DynamicActivityNavigatorDestinationBuilder(@g DynamicActivityNavigator activityNavigator, @IdRes int i4) {
        super(activityNavigator, i4);
        Intrinsics.checkNotNullParameter(activityNavigator, "activityNavigator");
        this.activityNavigator = activityNavigator;
    }

    @h
    public final String getAction() {
        return this.action;
    }

    @h
    public final String getActivityClassName() {
        return this.activityClassName;
    }

    @h
    public final Uri getData() {
        return this.data;
    }

    @h
    public final String getDataPattern() {
        return this.dataPattern;
    }

    @h
    public final String getModuleName() {
        return this.moduleName;
    }

    @h
    public final String getTargetPackage() {
        return this.targetPackage;
    }

    public final void setAction(@h String str) {
        this.action = str;
    }

    public final void setActivityClassName(@h String str) {
        this.activityClassName = str;
    }

    public final void setData(@h Uri uri) {
        this.data = uri;
    }

    public final void setDataPattern(@h String str) {
        this.dataPattern = str;
    }

    public final void setModuleName(@h String str) {
        this.moduleName = str;
    }

    public final void setTargetPackage(@h String str) {
        this.targetPackage = str;
    }

    @Override // androidx.navigation.NavDestinationBuilder
    @g
    public ActivityNavigator.Destination build() {
        DynamicActivityNavigator.Destination destination = (DynamicActivityNavigator.Destination) super.build();
        String str = this.activityClassName;
        if (str != null) {
            String str2 = this.targetPackage;
            if (str2 != null) {
                Intrinsics.checkNotNull(str2);
            } else {
                str2 = this.activityNavigator.getPackageName$navigation_dynamic_features_runtime_release();
            }
            destination.setComponentName(new ComponentName(str2, str));
        }
        destination.setTargetPackage(this.targetPackage);
        destination.setModuleName(this.moduleName);
        destination.setAction(this.action);
        destination.setData(this.data);
        destination.setDataPattern(this.dataPattern);
        return destination;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DynamicActivityNavigatorDestinationBuilder(@g DynamicActivityNavigator activityNavigator, @g String route) {
        super(activityNavigator, route);
        Intrinsics.checkNotNullParameter(activityNavigator, "activityNavigator");
        Intrinsics.checkNotNullParameter(route, "route");
        this.activityNavigator = activityNavigator;
    }
}
