package androidx.navigation;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.lifecycle.Lifecycle;
import com.facebook.common.callercontext.ContextChain;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: NavBackStackEntryState.kt */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0001\u0018\u0000 $2\u00020\u0001:\u0001$B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u000f\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\b\u0010\u0016\u001a\u00020\rH\u0016J(\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fJ\u0018\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\rH\u0016R\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\f\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\u0011¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0014\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000b¨\u0006%"}, d2 = {"Landroidx/navigation/NavBackStackEntryState;", "Landroid/os/Parcelable;", "entry", "Landroidx/navigation/NavBackStackEntry;", "(Landroidx/navigation/NavBackStackEntry;)V", "inParcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "args", "Landroid/os/Bundle;", "getArgs", "()Landroid/os/Bundle;", "destinationId", "", "getDestinationId", "()I", "id", "", "getId", "()Ljava/lang/String;", "savedState", "getSavedState", "describeContents", "instantiate", "context", "Landroid/content/Context;", "destination", "Landroidx/navigation/NavDestination;", "hostLifecycleState", "Landroidx/lifecycle/Lifecycle$State;", "viewModel", "Landroidx/navigation/NavControllerViewModel;", "writeToParcel", "", "parcel", ContextChain.TAG_INFRA, "Companion", "navigation-runtime_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public final class NavBackStackEntryState implements Parcelable {
    @h
    private final Bundle args;
    private final int destinationId;
    @g
    private final String id;
    @g
    private final Bundle savedState;
    @g
    public static final Companion Companion = new Companion(null);
    @JvmField
    @g
    public static final Parcelable.Creator<NavBackStackEntryState> CREATOR = new Parcelable.Creator<NavBackStackEntryState>() { // from class: androidx.navigation.NavBackStackEntryState$Companion$CREATOR$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @g
        public NavBackStackEntryState createFromParcel(@g Parcel inParcel) {
            Intrinsics.checkNotNullParameter(inParcel, "inParcel");
            return new NavBackStackEntryState(inParcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @g
        public NavBackStackEntryState[] newArray(int i4) {
            return new NavBackStackEntryState[i4];
        }
    };

    /* compiled from: NavBackStackEntryState.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Landroidx/navigation/NavBackStackEntryState$Companion;", "", "()V", "CREATOR", "Landroid/os/Parcelable$Creator;", "Landroidx/navigation/NavBackStackEntryState;", "navigation-runtime_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public NavBackStackEntryState(@g NavBackStackEntry entry) {
        Intrinsics.checkNotNullParameter(entry, "entry");
        this.id = entry.getId();
        this.destinationId = entry.getDestination().getId();
        this.args = entry.getArguments();
        Bundle bundle = new Bundle();
        this.savedState = bundle;
        entry.saveState(bundle);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @h
    public final Bundle getArgs() {
        return this.args;
    }

    public final int getDestinationId() {
        return this.destinationId;
    }

    @g
    public final String getId() {
        return this.id;
    }

    @g
    public final Bundle getSavedState() {
        return this.savedState;
    }

    @g
    public final NavBackStackEntry instantiate(@g Context context, @g NavDestination destination, @g Lifecycle.State hostLifecycleState, @h NavControllerViewModel navControllerViewModel) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(destination, "destination");
        Intrinsics.checkNotNullParameter(hostLifecycleState, "hostLifecycleState");
        Bundle bundle = this.args;
        if (bundle != null) {
            bundle.setClassLoader(context.getClassLoader());
        } else {
            bundle = null;
        }
        return NavBackStackEntry.Companion.create(context, destination, bundle, hostLifecycleState, navControllerViewModel, this.id, this.savedState);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@g Parcel parcel, int i4) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        parcel.writeString(this.id);
        parcel.writeInt(this.destinationId);
        parcel.writeBundle(this.args);
        parcel.writeBundle(this.savedState);
    }

    public NavBackStackEntryState(@g Parcel inParcel) {
        Intrinsics.checkNotNullParameter(inParcel, "inParcel");
        String readString = inParcel.readString();
        Intrinsics.checkNotNull(readString);
        this.id = readString;
        this.destinationId = inParcel.readInt();
        this.args = inParcel.readBundle(NavBackStackEntryState.class.getClassLoader());
        Bundle readBundle = inParcel.readBundle(NavBackStackEntryState.class.getClassLoader());
        Intrinsics.checkNotNull(readBundle);
        this.savedState = readBundle;
    }
}
