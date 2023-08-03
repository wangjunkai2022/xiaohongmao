package androidx.paging;

import androidx.exifinterface.media.ExifInterface;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: TransformablePage.kt */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0080\b\u0018\u0000 &*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0002:\u0001&B\u001d\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006¢\u0006\u0002\u0010\u0007B3\u0012\u0006\u0010\b\u001a\u00020\t\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\fJ\t\u0010\u0014\u001a\u00020\tHÆ\u0003J\u000f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0004HÆ\u0003J\u0011\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0006HÆ\u0003JE\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\b\b\u0002\u0010\b\u001a\u00020\t2\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u00062\b\b\u0002\u0010\n\u001a\u00020\u00042\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0006HÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0002H\u0096\u0002J\b\u0010\u001c\u001a\u00020\u0004H\u0016J\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001J.\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\u00042\u0006\u0010$\u001a\u00020\u00042\u0006\u0010%\u001a\u00020\u0004R\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0019\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0011\u0010\n\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006'"}, d2 = {"Landroidx/paging/TransformablePage;", ExifInterface.GPS_DIRECTION_TRUE, "", "originalPageOffset", "", "data", "", "(ILjava/util/List;)V", "originalPageOffsets", "", "hintOriginalPageOffset", "hintOriginalIndices", "([ILjava/util/List;ILjava/util/List;)V", "getData", "()Ljava/util/List;", "getHintOriginalIndices", "getHintOriginalPageOffset", "()I", "getOriginalPageOffsets", "()[I", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "toString", "", "viewportHintFor", "Landroidx/paging/ViewportHint$Access;", "index", "presentedItemsBefore", "presentedItemsAfter", "originalPageOffsetFirst", "originalPageOffsetLast", "Companion", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class TransformablePage<T> {
    @g
    public static final Companion Companion = new Companion(null);
    @g
    private static final TransformablePage<Object> EMPTY_INITIAL_PAGE;
    @g
    private final List<T> data;
    @h
    private final List<Integer> hintOriginalIndices;
    private final int hintOriginalPageOffset;
    @g
    private final int[] originalPageOffsets;

    /* compiled from: TransformablePage.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\b0\u0004\"\b\b\u0001\u0010\b*\u00020\u0001R\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00010\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Landroidx/paging/TransformablePage$Companion;", "", "()V", "EMPTY_INITIAL_PAGE", "Landroidx/paging/TransformablePage;", "getEMPTY_INITIAL_PAGE", "()Landroidx/paging/TransformablePage;", "empty", ExifInterface.GPS_DIRECTION_TRUE, "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @g
        public final <T> TransformablePage<T> empty() {
            return (TransformablePage<T>) getEMPTY_INITIAL_PAGE();
        }

        @g
        public final TransformablePage<Object> getEMPTY_INITIAL_PAGE() {
            return TransformablePage.EMPTY_INITIAL_PAGE;
        }
    }

    static {
        List emptyList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        EMPTY_INITIAL_PAGE = new TransformablePage<>(0, emptyList);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public TransformablePage(@g int[] originalPageOffsets, @g List<? extends T> data, int i4, @h List<Integer> list) {
        Intrinsics.checkNotNullParameter(originalPageOffsets, "originalPageOffsets");
        Intrinsics.checkNotNullParameter(data, "data");
        this.originalPageOffsets = originalPageOffsets;
        this.data = data;
        this.hintOriginalPageOffset = i4;
        this.hintOriginalIndices = list;
        boolean z9 = false;
        if (!(originalPageOffsets.length == 0)) {
            if ((list == null || list.size() == data.size()) ? true : true) {
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("If originalIndices (size = ");
            List<Integer> hintOriginalIndices = getHintOriginalIndices();
            Intrinsics.checkNotNull(hintOriginalIndices);
            sb.append(hintOriginalIndices.size());
            sb.append(") is provided, it must be same length as data (size = ");
            sb.append(getData().size());
            sb.append(')');
            throw new IllegalArgumentException(sb.toString().toString());
        }
        throw new IllegalArgumentException("originalPageOffsets cannot be empty when constructing TransformablePage".toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ TransformablePage copy$default(TransformablePage transformablePage, int[] iArr, List list, int i4, List list2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            iArr = transformablePage.originalPageOffsets;
        }
        if ((i10 & 2) != 0) {
            list = transformablePage.data;
        }
        if ((i10 & 4) != 0) {
            i4 = transformablePage.hintOriginalPageOffset;
        }
        if ((i10 & 8) != 0) {
            list2 = transformablePage.hintOriginalIndices;
        }
        return transformablePage.copy(iArr, list, i4, list2);
    }

    @g
    public final int[] component1() {
        return this.originalPageOffsets;
    }

    @g
    public final List<T> component2() {
        return this.data;
    }

    public final int component3() {
        return this.hintOriginalPageOffset;
    }

    @h
    public final List<Integer> component4() {
        return this.hintOriginalIndices;
    }

    @g
    public final TransformablePage<T> copy(@g int[] originalPageOffsets, @g List<? extends T> data, int i4, @h List<Integer> list) {
        Intrinsics.checkNotNullParameter(originalPageOffsets, "originalPageOffsets");
        Intrinsics.checkNotNullParameter(data, "data");
        return new TransformablePage<>(originalPageOffsets, data, i4, list);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (Intrinsics.areEqual(TransformablePage.class, obj == null ? null : obj.getClass())) {
            Objects.requireNonNull(obj, "null cannot be cast to non-null type androidx.paging.TransformablePage<*>");
            TransformablePage transformablePage = (TransformablePage) obj;
            return Arrays.equals(this.originalPageOffsets, transformablePage.originalPageOffsets) && Intrinsics.areEqual(this.data, transformablePage.data) && this.hintOriginalPageOffset == transformablePage.hintOriginalPageOffset && Intrinsics.areEqual(this.hintOriginalIndices, transformablePage.hintOriginalIndices);
        }
        return false;
    }

    @g
    public final List<T> getData() {
        return this.data;
    }

    @h
    public final List<Integer> getHintOriginalIndices() {
        return this.hintOriginalIndices;
    }

    public final int getHintOriginalPageOffset() {
        return this.hintOriginalPageOffset;
    }

    @g
    public final int[] getOriginalPageOffsets() {
        return this.originalPageOffsets;
    }

    public int hashCode() {
        int hashCode = ((((Arrays.hashCode(this.originalPageOffsets) * 31) + this.data.hashCode()) * 31) + this.hintOriginalPageOffset) * 31;
        List<Integer> list = this.hintOriginalIndices;
        return hashCode + (list == null ? 0 : list.hashCode());
    }

    @g
    public String toString() {
        return "TransformablePage(originalPageOffsets=" + Arrays.toString(this.originalPageOffsets) + ", data=" + this.data + ", hintOriginalPageOffset=" + this.hintOriginalPageOffset + ", hintOriginalIndices=" + this.hintOriginalIndices + ')';
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000c, code lost:
        r0 = kotlin.collections.CollectionsKt__CollectionsKt.getIndices(r0);
     */
    @m8.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final androidx.paging.ViewportHint.Access viewportHintFor(int r9, int r10, int r11, int r12, int r13) {
        /*
            r8 = this;
            androidx.paging.ViewportHint$Access r7 = new androidx.paging.ViewportHint$Access
            int r1 = r8.hintOriginalPageOffset
            java.util.List<java.lang.Integer> r0 = r8.hintOriginalIndices
            r2 = 1
            r3 = 0
            if (r0 != 0) goto Lc
        La:
            r2 = 0
            goto L19
        Lc:
            kotlin.ranges.IntRange r0 = kotlin.collections.CollectionsKt.getIndices(r0)
            if (r0 != 0) goto L13
            goto La
        L13:
            boolean r0 = r0.contains(r9)
            if (r0 != r2) goto La
        L19:
            if (r2 == 0) goto L27
            java.util.List<java.lang.Integer> r0 = r8.hintOriginalIndices
            java.lang.Object r9 = r0.get(r9)
            java.lang.Number r9 = (java.lang.Number) r9
            int r9 = r9.intValue()
        L27:
            r2 = r9
            r0 = r7
            r3 = r10
            r4 = r11
            r5 = r12
            r6 = r13
            r0.<init>(r1, r2, r3, r4, r5, r6)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.TransformablePage.viewportHintFor(int, int, int, int, int):androidx.paging.ViewportHint$Access");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TransformablePage(int i4, @g List<? extends T> data) {
        this(new int[]{i4}, data, i4, null);
        Intrinsics.checkNotNullParameter(data, "data");
    }
}
