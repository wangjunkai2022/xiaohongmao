package s8;

import androidx.lifecycle.ViewModelStoreOwner;
import androidx.savedstate.SavedStateRegistryOwner;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: ViewModelOwner.kt */
@Deprecated(message = "Replaced by ViewModelStoreOwner")
@Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001:\u0001\nB\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\f\u0010\rR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b¨\u0006\u000e"}, d2 = {"Ls8/a;", "", "Landroidx/lifecycle/ViewModelStoreOwner;", "storeOwner", "Landroidx/lifecycle/ViewModelStoreOwner;", "b", "()Landroidx/lifecycle/ViewModelStoreOwner;", "Landroidx/savedstate/SavedStateRegistryOwner;", "stateRegistry", "Landroidx/savedstate/SavedStateRegistryOwner;", "a", "()Landroidx/savedstate/SavedStateRegistryOwner;", "<init>", "(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/savedstate/SavedStateRegistryOwner;)V", "koin-android_release"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class a {
    @g

    /* renamed from: c  reason: collision with root package name */
    public static final C0836a f93283c = new C0836a(null);
    @g

    /* renamed from: a  reason: collision with root package name */
    private final ViewModelStoreOwner f93284a;
    @h

    /* renamed from: b  reason: collision with root package name */
    private final SavedStateRegistryOwner f93285b;

    /* compiled from: ViewModelOwner.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u001c\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007J\u0010\u0010\b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0001H\u0007¨\u0006\r"}, d2 = {"Ls8/a$a;", "", "Landroidx/lifecycle/ViewModelStoreOwner;", "storeOwner", "Landroidx/savedstate/SavedStateRegistryOwner;", "stateRegistry", "Ls8/a;", "b", "a", "owner", "d", "<init>", "()V", "koin-android_release"}, k = 1, mv = {1, 5, 1})
    /* renamed from: s8.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static final class C0836a {
        private C0836a() {
        }

        public /* synthetic */ C0836a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ a c(C0836a c0836a, ViewModelStoreOwner viewModelStoreOwner, SavedStateRegistryOwner savedStateRegistryOwner, int i4, Object obj) {
            if ((i4 & 2) != 0) {
                savedStateRegistryOwner = null;
            }
            return c0836a.b(viewModelStoreOwner, savedStateRegistryOwner);
        }

        @Deprecated(message = "Replaced by ViewModelStoreOwner")
        @g
        public final a a(@g ViewModelStoreOwner storeOwner) {
            Intrinsics.checkNotNullParameter(storeOwner, "storeOwner");
            return new a(storeOwner, null, 2, null);
        }

        @Deprecated(message = "Replaced by ViewModelStoreOwner")
        @g
        public final a b(@g ViewModelStoreOwner storeOwner, @h SavedStateRegistryOwner savedStateRegistryOwner) {
            Intrinsics.checkNotNullParameter(storeOwner, "storeOwner");
            return new a(storeOwner, savedStateRegistryOwner);
        }

        @Deprecated(message = "Replaced by ViewModelStoreOwner")
        @g
        public final a d(@g Object owner) {
            Intrinsics.checkNotNullParameter(owner, "owner");
            return new a((ViewModelStoreOwner) owner, owner instanceof SavedStateRegistryOwner ? (SavedStateRegistryOwner) owner : null);
        }
    }

    public a(@g ViewModelStoreOwner storeOwner, @h SavedStateRegistryOwner savedStateRegistryOwner) {
        Intrinsics.checkNotNullParameter(storeOwner, "storeOwner");
        this.f93284a = storeOwner;
        this.f93285b = savedStateRegistryOwner;
    }

    @h
    public final SavedStateRegistryOwner a() {
        return this.f93285b;
    }

    @g
    public final ViewModelStoreOwner b() {
        return this.f93284a;
    }

    public /* synthetic */ a(ViewModelStoreOwner viewModelStoreOwner, SavedStateRegistryOwner savedStateRegistryOwner, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(viewModelStoreOwner, (i4 & 2) != 0 ? null : savedStateRegistryOwner);
    }
}
