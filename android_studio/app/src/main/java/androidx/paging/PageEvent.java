package androidx.paging;

import androidx.exifinterface.media.ExifInterface;
import androidx.paging.LoadState;
import com.google.common.net.b;
import io.sentry.protocol.v;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: PageEvent.kt */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u001c\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b0\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0002:\u0003\u000f\u0010\u0011B\u0007\b\u0004¢\u0006\u0002\u0010\u0003J;\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\"\u0010\u0005\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0006H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\tJK\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\u000b0\u0000\"\b\b\u0001\u0010\u000b*\u00020\u00022(\u0010\f\u001a$\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u000b0\r0\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0006H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\tJE\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\u000b0\u0000\"\b\b\u0001\u0010\u000b*\u00020\u00022\"\u0010\f\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u000b0\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0006H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\t\u0082\u0001\u0003\u0012\u0013\u0014\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0015"}, d2 = {"Landroidx/paging/PageEvent;", ExifInterface.GPS_DIRECTION_TRUE, "", "()V", "filter", "predicate", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "flatMap", "R", "transform", "", "map", "Drop", "Insert", "LoadStateUpdate", "Landroidx/paging/PageEvent$Insert;", "Landroidx/paging/PageEvent$Drop;", "Landroidx/paging/PageEvent$LoadStateUpdate;", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public abstract class PageEvent<T> {

    /* compiled from: PageEvent.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u0000*\b\b\u0001\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B%\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007¢\u0006\u0002\u0010\nJ\t\u0010\u0013\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0007HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0007HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0007HÆ\u0003J7\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00010\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0002HÖ\u0003J\t\u0010\u001b\u001a\u00020\u0007HÖ\u0001J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\b\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0011\u0010\u0010\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u000eR\u0011\u0010\t\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000e¨\u0006\u001e"}, d2 = {"Landroidx/paging/PageEvent$Drop;", ExifInterface.GPS_DIRECTION_TRUE, "", "Landroidx/paging/PageEvent;", "loadType", "Landroidx/paging/LoadType;", "minPageOffset", "", "maxPageOffset", "placeholdersRemaining", "(Landroidx/paging/LoadType;III)V", "getLoadType", "()Landroidx/paging/LoadType;", "getMaxPageOffset", "()I", "getMinPageOffset", "pageCount", "getPageCount", "getPlaceholdersRemaining", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "toString", "", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Drop<T> extends PageEvent<T> {
        @g
        private final LoadType loadType;
        private final int maxPageOffset;
        private final int minPageOffset;
        private final int placeholdersRemaining;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Drop(@g LoadType loadType, int i4, int i10, int i11) {
            super(null);
            Intrinsics.checkNotNullParameter(loadType, "loadType");
            this.loadType = loadType;
            this.minPageOffset = i4;
            this.maxPageOffset = i10;
            this.placeholdersRemaining = i11;
            if (loadType != LoadType.REFRESH) {
                if (!(getPageCount() > 0)) {
                    throw new IllegalArgumentException(Intrinsics.stringPlus("Drop count must be > 0, but was ", Integer.valueOf(getPageCount())).toString());
                }
                if (!(i11 >= 0)) {
                    throw new IllegalArgumentException(Intrinsics.stringPlus("Invalid placeholdersRemaining ", Integer.valueOf(getPlaceholdersRemaining())).toString());
                }
                return;
            }
            throw new IllegalArgumentException("Drop load type must be PREPEND or APPEND".toString());
        }

        public static /* synthetic */ Drop copy$default(Drop drop, LoadType loadType, int i4, int i10, int i11, int i12, Object obj) {
            if ((i12 & 1) != 0) {
                loadType = drop.loadType;
            }
            if ((i12 & 2) != 0) {
                i4 = drop.minPageOffset;
            }
            if ((i12 & 4) != 0) {
                i10 = drop.maxPageOffset;
            }
            if ((i12 & 8) != 0) {
                i11 = drop.placeholdersRemaining;
            }
            return drop.copy(loadType, i4, i10, i11);
        }

        @g
        public final LoadType component1() {
            return this.loadType;
        }

        public final int component2() {
            return this.minPageOffset;
        }

        public final int component3() {
            return this.maxPageOffset;
        }

        public final int component4() {
            return this.placeholdersRemaining;
        }

        @g
        public final Drop<T> copy(@g LoadType loadType, int i4, int i10, int i11) {
            Intrinsics.checkNotNullParameter(loadType, "loadType");
            return new Drop<>(loadType, i4, i10, i11);
        }

        public boolean equals(@h Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Drop) {
                Drop drop = (Drop) obj;
                return this.loadType == drop.loadType && this.minPageOffset == drop.minPageOffset && this.maxPageOffset == drop.maxPageOffset && this.placeholdersRemaining == drop.placeholdersRemaining;
            }
            return false;
        }

        @g
        public final LoadType getLoadType() {
            return this.loadType;
        }

        public final int getMaxPageOffset() {
            return this.maxPageOffset;
        }

        public final int getMinPageOffset() {
            return this.minPageOffset;
        }

        public final int getPageCount() {
            return (this.maxPageOffset - this.minPageOffset) + 1;
        }

        public final int getPlaceholdersRemaining() {
            return this.placeholdersRemaining;
        }

        public int hashCode() {
            return (((((this.loadType.hashCode() * 31) + this.minPageOffset) * 31) + this.maxPageOffset) * 31) + this.placeholdersRemaining;
        }

        @g
        public String toString() {
            return "Drop(loadType=" + this.loadType + ", minPageOffset=" + this.minPageOffset + ", maxPageOffset=" + this.maxPageOffset + ", placeholdersRemaining=" + this.placeholdersRemaining + ')';
        }
    }

    /* compiled from: PageEvent.kt */
    @Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u001c\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u0000 5*\b\b\u0001\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003:\u00015BG\b\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0012\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\b0\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0002\u0010\u000fJ\t\u0010\u001a\u001a\u00020\u0005HÆ\u0003J\u0015\u0010\u001b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\b0\u0007HÆ\u0003J\t\u0010\u001c\u001a\u00020\nHÆ\u0003J\t\u0010\u001d\u001a\u00020\nHÆ\u0003J\t\u0010\u001e\u001a\u00020\rHÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\rHÆ\u0003JY\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00010\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u00052\u0014\b\u0002\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\b0\u00072\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\f\u001a\u00020\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\rHÆ\u0001J\u0013\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010\u0002HÖ\u0003J;\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00010\u00032\"\u0010%\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\"0'\u0012\u0006\u0012\u0004\u0018\u00010\u00020&H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010(JK\u0010)\u001a\b\u0012\u0004\u0012\u0002H*0\u0003\"\b\b\u0002\u0010**\u00020\u00022(\u0010+\u001a$\b\u0001\u0012\u0004\u0012\u00028\u0001\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H*0,0'\u0012\u0006\u0012\u0004\u0018\u00010\u00020&H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010(J\t\u0010-\u001a\u00020\nHÖ\u0001JE\u0010.\u001a\b\u0012\u0004\u0012\u0002H*0\u0003\"\b\b\u0002\u0010**\u00020\u00022\"\u0010+\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H*0'\u0012\u0006\u0012\u0004\u0018\u00010\u00020&H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010(J9\u0010/\u001a\b\u0012\u0004\u0012\u0002H*0\u0000\"\b\b\u0002\u0010**\u00020\u00022\u001e\u0010+\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\b\u0012\n\u0012\b\u0012\u0004\u0012\u0002H*0\b00H\u0082\bJ\t\u00101\u001a\u000202HÖ\u0001JM\u00103\u001a\b\u0012\u0004\u0012\u0002H*0\u0000\"\b\b\u0002\u0010**\u00020\u00022*\u0010+\u001a&\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\b0\u0007\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H*0\b0\u000700H\u0080\bø\u0001\u0001¢\u0006\u0002\b4R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u001d\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\b0\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\u000b\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0017R\u0011\u0010\f\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0013\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b\u009920\u0001¨\u00066"}, d2 = {"Landroidx/paging/PageEvent$Insert;", ExifInterface.GPS_DIRECTION_TRUE, "", "Landroidx/paging/PageEvent;", "loadType", "Landroidx/paging/LoadType;", "pages", "", "Landroidx/paging/TransformablePage;", "placeholdersBefore", "", "placeholdersAfter", "sourceLoadStates", "Landroidx/paging/LoadStates;", "mediatorLoadStates", "(Landroidx/paging/LoadType;Ljava/util/List;IILandroidx/paging/LoadStates;Landroidx/paging/LoadStates;)V", "getLoadType", "()Landroidx/paging/LoadType;", "getMediatorLoadStates", "()Landroidx/paging/LoadStates;", "getPages", "()Ljava/util/List;", "getPlaceholdersAfter", "()I", "getPlaceholdersBefore", "getSourceLoadStates", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "filter", "predicate", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "flatMap", "R", "transform", "", "hashCode", "map", "mapPages", "Lkotlin/Function1;", "toString", "", "transformPages", "transformPages$paging_common", "Companion", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Insert<T> extends PageEvent<T> {
        @g
        public static final Companion Companion;
        @g
        private static final Insert<Object> EMPTY_REFRESH_LOCAL;
        @g
        private final LoadType loadType;
        @h
        private final LoadStates mediatorLoadStates;
        @g
        private final List<TransformablePage<T>> pages;
        private final int placeholdersAfter;
        private final int placeholdersBefore;
        @g
        private final LoadStates sourceLoadStates;

        /* compiled from: PageEvent.kt */
        @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JF\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\b0\u0004\"\b\b\u0002\u0010\b*\u00020\u00012\u0012\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\b0\u000b0\n2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000fJF\u0010\u0011\u001a\b\u0012\u0004\u0012\u0002H\b0\u0004\"\b\b\u0002\u0010\b*\u00020\u00012\u0012\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\b0\u000b0\n2\u0006\u0010\u0012\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000fJN\u0010\u0013\u001a\b\u0012\u0004\u0012\u0002H\b0\u0004\"\b\b\u0002\u0010\b*\u00020\u00012\u0012\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\b0\u000b0\n2\u0006\u0010\u0012\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000fR\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00010\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0014"}, d2 = {"Landroidx/paging/PageEvent$Insert$Companion;", "", "()V", "EMPTY_REFRESH_LOCAL", "Landroidx/paging/PageEvent$Insert;", "getEMPTY_REFRESH_LOCAL", "()Landroidx/paging/PageEvent$Insert;", "Append", ExifInterface.GPS_DIRECTION_TRUE, "pages", "", "Landroidx/paging/TransformablePage;", "placeholdersAfter", "", "sourceLoadStates", "Landroidx/paging/LoadStates;", "mediatorLoadStates", "Prepend", "placeholdersBefore", b.f34644q0, "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes.dex */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public static /* synthetic */ Insert Append$default(Companion companion, List list, int i4, LoadStates loadStates, LoadStates loadStates2, int i10, Object obj) {
                if ((i10 & 8) != 0) {
                    loadStates2 = null;
                }
                return companion.Append(list, i4, loadStates, loadStates2);
            }

            public static /* synthetic */ Insert Prepend$default(Companion companion, List list, int i4, LoadStates loadStates, LoadStates loadStates2, int i10, Object obj) {
                if ((i10 & 8) != 0) {
                    loadStates2 = null;
                }
                return companion.Prepend(list, i4, loadStates, loadStates2);
            }

            public static /* synthetic */ Insert Refresh$default(Companion companion, List list, int i4, int i10, LoadStates loadStates, LoadStates loadStates2, int i11, Object obj) {
                if ((i11 & 16) != 0) {
                    loadStates2 = null;
                }
                return companion.Refresh(list, i4, i10, loadStates, loadStates2);
            }

            @g
            public final <T> Insert<T> Append(@g List<TransformablePage<T>> pages, int i4, @g LoadStates sourceLoadStates, @h LoadStates loadStates) {
                Intrinsics.checkNotNullParameter(pages, "pages");
                Intrinsics.checkNotNullParameter(sourceLoadStates, "sourceLoadStates");
                return new Insert<>(LoadType.APPEND, pages, -1, i4, sourceLoadStates, loadStates, null);
            }

            @g
            public final <T> Insert<T> Prepend(@g List<TransformablePage<T>> pages, int i4, @g LoadStates sourceLoadStates, @h LoadStates loadStates) {
                Intrinsics.checkNotNullParameter(pages, "pages");
                Intrinsics.checkNotNullParameter(sourceLoadStates, "sourceLoadStates");
                return new Insert<>(LoadType.PREPEND, pages, i4, -1, sourceLoadStates, loadStates, null);
            }

            @g
            public final <T> Insert<T> Refresh(@g List<TransformablePage<T>> pages, int i4, int i10, @g LoadStates sourceLoadStates, @h LoadStates loadStates) {
                Intrinsics.checkNotNullParameter(pages, "pages");
                Intrinsics.checkNotNullParameter(sourceLoadStates, "sourceLoadStates");
                return new Insert<>(LoadType.REFRESH, pages, i4, i10, sourceLoadStates, loadStates, null);
            }

            @g
            public final Insert<Object> getEMPTY_REFRESH_LOCAL() {
                return Insert.EMPTY_REFRESH_LOCAL;
            }
        }

        static {
            List listOf;
            Companion companion = new Companion(null);
            Companion = companion;
            listOf = CollectionsKt__CollectionsJVMKt.listOf(TransformablePage.Companion.getEMPTY_INITIAL_PAGE());
            LoadState.NotLoading.Companion companion2 = LoadState.NotLoading.Companion;
            EMPTY_REFRESH_LOCAL = Companion.Refresh$default(companion, listOf, 0, 0, new LoadStates(companion2.getIncomplete$paging_common(), companion2.getComplete$paging_common(), companion2.getComplete$paging_common()), null, 16, null);
        }

        /* synthetic */ Insert(LoadType loadType, List list, int i4, int i10, LoadStates loadStates, LoadStates loadStates2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this(loadType, list, i4, i10, loadStates, (i11 & 32) != 0 ? null : loadStates2);
        }

        public /* synthetic */ Insert(LoadType loadType, List list, int i4, int i10, LoadStates loadStates, LoadStates loadStates2, DefaultConstructorMarker defaultConstructorMarker) {
            this(loadType, list, i4, i10, loadStates, loadStates2);
        }

        public static /* synthetic */ Insert copy$default(Insert insert, LoadType loadType, List list, int i4, int i10, LoadStates loadStates, LoadStates loadStates2, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                loadType = insert.loadType;
            }
            List<TransformablePage<T>> list2 = list;
            if ((i11 & 2) != 0) {
                list2 = insert.pages;
            }
            List list3 = list2;
            if ((i11 & 4) != 0) {
                i4 = insert.placeholdersBefore;
            }
            int i12 = i4;
            if ((i11 & 8) != 0) {
                i10 = insert.placeholdersAfter;
            }
            int i13 = i10;
            if ((i11 & 16) != 0) {
                loadStates = insert.sourceLoadStates;
            }
            LoadStates loadStates3 = loadStates;
            if ((i11 & 32) != 0) {
                loadStates2 = insert.mediatorLoadStates;
            }
            return insert.copy(loadType, list3, i12, i13, loadStates3, loadStates2);
        }

        private final <R> Insert<R> mapPages(Function1<? super TransformablePage<T>, TransformablePage<R>> function1) {
            int collectionSizeOrDefault;
            LoadType loadType = getLoadType();
            List<TransformablePage<T>> pages = getPages();
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(pages, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it = pages.iterator();
            while (it.hasNext()) {
                arrayList.add(function1.invoke(it.next()));
            }
            return new Insert<>(loadType, arrayList, getPlaceholdersBefore(), getPlaceholdersAfter(), getSourceLoadStates(), getMediatorLoadStates(), null);
        }

        @g
        public final LoadType component1() {
            return this.loadType;
        }

        @g
        public final List<TransformablePage<T>> component2() {
            return this.pages;
        }

        public final int component3() {
            return this.placeholdersBefore;
        }

        public final int component4() {
            return this.placeholdersAfter;
        }

        @g
        public final LoadStates component5() {
            return this.sourceLoadStates;
        }

        @h
        public final LoadStates component6() {
            return this.mediatorLoadStates;
        }

        @g
        public final Insert<T> copy(@g LoadType loadType, @g List<TransformablePage<T>> pages, int i4, int i10, @g LoadStates sourceLoadStates, @h LoadStates loadStates) {
            Intrinsics.checkNotNullParameter(loadType, "loadType");
            Intrinsics.checkNotNullParameter(pages, "pages");
            Intrinsics.checkNotNullParameter(sourceLoadStates, "sourceLoadStates");
            return new Insert<>(loadType, pages, i4, i10, sourceLoadStates, loadStates);
        }

        public boolean equals(@h Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Insert) {
                Insert insert = (Insert) obj;
                return this.loadType == insert.loadType && Intrinsics.areEqual(this.pages, insert.pages) && this.placeholdersBefore == insert.placeholdersBefore && this.placeholdersAfter == insert.placeholdersAfter && Intrinsics.areEqual(this.sourceLoadStates, insert.sourceLoadStates) && Intrinsics.areEqual(this.mediatorLoadStates, insert.mediatorLoadStates);
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:10:0x0029  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x0076  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x009e  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x00c6  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x010c  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x0133  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x0148  */
        /* JADX WARN: Type inference failed for: r10v8, types: [java.util.List] */
        /* JADX WARN: Type inference failed for: r11v7, types: [java.util.List] */
        /* JADX WARN: Type inference failed for: r14v3, types: [java.util.Collection] */
        /* JADX WARN: Type inference failed for: r7v8, types: [java.util.Collection] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x009e -> B:18:0x00c0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x00f5 -> B:27:0x0104). Please submit an issue!!! */
        @Override // androidx.paging.PageEvent
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public java.lang.Object filter(@m8.g kotlin.jvm.functions.Function2<? super T, ? super kotlin.coroutines.Continuation<? super java.lang.Boolean>, ? extends java.lang.Object> r19, @m8.g kotlin.coroutines.Continuation<? super androidx.paging.PageEvent<T>> r20) {
            /*
                Method dump skipped, instructions count: 356
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PageEvent.Insert.filter(kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:10:0x0029  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x0076  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x009e  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x00c5  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x0125 A[LOOP:0: B:34:0x011b->B:36:0x0125, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:38:0x0138  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x014e  */
        /* JADX WARN: Type inference failed for: r10v8, types: [java.util.List] */
        /* JADX WARN: Type inference failed for: r11v7, types: [java.util.List] */
        /* JADX WARN: Type inference failed for: r14v3, types: [java.util.Collection] */
        /* JADX WARN: Type inference failed for: r7v8, types: [java.util.Collection] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x009e -> B:18:0x00bf). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x00f4 -> B:27:0x0102). Please submit an issue!!! */
        @Override // androidx.paging.PageEvent
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public <R> java.lang.Object flatMap(@m8.g kotlin.jvm.functions.Function2<? super T, ? super kotlin.coroutines.Continuation<? super java.lang.Iterable<? extends R>>, ? extends java.lang.Object> r19, @m8.g kotlin.coroutines.Continuation<? super androidx.paging.PageEvent<R>> r20) {
            /*
                Method dump skipped, instructions count: 362
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PageEvent.Insert.flatMap(kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
        }

        @g
        public final LoadType getLoadType() {
            return this.loadType;
        }

        @h
        public final LoadStates getMediatorLoadStates() {
            return this.mediatorLoadStates;
        }

        @g
        public final List<TransformablePage<T>> getPages() {
            return this.pages;
        }

        public final int getPlaceholdersAfter() {
            return this.placeholdersAfter;
        }

        public final int getPlaceholdersBefore() {
            return this.placeholdersBefore;
        }

        @g
        public final LoadStates getSourceLoadStates() {
            return this.sourceLoadStates;
        }

        public int hashCode() {
            int hashCode = ((((((((this.loadType.hashCode() * 31) + this.pages.hashCode()) * 31) + this.placeholdersBefore) * 31) + this.placeholdersAfter) * 31) + this.sourceLoadStates.hashCode()) * 31;
            LoadStates loadStates = this.mediatorLoadStates;
            return hashCode + (loadStates == null ? 0 : loadStates.hashCode());
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:10:0x002b  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x006d  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x008f  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x00b6  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x00ec  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0104  */
        /* JADX WARN: Type inference failed for: r13v9, types: [java.util.Collection] */
        /* JADX WARN: Type inference failed for: r4v9, types: [java.util.Collection] */
        /* JADX WARN: Type inference failed for: r7v10, types: [java.util.Collection] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x008f -> B:18:0x00b0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x00da -> B:24:0x00e2). Please submit an issue!!! */
        @Override // androidx.paging.PageEvent
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public <R> java.lang.Object map(@m8.g kotlin.jvm.functions.Function2<? super T, ? super kotlin.coroutines.Continuation<? super R>, ? extends java.lang.Object> r18, @m8.g kotlin.coroutines.Continuation<? super androidx.paging.PageEvent<R>> r19) {
            /*
                Method dump skipped, instructions count: 288
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PageEvent.Insert.map(kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
        }

        @g
        public String toString() {
            return "Insert(loadType=" + this.loadType + ", pages=" + this.pages + ", placeholdersBefore=" + this.placeholdersBefore + ", placeholdersAfter=" + this.placeholdersAfter + ", sourceLoadStates=" + this.sourceLoadStates + ", mediatorLoadStates=" + this.mediatorLoadStates + ')';
        }

        @g
        public final <R> Insert<R> transformPages$paging_common(@g Function1<? super List<TransformablePage<T>>, ? extends List<TransformablePage<R>>> transform) {
            Intrinsics.checkNotNullParameter(transform, "transform");
            return new Insert<>(getLoadType(), transform.invoke(getPages()), getPlaceholdersBefore(), getPlaceholdersAfter(), getSourceLoadStates(), getMediatorLoadStates(), null);
        }

        private Insert(LoadType loadType, List<TransformablePage<T>> list, int i4, int i10, LoadStates loadStates, LoadStates loadStates2) {
            super(null);
            this.loadType = loadType;
            this.pages = list;
            this.placeholdersBefore = i4;
            this.placeholdersAfter = i10;
            this.sourceLoadStates = loadStates;
            this.mediatorLoadStates = loadStates2;
            boolean z9 = false;
            if (loadType == LoadType.APPEND || i4 >= 0) {
                if (loadType == LoadType.PREPEND || i10 >= 0) {
                    if (!((loadType != LoadType.REFRESH || (list.isEmpty() ^ true)) ? true : true)) {
                        throw new IllegalArgumentException("Cannot create a REFRESH Insert event with no TransformablePages as this could permanently stall pagination. Note that this check does not prevent empty LoadResults and is instead usually an indication of an internal error in Paging itself.".toString());
                    }
                    return;
                }
                throw new IllegalArgumentException(Intrinsics.stringPlus("Append insert defining placeholdersAfter must be > 0, but was ", Integer.valueOf(getPlaceholdersAfter())).toString());
            }
            throw new IllegalArgumentException(Intrinsics.stringPlus("Prepend insert defining placeholdersBefore must be > 0, but was ", Integer.valueOf(getPlaceholdersBefore())).toString());
        }
    }

    /* compiled from: PageEvent.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u0000*\b\b\u0001\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0019\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007J\t\u0010\u000b\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J%\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00010\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0002HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\t¨\u0006\u0015"}, d2 = {"Landroidx/paging/PageEvent$LoadStateUpdate;", ExifInterface.GPS_DIRECTION_TRUE, "", "Landroidx/paging/PageEvent;", v.b.f83881a, "Landroidx/paging/LoadStates;", "mediator", "(Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;)V", "getMediator", "()Landroidx/paging/LoadStates;", "getSource", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class LoadStateUpdate<T> extends PageEvent<T> {
        @h
        private final LoadStates mediator;
        @g
        private final LoadStates source;

        public /* synthetic */ LoadStateUpdate(LoadStates loadStates, LoadStates loadStates2, int i4, DefaultConstructorMarker defaultConstructorMarker) {
            this(loadStates, (i4 & 2) != 0 ? null : loadStates2);
        }

        public static /* synthetic */ LoadStateUpdate copy$default(LoadStateUpdate loadStateUpdate, LoadStates loadStates, LoadStates loadStates2, int i4, Object obj) {
            if ((i4 & 1) != 0) {
                loadStates = loadStateUpdate.source;
            }
            if ((i4 & 2) != 0) {
                loadStates2 = loadStateUpdate.mediator;
            }
            return loadStateUpdate.copy(loadStates, loadStates2);
        }

        @g
        public final LoadStates component1() {
            return this.source;
        }

        @h
        public final LoadStates component2() {
            return this.mediator;
        }

        @g
        public final LoadStateUpdate<T> copy(@g LoadStates source, @h LoadStates loadStates) {
            Intrinsics.checkNotNullParameter(source, "source");
            return new LoadStateUpdate<>(source, loadStates);
        }

        public boolean equals(@h Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof LoadStateUpdate) {
                LoadStateUpdate loadStateUpdate = (LoadStateUpdate) obj;
                return Intrinsics.areEqual(this.source, loadStateUpdate.source) && Intrinsics.areEqual(this.mediator, loadStateUpdate.mediator);
            }
            return false;
        }

        @h
        public final LoadStates getMediator() {
            return this.mediator;
        }

        @g
        public final LoadStates getSource() {
            return this.source;
        }

        public int hashCode() {
            int hashCode = this.source.hashCode() * 31;
            LoadStates loadStates = this.mediator;
            return hashCode + (loadStates == null ? 0 : loadStates.hashCode());
        }

        @g
        public String toString() {
            return "LoadStateUpdate(source=" + this.source + ", mediator=" + this.mediator + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LoadStateUpdate(@g LoadStates source, @h LoadStates loadStates) {
            super(null);
            Intrinsics.checkNotNullParameter(source, "source");
            this.source = source;
            this.mediator = loadStates;
        }
    }

    private PageEvent() {
    }

    public /* synthetic */ PageEvent(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    static /* synthetic */ Object filter$suspendImpl(PageEvent pageEvent, Function2 function2, Continuation continuation) {
        return pageEvent;
    }

    static /* synthetic */ Object flatMap$suspendImpl(PageEvent pageEvent, Function2 function2, Continuation continuation) {
        return pageEvent;
    }

    static /* synthetic */ Object map$suspendImpl(PageEvent pageEvent, Function2 function2, Continuation continuation) {
        return pageEvent;
    }

    @h
    public Object filter(@g Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2, @g Continuation<? super PageEvent<T>> continuation) {
        return filter$suspendImpl(this, function2, continuation);
    }

    @h
    public <R> Object flatMap(@g Function2<? super T, ? super Continuation<? super Iterable<? extends R>>, ? extends Object> function2, @g Continuation<? super PageEvent<R>> continuation) {
        return flatMap$suspendImpl(this, function2, continuation);
    }

    @h
    public <R> Object map(@g Function2<? super T, ? super Continuation<? super R>, ? extends Object> function2, @g Continuation<? super PageEvent<R>> continuation) {
        return map$suspendImpl(this, function2, continuation);
    }
}
