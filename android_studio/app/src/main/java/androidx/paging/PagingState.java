package androidx.paging;

import androidx.annotation.IntRange;
import androidx.exifinterface.media.ExifInterface;
import androidx.paging.PagingSource;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: PagingState.kt */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0000\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u0002*\b\b\u0001\u0010\u0003*\u00020\u00022\u00020\u0002B;\u0012\u0018\u0010\u0004\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00060\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\b\b\u0001\u0010\u000b\u001a\u00020\b¢\u0006\u0002\u0010\fJY\u0010\u0014\u001a\u0002H\u0015\"\u0004\b\u0002\u0010\u00152\u0006\u0010\u0007\u001a\u00020\b26\u0010\u0016\u001a2\u0012\u0013\u0012\u00110\b¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(\u001a\u0012\u0013\u0012\u00110\b¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(\u001b\u0012\u0004\u0012\u0002H\u00150\u0017H\u0080\bø\u0001\u0000¢\u0006\u0004\b\u001c\u0010\u001dJ\u0015\u0010\u001e\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\u001fJ\u001c\u0010 \u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u0013\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010\u0002H\u0096\u0002J\r\u0010$\u001a\u0004\u0018\u00018\u0001¢\u0006\u0002\u0010%J\b\u0010&\u001a\u00020\bH\u0016J\u0006\u0010'\u001a\u00020\"J\r\u0010(\u001a\u0004\u0018\u00018\u0001¢\u0006\u0002\u0010%J\b\u0010)\u001a\u00020*H\u0016R\u0015\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u000e\u0010\u000b\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R#\u0010\u0004\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006+"}, d2 = {"Landroidx/paging/PagingState;", "Key", "", "Value", "pages", "", "Landroidx/paging/PagingSource$LoadResult$Page;", "anchorPosition", "", "config", "Landroidx/paging/PagingConfig;", "leadingPlaceholderCount", "(Ljava/util/List;Ljava/lang/Integer;Landroidx/paging/PagingConfig;I)V", "getAnchorPosition", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getConfig", "()Landroidx/paging/PagingConfig;", "getPages", "()Ljava/util/List;", "anchorPositionToPagedIndices", ExifInterface.GPS_DIRECTION_TRUE, "block", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "pageIndex", "index", "anchorPositionToPagedIndices$paging_common", "(ILkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "closestItemToPosition", "(I)Ljava/lang/Object;", "closestPageToPosition", "equals", "", "other", "firstItemOrNull", "()Ljava/lang/Object;", "hashCode", "isEmpty", "lastItemOrNull", "toString", "", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class PagingState<Key, Value> {
    @h
    private final Integer anchorPosition;
    @g
    private final PagingConfig config;
    private final int leadingPlaceholderCount;
    @g
    private final List<PagingSource.LoadResult.Page<Key, Value>> pages;

    public PagingState(@g List<PagingSource.LoadResult.Page<Key, Value>> pages, @h Integer num, @g PagingConfig config, @IntRange(from = 0) int i4) {
        Intrinsics.checkNotNullParameter(pages, "pages");
        Intrinsics.checkNotNullParameter(config, "config");
        this.pages = pages;
        this.anchorPosition = num;
        this.config = config;
        this.leadingPlaceholderCount = i4;
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x0013 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final <T> T anchorPositionToPagedIndices$paging_common(int r3, @m8.g kotlin.jvm.functions.Function2<? super java.lang.Integer, ? super java.lang.Integer, ? extends T> r4) {
        /*
            r2 = this;
            java.lang.String r0 = "block"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            int r0 = access$getLeadingPlaceholderCount$p(r2)
            int r3 = r3 - r0
            r0 = 0
        Lb:
            java.util.List r1 = r2.getPages()
            int r1 = kotlin.collections.CollectionsKt.getLastIndex(r1)
            if (r0 >= r1) goto L3f
            java.util.List r1 = r2.getPages()
            java.lang.Object r1 = r1.get(r0)
            androidx.paging.PagingSource$LoadResult$Page r1 = (androidx.paging.PagingSource.LoadResult.Page) r1
            java.util.List r1 = r1.getData()
            int r1 = kotlin.collections.CollectionsKt.getLastIndex(r1)
            if (r3 <= r1) goto L3f
            java.util.List r1 = r2.getPages()
            java.lang.Object r1 = r1.get(r0)
            androidx.paging.PagingSource$LoadResult$Page r1 = (androidx.paging.PagingSource.LoadResult.Page) r1
            java.util.List r1 = r1.getData()
            int r1 = r1.size()
            int r3 = r3 - r1
            int r0 = r0 + 1
            goto Lb
        L3f:
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            java.lang.Object r3 = r4.invoke(r0, r3)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PagingState.anchorPositionToPagedIndices$paging_common(int, kotlin.jvm.functions.Function2):java.lang.Object");
    }

    /* JADX WARN: Incorrect condition in loop: B:18:0x003c */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final Value closestItemToPosition(int r7) {
        /*
            r6 = this;
            java.util.List<androidx.paging.PagingSource$LoadResult$Page<Key, Value>> r0 = r6.pages
            boolean r1 = r0 instanceof java.util.Collection
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L10
            boolean r1 = r0.isEmpty()
            if (r1 == 0) goto L10
        Le:
            r0 = 1
            goto L2b
        L10:
            java.util.Iterator r0 = r0.iterator()
        L14:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto Le
            java.lang.Object r1 = r0.next()
            androidx.paging.PagingSource$LoadResult$Page r1 = (androidx.paging.PagingSource.LoadResult.Page) r1
            java.util.List r1 = r1.getData()
            boolean r1 = r1.isEmpty()
            if (r1 != 0) goto L14
            r0 = 0
        L2b:
            if (r0 == 0) goto L2f
            r7 = 0
            return r7
        L2f:
            int r0 = access$getLeadingPlaceholderCount$p(r6)
            int r7 = r7 - r0
        L34:
            java.util.List r0 = r6.getPages()
            int r0 = kotlin.collections.CollectionsKt.getLastIndex(r0)
            if (r2 >= r0) goto L68
            java.util.List r0 = r6.getPages()
            java.lang.Object r0 = r0.get(r2)
            androidx.paging.PagingSource$LoadResult$Page r0 = (androidx.paging.PagingSource.LoadResult.Page) r0
            java.util.List r0 = r0.getData()
            int r0 = kotlin.collections.CollectionsKt.getLastIndex(r0)
            if (r7 <= r0) goto L68
            java.util.List r0 = r6.getPages()
            java.lang.Object r0 = r0.get(r2)
            androidx.paging.PagingSource$LoadResult$Page r0 = (androidx.paging.PagingSource.LoadResult.Page) r0
            java.util.List r0 = r0.getData()
            int r0 = r0.size()
            int r7 = r7 - r0
            int r2 = r2 + 1
            goto L34
        L68:
            java.util.List r0 = r6.getPages()
            java.util.Iterator r0 = r0.iterator()
        L70:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto Lf7
            java.lang.Object r1 = r0.next()
            androidx.paging.PagingSource$LoadResult$Page r1 = (androidx.paging.PagingSource.LoadResult.Page) r1
            java.util.List r4 = r1.getData()
            boolean r4 = r4.isEmpty()
            r4 = r4 ^ r3
            if (r4 == 0) goto L70
            java.util.List r0 = r6.getPages()
            int r4 = r0.size()
            java.util.ListIterator r0 = r0.listIterator(r4)
        L93:
            boolean r4 = r0.hasPrevious()
            if (r4 == 0) goto Lef
            java.lang.Object r4 = r0.previous()
            androidx.paging.PagingSource$LoadResult$Page r4 = (androidx.paging.PagingSource.LoadResult.Page) r4
            java.util.List r5 = r4.getData()
            boolean r5 = r5.isEmpty()
            r5 = r5 ^ r3
            if (r5 == 0) goto L93
            if (r7 >= 0) goto Lb5
            java.util.List r7 = r1.getData()
            java.lang.Object r7 = kotlin.collections.CollectionsKt.first(r7)
            goto Lee
        Lb5:
            java.util.List r0 = r6.getPages()
            int r0 = kotlin.collections.CollectionsKt.getLastIndex(r0)
            if (r2 != r0) goto Ldc
            java.util.List r0 = r6.getPages()
            java.lang.Object r0 = kotlin.collections.CollectionsKt.last(r0)
            androidx.paging.PagingSource$LoadResult$Page r0 = (androidx.paging.PagingSource.LoadResult.Page) r0
            java.util.List r0 = r0.getData()
            int r0 = kotlin.collections.CollectionsKt.getLastIndex(r0)
            if (r7 <= r0) goto Ldc
            java.util.List r7 = r4.getData()
            java.lang.Object r7 = kotlin.collections.CollectionsKt.last(r7)
            goto Lee
        Ldc:
            java.util.List r0 = r6.getPages()
            java.lang.Object r0 = r0.get(r2)
            androidx.paging.PagingSource$LoadResult$Page r0 = (androidx.paging.PagingSource.LoadResult.Page) r0
            java.util.List r0 = r0.getData()
            java.lang.Object r7 = r0.get(r7)
        Lee:
            return r7
        Lef:
            java.util.NoSuchElementException r7 = new java.util.NoSuchElementException
            java.lang.String r0 = "List contains no element matching the predicate."
            r7.<init>(r0)
            throw r7
        Lf7:
            java.util.NoSuchElementException r7 = new java.util.NoSuchElementException
            java.lang.String r0 = "Collection contains no element matching the predicate."
            r7.<init>(r0)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PagingState.closestItemToPosition(int):java.lang.Object");
    }

    /* JADX WARN: Incorrect condition in loop: B:18:0x003b */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final androidx.paging.PagingSource.LoadResult.Page<Key, Value> closestPageToPosition(int r5) {
        /*
            r4 = this;
            java.util.List<androidx.paging.PagingSource$LoadResult$Page<Key, Value>> r0 = r4.pages
            boolean r1 = r0 instanceof java.util.Collection
            r2 = 0
            r3 = 1
            if (r1 == 0) goto Lf
            boolean r1 = r0.isEmpty()
            if (r1 == 0) goto Lf
            goto L2a
        Lf:
            java.util.Iterator r0 = r0.iterator()
        L13:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L2a
            java.lang.Object r1 = r0.next()
            androidx.paging.PagingSource$LoadResult$Page r1 = (androidx.paging.PagingSource.LoadResult.Page) r1
            java.util.List r1 = r1.getData()
            boolean r1 = r1.isEmpty()
            if (r1 != 0) goto L13
            r3 = 0
        L2a:
            if (r3 == 0) goto L2e
            r5 = 0
            return r5
        L2e:
            int r0 = access$getLeadingPlaceholderCount$p(r4)
            int r5 = r5 - r0
        L33:
            java.util.List r0 = r4.getPages()
            int r0 = kotlin.collections.CollectionsKt.getLastIndex(r0)
            if (r2 >= r0) goto L67
            java.util.List r0 = r4.getPages()
            java.lang.Object r0 = r0.get(r2)
            androidx.paging.PagingSource$LoadResult$Page r0 = (androidx.paging.PagingSource.LoadResult.Page) r0
            java.util.List r0 = r0.getData()
            int r0 = kotlin.collections.CollectionsKt.getLastIndex(r0)
            if (r5 <= r0) goto L67
            java.util.List r0 = r4.getPages()
            java.lang.Object r0 = r0.get(r2)
            androidx.paging.PagingSource$LoadResult$Page r0 = (androidx.paging.PagingSource.LoadResult.Page) r0
            java.util.List r0 = r0.getData()
            int r0 = r0.size()
            int r5 = r5 - r0
            int r2 = r2 + 1
            goto L33
        L67:
            if (r5 >= 0) goto L74
            java.util.List r5 = r4.getPages()
            java.lang.Object r5 = kotlin.collections.CollectionsKt.first(r5)
            androidx.paging.PagingSource$LoadResult$Page r5 = (androidx.paging.PagingSource.LoadResult.Page) r5
            goto L7e
        L74:
            java.util.List r5 = r4.getPages()
            java.lang.Object r5 = r5.get(r2)
            androidx.paging.PagingSource$LoadResult$Page r5 = (androidx.paging.PagingSource.LoadResult.Page) r5
        L7e:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PagingState.closestPageToPosition(int):androidx.paging.PagingSource$LoadResult$Page");
    }

    public boolean equals(@h Object obj) {
        if (obj instanceof PagingState) {
            PagingState pagingState = (PagingState) obj;
            if (Intrinsics.areEqual(this.pages, pagingState.pages) && Intrinsics.areEqual(this.anchorPosition, pagingState.anchorPosition) && Intrinsics.areEqual(this.config, pagingState.config) && this.leadingPlaceholderCount == pagingState.leadingPlaceholderCount) {
                return true;
            }
        }
        return false;
    }

    @h
    public final Value firstItemOrNull() {
        Object obj;
        List<Value> data;
        Object firstOrNull;
        Iterator<T> it = this.pages.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (!((PagingSource.LoadResult.Page) obj).getData().isEmpty()) {
                break;
            }
        }
        PagingSource.LoadResult.Page page = (PagingSource.LoadResult.Page) obj;
        if (page == null || (data = page.getData()) == null) {
            return null;
        }
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) data);
        return (Value) firstOrNull;
    }

    @h
    public final Integer getAnchorPosition() {
        return this.anchorPosition;
    }

    @g
    public final PagingConfig getConfig() {
        return this.config;
    }

    @g
    public final List<PagingSource.LoadResult.Page<Key, Value>> getPages() {
        return this.pages;
    }

    public int hashCode() {
        int hashCode = this.pages.hashCode();
        Integer num = this.anchorPosition;
        return hashCode + (num != null ? num.hashCode() : 0) + this.config.hashCode() + this.leadingPlaceholderCount;
    }

    public final boolean isEmpty() {
        List<PagingSource.LoadResult.Page<Key, Value>> list = this.pages;
        if ((list instanceof Collection) && list.isEmpty()) {
            return true;
        }
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            if (!((PagingSource.LoadResult.Page) it.next()).getData().isEmpty()) {
                return false;
            }
        }
        return true;
    }

    @h
    public final Value lastItemOrNull() {
        PagingSource.LoadResult.Page<Key, Value> page;
        List<Value> data;
        Object lastOrNull;
        List<PagingSource.LoadResult.Page<Key, Value>> list = this.pages;
        ListIterator<PagingSource.LoadResult.Page<Key, Value>> listIterator = list.listIterator(list.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                page = null;
                break;
            }
            page = listIterator.previous();
            if (!page.getData().isEmpty()) {
                break;
            }
        }
        PagingSource.LoadResult.Page<Key, Value> page2 = page;
        if (page2 == null || (data = page2.getData()) == null) {
            return null;
        }
        lastOrNull = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) data);
        return (Value) lastOrNull;
    }

    @g
    public String toString() {
        return "PagingState(pages=" + this.pages + ", anchorPosition=" + this.anchorPosition + ", config=" + this.config + ", leadingPlaceholderCount=" + this.leadingPlaceholderCount + ')';
    }
}
