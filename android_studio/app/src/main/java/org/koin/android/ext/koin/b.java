package org.koin.android.ext.koin;

import android.app.Application;
import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import m8.g;
import org.koin.android.error.MissingAndroidContextException;
import org.koin.core.scope.Scope;

/* compiled from: ModuleExt.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u001a\n\u0010\u0002\u001a\u00020\u0001*\u00020\u0000\u001a\n\u0010\u0004\u001a\u00020\u0003*\u00020\u0000\"\u0014\u0010\u0007\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0004\u0010\u0006¨\u0006\b"}, d2 = {"Lorg/koin/core/scope/Scope;", "Landroid/content/Context;", "b", "Landroid/app/Application;", "a", "", "Ljava/lang/String;", "ERROR_MSG", "koin-android_release"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class b {
    @g

    /* renamed from: a  reason: collision with root package name */
    public static final String f92167a = "Please use androidContext() function in your KoinApplication configuration.";

    @g
    public static final Application a(@g Scope scope) {
        Intrinsics.checkNotNullParameter(scope, "<this>");
        try {
            return (Application) scope.p(Reflection.getOrCreateKotlinClass(Application.class), null, null);
        } catch (Exception unused) {
            throw new MissingAndroidContextException("Can't resolve Application instance. Please use androidContext() function in your KoinApplication configuration.");
        }
    }

    @g
    public static final Context b(@g Scope scope) {
        Intrinsics.checkNotNullParameter(scope, "<this>");
        try {
            return (Context) scope.p(Reflection.getOrCreateKotlinClass(Context.class), null, null);
        } catch (Exception unused) {
            throw new MissingAndroidContextException("Can't resolve Context instance. Please use androidContext() function in your KoinApplication configuration.");
        }
    }
}
