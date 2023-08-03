package androidx.paging;

import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__IndentKt;
import m8.g;
import m8.h;

/* compiled from: ViewportHint.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b0\u0018\u00002\u00020\u0001:\u0002\u0015\u0016B'\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0003H\u0016J\u0015\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0013H\u0000¢\u0006\u0002\b\u0014R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t\u0082\u0001\u0002\u0017\u0018¨\u0006\u0019"}, d2 = {"Landroidx/paging/ViewportHint;", "", "presentedItemsBefore", "", "presentedItemsAfter", "originalPageOffsetFirst", "originalPageOffsetLast", "(IIII)V", "getOriginalPageOffsetFirst", "()I", "getOriginalPageOffsetLast", "getPresentedItemsAfter", "getPresentedItemsBefore", "equals", "", "other", "hashCode", "presentedItemsBeyondAnchor", "loadType", "Landroidx/paging/LoadType;", "presentedItemsBeyondAnchor$paging_common", "Access", "Initial", "Landroidx/paging/ViewportHint$Initial;", "Landroidx/paging/ViewportHint$Access;", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public abstract class ViewportHint {
    private final int originalPageOffsetFirst;
    private final int originalPageOffsetLast;
    private final int presentedItemsAfter;
    private final int presentedItemsBefore;

    /* compiled from: ViewportHint.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003¢\u0006\u0002\u0010\tJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0003H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000b¨\u0006\u0014"}, d2 = {"Landroidx/paging/ViewportHint$Access;", "Landroidx/paging/ViewportHint;", "pageOffset", "", "indexInPage", "presentedItemsBefore", "presentedItemsAfter", "originalPageOffsetFirst", "originalPageOffsetLast", "(IIIIII)V", "getIndexInPage", "()I", "getPageOffset", "equals", "", "other", "", "hashCode", "toString", "", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Access extends ViewportHint {
        private final int indexInPage;
        private final int pageOffset;

        public Access(int i4, int i10, int i11, int i12, int i13, int i14) {
            super(i11, i12, i13, i14, null);
            this.pageOffset = i4;
            this.indexInPage = i10;
        }

        @Override // androidx.paging.ViewportHint
        public boolean equals(@h Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Access) {
                Access access = (Access) obj;
                return this.pageOffset == access.pageOffset && this.indexInPage == access.indexInPage && getPresentedItemsBefore() == access.getPresentedItemsBefore() && getPresentedItemsAfter() == access.getPresentedItemsAfter() && getOriginalPageOffsetFirst() == access.getOriginalPageOffsetFirst() && getOriginalPageOffsetLast() == access.getOriginalPageOffsetLast();
            }
            return false;
        }

        public final int getIndexInPage() {
            return this.indexInPage;
        }

        public final int getPageOffset() {
            return this.pageOffset;
        }

        @Override // androidx.paging.ViewportHint
        public int hashCode() {
            return super.hashCode() + this.pageOffset + this.indexInPage;
        }

        @g
        public String toString() {
            String trimMargin$default;
            trimMargin$default = StringsKt__IndentKt.trimMargin$default("ViewportHint.Access(\n            |    pageOffset=" + this.pageOffset + ",\n            |    indexInPage=" + this.indexInPage + ",\n            |    presentedItemsBefore=" + getPresentedItemsBefore() + ",\n            |    presentedItemsAfter=" + getPresentedItemsAfter() + ",\n            |    originalPageOffsetFirst=" + getOriginalPageOffsetFirst() + ",\n            |    originalPageOffsetLast=" + getOriginalPageOffsetLast() + ",\n            |)", null, 1, null);
            return trimMargin$default;
        }
    }

    /* compiled from: ViewportHint.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\b\u0010\b\u001a\u00020\tH\u0016¨\u0006\n"}, d2 = {"Landroidx/paging/ViewportHint$Initial;", "Landroidx/paging/ViewportHint;", "presentedItemsBefore", "", "presentedItemsAfter", "originalPageOffsetFirst", "originalPageOffsetLast", "(IIII)V", "toString", "", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Initial extends ViewportHint {
        public Initial(int i4, int i10, int i11, int i12) {
            super(i4, i10, i11, i12, null);
        }

        @g
        public String toString() {
            String trimMargin$default;
            trimMargin$default = StringsKt__IndentKt.trimMargin$default("ViewportHint.Initial(\n            |    presentedItemsBefore=" + getPresentedItemsBefore() + ",\n            |    presentedItemsAfter=" + getPresentedItemsAfter() + ",\n            |    originalPageOffsetFirst=" + getOriginalPageOffsetFirst() + ",\n            |    originalPageOffsetLast=" + getOriginalPageOffsetLast() + ",\n            |)", null, 1, null);
            return trimMargin$default;
        }
    }

    /* compiled from: ViewportHint.kt */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LoadType.values().length];
            iArr[LoadType.REFRESH.ordinal()] = 1;
            iArr[LoadType.PREPEND.ordinal()] = 2;
            iArr[LoadType.APPEND.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private ViewportHint(int i4, int i10, int i11, int i12) {
        this.presentedItemsBefore = i4;
        this.presentedItemsAfter = i10;
        this.originalPageOffsetFirst = i11;
        this.originalPageOffsetLast = i12;
    }

    public /* synthetic */ ViewportHint(int i4, int i10, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(i4, i10, i11, i12);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ViewportHint) {
            ViewportHint viewportHint = (ViewportHint) obj;
            return this.presentedItemsBefore == viewportHint.presentedItemsBefore && this.presentedItemsAfter == viewportHint.presentedItemsAfter && this.originalPageOffsetFirst == viewportHint.originalPageOffsetFirst && this.originalPageOffsetLast == viewportHint.originalPageOffsetLast;
        }
        return false;
    }

    public final int getOriginalPageOffsetFirst() {
        return this.originalPageOffsetFirst;
    }

    public final int getOriginalPageOffsetLast() {
        return this.originalPageOffsetLast;
    }

    public final int getPresentedItemsAfter() {
        return this.presentedItemsAfter;
    }

    public final int getPresentedItemsBefore() {
        return this.presentedItemsBefore;
    }

    public int hashCode() {
        return this.presentedItemsBefore + this.presentedItemsAfter + this.originalPageOffsetFirst + this.originalPageOffsetLast;
    }

    public final int presentedItemsBeyondAnchor$paging_common(@g LoadType loadType) {
        Intrinsics.checkNotNullParameter(loadType, "loadType");
        int i4 = WhenMappings.$EnumSwitchMapping$0[loadType.ordinal()];
        if (i4 != 1) {
            if (i4 != 2) {
                if (i4 == 3) {
                    return this.presentedItemsAfter;
                }
                throw new NoWhenBranchMatchedException();
            }
            return this.presentedItemsBefore;
        }
        throw new IllegalArgumentException("Cannot get presentedItems for loadType: REFRESH");
    }
}
