package androidx.window.embedding;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import androidx.window.core.ExperimentalWindowApi;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: ActivityFilter.kt */
@ExperimentalWindowApi
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\u000e\u0010\u0010\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0013\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u0015J\b\u0010\u0016\u001a\u00020\u0005H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0017"}, d2 = {"Landroidx/window/embedding/ActivityFilter;", "", "componentName", "Landroid/content/ComponentName;", "intentAction", "", "(Landroid/content/ComponentName;Ljava/lang/String;)V", "getComponentName", "()Landroid/content/ComponentName;", "getIntentAction", "()Ljava/lang/String;", "equals", "", "other", "hashCode", "", "matchesActivity", "activity", "Landroid/app/Activity;", "matchesIntent", "intent", "Landroid/content/Intent;", "toString", "window_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ActivityFilter {
    @g
    private final ComponentName componentName;
    @h
    private final String intentAction;

    /* JADX WARN: Removed duplicated region for block: B:20:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0081  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public ActivityFilter(@m8.g android.content.ComponentName r12, @m8.h java.lang.String r13) {
        /*
            r11 = this;
            java.lang.String r0 = "componentName"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r12, r0)
            r11.<init>()
            r11.componentName = r12
            r11.intentAction = r13
            java.lang.String r13 = r12.getPackageName()
            java.lang.String r0 = "componentName.packageName"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r13, r0)
            java.lang.String r12 = r12.getClassName()
            java.lang.String r0 = "componentName.className"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r12, r0)
            int r0 = r13.length()
            r7 = 1
            r8 = 0
            if (r0 <= 0) goto L28
            r0 = 1
            goto L29
        L28:
            r0 = 0
        L29:
            if (r0 == 0) goto L99
            int r0 = r12.length()
            if (r0 <= 0) goto L33
            r0 = 1
            goto L34
        L33:
            r0 = 0
        L34:
            if (r0 == 0) goto L8d
            java.lang.String r0 = "*"
            r9 = 2
            r10 = 0
            boolean r1 = kotlin.text.StringsKt.contains$default(r13, r0, r8, r9, r10)
            if (r1 == 0) goto L55
            r3 = 0
            r4 = 0
            r5 = 6
            r6 = 0
            java.lang.String r2 = "*"
            r1 = r13
            int r1 = kotlin.text.StringsKt.indexOf$default(r1, r2, r3, r4, r5, r6)
            int r13 = r13.length()
            int r13 = r13 - r7
            if (r1 != r13) goto L53
            goto L55
        L53:
            r13 = 0
            goto L56
        L55:
            r13 = 1
        L56:
            if (r13 == 0) goto L81
            boolean r13 = kotlin.text.StringsKt.contains$default(r12, r0, r8, r9, r10)
            if (r13 == 0) goto L72
            r3 = 0
            r4 = 0
            r5 = 6
            r6 = 0
            java.lang.String r2 = "*"
            r1 = r12
            int r13 = kotlin.text.StringsKt.indexOf$default(r1, r2, r3, r4, r5, r6)
            int r12 = r12.length()
            int r12 = r12 - r7
            if (r13 != r12) goto L71
            goto L72
        L71:
            r7 = 0
        L72:
            if (r7 == 0) goto L75
            return
        L75:
            java.lang.IllegalArgumentException r12 = new java.lang.IllegalArgumentException
            java.lang.String r13 = "Wildcard in class name is only allowed at the end."
            java.lang.String r13 = r13.toString()
            r12.<init>(r13)
            throw r12
        L81:
            java.lang.IllegalArgumentException r12 = new java.lang.IllegalArgumentException
            java.lang.String r13 = "Wildcard in package name is only allowed at the end."
            java.lang.String r13 = r13.toString()
            r12.<init>(r13)
            throw r12
        L8d:
            java.lang.IllegalArgumentException r12 = new java.lang.IllegalArgumentException
            java.lang.String r13 = "Activity class name must not be empty."
            java.lang.String r13 = r13.toString()
            r12.<init>(r13)
            throw r12
        L99:
            java.lang.IllegalArgumentException r12 = new java.lang.IllegalArgumentException
            java.lang.String r13 = "Package name must not be empty"
            java.lang.String r13 = r13.toString()
            r12.<init>(r13)
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.window.embedding.ActivityFilter.<init>(android.content.ComponentName, java.lang.String):void");
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ActivityFilter) {
            ActivityFilter activityFilter = (ActivityFilter) obj;
            return Intrinsics.areEqual(this.componentName, activityFilter.componentName) && Intrinsics.areEqual(this.intentAction, activityFilter.intentAction);
        }
        return false;
    }

    @g
    public final ComponentName getComponentName() {
        return this.componentName;
    }

    @h
    public final String getIntentAction() {
        return this.intentAction;
    }

    public int hashCode() {
        int hashCode = this.componentName.hashCode() * 31;
        String str = this.intentAction;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    public final boolean matchesActivity(@g Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (MatcherUtils.INSTANCE.areActivityOrIntentComponentsMatching$window_release(activity, this.componentName)) {
            String str = this.intentAction;
            if (str != null) {
                Intent intent = activity.getIntent();
                if (Intrinsics.areEqual(str, intent == null ? null : intent.getAction())) {
                }
            }
            return true;
        }
        return false;
    }

    public final boolean matchesIntent(@g Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        if (MatcherUtils.INSTANCE.areComponentsMatching$window_release(intent.getComponent(), this.componentName)) {
            String str = this.intentAction;
            return str == null || Intrinsics.areEqual(str, intent.getAction());
        }
        return false;
    }

    @g
    public String toString() {
        return "ActivityFilter(componentName=" + this.componentName + ", intentAction=" + ((Object) this.intentAction) + ')';
    }
}
