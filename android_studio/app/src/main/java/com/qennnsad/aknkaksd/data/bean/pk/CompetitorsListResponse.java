package com.qennnsad.aknkaksd.data.bean.pk;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: PkListResponse.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\u000f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\t\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/pk/CompetitorsListResponse;", "", "list", "", "Lcom/qennnsad/aknkaksd/data/bean/pk/CompetitorItem;", "(Ljava/util/List;)V", "getList", "()Ljava/util/List;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class CompetitorsListResponse {
    @g
    private final List<CompetitorItem> list;

    public CompetitorsListResponse(@g List<CompetitorItem> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.list = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CompetitorsListResponse copy$default(CompetitorsListResponse competitorsListResponse, List list, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            list = competitorsListResponse.list;
        }
        return competitorsListResponse.copy(list);
    }

    @g
    public final List<CompetitorItem> component1() {
        return this.list;
    }

    @g
    public final CompetitorsListResponse copy(@g List<CompetitorItem> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        return new CompetitorsListResponse(list);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof CompetitorsListResponse) && Intrinsics.areEqual(this.list, ((CompetitorsListResponse) obj).list);
    }

    @g
    public final List<CompetitorItem> getList() {
        return this.list;
    }

    public int hashCode() {
        return this.list.hashCode();
    }

    @g
    public String toString() {
        return "CompetitorsListResponse(list=" + this.list + ')';
    }
}
