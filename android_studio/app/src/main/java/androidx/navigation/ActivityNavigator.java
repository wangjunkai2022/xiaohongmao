package androidx.navigation;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.net.Uri;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import androidx.annotation.CallSuper;
import androidx.annotation.RestrictTo;
import androidx.core.app.ActivityOptionsCompat;
import androidx.core.content.ContextCompat;
import androidx.navigation.NavDestination;
import androidx.navigation.Navigator;
import com.alipay.sdk.packet.d;
import io.sentry.Session;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.text.StringsKt__StringsJVMKt;
import m8.g;
import m8.h;

/* compiled from: ActivityNavigator.kt */
@Navigator.Name("activity")
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0017\u0018\u0000 \u00162\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0016\u0017\u0018B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\n\u001a\u00020\u0002H\u0016J0\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\r\u001a\u00020\u00022\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016R\u0013\u0010\u0003\u001a\u00020\u00048\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Landroidx/navigation/ActivityNavigator;", "Landroidx/navigation/Navigator;", "Landroidx/navigation/ActivityNavigator$Destination;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "getContext", "()Landroid/content/Context;", "hostActivity", "Landroid/app/Activity;", "createDestination", "navigate", "Landroidx/navigation/NavDestination;", "destination", "args", "Landroid/os/Bundle;", "navOptions", "Landroidx/navigation/NavOptions;", "navigatorExtras", "Landroidx/navigation/Navigator$Extras;", "popBackStack", "", "Companion", "Destination", "Extras", "navigation-runtime_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public class ActivityNavigator extends Navigator<Destination> {
    @g
    public static final Companion Companion = new Companion(null);
    @g
    private static final String EXTRA_NAV_CURRENT = "android-support-navigation:ActivityNavigator:current";
    @g
    private static final String EXTRA_NAV_SOURCE = "android-support-navigation:ActivityNavigator:source";
    @g
    private static final String EXTRA_POP_ENTER_ANIM = "android-support-navigation:ActivityNavigator:popEnterAnim";
    @g
    private static final String EXTRA_POP_EXIT_ANIM = "android-support-navigation:ActivityNavigator:popExitAnim";
    @g
    private static final String LOG_TAG = "ActivityNavigator";
    @g
    private final Context context;
    @h
    private final Activity hostActivity;

    /* compiled from: ActivityNavigator.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Landroidx/navigation/ActivityNavigator$Companion;", "", "()V", "EXTRA_NAV_CURRENT", "", "EXTRA_NAV_SOURCE", "EXTRA_POP_ENTER_ANIM", "EXTRA_POP_EXIT_ANIM", "LOG_TAG", "applyPopAnimationsToPendingTransition", "", "activity", "Landroid/app/Activity;", "navigation-runtime_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final void applyPopAnimationsToPendingTransition(@g Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            Intent intent = activity.getIntent();
            if (intent == null) {
                return;
            }
            int intExtra = intent.getIntExtra(ActivityNavigator.EXTRA_POP_ENTER_ANIM, -1);
            int intExtra2 = intent.getIntExtra(ActivityNavigator.EXTRA_POP_EXIT_ANIM, -1);
            if (intExtra == -1 && intExtra2 == -1) {
                return;
            }
            if (intExtra == -1) {
                intExtra = 0;
            }
            if (intExtra2 == -1) {
                intExtra2 = 0;
            }
            activity.overridePendingTransition(intExtra, intExtra2);
        }
    }

    /* compiled from: ActivityNavigator.kt */
    @Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0017\u0018\u00002\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u0015\u0012\u000e\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00000\u0006¢\u0006\u0002\u0010\u0007J\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0096\u0002J\b\u0010!\u001a\u00020\"H\u0016J\u0018\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020(H\u0017J\u0010\u0010)\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\tJ\u0010\u0010*\u001a\u00020\u00002\b\u0010+\u001a\u0004\u0018\u00010\rJ\u0010\u0010,\u001a\u00020\u00002\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011J\u0010\u0010-\u001a\u00020\u00002\b\u0010\u0015\u001a\u0004\u0018\u00010\tJ\u0010\u0010.\u001a\u00020\u00002\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017J\u0010\u0010/\u001a\u00020\u00002\b\u00100\u001a\u0004\u0018\u00010\tJ\b\u00101\u001a\u00020\u001eH\u0017J\b\u00102\u001a\u00020\tH\u0016R$\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\b\u001a\u0004\u0018\u00010\t8F@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR$\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\b\u001a\u0004\u0018\u00010\r8F@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R$\u0010\u0012\u001a\u0004\u0018\u00010\u00112\b\u0010\b\u001a\u0004\u0018\u00010\u00118F@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\"\u0010\u0015\u001a\u0004\u0018\u00010\t2\b\u0010\b\u001a\u0004\u0018\u00010\t@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\fR\"\u0010\u0018\u001a\u0004\u0018\u00010\u00172\b\u0010\b\u001a\u0004\u0018\u00010\u0017@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR$\u0010\u001b\u001a\u0004\u0018\u00010\t2\b\u0010\b\u001a\u0004\u0018\u00010\t8F@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\f¨\u00063"}, d2 = {"Landroidx/navigation/ActivityNavigator$Destination;", "Landroidx/navigation/NavDestination;", "navigatorProvider", "Landroidx/navigation/NavigatorProvider;", "(Landroidx/navigation/NavigatorProvider;)V", "activityNavigator", "Landroidx/navigation/Navigator;", "(Landroidx/navigation/Navigator;)V", "<set-?>", "", d.f6907q, "getAction", "()Ljava/lang/String;", "Landroid/content/ComponentName;", "component", "getComponent", "()Landroid/content/ComponentName;", "Landroid/net/Uri;", "data", "getData", "()Landroid/net/Uri;", "dataPattern", "getDataPattern", "Landroid/content/Intent;", "intent", "getIntent", "()Landroid/content/Intent;", "targetPackage", "getTargetPackage", "equals", "", "other", "", "hashCode", "", "onInflate", "", "context", "Landroid/content/Context;", Session.b.f81849j, "Landroid/util/AttributeSet;", "setAction", "setComponentName", "name", "setData", "setDataPattern", "setIntent", "setTargetPackage", "packageName", "supportsActions", "toString", "navigation-runtime_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    @NavDestination.ClassType(Activity.class)
    /* loaded from: classes.dex */
    public static class Destination extends NavDestination {
        @h
        private String action;
        @h
        private ComponentName component;
        @h
        private Uri data;
        @h
        private String dataPattern;
        @h
        private Intent intent;
        @h
        private String targetPackage;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Destination(@g Navigator<? extends Destination> activityNavigator) {
            super(activityNavigator);
            Intrinsics.checkNotNullParameter(activityNavigator, "activityNavigator");
        }

        @Override // androidx.navigation.NavDestination
        public boolean equals(@h Object obj) {
            if (obj != null && (obj instanceof Destination) && super.equals(obj)) {
                Intent intent = this.intent;
                return (intent != null ? intent.filterEquals(((Destination) obj).intent) : ((Destination) obj).intent == null) && Intrinsics.areEqual(this.dataPattern, ((Destination) obj).dataPattern);
            }
            return false;
        }

        @h
        public final String getAction() {
            Intent intent = this.intent;
            if (intent != null) {
                return intent.getAction();
            }
            return null;
        }

        @h
        public final ComponentName getComponent() {
            Intent intent = this.intent;
            if (intent != null) {
                return intent.getComponent();
            }
            return null;
        }

        @h
        public final Uri getData() {
            Intent intent = this.intent;
            if (intent != null) {
                return intent.getData();
            }
            return null;
        }

        @h
        public final String getDataPattern() {
            return this.dataPattern;
        }

        @h
        public final Intent getIntent() {
            return this.intent;
        }

        @h
        public final String getTargetPackage() {
            Intent intent = this.intent;
            if (intent != null) {
                return intent.getPackage();
            }
            return null;
        }

        @Override // androidx.navigation.NavDestination
        public int hashCode() {
            int hashCode = super.hashCode() * 31;
            Intent intent = this.intent;
            int filterHashCode = (hashCode + (intent != null ? intent.filterHashCode() : 0)) * 31;
            String str = this.dataPattern;
            return filterHashCode + (str != null ? str.hashCode() : 0);
        }

        @Override // androidx.navigation.NavDestination
        @CallSuper
        public void onInflate(@g Context context, @g AttributeSet attrs) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(attrs, "attrs");
            super.onInflate(context, attrs);
            TypedArray obtainAttributes = context.getResources().obtainAttributes(attrs, R.styleable.ActivityNavigator);
            Intrinsics.checkNotNullExpressionValue(obtainAttributes, "context.resources.obtain…tyNavigator\n            )");
            String string = obtainAttributes.getString(R.styleable.ActivityNavigator_targetPackage);
            if (string != null) {
                String packageName = context.getPackageName();
                Intrinsics.checkNotNullExpressionValue(packageName, "context.packageName");
                string = StringsKt__StringsJVMKt.replace$default(string, NavInflater.APPLICATION_ID_PLACEHOLDER, packageName, false, 4, (Object) null);
            }
            setTargetPackage(string);
            String string2 = obtainAttributes.getString(R.styleable.ActivityNavigator_android_name);
            if (string2 != null) {
                if (string2.charAt(0) == '.') {
                    string2 = context.getPackageName() + string2;
                }
                setComponentName(new ComponentName(context, string2));
            }
            setAction(obtainAttributes.getString(R.styleable.ActivityNavigator_action));
            String string3 = obtainAttributes.getString(R.styleable.ActivityNavigator_data);
            if (string3 != null) {
                setData(Uri.parse(string3));
            }
            setDataPattern(obtainAttributes.getString(R.styleable.ActivityNavigator_dataPattern));
            obtainAttributes.recycle();
        }

        @g
        public final Destination setAction(@h String str) {
            if (this.intent == null) {
                this.intent = new Intent();
            }
            Intent intent = this.intent;
            Intrinsics.checkNotNull(intent);
            intent.setAction(str);
            return this;
        }

        @g
        public final Destination setComponentName(@h ComponentName componentName) {
            if (this.intent == null) {
                this.intent = new Intent();
            }
            Intent intent = this.intent;
            Intrinsics.checkNotNull(intent);
            intent.setComponent(componentName);
            return this;
        }

        @g
        public final Destination setData(@h Uri uri) {
            if (this.intent == null) {
                this.intent = new Intent();
            }
            Intent intent = this.intent;
            Intrinsics.checkNotNull(intent);
            intent.setData(uri);
            return this;
        }

        @g
        public final Destination setDataPattern(@h String str) {
            this.dataPattern = str;
            return this;
        }

        @g
        public final Destination setIntent(@h Intent intent) {
            this.intent = intent;
            return this;
        }

        @g
        public final Destination setTargetPackage(@h String str) {
            if (this.intent == null) {
                this.intent = new Intent();
            }
            Intent intent = this.intent;
            Intrinsics.checkNotNull(intent);
            intent.setPackage(str);
            return this;
        }

        @Override // androidx.navigation.NavDestination
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public boolean supportsActions() {
            return false;
        }

        @Override // androidx.navigation.NavDestination
        @g
        public String toString() {
            ComponentName component = getComponent();
            StringBuilder sb = new StringBuilder();
            sb.append(super.toString());
            if (component != null) {
                sb.append(" class=");
                sb.append(component.getClassName());
            } else {
                String action = getAction();
                if (action != null) {
                    sb.append(" action=");
                    sb.append(action);
                }
            }
            String sb2 = sb.toString();
            Intrinsics.checkNotNullExpressionValue(sb2, "sb.toString()");
            return sb2;
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Destination(@g NavigatorProvider navigatorProvider) {
            this(navigatorProvider.getNavigator(ActivityNavigator.class));
            Intrinsics.checkNotNullParameter(navigatorProvider, "navigatorProvider");
        }
    }

    /* compiled from: ActivityNavigator.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001\u000bB\u0019\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Landroidx/navigation/ActivityNavigator$Extras;", "Landroidx/navigation/Navigator$Extras;", "flags", "", "activityOptions", "Landroidx/core/app/ActivityOptionsCompat;", "(ILandroidx/core/app/ActivityOptionsCompat;)V", "getActivityOptions", "()Landroidx/core/app/ActivityOptionsCompat;", "getFlags", "()I", "Builder", "navigation-runtime_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Extras implements Navigator.Extras {
        @h
        private final ActivityOptionsCompat activityOptions;
        private final int flags;

        /* compiled from: ActivityNavigator.kt */
        @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Landroidx/navigation/ActivityNavigator$Extras$Builder;", "", "()V", "activityOptions", "Landroidx/core/app/ActivityOptionsCompat;", "flags", "", "addFlags", "build", "Landroidx/navigation/ActivityNavigator$Extras;", "setActivityOptions", "navigation-runtime_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
        /* loaded from: classes.dex */
        public static final class Builder {
            @h
            private ActivityOptionsCompat activityOptions;
            private int flags;

            @g
            public final Builder addFlags(int i4) {
                this.flags = i4 | this.flags;
                return this;
            }

            @g
            public final Extras build() {
                return new Extras(this.flags, this.activityOptions);
            }

            @g
            public final Builder setActivityOptions(@g ActivityOptionsCompat activityOptions) {
                Intrinsics.checkNotNullParameter(activityOptions, "activityOptions");
                this.activityOptions = activityOptions;
                return this;
            }
        }

        public Extras(int i4, @h ActivityOptionsCompat activityOptionsCompat) {
            this.flags = i4;
            this.activityOptions = activityOptionsCompat;
        }

        @h
        public final ActivityOptionsCompat getActivityOptions() {
            return this.activityOptions;
        }

        public final int getFlags() {
            return this.flags;
        }
    }

    public ActivityNavigator(@g Context context) {
        Sequence generateSequence;
        Object obj;
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        generateSequence = SequencesKt__SequencesKt.generateSequence(context, ActivityNavigator$hostActivity$1.INSTANCE);
        Iterator it = generateSequence.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (((Context) obj) instanceof Activity) {
                break;
            }
        }
        this.hostActivity = (Activity) obj;
    }

    @JvmStatic
    public static final void applyPopAnimationsToPendingTransition(@g Activity activity) {
        Companion.applyPopAnimationsToPendingTransition(activity);
    }

    @g
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final Context getContext() {
        return this.context;
    }

    @Override // androidx.navigation.Navigator
    public boolean popBackStack() {
        Activity activity = this.hostActivity;
        if (activity != null) {
            activity.finish();
            return true;
        }
        return false;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.navigation.Navigator
    @g
    public Destination createDestination() {
        return new Destination(this);
    }

    @Override // androidx.navigation.Navigator
    @h
    public NavDestination navigate(@g Destination destination, @h Bundle bundle, @h NavOptions navOptions, @h Navigator.Extras extras) {
        int coerceAtLeast;
        int coerceAtLeast2;
        Intent intent;
        int intExtra;
        Intrinsics.checkNotNullParameter(destination, "destination");
        if (destination.getIntent() != null) {
            Intent intent2 = new Intent(destination.getIntent());
            if (bundle != null) {
                intent2.putExtras(bundle);
                String dataPattern = destination.getDataPattern();
                if (!(dataPattern == null || dataPattern.length() == 0)) {
                    StringBuffer stringBuffer = new StringBuffer();
                    Matcher matcher = Pattern.compile("\\{(.+?)\\}").matcher(dataPattern);
                    while (matcher.find()) {
                        String group = matcher.group(1);
                        if (bundle.containsKey(group)) {
                            matcher.appendReplacement(stringBuffer, "");
                            stringBuffer.append(Uri.encode(String.valueOf(bundle.get(group))));
                        } else {
                            throw new IllegalArgumentException("Could not find " + group + " in " + bundle + " to fill data pattern " + dataPattern);
                        }
                    }
                    matcher.appendTail(stringBuffer);
                    intent2.setData(Uri.parse(stringBuffer.toString()));
                }
            }
            boolean z9 = extras instanceof Extras;
            if (z9) {
                intent2.addFlags(((Extras) extras).getFlags());
            }
            if (this.hostActivity == null) {
                intent2.addFlags(268435456);
            }
            if (navOptions != null && navOptions.shouldLaunchSingleTop()) {
                intent2.addFlags(536870912);
            }
            Activity activity = this.hostActivity;
            if (activity != null && (intent = activity.getIntent()) != null && (intExtra = intent.getIntExtra(EXTRA_NAV_CURRENT, 0)) != 0) {
                intent2.putExtra(EXTRA_NAV_SOURCE, intExtra);
            }
            intent2.putExtra(EXTRA_NAV_CURRENT, destination.getId());
            Resources resources = this.context.getResources();
            if (navOptions != null) {
                int popEnterAnim = navOptions.getPopEnterAnim();
                int popExitAnim = navOptions.getPopExitAnim();
                if ((popEnterAnim > 0 && Intrinsics.areEqual(resources.getResourceTypeName(popEnterAnim), "animator")) || (popExitAnim > 0 && Intrinsics.areEqual(resources.getResourceTypeName(popExitAnim), "animator"))) {
                    Log.w(LOG_TAG, "Activity destinations do not support Animator resource. Ignoring popEnter resource " + resources.getResourceName(popEnterAnim) + " and popExit resource " + resources.getResourceName(popExitAnim) + " when launching " + destination);
                } else {
                    intent2.putExtra(EXTRA_POP_ENTER_ANIM, popEnterAnim);
                    intent2.putExtra(EXTRA_POP_EXIT_ANIM, popExitAnim);
                }
            }
            if (z9) {
                ActivityOptionsCompat activityOptions = ((Extras) extras).getActivityOptions();
                if (activityOptions != null) {
                    ContextCompat.startActivity(this.context, intent2, activityOptions.toBundle());
                } else {
                    this.context.startActivity(intent2);
                }
            } else {
                this.context.startActivity(intent2);
            }
            if (navOptions == null || this.hostActivity == null) {
                return null;
            }
            int enterAnim = navOptions.getEnterAnim();
            int exitAnim = navOptions.getExitAnim();
            if ((enterAnim <= 0 || !Intrinsics.areEqual(resources.getResourceTypeName(enterAnim), "animator")) && (exitAnim <= 0 || !Intrinsics.areEqual(resources.getResourceTypeName(exitAnim), "animator"))) {
                if (enterAnim >= 0 || exitAnim >= 0) {
                    coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(enterAnim, 0);
                    coerceAtLeast2 = RangesKt___RangesKt.coerceAtLeast(exitAnim, 0);
                    this.hostActivity.overridePendingTransition(coerceAtLeast, coerceAtLeast2);
                    return null;
                }
                return null;
            }
            Log.w(LOG_TAG, "Activity destinations do not support Animator resource. Ignoring enter resource " + resources.getResourceName(enterAnim) + " and exit resource " + resources.getResourceName(exitAnim) + "when launching " + destination);
            return null;
        }
        throw new IllegalStateException(("Destination " + destination.getId() + " does not have an Intent set.").toString());
    }
}
