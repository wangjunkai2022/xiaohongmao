package androidx.navigation.ui;

import androidx.navigation.NavController;
import com.google.android.material.navigation.NavigationView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: NavigationView.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004¨\u0006\u0005"}, d2 = {"setupWithNavController", "", "Lcom/google/android/material/navigation/NavigationView;", "navController", "Landroidx/navigation/NavController;", "navigation-ui_release"}, k = 2, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class NavigationViewKt {
    public static final void setupWithNavController(@g NavigationView navigationView, @g NavController navController) {
        Intrinsics.checkNotNullParameter(navigationView, "<this>");
        Intrinsics.checkNotNullParameter(navController, "navController");
        NavigationUI.setupWithNavController(navigationView, navController);
    }
}
