package androidx.core.splashscreen;

import androidx.core.splashscreen.SplashScreen;

/* compiled from: R8$$SyntheticClass */
/* loaded from: classes.dex */
public final /* synthetic */ class a implements SplashScreen.KeepOnScreenCondition {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ a f493a = new a();

    private /* synthetic */ a() {
    }

    @Override // androidx.core.splashscreen.SplashScreen.KeepOnScreenCondition
    public final boolean shouldKeepOnScreen() {
        boolean m13splashScreenWaitPredicate$lambda0;
        m13splashScreenWaitPredicate$lambda0 = SplashScreen.Impl.m13splashScreenWaitPredicate$lambda0();
        return m13splashScreenWaitPredicate$lambda0;
    }
}
