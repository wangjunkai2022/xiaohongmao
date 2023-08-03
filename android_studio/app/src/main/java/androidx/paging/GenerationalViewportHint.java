package androidx.paging;

import androidx.annotation.VisibleForTesting;
import com.coremedia.iso.boxes.i1;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: PageFetcherSnapshot.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0081\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Landroidx/paging/GenerationalViewportHint;", "", "generationId", "", i1.f10181o, "Landroidx/paging/ViewportHint;", "(ILandroidx/paging/ViewportHint;)V", "getGenerationId", "()I", "getHint", "()Landroidx/paging/ViewportHint;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
@VisibleForTesting
/* loaded from: classes.dex */
public final class GenerationalViewportHint {
    private final int generationId;
    @g
    private final ViewportHint hint;

    public GenerationalViewportHint(int i4, @g ViewportHint hint) {
        Intrinsics.checkNotNullParameter(hint, "hint");
        this.generationId = i4;
        this.hint = hint;
    }

    public static /* synthetic */ GenerationalViewportHint copy$default(GenerationalViewportHint generationalViewportHint, int i4, ViewportHint viewportHint, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i4 = generationalViewportHint.generationId;
        }
        if ((i10 & 2) != 0) {
            viewportHint = generationalViewportHint.hint;
        }
        return generationalViewportHint.copy(i4, viewportHint);
    }

    public final int component1() {
        return this.generationId;
    }

    @g
    public final ViewportHint component2() {
        return this.hint;
    }

    @g
    public final GenerationalViewportHint copy(int i4, @g ViewportHint hint) {
        Intrinsics.checkNotNullParameter(hint, "hint");
        return new GenerationalViewportHint(i4, hint);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GenerationalViewportHint) {
            GenerationalViewportHint generationalViewportHint = (GenerationalViewportHint) obj;
            return this.generationId == generationalViewportHint.generationId && Intrinsics.areEqual(this.hint, generationalViewportHint.hint);
        }
        return false;
    }

    public final int getGenerationId() {
        return this.generationId;
    }

    @g
    public final ViewportHint getHint() {
        return this.hint;
    }

    public int hashCode() {
        return (this.generationId * 31) + this.hint.hashCode();
    }

    @g
    public String toString() {
        return "GenerationalViewportHint(generationId=" + this.generationId + ", hint=" + this.hint + ')';
    }
}
